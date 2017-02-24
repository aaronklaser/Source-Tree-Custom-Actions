# Source-Tree-Custom-Actions
Revert Merge, Restore Reverted Merge

## Install

[Download](https://github.com/aaronklaser/Source-Tree-Custom-Actions/archive/master.zip) or Clone

> On Mac, you may need to set folder permission to these files

Open Terminal and change directories to the **Actions** folder, then run 
``` shell
chmod 0755 *
```
> You may need to rerun this if new files are added in the future

### Set Up Custom Actions

Go to `SourceTree -> Preferences -> Custom Actions -> Add` and fill custom action with the followiing parameters:

Menu Caption: `Action Name`

> Line 1 the comment block in each script file has the recommended action name so we can all be on the same page. 

- [ ] Open in Seperate Window
- [x] Show Full Output

Script to run: `/file_name.sh`

Parameters: `$SHA`

## How to Use

> This example uses the *Revert Merge No Commit* action

1. Checkout the branch you wish to use
2. On the graph, change the filter from **All Branches** to **Current Branch**
3. Search through the list of commits and find the **merge** you wish to remove from the branch
> **Important** This needs to be the commit which is the merge into the branch you are on. On the graph, the is line left most line.
4. *Right Click* on the commit description of the merge you wish to remove
5. Select *Custom Actions*
6. Select *Revert Merge No Commit*
7. Click on your working copy and review what is being remove from the branch.
8. Commit
> Steps 7 & 8 are not necessary if you choose and action that does not say *No Commit* as it is commited immediately. 

####Oops, undo what I just did

If *No Commit*
- Right Click on *File Status*
- Select *Reset*
- Click *Reset All* and confirm

If commited
- Right Click on the commit tags `orgin/branch_name`, this is usually **second** commit discription in the list
- Select branch_name to this commit
- Choose `Hard - discard all working copy changes` from the *Using mode: dropdown, and confirm

## License
Pay it forward