# Desmos-Docker
The [Desmos](https://www.desmos.com/) website, ported for offline use in [Docker](https://docker.com/).<br>
<img src="https://raw.githubusercontent.com/fracturedface/Desmos-Docker/master/screenshot.png"/>
## Setup
If you don't have Docker installed on your machine already, run this command:<br>
`curl -fsSL get.docker.com -o get-docker.sh && sudo bash get-docker.sh`<br>
Git Clone this Repository:<br>
`git clone https://github.com/fracturedface/Desmos-Docker.git`<br>
Build the container:<br>
`docker build -t {image-name} Desmos-Docker/`<br>
Run the Container:<br>
`docker create --name={name} -p 54487:54487 {image-name}`<br>
`docker start {name}`<br>
Now you can head to [localhost:54487](http://localhost:54487) to use the site on your local machine. If you want to use the site on other systems within the same network, you can find your systems IP address by typing<br>
`hostname -I`<br>
into a terminal. The first listed address should be your LAN address. Append `:54487` and visit this in a web browser on another system.<br>
## Alternative Setup
This only works for most Debian-Based operating systems. Use at your own risk. Open a terminal and use the following command:<br>
`sudo bash install.sh >> ~/desmosinstall.log && exit`<br>
If all goes according to plan, it should install Docker, git clone the repository, and build then set up your docker container. The log for this script should be located in your home directory under the name `desmosinstall.log`. After the script has finished, the terminal will exit.<br>
### Credits
All files in [assets](./assets) belong to [Desmos](https://www.desmos.com/).<br>
Originally forked from the `Desmos-Frontend` port by [usandfriends](https://github.com/usandfriends/), [here](https://github.com/usandfriends/Desmos-Frontend).<br>
Dockerfile, install scripts, and updated `README.md` by [fracturedface](https://github.com/fracturedface/).
