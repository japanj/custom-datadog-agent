# FROM datadog/agent:7.27.0-jmx
FROM gcr.io/datadoghq/agent:7.46.0-jmx

# Transfer the JMX integration configuration file to jmx.d
# RUN curl https://raw.githubusercontent.com/japanj/custom-datadog-agent/main/jmx.yaml -o jmx.yaml
# COPY jmx.yaml /etc/datadog-agent/conf.d/jmx.d/conf.yaml

# Prometheus - worked!
RUN curl https://raw.githubusercontent.com/japanj/custom-datadog-agent/main/prometheus.yaml -o prometheus.yaml
COPY prometheus.yaml /etc/datadog-agent/conf.d/openmetrics.d/conf.yaml

# Confluent Platform
# RUN curl https://raw.githubusercontent.com/japanj/custom-datadog-agent/main/confluentplatform.yaml -o confluentplatform.yaml
# COPY confluentplatform.yaml /etc/datadog-agent/conf.d/confluent_platform.d/conf.yaml
