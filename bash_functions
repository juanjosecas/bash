# vim: ft=sh sw=2 ts=2 expandtab
unset partial_path
_push_to_path () {
	if [ -z ${partial_path} ]; then
		partial_path=${1}
	else
		partial_path=${partial_path}:${1}
	fi
}

_export_path () {
	export PATH=${partial_path}
	unset partial_path
}
