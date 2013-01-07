#!/bin/bash

export GITHUB_KEY="c29ee889fe2b5aef8c79"
export GITHUB_SECRET="6c601c0e26deb036bd63d0adb13525eb53c1d341"

export MONGOID_HOST="localhost"
export MONGOID_PORT="27017"
export MONGOID_DATABASE="arch_serw_inter_development"

cd bin/
./mongod --dbpath=data/db &

rails s --port 16161
