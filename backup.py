#!/usr/bin/env python
# encoding: utf-8

from time import sleep
from os import getcwd
from subprocess import call, Popen, PIPE


def start_containers():
    """
    Takes a back up of the Recipe images and DB.
    Restarts OpenEats with a new (or the same) version.
    """
    print("==================")
    print("Starting OpenEats")
    print("==================")

    # Check if the DB is up and running locally.
    # If it is then take a backup.
    # If the user is using a remote DB, do nothing.
    # If no DB is found, Start the docker DB and wait 45s to start.
    p = Popen(
        ["docker", "ps", "-q", "-f", "name=openeats_db_1"],
        stdin=PIPE,
        stdout=PIPE,
        stderr=PIPE
    )
    output, err = p.communicate(b"input data that is passed to subprocess' stdin")
    if output and not err:
        print("Taking a database backup (saving as openeats.sql)...")
        call(
            'docker exec openeats_db_1 sh -c "exec mysqldump openeats -uroot -p4G7kJhEjz3qt30HzuHRu" > openeats.sql',
            shell=True
        )
    # Check if the API is up.
    # If it is then take a backup of the Recipe images folder.
    # The backup folder is called `site-media`.
    p = Popen(
        ["docker", "ps", "-q", "-f", "name=openeats_api_1"],
        stdin=PIPE,
        stdout=PIPE,
        stderr=PIPE
    )
    output, err = p.communicate(b"input data that is passed to subprocess' stdin")
    if output and not err:
        print("Taking a image backup save to 'site-media'...")
        call(
            'docker cp openeats_api_1:/code/site-media/ ' + getcwd(),
            shell=True
        )



if __name__ == '__main__':
    import argparse
    parser = argparse.ArgumentParser(
        description='OpenEats quick setup script. '
                    'This script will restart your OpenEats server and '
                    'take a database and recipe image backup.'
    )
    parser.add_argument(
        '-t',
        '--tag',
        type=str,
        help='The git tag of OpenEats you want to run. '
             'If not included, then the master branch will be used.'
    )
    args = parser.parse_args()

    start_containers()
