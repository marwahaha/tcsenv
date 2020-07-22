This is a docker environment for the tcsbook by boazbk.

to build locally:
sudo docker build . -t tcsimage

to publish:
sudo docker tag <image-tag> marwahaha/tcsimage:latest
sudo docker push marwahaha/tcsimage

to create container:
sudo docker create --name tcs tcsimage

to copy book:
sudo docker cp <path/to/tcsbook/>/. tcs:/app/

to start container and deploy:
sudo docker start tcs

to copy files (binaries to s3, deploy to github/netlify):
sudo docker cp tcs:/app/binaries . 
sudo docker cp tcs:/app/deploy .

to clean up container:
sudo docker rm tcs
