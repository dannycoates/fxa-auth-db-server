#!/bin/sh
cd /app
node bin/db_patcher.js
exec node bin/db_server.js
