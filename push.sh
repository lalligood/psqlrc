#!/bin/bash
# Create necessary symlink for psql

currdir=$(pwd)
psqlrc=.psqlrc

function create_symlink()
# Create symlink to configuration file if it doesn't already exist
{
    src=${currdir}/$2
    dest=$HOME/$1
    if  [[ ! -h ${dest} ]]; then
        echo Symbolic link for $1 does not exist. Creating symlink...
        ln -vs ${src} ${dest}
        echo Symbolic link for $1 created successfully.
    else
        echo Symbolic link for $1 already exists. Skipping...
    fi
}

create_symlink .psqlrc ${psqlrc}
