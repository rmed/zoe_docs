Introduction
============

What is Zoe?
------------

Zoe is an assistant bot for the *Grupo de Usuarios de Linux UC3M* (GUL UC3M) non-profit organization. Its aim is to perform repetitive and time-consuming tasks in an asynchronous, uncoupled and lazy manner.

How does it work?
-----------------

Zoe has two main components: the main *Zoe server*, and a group of *agents*, small programs performing a few, small and well defined tasks such as capturing statistics from the organization's systems, sending emails, generating reports and controlling alarms.

The *server* implements a *message bus* that the agents use to interchange messages asynchronously. It is also possible for Zoe to receive commands from the system administrators to execute tasks on demand.

License
-------

The main `Zoe server <https://github.com/voiser/gul-zoe-server>`_ is released under the MIT license. However, the agents' license may vary depending on each agent's developer.
