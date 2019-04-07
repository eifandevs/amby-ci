#!/bin/sh

pushd `dirname $0`

rm -rf jenkins/home/*
rm -rf portainer/data/*
rm -rf rocket.chat/db/data/*

popd