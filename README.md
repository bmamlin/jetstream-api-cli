# IU Jetstream's API Command Line Tool

Get started quickly with IU Jetstream's API using Docker. Assuming you have [Docker](https://www.docker.com) and [docker-compose](https://docs.docker.com/compose/install/) installed, you can use the IU Jetstream API without any additional installation.

## Configuration

You will need a few settings to configure your API access.

* Your `project name` (e.g., `TG-XXXXXXXXX`)
* Your `project name id` and `project domain id`
* Your credentials for the domain (e.g., for [portal.tacc.utexas.edu](https://portal.tacc.utexas.edu/) if you are using the tacc domain)
* The `auth-url`. If you don't have this, you can get it through a colleague or the Jetstream helpdesk. This URL is not to be shared publicly. Convenient aliases are included to switch between IU and TACC APIs if you have them.

Copy `jetstream.env.sample` to `jetstream.env` and enter your settings into that file.

TIP: You can log into Horizon [https://iu.jetstream-cloud.org/dashboard](https://iu.jetstream-cloud.org/dashboard) with your TACC credentials (domain=TACC) and, under the API section, download an auto-generated openrc.sh file that contains the parameters named above. You can find a similar file for TACC on on the TACC Openstack [https://tacc.jetstream-cloud.org/dashboard](https://tacc.jetstream-cloud.org/dashboard).

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