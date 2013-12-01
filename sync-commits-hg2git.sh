# Sync commit from an HG repo to a Git repo in the same directory
#
# http://sushihangover.azurewebsites.net/post/Irony-Syncing-fromto-HG-and-GIT-in-same-directory-Part-2
# 
function migratecommits {
RED=$(tput setaf 1)
NORMAL=$(tput sgr0)
hg log -r : |grep "changeset:   "|cut -f 3 -d : >$1
hg log|grep changeset|wc -l
count=0
while read cset; do
  printf '{RED}%d %s\n{NORMAL}' "$count" "$cset"
  (( count++ ))
  hg log --rev $cset > /tmp/hg_commit_info.tmp
  hg update -r $cset -C
  echo -e "hg2git:      Preserving hg log changeset\n$(cat /tmp/hg_commit_info.tmp)" > /tmp/hg_commit_info.tmp
  git add --all 
  tail -r /tmp/hg_commit_info.tmp | git commit -a --file=- # --dry-run
  hg up -C
done < $1
}
