#!/bin/sh
set -e
mkdir -p dist
plugin_file=catchup.ais
widget_file=widget/catchup_widget.ais

printf '{\n  "type": "plugin",\n  "data": %s\n}\n' "$(jq -Rs '.' < "$plugin_file")" > dist/catchup.json
sha512sum "$plugin_file" | awk '{print $1}' > dist/catchup.sha512

printf '{\n  "type": "plugin",\n  "data": %s\n}\n' "$(jq -Rs '.' < "$widget_file")" > dist/catchup_widget.json
sha512sum "$widget_file" | awk '{print $1}' > dist/catchup_widget.sha512
