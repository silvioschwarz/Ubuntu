# find files > 100mb
find . -size +100M | xargs du -sh

#add to gitignore
find . -size +100M | sed -e 's/^\.\///' >> .gitignore

# increase post buffer size to 50 MB
git config http.postBuffer 52428800


# change to ssh
git remote add origin git@github.com:username/project.git

git filter-branch --tree-filter 'rm -rf path/to/your/file' HEAD
git push


# Adjust the following variables as necessary
REMOTE=origin
BRANCH=$(git rev-parse --abbrev-ref HEAD)
BATCH_SIZE=500

# check if the branch exists on the remote
if git show-ref --quiet --verify refs/remotes/$REMOTE/$BRANCH; then
    # if so, only push the commits that are not on the remote already
    range=$REMOTE/$BRANCH..HEAD
else
    # else push all the commits
    range=HEAD
fi
# count the number of commits to push
n=$(git log --first-parent --format=format:x $range | wc -l)

# push each batch
for i in $(seq $n -$BATCH_SIZE 1); do
    # get the hash of the commit to push
    h=$(git log --first-parent --reverse --format=format:%H --skip $i -n1)
    echo "Pushing $h..."
    git push $REMOTE $h:refs/heads/$BRANCH
done
# push the final partial batch
git push $REMOTE HEAD:refs/heads/$BRANCH





#!/bin/sh
#
# gitadd - safe run of (git add .; git commit; git push)
#
# Usage: gitadd [commit message]
#
# When adding too many files to github, error may arise such as
#    remote: fatal: pack exceeds maximum allowed size
# or
#    fatal: The remote end hung up unexpectedly
#
# This command, gitadd, avoids such error by committing less than 100MB data
# for each step. 
# 
# Increasig post buffer size by the following command is also recommended.
#
# git config http.postBuffer 52428800
#
# Related article: Uploading many files to GitHub repository
# English: http://sekika.github.io/2016/06/06/github-many-files/
# Japanese: http://sekika.github.io/2016/06/03/github-many-files/

# Log file
AddLog="/dev/null"
CommitLog="/dev/null"
PushLog="/dev/null"

# Commit message
message=$@
if [ -z "$message" ]; then
  message="commit by gitadd command"
fi

# Commit step by step
while read a b c
do
  total=`find . -type f -size +$a -size -$b | grep -v "^\./\.git/" | wc -l | sed -e 's/ //g'`
  if [ $total -gt "0" ]; then
    echo "$total Files < $b                              "
  fi
  find . -type f -size +$a -size -$b | grep -v "^\./\.git/" | cat -n | while read num file
  do
    echo "Adding: "`expr $num \* 100 / $total`"% ($num/$total)\r\c"
    git add "$file" 1>>$AddLog 2>>$AddLog
    if [ `echo $num | grep "$c"` ]; then
      echo "Committing $num                    \r\c"
      git commit -m "$message" 1>>$CommitLog 2>>$CommitLog; git push 1>>$PushLog 2>>$PushLog
    fi
  done
  if [ $total -gt "0" ]; then
    echo "Last commit of this stage                \r\c"
    git commit -m "$message" 1>>$CommitLog 2>>$CommitLog; git push 1>>$PushLog 2>>$PushLog
  fi
done << _LIST_
0 8k 0000$
8k 80k 000$
80k 800k 00$
800k 8M 0$
8M 100M $
_LIST_

# Commit all the files
#
# Basically all the files < 100MB has been committed, and files larger
# than 100MB are left, which should be handled with LFS in GitHub.
# If you prefer not managing files of this size, the files should be
# specified in .gitignore
#
echo "All files                       "
git add . 1>>$AddLog 2>>$AddLog
git commit -m "$message" 1>>$CommitLog 2>>$CommitLog; git push 1>>$PushLog 2>>$PushLog

echo "Finished"
