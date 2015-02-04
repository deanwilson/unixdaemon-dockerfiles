## UnixDaemon puppet-lint Docker image ##

A simple docker image that runs puppet-lint over all files in a given
volume.

To use this image you need to specify a directory, containing your
puppet modules, that is presented to the container as the ```/modules/```
directory. Puppet-lint then runs over its contents, with the default 
checks, and --with-filename --fail-on-warnings options. Violations are
printed to stdout.

### Examples ###

Run puppet-lint over all files in ~/my-modules with default options -

    $ docker run -v ~/my-modules:/module/ deanwilson/puppet-lint

Run puppet lint over a specific module located in the ~/my-modules directory -

    $ docker run -v ~/my-modules:/module/ deanwilson/puppet-lint my-module

Run puppet-lint over ~/my-modules without checking for class documentation -

    $ docker run -v ~/my-modules:/module/ deanwilson/puppet-lint --no-documentation-check

Run puppet-lint over a specific file -

    $ docker run -v ~/my-modules:/module deanwilson/puppet-lint lib/jenkins/manifests/master.pp

Display the puppet-lint options -

    $ docker run -v ~/my-modules:/module/ deanwilson/puppet-lint --help

### Building the image ###

To build the image run

    $ docker build -t deanwilson/puppet-lint --name puppet-lint .

