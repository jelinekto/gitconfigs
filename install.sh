#!/bin/sh

configdir="$(dirname "$(realpath -s "$0")")"

if [ ! -e "${configdir}/sets.conf" ]; then
  echo "Create sets.conf first."
  exit 1
else
  sets="$(cat "${configdir}/sets.conf")"
fi

if [ "$USER" = 'root' ]; then
  realuser="$(awk -F ':' '/:1000:/ {print $1}' /etc/group)"
  [ -z "$realuser" ] && echo "Could not find an user account, proceeding as root..." && realuser='root'
else
  realuser="$USER"
fi

if [ "$HOME" = '/root' ]; then
  realhome="/home/$realuser"
  [ "$realhome" = '/home/root' ] && [ ! -e "$realhome" ] && ln -s /root /home/root
elif [ "$HOME" = '/data/data/com.termux/files/home' ]; then
  realhome="/home"
else
  realhome="$HOME"
fi

for set in $sets; do
  if [ ! -d "${configdir}/${set}" ]; then
    echo "Set '$set' does not exist, not symlinking anything..."
    exit 1
  fi
done

for set in $sets; do
  for file in "${configdir}/${set}"/*; do
    target="${PREFIX}/$(echo "$file" | awk -F "${configdir}/${set}" '{print $2}' | tr ',' '/' | sed "s;HOME;$realhome;g")"
    mkdir -p "$target" 2>/dev/null
    echo "Installing '$target'"
    rm -R "$target"
    ln -s "$file" "$target" || exit 1
  done
done

chown -R "${realuser}:${realuser}" "$configdir"/*/HOME,*
