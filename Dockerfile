# FROM datadog/agent:7.27.0-jmx
FROM gcr.io/datadoghq/agent:latest-jmx

# Transfer the JMX integration configuration file to jmx.d
RUN curl https://raw.githubusercontent.com/japanj/custom-datadog-agent/main/jmx.yaml -o jmx.yaml
COPY jmx.yaml /etc/datadog-agent/conf.d/jmx.d/conf.yaml
