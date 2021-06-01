
# Local development

## Prerequisite

- [Docker](https://docs.docker.com/get-docker/)
- [Sonar Scanner](https://docs.sonarqube.org/latest/analysis/scan/sonarscanner/)
	1. Ensure sonar-scanner is available in your $PATH

## Run Sonar Server

```
$ docker run -d --name sonarqube -e SONAR_ES_BOOTSTRAP_CHECKS_DISABLE=true -p 9000:9000 sonarqube:latest
```

Wait until Sonar up and running. Go to [http//localhost:9000](http://localhost:9000). Login with admin account using admin/admin. Change password to "123456".

## Run coverage

```
$ ./ci/coverage.sh # this will run go test coverage. eg: go test -coverprofile=coverage.out ./... 
$ ./ci/sonar.sh # This will run Sonar scanner.

```

That it!
