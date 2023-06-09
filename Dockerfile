FROM datadog/agent:7.27.0-jmx

# Transfer the JMX integration configuration file to jmx.d
RUN wget https://raw.githubusercontent.com/japanj/custom-datadog-agent/main/jmx.yaml
COPY jmx.yml /etc/datadog-agent/conf.d/jmx.d/conf.yaml
