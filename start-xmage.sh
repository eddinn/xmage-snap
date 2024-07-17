#!/bin/sh

# Ensure the /opt/xmage directory exists
if [ ! -d "$SNAP_COMMON"/opt/xmage ]; then
    mkdir -p "$SNAP_COMMON"/opt/xmage;
fi

# Set the home directory to the writable location
export XMAGE_HOME="$SNAP_COMMON/opt/xmage"

# Run the JAR file located in the Snap's read-only directory
exec "$SNAP"/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home="$XMAGE_HOME" -jar "$SNAP_COMMON/opt/xmage/XMageLauncher-0.3.8.jar"
