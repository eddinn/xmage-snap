#!/bin/sh

# Ensure the xmage directory exists in SNAP_USER_COMMON
if [ ! -d "$SNAP_USER_COMMON"/xmage ]; then
    mkdir -p "$SNAP_USER_COMMON"/xmage;
fi

# Copy necessary files to xmage in SNAP_USER_COMMON if they don't exist
if [ ! -f "$SNAP_USER_COMMON"/xmage/XMageLauncher-0.3.8.jar ]; then
    cp -rp "$SNAP"/XMageLauncher-0.3.8.jar "$SNAP_USER_COMMON"/xmage/
    cp -rp "$SNAP"/installed.properties "$SNAP_USER_COMMON"/xmage/
    cp -rp "$SNAP"/xmage/ "$SNAP_USER_COMMON"/xmage/
fi

# Change ownership to the current user and set appropriate permissions
chown -R "$USER:$USER" "$SNAP_USER_COMMON"/xmage
chmod -R 755 "$SNAP_USER_COMMON"/xmage