��          �       �       �   ~   �   �   |     k     �     �       �   "     �  z   �  8   F  %     P   �  �   �  U  �  �   �  �   h  �   \     �     �     	  �   	     �	  s   �	  /   N
  '   ~
  F   �
  �   �
   Agents interchange messages through the server *message bus*. These message strings have a *key-value* structure of the form:: Apart from the agents interchanging messages, it is also possible to manually send a message to the server in order to have an agent execute some action. Taking the previous ``broadcast`` agent example, the message could be sent like so:: For instance, the ``broadcast`` agent can send a message to a specific user. The message string to do so would look like this:: Message structure Messages Now, analyzing the message: Now, the ``logs/broadcast.log`` file would have an entry for the received message and the action executed (or any errors while doing so). Sending messages to the server The message string will vary depending on each agent, but most of them will have common parts such as ``dst`` and ``tag``. ``dst``: Agent that is supposed to receive this message. ``msg``: Message to send to the user. ``tag``: Action to perform. There can be several ``tag`` entries in the message. ``to``: User to send the message to. This name is checked against the user list to see what John's address and preferred contact method are. Project-Id-Version: Zoe 0.1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-08-11 11:26+0200
PO-Revision-Date: 2014-08-11 12:48+0100
Last-Translator: Rafael Medina García <rafamedgar@gmail.com>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: es
X-Generator: Poedit 1.5.4
 Los agentes intercambian mensajes mediante el *bus de mensajes* del servidor. Estos mensajes tienen una estructura *clave-valor* de la forma:: Aparte del intercambio de mensajes de los agentes, también se puede enviar un mensaje al servidor manualmente para que un agente ejecute alguna acción. Tomando el anterior ejemplo del agente ``broadcast``, el mensaje se podría enviar como:: Por ejemplo, el agente ``broadcast`` puede enviar un mensaje a un usuario específico. La cadena para hacerlo sería algo parecido a esto:: Estructura de mensajes Mensajes Analizando el mensaje: Ahora, el archivo ``logs/broadcast.log`` tendría una entrada con el mensaje recibido y la acción realizada (o cualquier error mientras se llevaba a cabo). Enviando mensajes al servidor La cadena puede variar dependiendo de cada agente, pero la mayoría tendrán partes comunes como ``dst`` y ``tag``. ``dst``: Agente al que va destinado el mensaje. ``msg``: Mensaje que mandar al usuario. ``tag``: Acción a realizar. Puede haber varios ``tag`` en el mensaje. ``to``: Usuario al que mandar el mensaje. El nombre se comprueba con la lista de usuarios para ver cuál es la dirección de John y su método de contacto preferido. 