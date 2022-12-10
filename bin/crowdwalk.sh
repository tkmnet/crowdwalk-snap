#!/bin/sh

sed -E 's%.*/etc/fonts/conf.d.*%%' -i $HOME/.config/fontconfig/fonts.conf 2>/dev/null >/dev/null
$(dirname $0)/usr/lib/jvm/java-17-openjdk-amd64/bin/java -Duser.home=$SNAP_USER_DATA -jar $(dirname $0)/jar/crowdwalk.jar $*
exit $?
