#! /bin/bash

sudo dnf install fish

echo '
if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]
then
	exec fish
fi' >> ~/.bashrc

set -U fish_greeting
