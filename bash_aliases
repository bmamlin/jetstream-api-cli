alias os=openstack

os_api () {
  local OS_AUTH_URL_VALUE=OS_AUTH_URL_$1
  local OS_PROJECT_ID_VALUE=OS_PROJECT_ID_$1
  local OS_PROJECT_DOMAIN_ID_VALUE=OS_PROJECT_DOMAIN_ID_$1
  if [ -z ${!OS_AUTH_URL_VALUE+x} ]; then
    echo "OS_AUTH_URL_$1 not defined";
  else
    export OS_AUTH_URL="${!OS_AUTH_URL_VALUE}";
    export OS_PROJECT_ID="${!OS_PROJECT_ID_VALUE}"
    export OS_PROJECT_DOMAIN_ID="${!OS_PROJECT_DOMAIN_ID_VALUE}"
    echo "OpenStack pointing to $1";
  fi
}

iu () {
  os_api IU
}

tacc () {
  os_api TACC
}

os_api $OS_DEFAULT_API