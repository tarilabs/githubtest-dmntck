FROM maven:3.6.0

LABEL "com.github.actions.name"="Publish DMN TCK website update"
LABEL "com.github.actions.description"="..."
LABEL "com.github.actions.icon"="git-commit"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/tarilabs/githubtest-dmntck"
LABEL "homepage"="https://github.com/tarilabs/githubtest-dmntck"
LABEL "maintainer"="tarilabs <matteo.mortari@gmail.com>"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
