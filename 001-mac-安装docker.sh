

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
