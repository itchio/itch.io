#!/bin/bash

ls graphs/*.r | while read line; do
	echo "$(tput setaf 4)>>$(tput sgr0) $line"
	Rscript "$line"
done
