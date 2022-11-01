#!/usr/bin/env bash

echo $1: running build_runner

if [[ $1 == "build" ]]; then
  flutter pub run build_runner build --delete-conflicting-outputs
else
  echo Unknown command!
fi

