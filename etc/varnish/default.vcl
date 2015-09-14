# varnish configuration created Mon Sep 14 13:02:05 EEST 2015
vcl 4.0;
import std;
import directors;

### Declare backends
backend simplewebapp1_node107 {
.host = "node107";
.port = "5050";
}

backend simplewebapp1_node108 {
.host = "node108";
.port = "5050";
}

backend simplewebapp2_node107 {
.host = "node107";
.port = "6060";
}

backend simplewebapp2_node108 {
.host = "node108";
.port = "6060";
}

sub vcl_init {
new director_simplewebapp1 = directors.round_robin();
new director_simplewebapp2 = directors.round_robin();
director_simplewebapp1.add_backend(simplewebapp1_node107);
director_simplewebapp1.add_backend(simplewebapp1_node108);
director_simplewebapp2.add_backend(simplewebapp2_node107);
director_simplewebapp2.add_backend(simplewebapp2_node108);
}

sub vcl_recv{
if (req.url ~ "^/simplewebapp1/") {
set req.backend_hint = director_simplewebapp1.backend();
}
if (req.url ~ "^/simplewebapp2/") {
set req.backend_hint = director_simplewebapp2.backend();
}
}
