#!/bin/sh
if [ -n "$PLUGINS" ] ; then
  embulk gem install $PLUGINS
	
fi
if [ -f "$BUNDLE_FILE" ] ; then
  BUNDLE="-b $BUNDLE_FILE"
fi
CONFIGFILE="/etc/embulk/${CONFIG}"
RESUME="-r ${RESUME:-/etc/embulk/resume.txt}"
LOG_LEVEL="-l ${LOG_LEVEL:-info}"

embulk run $CONFIGFILE $RESUME $LOG_PATH $LOG_LEVEL $BUNDLE