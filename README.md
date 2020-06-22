# Introduction

This project is almost an identical copy of the official [dropwizard-example](https://github.com/dropwizard/dropwizard/tree/59cc59c4cc5aa8b1aa460ee1fa6181aea9b89a00/dropwizard-example) project, with some small changes:
* Has been configured to run with H2 in-memory database
* [Dropwizard Hibernate](https://github.com/dropwizard/dropwizard/tree/59cc59c4cc5aa8b1aa460ee1fa6181aea9b89a00/dropwizard-hibernate) module is used
* Has Hibernate setting to automatically generate and update table definition in the configured database
* Unnecessary configuration was removed

The purpose of this project is to serve as a somewhat realistic sample project which can be easily dockerized and deployed in a Kubernetes cluster.

You can follow along the videos I make on this topic on [learn.alexchiri.com](https://learn.alexchiri.com) or on [my YouTube channel](https://www.youtube.com/channel/UCLiewAUg_41ye2xIcCTUm3A).

## Usage

You can use the Dockerfile to build and push this image to your own registry or use the one I pushed to [hub.docker.com](https://hub.docker.com/repository/docker/alexchiri/cool-service)
