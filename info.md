# Xiaomi BLE Extended

{% if installed %}
## Changes in version {{ version }}

Check the [changelog](https://github.com/rankjie/xiaomi_ble_ext/releases/tag/{{ version }}) for details.

{% endif %}

## About

This integration extends the official Xiaomi BLE integration with support for additional devices.

### Currently adds support for:
- **Linptech ES3** - Human Presence Sensor

## Configuration

Same as the official Xiaomi BLE integration - devices will be auto-discovered via Bluetooth.

For encrypted devices, you'll need the encryption key (bindkey).