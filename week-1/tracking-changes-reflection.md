# How does tracking and adding changes make developers' lives easier?

This allows developers to collaborate better. They can see each others changes and if they are often incremental, changes can be reverted.

# What is a commit?

A commit is like a save point of progress. It's a set of changes you can go back to later if needed.

# What are the best practices for commit messages?

It's best to keep the title under 50 characters and descriptive. The long description shouldn't be really long either.

# What does the HEAD^ argument mean?

HEAD^ is the second most recent commit. HEAD is the most recent and HEAD-3, -n, ... is the third and nth most recent.

# What are the 3 stages of a git change and how do you move a file from one stage to the other?

1. Include a file in Git with git add
2. Commit a file with git commit
3. Merge changes with git merge (on feature branch) and then a pull request (on master branch) and finally merging the pull request

# Write a handy cheatsheet of the commands you need to commit your changes?

git pull
git status
git co -b branch-name
git add
git commit

# What is a pull request and how do you create and merge one?

A pull request is when you request on GitHub.com to pull your changes made on your own branch to the master branch.

You create one by following the menu buttons on GitHub.com

# Why are pull requests preferred when working with teams?

They allow others to look at your changes before they are merged with the master branch which is always supposed to be fully functional.