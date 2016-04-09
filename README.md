# joshua7v/shadowsocks

# Installation

```bash
docker pull joshua7v/shadowsocks
```

# Quick Start

```bash
docker run —name ss -d -p 8888:8888 joshua7v/shadowsocks
```

You can use `docker logs -f ss` to check logs.

## Change Port

```bash
docker run —name ss -d -p 8388:8388 --env 'SSSERVER_PORT=8388' joshua7v/shadowsocks
```

## Change Password

```bash
docker run --name ss -d -p 8888:8888 --env 'SSSERVER_PASSWORD=yourpassword' joshua7v/shadowsocks
```

# Available Configuration Parameters

- **SSSERVER_PORT**: defaults to 8888
- **SSSERVER_PASSWORD**: defaults to freedom
- **SSSERVER_TIMEOUT**: defaults to 300
- **SSSERVER_METHOD**: defaults to aes-256-cfb
- **SSSERVER_FAST_OPEN**: defaults to true
- **SSSERVER_WORKERS**: defaults to 2
