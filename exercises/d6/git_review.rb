1. What does the git init command do?
git init: initializing a local GIt repository in the folder that I was working on. 
-> creates a hidden .git folder that locally tracks changes made to the project. 
-> nothing related to do with GitHub. 



2. What does git add do? How is it different from git commit?
	git add: add the changes we made with files to the staging area. 
	-> git add -A 
	I can also add a file individually by typing like following: git add file1

3. What is the difference between staged and committed (or versioned) files? When might you stage something and not commit it?
staging area: loading dock where I can decide which changes I want to ship(commit)
The staged files: the files that any changes have been made that are not saved in the local respo yet. 
THe committed files: any changes made with the files are saved in local git respo. 



4. What is  the shortcut for adding all files and commiting?
Just comebine the commands
git add -A && git commit -m "comment" 

5. How do you unstage a staged file? How do you go back to an old version of a committed file?
	1) unstage a staged file <-> git reset HEAD <file> 
	  git commit --amend  <->This command takes your staging area and uses it for the commit. 
	  example: 
	  $ git commit -m 'initial commit'
	  $ git add forgotten_file
      $ git commit --amend


	2) git checkout or git merge  *** need to ask 

6. Why are commit messages very important?

-When there is more than a person workin gon a project, collaborators know changes in code via commit messages. 
7. How do I revert to a previous commit?
	git checkout
	git reset --soft HEAD~1


8. How do you exit out of vi? (Also called vim.)
	=q 