#!/bin/sh

# Set the home directory to the writable location
export XMAGE_HOME="$SNAP_USER_COMMON/xmage"

# Run the JAR file located in the Snap's read-only directory
exec "$SNAP"/usr/lib/jvm/java-21-openjdk-amd64/bin/java -Duser.home="$XMAGE_HOME" -jar "$SNAP_USER_COMMON/xmage/XMageLauncher-0.3.8.jar"
