VIM Liver
=============

A VIM plugin to livereload the current file (a.k.a. `tail -f`). Use this plugin to inspect log files.

Features
--------

* Reload the file automatically on change.
* Scroll to the bottom (`G`) if the cursor is on the last line.
* The timer is only enabled when entering the buffer with live reload enabled.

Compatibility
-------------

This script is built on `timer_start()` which is introduced in VIM 8.

Documentation
-------------

[doc/liver.txt](doc/liver.txt)

Similar projects
----------------

* https://github.com/cosminadrianpopescu/vim-tail
* https://github.com/lilydjwg/tailf.vim - use `tail`
* https://github.com/chiedo/vim-live-reload - use fake timer

Changelog
---------

* 0.1.0

  - First release.

