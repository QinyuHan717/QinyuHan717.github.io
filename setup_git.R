usethis::use_git() ## Choose the option to make the commit, then to restart RStudio
## If you don't have git installed, you will likely benefit from reading
## "Happy Git and GitHub for the useR" at https://happygitwithr.com/.

## Check GitHub username info 
usethis::edit_git_config()

## After the restart, we next need to change the default Git branch to "gh-pages".
## This will make our lives a bit easier later on, as this specific name is used by
## GitHub pages https://pages.github.com/ for websites.
usethis::git_default_branch_rename(to = "gh-pages")

## Create token information for your GitHub account
usethis::create_github_token()

## Save the token information on this laptop for future use
gitcreds::gitcreds_set() 

## Now run use_github()
usethis::use_github()

## Create website using the solana template
postcards::create_postcard(template = "solana")
