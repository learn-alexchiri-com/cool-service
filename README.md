# Introduction

This project is almost an identical copy of the official [dropwizard-example](https://github.com/dropwizard/dropwizard/tree/59cc59c4cc5aa8b1aa460ee1fa6181aea9b89a00/dropwizard-example) project, with some small changes:
* Has been configured to run with H2 in-memory database
* [Dropwizard Hibernate](https://github.com/dropwizard/dropwizard/tree/59cc59c4cc5aa8b1aa460ee1fa6181aea9b89a00/dropwizard-hibernate) module is used
* Has Hibernate setting to automatically generate and update table definition in the configured database
* Unnecessary configuration was removed

The purpose of this project is to serve as a somewhat realistic sample project which can be easily dockerised and deployed in a Kubernetes cluster.

TODO: add information about how to build, run and interact with the application

