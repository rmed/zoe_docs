What is an agent?
=================

Agents are small programs that *Zoe* has access to in order to perform different actions. Each agent is in charge of specific tasks and communicate between themselves through the server *message bus*. The server creates sockets for each agent either dynamically or by using the ``etc/zoe.conf`` file, which contains the port for each agent and a list of agents related to a specific topic.

Structure
---------

Agents usually consist of 1-2 files, although this is completely up to the agent's developer. Most of the agents are written in *Python*, but libraries are available for writting agents in languages such as *Bash*, *Java*, *Python*, etc.

The main script is placed in the ``agents/AGENT_NAME`` directory. The agent can also include *natural language commands* for executing actions on demand without the need of using the command-line to manually send the message to the server. This way, an user can *speak* with *Zoe* through, for instance, Jabber. These natural language commands are placed in the ``cmdproc/`` directory.