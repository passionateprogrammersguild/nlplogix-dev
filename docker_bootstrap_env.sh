
#
# script to boot-strap the docker environment
#

xbuild LogixStudio.sln

mono LogixStudio.Cons/bin/Debug/LogixStudio.Cons.exe

exit 0
