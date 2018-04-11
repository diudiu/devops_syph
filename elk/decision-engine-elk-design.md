
## 决策引擎日志存储设计

### 日志存储设计

决策引擎（包括规则引擎和特征工厂）的日志需要实时（或准实时）记录到ELK平台，对于日志的存储设计如下：

`Elasticsearch`中

- index: logstash-decision-engine
- document_type

  规则引擎：logs-rule-engine
  
  特征工厂：logs-featurefactory
