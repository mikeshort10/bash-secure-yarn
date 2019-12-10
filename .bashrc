# update security on branches
secure-yarn () {
	repo=$1;
  # defaults to your GitHub profile unless you pass in a second param
	github_username="${2:-YOUR_USERNAME}";
	git clone "https://github.com/$git_profile/$repo";
	cd $repo;
	rm yarn.lock;
	yarn install;
	git add .;
	git commit -m "patch security vulnerabilities";
	git push;
  # optional to confirm vulnerabilities are fixed
	yarn audit --fix;
	cd ..;
  # optional if you want to delete file after process is finished
	rm -rf $repo;
}
