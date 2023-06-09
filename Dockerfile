FROM datadog/agent:7.27.0-jmx

# Transfer the JMX integration configuration file to jmx.d
RUN wget https://raw.githubusercontent.com/confluentinc/jmx-monitoring-stacks/6.1.0-post/shared-assets/jmx-exporter/kafka_connect.yml
RUN mv jmx.yml /etc/datadog-agent/conf.d/jmx.d/conf.yaml
