docker pull benjaminreyess/sir_jupyter:latest 
docker run --rm -p 8888:8888 -v "$(pwd):/workspace"  --name sir_jupyter benjaminreyess/sir_jupyter:latest 
