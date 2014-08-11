First run
=========

From a terminal navigate to the *Zoe* root directory (e.g. ``/home/zoe``) and do the following:

- Load the *Zoe* configuration::

    $ . etc/environment.sh

- Launch *Zoe*::

    $ ./zoe.sh start

You will see that the output shows the agents that have been started. You can check the status of these agents by running::

    $ ./zoe.sh status

If there are dead agents, you may want to check their log files (located in the ``log/`` directory). Most agent errors are due to misconfigurations.

That's it, now you have a functional *Zoe* instance running in your machine. You can stop the server by typing::

    $ ./zoe.sh stop

Which will also stop all the agents running.
