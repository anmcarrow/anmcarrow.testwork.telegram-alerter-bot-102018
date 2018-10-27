There is just a simple Telegram web-monitor bot 
(`alerter.py` Python script).

After the launch, this script starting to poll of
HTTP-URL given from the `alerter.yml` configuration file.
Script also parse the results of URL request and find 
the prove-string (also from the `alerter.yml`) in it.

In case of absense of prove-string (or with the network errors), 
the script will send every-minute alert messages to the targeted 
Telegram messsenger chat.

List of content
---------------

- alerter.py — main script;
- alerter.yml — default configuration file;
- build.sh — script for the Docker image build and publish;
- docker-compose.yml — Docker-compose manifest;
- Dockerfile — Docker image manifest;
- entry.sh — Docker entrypoint and configuration file generator;
- README.md — the file that you read.

Setup the script
----------------
Befor the first start you are need to edit `alerter.yml`
file and add your own Telegram bot ID, chat ID, and target URL.

Your also can use the default values for the test purposes.

Launch the script
-----------------
You can just run it from CLI: 

```
./alerter.yml
```

Requirements
------------
- Python 2
- python-requests

Docker-based setup and run
--------------------------

You can run this script with the Docker engine,
from the pre-built `anmcarrow/alerter` image or even
re-build this image with the `Dockerfile` from this repo.

For example:

```
docker run -d anmcarrow/alerter
```

```
docker-compose up -d
```

Credits and notes
-----------------
This code is based on the similiar 
[Stempher](https://github.com/stempher/monitoring_bot) repo.

I've also add some minor changes: UTF-8 prove-strings support,
parametrized Telegram API support (very useful in case of API-proxies)
and so on.

Feel free to use.

Licensed on MIT, [anmcarrow](mailto:mb@mcrrw.me)
