# GO CROND ALPINE 3.9

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)


# Nuevas funcionalidades:

  - Permite definir la zona horaria al iniciar el servicio
  - Permite definir el usuario que inicia el contenedor
  - Permite definir el cron al iniciar el servicio
  - Non-root cron linux

### Iniciar


Ejecutar para iniciar el servicio

```sh
$ docker run -e CRONTAB='* * * * * sleep 15; date >> /tmp/cron_test' mvilche/go-crond:alpine3.9
```

### Variables


| Variable | Detalle |
| ------ | ------ |
| TIMEZONE | Define la zona horaria a utilizar (America/Montevideo, America/El_salvador) |
| CRONTAB | Define el cron que se ejecutará al iniciar el servicio - Variable requerida |

License
----

Martin vilche

