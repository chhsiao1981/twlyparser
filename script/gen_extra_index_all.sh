#!/bin/bash

current_dir=`pwd`
base_current_dir=`echo "${current_dir}"|sed '/s.*\//g'`
if [ "${base_current_dir}" == "script" ]
then
  cd ..
fi

script/gen_extra_files.sh

script/gen_extra_index.sh

cd ${current_dir}
