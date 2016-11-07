alias iu='if [ -z ${OS_AUTH_URL_IU+x} ]; then echo "OS_AUTH_URL_IU not defined"; else export OS_AUTH_URL="$OS_AUTH_URL_IU"; echo "OpenStack pointing to IU"; fi'
alias tacc='if [ -z ${OS_AUTH_URL_TACC+x} ]; then echo "OS_AUTH_URL_TACC not defined"; else export OS_AUTH_URL="$OS_AUTH_URL_TACC"; echo "OpenStack pointing to TACC"; fi'
