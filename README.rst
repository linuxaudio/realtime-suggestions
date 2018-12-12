realtime-suggestions
====================

.. image:: https://travis-ci.org/linuxaudio/realtime-suggestions.svg?branch=master
   :target: https://travis-ci.org/linuxaudio/realtime-suggestions

A bash script, that suggests optimization options (while not stating the
obvious) for Linux kernel realtime use.
As these are just suggestions, they should be considered with a grain of salt:
Configurations on Linux distributions can differ quite a lot.
That being said: This script will not think for you!

Usage
-----

The script can be called indirectly, if in PATH

 .. code:: shell

   realtime-suggestions

or directly, if not in PATH

 .. code:: shell

   ./realtime-suggestions

It will output messages of three types:

* **WARNING**: A component or requirement used in the evaluation process could
  not be found

* **CHANGE**: A change *would* need to be applied to the system to improve
  performance

* **INFO**: A change *might* have to be applied, but it's too
  distribution-specific to be more than a consideration

It will not output anything, if there is nothing to suggest.

Requirements
------------

* bash
* systemd (for *systemd-detect-virt*)
* shellcheck (only for `make check`)

Checking
--------

The script can be checked using |shellcheck|.

 .. code:: shell

   shellcheck -s bash realtime-suggestions

When installing, this can be done by

 .. code:: shell

   make check

Installation
------------

 .. code:: shell

   make install

The install target honors *PREFIX* and *DESTDIR*.

Uninstallation
--------------

 .. code:: shell

   make uninstall

The uninstall target honors *PREFIX* and *DESTDIR*.

License
-------

realtime-suggestions is licensed under the **GPL-3.0-or-later**.


.. |shellcheck| raw:: html

  <a href="https://shellcheck.net" target="_blank">shellcheck</a>

