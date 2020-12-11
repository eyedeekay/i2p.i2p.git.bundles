#! /usr/bin/env bash

timeza=$(date +%z | tr -d '\-0')

bundle_wd="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo 0 $timeza 10 \* \* $bundle_wd/seed.sh | tee cronjob

