Hostname "collectd-docker"

FQDNLookup false
Interval 10
Timeout 2
ReadThreads 5

LoadPlugin statsd
LoadPlugin cpu
LoadPlugin write_riemann

<Plugin statsd>
  Host "::"
  Port "8125"
  DeleteSets      true
  TimerPercentile 90.0
</Plugin>

<Plugin "write_riemann">
 <Node "service">
   Host "asimov"
   Port "5555"
   Protocol UDP
   StoreRates true
   AlwaysAppendDS false
 </Node>
</Plugin>
