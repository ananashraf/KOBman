#!/bin/bash

kob_rel_version=$1
#kob_archive_download_repo="KOBman_target_repo"
kob_rel_stage_area=$HOME/$USR/tmp
#kob_namespace="asa1997"

source $HOME/$USR/KOBman/bin/release_var_setup.sh

#Checkout latest tag
git checkout tags/$kob_rel_version -b $kob_rel_version

echo "making the tar files..."
tar -cvf $KOBMAN_DIR/bin/kobman_latest.tar $KOBMAN_DIR/src/ $KOBMAN_DIR/bin/
cp $KOBMAN_DIR/bin/kobman_latest.tar $KOBMAN_DIR/bin/kobman-$kob_rel_version.tar

#The branch is used to prepare the target repo and pushing
mkdir $kob_rel_stage_area
git clone $LINK_TO_DOWNLOAD_REPO $kob_rel_stage_area
mkdir $kob_rel_stage_area/$KOB_ARCHIVE_DOWNLOAD_REPO/dist

#Moving necessary files to the target repo
mv $KOBMAN_DIR/bin/kobman*.tar $kob_rel_stage_area/$KOB_ARCHIVE_DOWNLOAD_REPO/dist
mv $KOBMAN_DIR/scripts/get.kobman.io $kob_rel_stage_area/$KOB_ARCHIVE_DOWNLOAD_REPO/dist


cd $kob_rel_stage_area/$KOB_ARCHIVE_DOWNLOAD_REPO/
git pull
echo "saving changes and pushing"
git add .
git commit -m "Released the version $kob_rel_version"
git push origin master -f

rm -rf $kob_rel_stage_area
git checkout master

git branch -D $kob_rel_version


