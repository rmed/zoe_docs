Messages
========

Message structure
-----------------

Agents interchange messages through the server *message bus*. These message strings have a *key-value* structure of the form::

    key1=val1&key2=val2&key3=val3...

For instance, the ``broadcast`` agent can send a message to a specific user. The message string to do so would look like this::

    dst=broadcast&tag=send&msg=Hello World!&to=john

Now, analyzing the message:

- ``dst``: Agent that is supposed to receive this message.
- ``tag``: Action to perform. There can be several ``tag`` entries in the message.
- ``msg``: Message to send to the user.
- ``to``: User to send the message to. This name is checked against the user list to see what John's address and preferred contact method are.

The message string will vary depending on each agent, but most of them will have common parts such as ``dst`` and ``tag``.

Sending messages to the server
------------------------------

Apart from the agents interchanging messages, it is also possible to manually send a message to the server in order to have an agent execute some action. Taking the previous ``broadcast`` agent example, the message could be sent like so::

    $ echo -n "dst=broadcast&tag=send&msg=Hello World!&to=john" | nc ZOE_HOST ZOE_PORT

Now, the ``logs/broadcast.log`` file would have an entry for the received message and the action executed (or any errors while doing so).