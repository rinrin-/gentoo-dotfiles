# my gentoo login init scripts.
#

# create an alias to run yadm for system files
alias sysyadm="sudo -E yadm --yadm-dir /etc/yadm --yadm-data /etc/yadm/data"

if command -v portageq >/dev/null 2>&1; then
   videocards=$(portageq envvar VIDEO_CARDS)
   if [[ $videocards == "d3d12" ]]; then
       GALLIUM_DRIVER=d3d12
       export GALLIUM_DRIVER
   fi
fi
