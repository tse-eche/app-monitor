# App-Monitor

This application provides a 'Prometheus Graphite Exporter' and a Prometheus server to store metrics which will provided to this container.
The metrics enpoint of the container is on path `/metrics` and port `:8080`.

To send metrics to the 'Graphite Exporter' the container expose port `9109`.

For self-hardware monitoring the container includes the Telegraf-Sidecar from (https://gitlabci.exxeta.com/paas_buildpacks/telegraf-buildpack.git).

## Deployment

To deploy these container to your PaaS environment, clone the repository and run

```
    cf push
```
