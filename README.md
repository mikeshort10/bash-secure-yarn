## Why use this?
If you've ever gotten an email from GitHub saying that you have one or more repos with dependency security vulnerabilities, an easy (though tedious) fix is typically to delete the `yarn.lock` (or `package-lock.json`) and reinstall the dependencies. Often this updates them to a newer version with patches for the security vulnerabilities. However, this involves:

1) `git clone`ing the repo
2) `rm yarn.lock` and  `yarn install`ing the dependencies again
3) `git` `add`, `commit`, and `push` the changes back to the repo
4) and possibly deleting the downloaded file

This is where `secure-yarn` comes in! Simply run this script, and your repos will make themselves more secure with just enough time to make another cup-o-joe ☕️

---

## How it works 
0) Make sure you're running a bash shell

1) **Add the .bashrc file your home directory**, or if you already have a .bashrc file, add it to your current .bashrc file

2) **Replace YOUR_USERNAME** in the code with your GitHub username. For example, I would replace it with. You can always run this script on a different username by passing a second parameter to the script; the username you add will simply be the default.

3) **Save the file**

4) **Run `source .bashrc`** in Terminal from the home directory to make sure you're running the updated .bashrc.

5) **Run `secure-yarn REPO_NAME`**. For example, to run it on this repo, I would run `secure-yarn bash-secure-yarn`.

All done!

---

## Customizations
- If you're using `npm` instead of `yarn` to install your packages, replace lines 8 and 9 of the code with:

    ```
    rm package-lock.json;
    npm install;
    ```
- `yarn audit --fix` is optional, but will confirm the remaining vulnerabilities, which should ranked be no higher than Low. Again, if you're using `npm`, replace this with `npm audit`
- `rm -rf $repo` is also optional, but it will delete the folder once the script process ends
