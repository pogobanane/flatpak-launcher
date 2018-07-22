#!/bin/bash

update() {
	echo "Press [enter] to update flatpak applications"
	read
	flatpak update
}

install() {
	echo "Installing $@"
	flatpak install $@
}

if [ -z $@ ];
then
	update
else
	install
fi

echo ""
echo "Done."
echo "Press [enter] to quit. "
read
