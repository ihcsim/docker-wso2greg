# docker-wso2greg

[ ![Codeship Status for ihcsim/docker-wso2greg](https://app.codeship.com/projects/d50dc1d0-c3c1-0134-67c4-568c48fe7308/status?branch=master)](https://app.codeship.com/projects/197734)

Docker image to install and run WSO2 Governance Registry.

## Tags

* [5.3.0, latest](https://github.com/ihcsim/docker-wso2greg/tree/5.3.0)
* [5.1.0](https://github.com/ihcsim/docker-wso2greg/tree/5.1.0)

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
