# Xiaomi BLE Extended

[![hacs_badge](https://img.shields.io/badge/HACS-Custom-41BDF5.svg)](https://github.com/hacs/integration)
[![version](https://img.shields.io/github/v/release/rankjie/xiaomi_ble_ext)](https://github.com/rankjie/xiaomi_ble_ext/releases)

Extended Xiaomi BLE integration for Home Assistant with support for additional devices not yet in the official integration.

## Features

This custom integration extends the official Xiaomi BLE integration with support for:
- **Linptech ES3** - Human Presence Sensor

All other devices from the official integration are also supported.

## Installation

### HACS (Recommended)

1. Open HACS
2. Go to "Integrations"
3. Click the three dots menu and select "Custom repositories"
4. Add this repository URL: `https://github.com/rankjie/xiaomi_ble_ext`
5. Select "Integration" as the category
6. Click "Add"
7. Search for "Xiaomi BLE Extended" and install it
8. Restart Home Assistant

### Manual Installation

1. Download the latest release from [GitHub](https://github.com/rankjie/xiaomi_ble_ext/releases)
2. Extract the `custom_components/xiaomi_ble_ext` folder to your Home Assistant's `custom_components` directory
3. Restart Home Assistant

## Configuration

1. Go to Settings → Devices & Services
2. Click "Add Integration"
3. Search for "Xiaomi BLE Extended"
4. Follow the configuration steps (same as official Xiaomi BLE)

## Important Notes

- This integration uses a different domain (`xiaomi_ble_ext`) so it can coexist with the official integration
- If you have devices already configured with the official integration, you'll need to reconfigure them with this one
- Make sure to have the device encryption keys (bindkey) ready for encrypted devices

## Supported Devices

### Additional Devices (not in official integration)
- **Linptech ES3** - Human Presence Sensor (0x50FB)

### All Official Devices
This integration supports all devices from the official Xiaomi BLE integration.

## Troubleshooting

Enable debug logging:
```yaml
logger:
  default: info
  logs:
    custom_components.xiaomi_ble_ext: debug
```

## Credits

- Based on the official [Home Assistant Xiaomi BLE integration](https://www.home-assistant.io/integrations/xiaomi_ble/)
- Uses the [xiaomi-ble](https://github.com/Bluetooth-Devices/xiaomi-ble) library

## License

Same as Home Assistant - Apache License 2.0