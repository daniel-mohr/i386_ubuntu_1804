# run script in docker image i386/ubuntu:18.04

This github action let you run a script/file inside the docker image
[i386/ubuntu:18.04](https://hub.docker.com/r/i386/ubuntu).

I will not maintain this repository. If you like it, please fork it and use
your own fork! This repository may break once!

## inputs

### `cmdfile`

The only parameter `cmdfile` is required and define the script to run.

For an example script, you can look at a trivial example [do](do).

The script is used directly from your repository and run on the root
of your repository.

## example usage

```
name: example

on:
  push:
    branches: [ master ]
  pull_request:
    branches: [ master ]

jobs:
  i386_ubuntu_1804:
    # https://github.com/daniel-mohr/i386_ubuntu_1804
    runs-on: ubuntu-latest
    name: ubuntu 18.04 (32 bit)
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: run my script in docker image
        uses: daniel-mohr/i386_ubuntu_1804@v0
        with:
          cmdfile: script_to_run
```

## copyright + license

Author: Daniel Mohr.

Date: 2021-08-02.

License: [BSD 3-Clause License](LICENSE.txt)
