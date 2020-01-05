#!/bin/sh

function list_to_one() {
    local list=
    local arr=
    local i=
    local str=
    list=$(
        cat <<EOF
--json
--long
EOF
    )
    if [ -n "${1}" ]; then
        list="${1}"
    fi

    list=$(echo "$list" | sed "/^ *#/d" | sed "/^$/d")
    # | sed "s/^ *//g"| sed "s/ *//g"
    #arr=${list//,/ }
    #str=
    #for i in "${arr[@]}"; do
    #str="$str $i"
    #done
    #str=$(echo "$str" | sed "s/^ *//g" | sed "s/ *$//g")
    #echo "$str"
    echo $list
}

listOpts=$(
    cat <<EOF
fix
#--package-lock-only
#--only=prod
#--only=dev
#--force
--dry-run

#--json=false
#--parseable=false
EOF
)
#list_to_one
opts=$(list_to_one "$listOpts")
echo "npm audit \$opts"
npm audit $opts

#./dev/npm-audit.sh
