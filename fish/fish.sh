#! /bin/bash

sudo dnf install fish

echo '
if [[ $- == *i* && $(ps --no-header --pid=$PPID --format=cmd) != "fish" ]]
then
	exec fish
fi' >> ~/.bashrc

set -U fish_greeting
