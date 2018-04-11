input {

  # stdin { }

  jdbc {
    id => "logstash-jdbc-dataocean-do_charge_record"
    jdbc_driver_library => "{{ elk_home_dir }}/drivers/mysql-connector-java-5.1.36.jar"
    jdbc_driver_class => "com.mysql.jdbc.Driver"
    jdbc_connection_string => "{{ jdbc_connection_string }}"
    jdbc_user => "{{ jdbc_user }}"
    jdbc_password => "{{ jdbc_password }}"
    schedule => "* * * * *"
    statement => "{{ statement }}"
    jdbc_paging_enabled => true
    jdbc_page_size => 1000
    tracking_column => "id"
    use_column_value => true
  }
}


filter {

  grok {
    match => {
      "created_time" => ["%{TIMESTAMP_ISO8601:_created_time}"]
    }
  }

  date {
    match => ["_created_time", "ISO8601"]
    target => "@timestamp"
    remove_field => ["_created_time"]
  }

}


output {
  stdout {
    codec => rubydebug
  }

  elasticsearch {
    id => "dataocean-charge-record"
    hosts => ["localhost:9200"]
    user => "elastic"
    password => "changeme"
    index => "logstash-dataocean"
    document_type => "dataocean-charge"
  }
}
