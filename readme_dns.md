# Practica1 de DNS by Rolando Lago
## Archivo de explicación de la práctica 1_DNS

En este readme.md explicaré los pasos a seguir de la práctica a continuación, la configuración del servidor, la creación de un volumen por separado, una red interna para los dockers a la vez que una ip fija en el servidor. También configuraremos los forwarders, crearemos una zona propia etc.

1. Volumen por separado de la configuración
2. Red propia interna para todos los contenedores
3. ip fija en el servidor
4. Configurar Forwarders
5. Crear Zona propia
    * Registros a configurar: NS, A, CNAME, TXT, SOA
6. Cliente con herramientas de red

* Lineas del docker-compose explicada
* Procedimiento de creación de servicios (contenedor)
* Modificación de la configuración, arranque y parada de servicio bind9
* Configuración zona y como comprobar que funciona

-----------------------------------------------------------

**RESPUESTAS**

1. Empezamos añadiendo un volumen. Nos dirigimos a "named.conf" y hacemos un "include" del nuevo volumen tras haberlo creado

2. Para solucionar esto debemos dirigirnos a nuestro documento .yml y le añadimos la subred en el apartado de networks, en mi caso será "Red_DNS"

3. Para darle una ip fija al servidor lo que hacemos es añadir la línea "ipv4_address" y le doy la IP fija "10.2.0.20"

4. Para la configuración de los forwarders nos vamos a named.conf.options, en el apartado forwarders puedo modificar las IPS donde se solucionaran los dns, yo voy a poner "1.1.1.1"

5. Para cambira esto nos dirijimos al archivo 'named.conf.local'y añadimos una zona que llamaremos "Rolando_dns.com"

6. Para configurar este registro vamos a  'db.asircastelao.com'y añadimos el nombre de la zona y el alias deseado

7. Vamos a  'docker-compose.yml', configuramos el nombre, modo de arranque, la network...
Lo que queda es probar el arranque, que debería funcionar sin problemas