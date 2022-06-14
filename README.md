# Example error Dynamic Module Federation with angular

This project was created following the official documentation on this link:
https://nx.dev/module-federation/dynamic-module-federation-with-angular


## Describing the issue
Following the documentation:

### step 1 is create a project with static module federation, the result is:

-It works perfectly locally
-After execute the docker-compose.yml file of the project, this works perfectly on docker.

### step 2 is update the project with dynamic module federation set up, the result is:

-It works perfectly locally
-After execute the docker-compose.yml file of the project, **HOST PROJECT DOESN'T WORK** on docker.

## Compose command used:
docker-compose up --build

## Screenshot of the error found
![alt text](https://github.com/[username]/[reponame]/blob/[branch]/image.jpg?raw=true)

## Aditional Comments:
We are working un a huge project with my team and we got exactly the same error, we created this repository just reproduce the issue for NX team.