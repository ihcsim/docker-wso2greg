# docker-wso2greg

[ ![Codeship Status for ihcsim/docker-wso2greg](https://app.codeship.com/projects/d50dc1d0-c3c1-0134-67c4-568c48fe7308/status?branch=master)](https://app.codeship.com/projects/197734) [![](https://images.microbadger.com/badges/version/isim/wso2greg:5.3.0.svg)](https://microbadger.com/images/isim/wso2greg:5.3.0 "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/commit/isim/wso2greg:5.3.0.svg)](https://microbadger.com/images/isim/wso2greg:5.3.0 "Get your own commit badge on microbadger.com") [![](https://images.microbadger.com/badges/image/isim/wso2greg:5.3.0.svg)](https://microbadger.com/images/isim/wso2greg:5.3.0 "Get your own image badge on microbadger.com")

Docker image to install and run WSO2 Governance Registry.

## Description
The dockerfile will:
* Use `wget` to pull the Governance Registry 5.1.0 ZIP from a S3 bucket into the container `/opt` folder.
* Install `zip`.
* Unzip the Governance Registry ZIP.
* Remove the Governance Registry ZIP.
* Expose the container port `9443` and `9763`.
* Set the `wso2server.sh` start-up script as the container entrypoint.


## Usage
To run the WSO Governance Registry:
```sh
$ docker run -d --name greg -p 9443:9443 isim/wso2greg
```
To access the web admin console, navigate to https://localhost:9443/carbon using your web browser.

## License
Refer to the [LICENSE](LICENSE) file. WSO2 license can be found [here](http://wso2.com/licenses).
