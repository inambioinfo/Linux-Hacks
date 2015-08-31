#!/bin/bash

#Easy way to get md5 checksums for all folders/subfolders/files of a parent folder
#this will get the md5 sums and store in checksums.md5
find parent_folder -type f -print0 | xargs -0 md5sum > ./checksums.md5

#this will check whether your md5 checksums are OK or not
md5sum -c checksums_backup.md5

#give it a try on a small folder which as a subfolder and files
