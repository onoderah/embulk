# Embulk Container Image

## Environments

Docker `-e` Parameter.

|Name       |Description|
|:----------|:----------|
|PLUGINS    |Embulk plugins, install plugin before `embulk run. separate spaces. ex.) `embulk-input-mysql embulk-output-mysql`|
|BUNDLE_FILE|`-b` parameter of `embulk run`. bundle file location.|
|CONFIG_FILE|`embulk run` yaml file.|
|RESUME     |`-r` parameter of `embulk run`. resume file location.|
|LOG_LEVEL  |`-l` parameter of `embulk run`. log level. (`error`, `warn`, `info`, `debug` or `trace`)|
