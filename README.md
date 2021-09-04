# opengrok-docker

Driver program to manage a containerised opengrok appliance

## Configuration

Variables at the start of the `opengrok-docker` script allow these settings to be customised:

1. opengrok version
2. sync options
3. directories to mount from the host
4. ports

## Quickstart

```
$ opengrok-docker pull
$ opengrok-docker create
$ opengrok-docker start
$ opengrok-docker reindex
$ opengrok-docker logs
...
$ opengrok-docker stop
...
$ opengrok-docker delete
```
