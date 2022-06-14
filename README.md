# Example error Dynamic Module Federation with angular

This project was created following the official documentation on this link:
https://nx.dev/module-federation/dynamic-module-federation-with-angular


## Describing the issue
Following the documentation link of above:

### step 1 is create a project with static module federation, the result is:

- It works perfectly locally
- After execute the docker-compose.yml file of the project, this works perfectly on docker.

### step 2 is update the project with dynamic module federation set up, the result is:

- It works perfectly locally
- After execute the docker-compose.yml file of the project, **HOST PROJECT DOESN'T WORK** on docker.

## Reproduce the issue:

- First we need to use the NX console to make the build for both projects dashboard and login
- After that we need to run this command on the rrot folder of the project **docker-compose up --build**
- Then if we try to access to *http://localhost:4200/* we will see this error on the console:

![alt text](https://github.com/ArticosDev/NX_Dynamic_Federation_Module/blob/[branch]/Error_screenshot.jpg?raw=true)

## Aditional Comments:
We are working un a huge project with my team and we got exactly the same error, we created this repository just reproduce the issue for NX team.