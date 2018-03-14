R Studio and GitHub
========================================================
author: Jill E. Thomley (thomleyje@appstate.edu)
date: Sunday, February 11, 2018 @ 06:29:27 PM
autosize: true



Let's Begin!
========================================================

Go to GitHub (https://github.com) and log in to your account.

From the main GitHub page, choose the green “New repository” button. You can also choose “Repositories” on your profile page and then the green “New” button.

Create a repository named **datascience1repo**. 

* Choose "Public"
* Choose "Initialize this repository with a README"
* A license is optional; if you want one, the [MIT license](https://opensource.org/licenses/MIT) is a good general purpose license.



Aaaaand Go!
========================================================

Click the big green "Create repository" button

Choose the green “Clone or Download” button
* Select "Use HTTPS"
* Copy the HTTPS clone URL to your clipboard 

Now let's head back over to R Studio...

Note: You can use SSH authentication if you want to. There's a GitHub page **[here](https://help.github.com/articles/which-remote-url-should-i-use/)** that discusses the differences.



Coming Out of Your Shell
========================================================

Chapter 10 and Appendix A of **[Happy Git and GitHub for the useR](http://happygitwithr.com/)** discusses how to use shell commands to clone, commit, push, etc. We will mostly discuss how to use the point and click Git interface in R Studio, which can be found in Chapter 13.

You will create a new **project** in R Studio with version control enabled. That is where you will clone your Git repository. You will do any related work in this project. 

You may want to create a subdirectory in your **Home** directory in R Studio for all your version controlled projects. For example, my directory **git_repositories**.

There is a nice discussion about working with R projects **[here](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects)**.



Let's Make a Project
========================================================

File > New Project > Version Control > Git

Paste in the repository URL from the the clipboard

Choose your subdirectory, if you choose to use one

Create Project!

Soon we will create a file, make some changes, and perform our first commit and push, but first we need to configure git commit information and set the system to store our login and password so we do not have to enter it for every commit.



Commit Name and Email
========================================================

Okay, this part we need to do in the terminal. You may also refer to Chapter 11 of **[Happy Git and GitHub for the useR](http://happygitwithr.com/)** or **[GitHub](https://help.github.com/) Help**. Do you have a "Terminal" tab with "Console"? If not... 

Tools > Terminal > New Terminal

In the terminal, type the following:

`git config --global user.email "who@where"`

`git config --global user.name "Commit Name"`

This sets an **[email address](https://help.github.com/articles/setting-your-commit-email-address-in-git/)** and **[ID](https://help.github.com/articles/setting-your-username-in-git/)** to be associated with commits. They can be different from your primary username and email.



Cache Those Credentials
========================================================

Don't want to type in your username and password for each commit? Neither do I.

In the terminal, type the following:

`git config --global credential.helper 'cache --timeout=10000000'`

Note: Should be a a single line with no space between `--` and `timeout`! 

This will store your password for ten million seconds, which is about 16 weeks, enough for a semester.






Create, Commit, Push, Pull
========================================================

I'm just going to talk here for now...

* Making changes in R Studio

* Making changes in GitHub

Changes made in R Studio are *pushed* to GitHub. Changes made in GitHub are *pulled* to R Studio. You must *commit* your changes before you push or pull.



Creating your Web Page
========================================================

Create a repository named *username*.github.io, where *username* is your GitHub username (e.g., **jillthomley.github.io**).

More TBA!



References
========================================================

https://help.github.com/

* https://help.github.com/articles/setting-your-username-in-git/
* https://help.github.com/articles/setting-your-commit-email-address-in-git/
* https://help.github.com/articles/caching-your-github-password-in-git/

https://pages.github.com/

http://happygitwithr.com/

https://help.github.com/articles/which-remote-url-should-i-use/



https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects
