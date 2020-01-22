# onchain-crystal

## Generating the code

The swagger for onchain is available at https://onchain-api.azurewebsites.net/docs/onchain.swagger.json

`curl -O https://onchain-api.azurewebsites.net/docs/onchain.swagger.json`

Convert to open API 3

Load the json into https://editor.swagger.io/

click edit / convert to OPEN API 3 and save as onchain.swagger.yaml

Convert the 200 to "200"

Then from outside the devcontainer.

`docker run -v %CD%:/tmp --rm ianpurton/crystal-openapi-codegen /tmp/onchain.swagger.yaml /tmp`

