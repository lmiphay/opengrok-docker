#!/sbin/openrc-run
# Copyright 1999-2021 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

description="OpenGrok in a container"

depend() {
    need net docker
}

start() {
    ebegin "Starting OpenGrok container"
    /usr/bin/opengrok-docker start
    eend $?
}

stop() {
    ebegin "Stopping OpenGrok container"
    /usr/bin/opengrok-docker stop
    eend $?
}
