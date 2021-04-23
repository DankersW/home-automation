# Roadmap

## Stage 1: POC - Appartment temperature :heavy_check_mark:

One IoT device periodically updating the rooms temperature to the framework via mqtt. The Framework publishes this info to the mongo db. A react front end will show a temperature graph over time. the front end will connect to the db via a Go back-end in a restfull fashion.

- temperature update time needs to be configurualbe via an mqtt config command
- saving room temp messages in the mongo db
- go backend connecting to the db and publising data via an API
- react frontend showing a temperature graph

## Stage 2: Clean-up of PoC :gear:

Clean-up of the big PoC.

- Docker info reagding uptime, docker image, version, etc. in frontent via Docker API Engine. :heavy_check_mark:
- Temperature API returns only data from the last 7 days. :heavy_check_mark:
- Iot devices reconnects wifi and mqtt broker if the connection is lost. :heavy_check_mark:
- Update documentation.
- Frontent UI optimimized for smaller devices.
- Frontend UI landing page with links. :heavy_check_mark:
- Framework periodically sends out an MQTT message requesting the state of the connected devices. State includes uptime, connected, last message, etc.
- Visualize the device state in a table in the frontend UIs
- Show the number of connected devices in the UI
- Host db on SSD instead of on the device itself for the prod file

## Stage 3: Plant health :dart:

device that monitors and transmits the water level in a plant pot. The device needs to run on a small batterie. BLE is chosen as the technologie. The deivce should also have a water-protective 3D printed shell. The framework analizes the results comming from the plants and deteremins if it needs water or not. The frontend will visualize in a table the health of all plants. If the water level is getting to low an email needs to be send out saying which plant needs water.
Prefered is also to analyze the soil acidity.

## Backlog

- *Who is home*: Fetch a list of currently connected MAC addresses from my Asus router, compare the MAC addresses with their assosiate names. Looking at this list, can tell you who is home, maybe also, who is home untill and from when.

- *Reachable from the internet*: Make the UI available from the internet.

- *Threat + Zigbee*: Look into a Zigbee board and implement and Threat gateway.

- *Map devices*: Map devices names to their physical location in the appartment.

- *Schedular*: Scene schedular, Turn on certain lamps to a cosy color between the times of X-Y if one of the owners is home, based on the which mobile phone is in the appartment. 
