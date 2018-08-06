## 
## create_repo_in_terminal.sh
## @ianpasm(kno30826@gmail.com)
## 2018-04-05 15:19:31
## 
 
#!/bin/bash

# Ref: https://www.viget.com/articles/create-a-github-repo-from-the-command-line/


# Create token
# Open this site https://github.com/settings/tokens to create token and remember it!!!!YOU MUST REMEMBER IT!!!

# Way1
curl -u "$username:$token" https://api.github.com/user/repos -d '{"name":"'$repo_name'"}'








