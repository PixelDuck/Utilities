Update local branch from remote
```
git fetch origin develop:develop
```
Pick some files on a branch to the local working copy (no commit)
```
git diff-tree --no-commit-id --name-only -r <branch_name>
git checkout <branch_name> -- file1 file2
```
Put changes in a stash
```
git stash save <MSG>
```
show log for a file
```
git log -p <file>
```
push for review
rebase with develop change
```
git rebase develop
```
push to electronico ci for a jenkins build
```
git push origin HEAD:refs/users/olmartin/heads/build-electronico/<NAME>
```
if build is ok, push to refs/for/dev
```
git push origin HEAD:refs/for/dev
```
Check on gerrit that q review was created: https://gpslocal/#/
Squash a commit
Sometime your branch has 2 commits and you want just to push only one. The idea is to squash the second commit in the first one in order to present only one commit
A solution is to make an interactive rebase in order to set the second commit as a squash instead of a pick
```
git rebase -i origin/develop
```
You will see one line per commit starting with the keyword "pick"
Keep the first commit as it and change other commit to start with "s" instead of "pick"
Validate the rebase et voila
Count how many files have been modified in the current commit
```
git whatchanged -1 --format=oneline | wc -l
```
Work on another user branch
```
git fetch origin refs/users/fbertrandprevost/heads/feature/sproc-integration && git checkout -b <newBranchName> FETCH_HEAD
git fetch origin refs/users/fbertrandprevost/heads/feature/sproc-integration && git rebase FETCH_HEAD
``` 
 
Retrieve an history of a squashed branched
```
git reflog
git br <NAME> <COMMIT_ID>
```

Create a new branch from master, add another branch full of commits but keep only the result in one commit
```
git checkout -b work master
git merge --squash my_branch_with_loooooot_of_commits
git commit -m "my message"
```
