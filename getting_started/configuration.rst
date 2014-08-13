Configuration
=============

*Zoe*'s configuration files are found in the ``etc/`` directory. These are the base files you will find there::

    zam/
    environment.sh
    twitter.conf
    zoe-users.conf
    zoe.conf

Agents
------

The ``zoe.conf`` file contains a list of agents with their corresponding ports and a list of agents related to a specific topic. For more information check the :doc:`Agents section </agents/index>` of this documentation.

Some agents, such as the Twitter agent, may include additional configuration files. In this case, ``twitter.conf`` contains the credentials required by the Twitter agent. These credentials can be obtained from the Twitter profile.

The ``zam`` directory is part of the Zoe Agent Manager, in charge of installing and managing agents. For more information, check the :doc:`Agent installation section </agents/installing>`.

Environment
-----------

The ``environment.sh`` script sets several variables such as the *server host*, *twitter credentials*, *jabber information*, etc. It has the following content:

.. code-block:: bash

    # Typical values
    export ZOE_SERVER_HOST=localhost
    export ZOE_SERVER_PORT=30000

    # Parameters for Google Talk
    export zoe_jabber_host="talk.google.com"
    export zoe_jabber_port="5222"
    export zoe_jabber_user="..."
    export zoe_jabber_password=""

    # Parameters for a GMail account
    export zoe_mail_smtp="smtp.gmail.com"
    export zoe_mail_smtp_port="587"
    export zoe_mail_pop3="pop.gmail.com"
    export zoe_mail_pop3_port="995"
    export zoe_mail_enable_dkim="false"
    export zoe_mail_user="$zoe_jabber_user"
    export zoe_mail_password="$zoe_jabber_password"

**You should never give Zoe your own twitter/jabber credentials. Create a new account if you intend to use them.**

- By default, the Jabber and GMail accounts use the same credentials due to the Google Talk (Hangouts) service using Jabber. You can use other Jabber service and email provider if you wish so.

Users
-----

The ``zoe-users.conf`` file follows this structure:

.. code-block:: cfg

    [subject admin]
    name = Admin
    twitter = your twitter name without @
    preferred = twitter
    jabber = your_jabber_id@wherever.com
    mail = your_email@address.com
    alias = god master

    [group admins]
    members = admin

    [group broadcast]
    members = admin

Each user is identified using the ``[subject USER]`` tag and has the following attributes:

- ``name``: The user's name (e.g. Zoe).
- ``twitter``: The user's twitter username (e.g. gul_zoe).
- ``preferred``: The preferred way for Zoe to communicate with the user. Available values are ``twitter``, ``jabber``, ``mail``.
- ``jabber``: The user's jabber address. Note that if you are using *Google Hangouts*, the jabber addresses have the format ``abcdefghijklmnopqrstuwxyz1@public.talk.google.com``. If you don't know this address, you may try speaking with *Zoe* through Jabber and getting the address from the logs.
- ``mail``: The user's mail address.
- ``alias``: The user's alias.

Some agents may use *groups* to send mails to several users at the same time or check for user permissions. Define a new group by using the scructure ``[group GROUPNAME]`` and adding its users to the ``members`` attribute.
