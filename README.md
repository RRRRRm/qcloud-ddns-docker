# Tencent Cloud (DNSPod) DDNS in Docker

[GitHub link](https://github.com/AllanChain/qcloud-ddns-docker/) | [Docker Hub link](https://hub.docker.com/r/allanchain/qcloud-ddns/)

This docker will check the current IP of the machine. If the IP changes, it will update the DNS records on tencent cloud.

## Run (Docker Compose)

`docker-compose.yml`:

```yaml
version: '3'
services:
  ddns:
    build: https://github.com/RRRRRm/qcloud-ddns-docker.git
    container_name: qcloud-ddns
    restart: 'unless-stopped'
    env_file:
      - .env
    network_mode: host

```

## Environments

| Name                      | Example            | Description                                                                        |
|:------------------------- |:------------------ |:---------------------------------------------------------------------------------- |
| `DDNS_RECORDS`            | `@:A *:AAAA www:HTTPS` | The records to modify.<br/>Should be `name@type` pair, and separated with a space. |
| `DOMAIN`                  | `example.com`      | The domain.                                                                        |
| `TENCENTCLOUD_SECRET_ID`  | `AKID123456`       |                                                                                    |
| `TENCENTCLOUD_SECRET_KEY` | `secret-key-stuff` |                                                                                    |
| `TENCENTCLOUD_REGION`     | `ap-guangzhou`     |                                                                                    |
| `IPV4_API`                |                    | Default `https://api.ipify.org`                                                  |
| `IPV6_API`                |                    | Default `https://api64.ipify.org`                                                  |
