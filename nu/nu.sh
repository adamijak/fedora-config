#! /bin/sh

sudo dnf copr enable atim/nushell -y && sudo dnf install nushell -y

echo '
if [[ $(ps --no-header --pid=$PPID --format=comm) != "nu" && -z ${BASH_EXECUTION_STRING} ]]
then
	exec nu
fi' >> ~/.bashrc
