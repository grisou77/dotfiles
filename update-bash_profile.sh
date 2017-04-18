#!/bin/bash

echo ""

echo "Overriding bash profile"

cp -f $PWD/bash_profile ~/.bash_profile

source ~/.bash_profile
