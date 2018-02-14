# Desmos-Docker
The [Desmos](https://www.desmos.com/) website, ported for local and offline use in [Docker](https://docker.com/).<br>
## Setup
If you don't have Docker installed on your machine already, run this command:<br>
`curl -fsSL get.docker.com -o get-docker.sh && sudo bash get-docker.sh`

Git Clone this Repository:<br>
`git clone https://github.com/fracturedface/Desmos-Docker.git`

Build the container:<br>
`docker build -t {image-name} Desmos-Docker/`

Run the Container:<br>
`docker create --name={name} -p 54487:54487 {image-name}`<br>
`docker start {name}`<br>
Now you can head to [localhost:54487](http://localhost:54487) to use the site on your local machine. If you want to use the site on other systems within the same network, you can find your systems IP address by typing `hostname -I` into a terminal. The first listed address should be your LAN address.<br>
## Alternativley:<br>
This only works for most Debian-Based operating systems. Use at your own risk. Open a terminal and use the following command:<br>
`sudo bash install.sh >> ~/desmosinstall.log && exit`<br>
If all goes according to plan, it should install Docker, git clone the repository, and build then set up your docker container. The log for this script should be located in your home directory under the name `desmosinstall.log`. After the script has finished, the terminal will exit.

### Credits
All files in [assets](./assets) belong to [Desmos](https://www.desmos.com/).
