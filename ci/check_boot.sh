#!/usr/bin/env bash

function checkFiles() {
    arr=("${@}")
    result=0
    for file in "${arr[@]}"; do
        if [[ ! -e "$file" ]]; then
            result=1
            echo "Expected $file does exist, however it does not."
        fi
    done

    return ${result}
}

bootFileCollection=(
    deployment/default/
    deployment/default/bin/
    deployment/default/context/
    deployment/default/env/
    deployment/default/images/
    deployment/default/terraform/
    deployment/default/_git
    deployment/default/deploy
    deployment/default/docker-compose.test.xdebug.yml
    deployment/default/docker-compose.test.yml
    deployment/default/docker-compose.xdebug.yml
    deployment/default/docker-compose.yml
    deployment/default/project.yml
    deployment/default/spryker.pfx
)

checkFiles "${bootFileCollection[@]}"
