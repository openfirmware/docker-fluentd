#!/bin/bash

if [ -f /.plugins_installed ]; then
	echo "fluentd plugins already installed!"
	exit 0
fi

if [ -n "$FLUENTD_PLUGINS" ]; then
	echo "=> Installing plugins for fluentd"

	for plug in $FLUENTD_PLUGINS; do
		echo "installing plugin \"$plug\""
		/usr/lib/fluent/ruby/bin/fluent-gem install $plug
	done
fi

touch /.plugins_installed
