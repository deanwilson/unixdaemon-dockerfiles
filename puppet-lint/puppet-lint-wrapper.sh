#!/bin/bash
shopt -s globstar

cd /module

exec puppet-lint --with-filename --fail-on-warnings $@
