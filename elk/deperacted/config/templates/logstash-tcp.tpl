input {

  # stdin { }

  tcp {
    port => 6666
    type => "docker-tcp"
    mode => "server"
    tags => ["decision-engine", "rule-engine"]
  }
}


filter {

}


output {
  stdout {
    codec => rubydebug
  }

  elasticsearch {
    id => "decision-engine"
    hosts => ["localhost:9200"]
    user => "elastic"
    password => "changeme"
    index => "logstash-decision-engine"
    document_type => "de-logs"
  }
}
