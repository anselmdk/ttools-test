#! /bin/bash
#It needs the environment provided in the url ($1)
#E.g. Live, Test, Dev...

#Run like this:
#./ssh.sh Live


MODULEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../../core && pwd )";

#Getting environment specific vars
VARS="$MODULEDIR/lib/vars-for-env.sh $1"


#evaluate variables:
eval `$VARS`


ssh $ENV_CUSTOM_SSHCONNECTIONSTR