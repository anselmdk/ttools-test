#!/bin/bash
#This script overwrites the current site
#Called from sitesync/core
#Needs to be supplied with db name, files dir, and environment

DBNAME=$1
FILESDIR=$2
ENV=$3


echo "Supplied variables:";
echo "DB: $DBNAME";
echo "Files: $FILESDIR";
echo "Env: $ENV";


BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && cd ../../.. && pwd )";
MODULEDIR="$BASEDIR/ttools/sitesync-simple";

VARS="$BASEDIR/ttools/core/lib/vars.sh"
eval `$VARS`


ENVVARS="$BASEDIR/ttools/core/lib/vars-for-env.sh $ENV"
eval `$ENVVARS`


echo "Importing database...";

echo "TODO"


echo "Importing files...";

echo "TODO"



