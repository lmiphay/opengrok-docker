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
$ opengrok-docker settings
...
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

## References

1. https://github.com/oracle/opengrok/tree/master/docker
2. https://github.com/oracle/opengrok/wiki/Repository-synchronization
3. https://github.com/oracle/opengrok/releases
