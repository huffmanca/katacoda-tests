#!/usr/bin/env bash
echo "Running init commands" |& tee ${HOME}/.init.log

echo "Downloading the docker images."
docker pull windup3/windup-cli-openshift |& tee -a ${HOME}/.init.log

touch ${HOME}/.init.done
echo "Done!" |& tee -a ${HOME}/.init.log

