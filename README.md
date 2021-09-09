# IU Jetstream's API Command Line Tool

Get started quickly with IU Jetstream's API using Docker. Assuming you have [Docker](https://www.docker.com) and [docker-compose](https://docs.docker.com/compose/install/) installed, you can use the IU Jetstream API without any additional installation.

## Configuration

You will need a few settings from your openrc files to configure your API access.

First, copy `jetstream.env.sample` to `jetstream.env`. You will need to enter some settings
into this file that you can get from `openrc.sh` files (one for IU and one for TACC) as
follows:

Per [the Jetstream wiki](https://iujetstream.atlassian.net/wiki/x/EIBdAg), you can obtain openrc
files (one for IU and one for TACC) as follows:

1. Log into
   [https://iu.jetstream-cloud.org/](https://iu.jetstream-cloud.org/) using domain `TACC`
   and your TACC credentials (your credentials for
   [portal.tacc.utexas.edu](https://portal.tacc.utexas.edu/) that you set up when enrolling
   into Jetstream)
2. Click on your username in the upper right hand corner
3. Click on Download OpenStack RC File v3 to get your `openrc.sh` file for IU
4. Repeat this process using the domain
   [https://tacc.jetstream-cloud.org/](https://tacc.jetstream-cloud.org/) (same credentials)
   to get your `openrc.sh` file for TACC

Within the `openrc.sh` files (one for IU and one for TACC), you will find the settings you will
need to copy into your `jetstream.env` file.

Replace all instances of `???` in the `jetstream.env` file:

- Your project name (`OS_PROJECT_NAME`) (e.g., `TG-XXXXXXXXX`) from either of
  your `openrc.sh` files
- Your credentials for the domain (e.g., for
  [portal.tacc.utexas.edu](https://portal.tacc.utexas.edu/) if you are using the tacc domain)
- The values for `OS_AUTH_URL`, `OS_PROJECT_ID`, and `OS_PROJECT_DOMAIN_ID` for
  both IU and TACC (from the respective `openrc.sh` files you downloaded earlier)

## Running OpenStack

```bash
$ ./cli.sh
```

This should build the jetstream docker image (the first time you run it) and then place you at a command prompt at which you can begin using the OpenStack tools like `nova` or `cinder` (see the [IU Jetstream wiki](https://iujetstream.atlassian.net/wiki/x/CoAKAQ) for more information).

Switch to IU API:

```bash
$ iu
```

Switch to TACC API:

```bash
$ tacc
```
