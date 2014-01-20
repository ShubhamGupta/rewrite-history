#!/bin/sh
 
git filter-branch --env-filter -f '
 
an="$GIT_AUTHOR_NAME"
am="$GIT_AUTHOR_EMAIL"
cn="$GIT_COMMITTER_NAME"
cm="$GIT_COMMITTER_EMAIL"
 
if [ "$GIT_COMMITTER_EMAIL" = "sawan.gupta92@gmail.com" ]
then
    cn="Shubham Gupta"
    cm="shubham.gupta@vinsol.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "sawan.gupta92@gmail.com" ]
then
		an="Shubham Gupta"
    am="shubham.gupta@vinsol.com"
fi
 
export GIT_AUTHOR_NAME="$an"
export GIT_AUTHOR_EMAIL="$am"
export GIT_COMMITTER_NAME="$cn"
export GIT_COMMITTER_EMAIL="$cm"
'