# Monitoring with prometheus, grafana, nodeexporter, cAdvisor

## Up with docker

#### 1) Clone repository

```
git clone https://github.com/SirojiddinYakubov/docker-monitoring.git
```

#### 2) Change init.sh file. Write your username, password and password hash

#### 3) Execute script
```
source ./init.sh
```
#### 4) Run containers for node server
```
make node-up
```
#### 5) Enter your server's IP address instead of the 165.22.103.111 IP address in the base/prometheus/prometheus.yml file

#### 6) Run containers for base server
```
make base-up
```

#### 7) Open Grafana dashboard
```
http://localhost:3000
```