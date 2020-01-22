FROM ianpurton/lucky-devcontainer:latest AS base

FROM base AS ci-cd

# ,------.                              ,--.                                               ,--.   
# |  .-.  \   ,---.  ,--.  ,--.  ,---.  |  |  ,---.   ,---.  ,--,--,--.  ,---.  ,--,--,  ,-'  '-. 
# |  |  \  : | .-. :  \  `'  /  | .-. : |  | | .-. | | .-. | |        | | .-. : |      \ '-.  .-' 
# |  '--'  / \   --.   \    /   \   --. |  | ' '-' ' | '-' ' |  |  |  | \   --. |  ||  |   |  |   
# `-------'   `----'    `--'     `----' `--'  `---'  |  |-'  `--`--`--'  `----' `--''--'   `--'   
#                                                    `--'                                                                       
FROM ci-cd AS development

RUN echo "alias gst='git status' && alias gcm='git checkout master' && alias gp='git push' && alias gcam='git commit -a -m' && alias gpsup='git push --set-upstream origin $(git_current_branch)' && alias gcb='git checkout -b'" >> ~/.bashrc