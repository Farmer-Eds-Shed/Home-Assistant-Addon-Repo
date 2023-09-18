# Ruuvi-Home-Assistant-Addon
Addon to run a Ruuvi-Go-Gateway Docker Image on supervised Home Assistant

## About

### ruuvi-go-gateway

[ruuvi-go-gateway](https://github.com/Scrin/ruuvi-go-gateway/tree/master) is a software that tries to replicate [Ruuvi Gateway](https://ruuvi.com/gateway/) MQTT ~~and HTTP POST~~ (for custom servers) features so that users without a physical Ruuvi Gateway can still use software and tools created for the gateway, such as [RuuviBridge](https://github.com/Scrin/RuuviBridge/).

### Features

- Supports publishing BLE data to MQTT in real time in same format as Ruuvi Gateway
- ~~Supports sending latest BLE data via HTTP POST in same format as Ruuvi Gateway~~
- ~~Can send either just Ruuvi data or all scanned BLE data (configurable, like with the Gateway)~~

**Note:** Crossed out features, not currently configurable with the Home Assistant Addon but will be Added in the future.
