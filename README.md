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
`docker create --name={name} -p 54487:54487 {image-name}`
`docker start {name}`

To use the site locally, head to [localhost:54487](http://localhost:54487).

To use the site on other networked systems, head to [ip-address:54487](http://ip-address:54487/) and replace `ip-address` with the systems IP address.<br>
### Credits
All files in [assets](./assets) belong to [Desmos](https://www.desmos.com/).
