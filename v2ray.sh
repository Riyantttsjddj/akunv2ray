import base64
import json

def generate_vmess_link(config):
    vmess = {
        "v": "2",
        "ps": config.get("ps", "V2Ray Connection"),
        "add": config.get("add", "your-vps-ip-or-domain"),
        "port": config.get("port", 80),
        "id": config.get("id", "your-uuid"),
        "aid": config.get("aid", 0),
        "net": config.get("net", "ws"),
        "type": config.get("type", "none"),
        "host": config.get("host", ""),
        "path": config.get("path", "/ws"),
        "tls": config.get("tls", "")
    }

    # Encode to base64
    encoded_vmess = base64.b64encode(json.dumps(vmess).encode("utf-8")).decode("utf-8")
    return f"vmess://{encoded_vmess}"

# Example configuration
config = {
    "ps": "V2Ray Test",
    "add": "<IP_or_Domain_VPS>",  # Ganti dengan IP atau domain VPS
    "port": "80",
    "id": "d4b2c2a7-f2e8-4df1-9121-cbfbc6bdef9d",  # UUID kamu
    "aid": "0",
    "net": "ws",
    "type": "none",
    "host": "",
    "path": "/ws",
    "tls": ""
}

# Generate VMess link
vmess_link = generate_vmess_link(config)
print(vmess_link)
