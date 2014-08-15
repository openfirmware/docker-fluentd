# docker-fluentd

Base docker image to run fluentd.

## Building a tagged release from Github

As an alternative to the [Docker Index](https://index.docker.io/), an image can be created from my Github repository:

    # docker build -t openfirmware/fluentd github.com/openfirmware/docker-fluentd.git

Once built, the image will be available locally as `openfirmware/fluentd`. The command can be re-run to update the image with any changes to the Dockerfile.

## Running fluentd

Run the following command to start fluentd:

    # docker run -d -p 8888:8888 -p 24224:24224 openfirmware/fluentd

## Running fluentd with custom plugins

This image can be used as a base image to add plugins for fluentd. A fully documented [example using ElasticSearch](https://github.com/openfirmware/docker-fluentd-elasticsearch) is available.

To support other plugin setups, fork the [docker-fluentd-elasticsearch](https://github.com/openfirmware/docker-fluentd-elasticsearch) repository and customize for your plugins.

## Credits

* [Original docker-fluentd repository](https://github.com/jplock/docker-fluentd) created by jplock

