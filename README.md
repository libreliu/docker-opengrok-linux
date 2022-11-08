# docker-opengrok-linux
OpenGrok for Linux kernel source code, dockerized

## Contents

- `Dockerfile`: OpenGrok with Linux kernel, from git.kernel.org
  - See `https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/refs/` for urls and the possible version strings
  - E.g. `docker build -f Dockerfile --build-arg KERNEL_VERSION=6.0 -t linux-kernel:6.0 .`
- `Dockerfile.arch`: OpenGrok with Archlinux kernel, from github.com
  - To be added

## Usage

Detailed instruction see [opengrok/docker](https://hub.docker.com/r/opengrok/docker).

Run with `docker run -d -p 127.0.0.1:8080:8080 <your_tag_chosen>:<your_version_chosen>`

NOTE: depending on machine configuration, index building may took several minutes. Monitor your CPU usage to determine if ctags & OpenGrok indexer are working.

Then, open `http://127.0.0.1:8080/` to get started.

Also, see `http://127.0.0.1:8080/xref` for cross-reference browsing.


