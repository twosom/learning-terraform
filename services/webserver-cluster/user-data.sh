#!/bin/bash

cat >index.html <<EOF
<h1>Hello, Ming And Mang!!</h1>
<p><DB address : ${db_address}/p>
<p>DB port: ${db_port}</p>
EOF

nuhup busybox httpd -f -p ${server_port} &
