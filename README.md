### wso2greg

Docker image to install and run WSO2 Governance Registry.

### Tags

* [5.1.0, latest](https://github.com/ihcsim/docker-wso2greg/tree/5.1.0)

### Description

The dockerfile will:
* Use `wget` to pull the Governance Registry 5.1.0 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the Governance Registry ZIP.
* Remove the Governance Registry ZIP.
* Expose the container port `9443` and `9763`.
* Set the `wso2server.sh` start-up script as the container entrypoint.


### Usage

* To pull: `docker pull isim/wso2greg`
* To run: `docker run --rm --name <container_name> -p 9443:9443 -p 9763:9763 isim/wso2greg`
* To access the web admin console, navigate to `https://localhost:9443/carbon`

Follow me on [![alt text][1.1]][1]
[1.1]: http://i.imgur.com/tXSoThF.png (twitter icon with padding)
[1]: http://www.twitter.com/IvanHCSIM
