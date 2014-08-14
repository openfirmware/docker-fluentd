#!/bin/bash

if [ ! -f /.plugins_installed ]; then
	/install_plugins.sh
fi

exec /usr/sbin/td-agent -v
