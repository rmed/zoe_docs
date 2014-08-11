Installing new agents
=====================

There are two ways of installing a new agent into your *Zoe* instance.

Manual installation
-------------------

Installing an agent manually requires that you download the code and place it in the *Zoe* installation according to the agent developer's instructions. Usually, it will just be a matter of copying and pasting files and maybe modifying some configurations. When the server is started the next time, the new agent should be up and running.

Using the agent manager
-----------------------

The `Zoe startup kit <https://github.com/voiser/zoe-startup-kit>`_ should include an agent named *zam*. This is the `Zoe Agent Manager <https://github.com/rmed/zoe_agent_manager>`_, which aims to facilitate the installation and management of agents in your *Zoe* instance. If the `Zoe Agent Manager <https://github.com/rmed/zoe_agent_manager>`_ is not installed, you can easily install it manually by downloading the source and following the instructions.

The manager uses git repositories to fetch and install agents. For instance, the `dummy agent <https://github.com/rmed/dummy_agent>`_ has the following git source URL::

    https://github.com/rmed/dummy_agent.git

If you were to tell the manager to install this agent, you could send this message to the server::

    $ echo -n "dst=zam&tag=install&name=dummy&source=https://github.com/rmed/dummy_agent.git" | nc ZOE_HOST ZOE_PORT

Or, if you prefer using natural language and Jabber::

    Zoe, install agent "dummy" from "https://github.com/rmed/dummy_agent.git"

For more information on the manager and all the commands it has, please check the `zam wiki <https://github.com/rmed/zoe_agent_manager/wiki>`_.
