# opengrok-docker

Driver program to manage a containerised opengrok appliance.

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

The pull and create should only be done once per version bump.
After that the container can be started and stopped as required.

## Upgrade

1. opengrok-docker stop
2. opengrok-docker pull
3. docker rename opengrok opengrok-1.7.17 # renames the old container
4. opengrok-docker create
5. opengrok-docker start

Optional - to remove an old container and/or image:

6. docker rm opengrok-1.7.17
7. docker rmi opengrok/docker:1.7.17

## OpenRC

To have the container start automatically:

```
rc-config add opengrok
```

## Logging

The default docker "json-file" logging driver does *not* do log rotation.

To select the "local" driver, with a max file size of 10MB and four files, add this to `/etc/docker/daemon.json`:

```json
{
  "log-driver": "local",
  "log-opts": {
    "max-size": "10m",
    "max-file": "4"
  }
}
```

## References

1. https://github.com/oracle/opengrok/tree/master/docker
2. https://github.com/oracle/opengrok/wiki/Repository-synchronization
3. https://github.com/oracle/opengrok/releases
4. https://github.com/lmiphay/opengrok-docker/releases
