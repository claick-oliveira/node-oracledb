node-oracledb [![Release](https://img.shields.io/github/release/claick-oliveira/node-oracledb.svg)](https://github.com/claick-oliveira/node-oracledb/releases/latest)
============================

This is a project that builds a docker image from a Dockerfile, where it will execute the installation process of the instantclient-basic-linux.x64-X.X.X.X.X / instantclient-sdk-linux.x64-X.X.X.X.X, which are the requirements for installation of the oracledb package for use in Nodejs projects.

## Installing / Getting started

To start using node-oracledb, follow the steps below:

```shell
git clone https://github.com/claick-oliveira/node-oracledb.git
cd node-oracledb/
```
Download the files in [Oracle](http://www.oracle.com/technetwork/topics/linuxx86-64soft-092277.html) _(need registration)_:

  - **instantclient-basic-linux.x64-12.2.0.1.0.zip** _(current version)_
  - **instantclient-sdk-linux.x64-12.2.0.1.0.zip** _(current version)_

Place the files in the project folder where Dockerfile is located.

## Licensing [![License:AGPLv3](https://img.shields.io/badge/License-AGPL%20v3-brightgreen.svg)](http://www.gnu.org/licenses/agpl-3.0)

Most node-oracledb source files are made available under the terms of the [GNU Affero General Public License](http://www.gnu.org/licenses/agpl-3.0) (GNU AGPLv3). See individual files for details.
