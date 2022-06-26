# IU Jetstream's API Command Line Tool

Get started quickly with IU Jetstream's API using Docker. Assuming you have [Docker](https://www.docker.com) and [docker-compose](https://docs.docker.com/compose/install/) installed, you can use the IU Jetstream API without any additional installation.

## Configuration

You will need a few settings from your openrc files to configure your API access.

First, copy `jetstream.env.sample` to `jetstream.env`. You will need to enter some settings
into this file that you can get from `openrc.sh` files (one for IU and one for TACC) as
follows:

Per [the Jetstream wiki](https://docs.jetstream-cloud.org/ui/cli/openrc/), you can obtain openrc
file as follows:

1. Log into
   [https://js2.jetstream-cloud.org](https://js2.jetstream-cloud.org) that you set up when enrolling
   into Jetstream)
2. Generates application credentials in the [console](https://js2.jetstream-cloud.org/identity/application_credentials/)
3. Download the `openrc` file and renamed it to `jetstream.env` in this repository
  

## Running OpenStack

```bash
$ ./cli.sh
```

This should build the jetstream docker image (the first time you run it) and then place you at a command prompt at which you can begin using the OpenStack tools like `nova` or `cinder` (see the [IU Jetstream wiki](https://iujetstream.atlassian.net/wiki/x/CoAKAQ) for more information).

