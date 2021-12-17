#mac安装docker
#https://www.runoob.com/docker/macos-docker-install.html
brew install --cask --appdir=/Applications docker

#mac docker的配置
#设置——docker engine——加代码
{
  "registry-mirrors": [
    "http://hub-mirror.c.163.com"
  ],
  "features": {
    "buildkit": true
  },
  "debug": true,
  "experimental": false,
  "builder": {
    "gc": {
      "enabled": true,
      "defaultKeepStorage": "20GB"
    }
  }
}

#检查registry mirror是否生效
hejian@hejiandeMacBook-Air ~ % docker info
Client:
 Context:    default
 Debug Mode: false
 Plugins:
  buildx: Docker Buildx (Docker Inc., v0.7.1)
  compose: Docker Compose (Docker Inc., v2.2.1)
WARNING: Plugin "/usr/local/lib/docker/cli-plugins/docker-scan" is not valid: failed to fetch metadata: fork/exec /usr/local/lib/docker/cli-plugins/docker-scan: bad CPU type in executable

Server:
 Containers: 0
  Running: 0
  Paused: 0
  Stopped: 0
 Images: 1
 Server Version: 20.10.11
 Storage Driver: overlay2
  Backing Filesystem: extfs
  Supports d_type: true
  Native Overlay Diff: true
  userxattr: false
 Logging Driver: json-file
 Cgroup Driver: cgroupfs
 Cgroup Version: 2
 Plugins:
  Volume: local
  Network: bridge host ipvlan macvlan null overlay
  Log: awslogs fluentd gcplogs gelf journald json-file local logentries splunk syslog
 Swarm: inactive
 Runtimes: io.containerd.runtime.v1.linux runc io.containerd.runc.v2
 Default Runtime: runc
 Init Binary: docker-init
 containerd version: 7b11cfaabd73bb80907dd23182b9347b4245eb5d
 runc version: v1.0.2-0-g52b36a2
 init version: de40ad0
 Security Options:
  seccomp
   Profile: default
  cgroupns
 Kernel Version: 5.10.76-linuxkit
 Operating System: Docker Desktop
 OSType: linux
 Architecture: aarch64
 CPUs: 4
 Total Memory: 1.942GiB
 Name: docker-desktop
 ID: MRIG:T67E:KBSA:VJ7H:KN2Z:ZGHP:XNCZ:U5JP:OBLU:IZ6C:EZ3G:RUSP
 Docker Root Dir: /var/lib/docker
 Debug Mode: true
  File Descriptors: 44
  Goroutines: 46
  System Time: 2021-12-17T01:07:16.501670719Z
  EventsListeners: 4
 HTTP Proxy: http.docker.internal:3128
 HTTPS Proxy: http.docker.internal:3128
 Registry: https://index.docker.io/v1/
 Labels:
 Experimental: false
 Insecure Registries:
  127.0.0.0/8
 Registry Mirrors:
  http://hub-mirror.c.163.com/
 Live Restore Enabled: false
