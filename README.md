Continuous Generation of Git Bundle Torrents for I2P Source Code
================================================================

These scripts generate a git bundle from an up-to-date copy of the
I2P source code on Linux. It does pretty much everything
automatically, but you can configure it by setting the `wd_bundle`
and `snark_dir` environment variables before running the scripts.

To do a one-time seed of a a current git bundle, run the script

        ./seed.sh

The recommended way to run this script is to set up a cron job to
run at 2400 UTC on the 10th of every month. This way, everybody
generates the bundle independently, using identical copies of
the source code, but we all end up seeding the same data. To set
this up easily, clone this repository to your desired location
and run the script:

        ./cron.sh

to generate an example cron line to run the script with.
