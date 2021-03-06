#!/bin/bash

PROJECT_FOLDER=$(dirname "$(dirname "$(realpath "$0")")")
declare -r PROJECT_FOLDER=${PROJECT_FOLDER}

TEST_SSH=${PROJECT_FOLDER}/tests-result/clone-all-on-ssh
declare -r TEST_SSH=${TEST_SSH}

rm -rf "${TEST_SSH}"
mkdir -p "${TEST_SSH}"

#bash -ex
"${PROJECT_FOLDER}/glCloneAllProjects.sh" --ssh --destination "${TEST_SSH}"

TEST_HTTP=${PROJECT_FOLDER}/tests-result/clone-all-on-http
declare -r TEST_HTTP=${TEST_HTTP}

rm -rf "${TEST_HTTP}"
mkdir -p "${TEST_HTTP}"

#bash -ex
"${PROJECT_FOLDER}/glCloneAllProjects.sh" --ssh --destination "${TEST_HTTP}"
