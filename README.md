# TIG
Run TIG in one command

# How to use
- give execute permission to `start.sh`
- run `./start.sh`
- for stopping, do the same for `./stop.sh`


Config files will be generated based on the `.env` file.

# Config
- StatsD plugin on telegraf
- InfluxDB datasource already configured in grafana through [datasource file](./grafana/datasources/datasource.template.yml)
- InfluxDB & grafana data is persisted in docker volumes. If you dont want volumes to be deleted on stop, add a --volume flag in docker-compose down cmd in [./stop.sh](./stop.sh)
