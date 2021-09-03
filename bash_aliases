alias os=openstack
function iu() {
	[ -z ${OS_AUTH_URL_IU+x} ] && echo "OS_AUTH_URL_IU not defined" && return 1
	[ -z ${OS_PROJECT_ID_IU+x} ] && echo "OS_PROJECT_ID_IU not defined" && return 1
	[ -z ${OS_PROJECT_DOMAIN_ID_IU+x} ] && echo "OS_PROJECT_DOMAIN_ID_IU not defined" && return 1
	export OS_AUTH_URL=${OS_AUTH_URL_IU}
	export OS_PROJECT_ID=${OS_PROJECT_ID_IU}
	export OS_PROJECT_DOMAIN_ID=${OS_PROJECT_DOMAIN_ID_IU}
	echo "OpenStack pointing to IU"
}

function tacc() {
	[ -z ${OS_AUTH_URL_TACC+x} ] && echo "OS_AUTH_URL_TACC not defined" && return 1
	[ -z ${OS_PROJECT_ID_TACC+x} ] && echo "OS_AUTH_PROJECT_ID_TACC not defined" && return 1
	[ -z ${OS_PROJECT_DOMAIN_ID_TACC+x} ] && echo "OS_PROJECT_DOMAIN_ID_TACC not defined" && return 1
	export OS_AUTH_URL=${OS_AUTH_URL_TACC}
	export OS_PROJECT_ID=${OS_PROJECT_ID_TACC}
	export OS_PROJECT_DOMAIN_ID=${OS_PROJECT_DOMAIN_ID_TACC}
	echo "OpenStack pointing to TACC"
}
