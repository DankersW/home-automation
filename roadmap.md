# Roadmap

## Stage 1: POC - Appartment temperature

One IoT device periodically updating the rooms temperature to the framework via mqtt. The Framework publishes this info to the mongo db. A react front end will show a temperature graph over time. the front end will connect to the db via a Go back-end in a restfull fashion.

- temperature update time needs to be configurualbe via an mqtt config command
- saving room temp messages in the mongo db
- go backend connecting to the db and publising data via an API
- react frontend showing a temperature graph

## Stage 2: Clean-up appartment poc
- map device names to their physical locations
- framework, fetch who is home by connecting to to Asus router
- connect to framework from the internet
- send mqtt command to all units telling to send their status back
- Landing page



## Stage 3: TBD - Battery powered devices
- Implement Threat gateway
- find good zigbee board
- control state of a light on a board
- TBD
