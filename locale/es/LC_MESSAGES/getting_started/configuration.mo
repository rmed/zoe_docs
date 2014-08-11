��          �       <      <  r   =  o   �  �         �  Z   �     H  �   T  �   3  3   �  b        j     p  &  �  "   �  %   �  ~   �  8   |  U  �  k   	  �   w	  �   	
     �
  g   �
     Y  �   a  �   _  4     t   @     �      �  ,  �  .     *   ;  �   f  ;   �   **You should never give Zoe your own twitter/jabber credentials. Create a new account if you intend to use them.** *Zoe*'s configuration files are found in the ``etc/`` directory. These are the base files you will find there:: By default, the Jabber and GMail accounts use the same credentials due to the Google Talk (Hangouts) service using Jabber. You can use other Jabber service and email provider if you wish so. Configuration Each user is identified using the ``[subject USER]`` tag and has the following attributes: Environment Some agents may use *groups* to send mails to several users at the same time or check for user permissions. Define a new group by using the scructure ``[group GROUPNAME]`` and adding its users to the ``members`` attribute. The ``environment.sh`` script sets several variables such as the *server host*, *twitter credentials*, *jabber information*, etc. It has the following content: The ``zoe-users.conf`` file follows this structure: The information required to connect to a Twitter account can be obtained from the Twitter profile. Users ``alias``: The user's alias. ``jabber``: The user's jabber address. Note that if you are using *Google Hangouts*, the jabber addresses have the format ``abcdefghijklmnopqrstuwxyz1@public.talk.google.com``. If you don't know this address, you may try speaking with *Zoe* through Jabber and getting the address from the logs. ``mail``: The user's mail address. ``name``: The user's name (e.g. Zoe). ``preferred``: The preferred way for Zoe to communicate with the user. Available values are ``twitter``, ``jabber``, ``mail``. ``twitter``: The user's twitter username (e.g. gul_zoe). Project-Id-Version: Zoe 0.1.0
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-08-11 11:26+0200
PO-Revision-Date: 2014-08-11 12:32+0100
Last-Translator: Rafael Medina García <rafamedgar@gmail.com>
Language-Team: 
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: es
X-Generator: Poedit 1.5.4
 **Nunca des a Zoe tus propias credenciales de twitter/jabber. Crea una nueva cuenta si pretendes usarlos.** Los archivos de configuración de *Zoe* se encuentran en el directorio ``etc/``. Estos son los archivos base que se encuentran en el directorio:: Por defecto, las cuentas de Jabber y GMail usan las mismas credenciales debido a que el servicio de Google Talk (Hangouts) utiliza Jabber. Puedes utilizar otros servicios de Jabber y correo electrónico si lo deseas. Configuración Cada usuario está identificado por la etiqueta ``[subject USUARIO]`` y tiene los siguientes atributos: Entorno Algunos agentes pueden utilizar *grupos* para envíar correos a varios usuarios al mismo tiempo o comprobar permisos. Se puede definir un nuevo grupo usando la estructura ``[group NOMBRE DE GRUPO]`` y añadiendo a sus usuarios en el atributo``members``. El script ``environment.sh`` establece variables tales como el *host del servidor*, *credenciales de twitter*, *información de jabber*, etc. Tiene el siguiente contenido: El archivo ``zoe-users.conf`` sigue esta estructura: La información requerida para conectarse a una cuenta de Twitter se puede obtener del perfil de usuario de Twitter. Usuarios ``alias``: El alias del usuario. ``jabber``: La dirección de jabber del usuario. Si utilizas *Google Hangouts*, las direcciones de jabber siguen un formato ``abcdefghijklmnopqrstuwxyz1@public.talk.google.com``. Si no sabes cuál es la dirección, puedes intentar hablar con *Zoe* por Jabber y obtener la dirección de los registros. ``mail``: La dirección de correo del usuario. ``name``: El nombre del usuario (ej. Zoe). ``preferred``: La forma de comunicación con Zoe preferida por el usuario. Los posibles valores son ``twitter``, ``jabber``, ``mail``. ``twitter``: El nombre de usuario de twitter (ej. gul_zoe). 