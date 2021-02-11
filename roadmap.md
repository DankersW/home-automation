# Roadmap

## Stage 1: Appartment temperature

One IoT device periodically updating the rooms temperature to the framework via mqtt. The Framework publishes this info to the mongo db. A react front end will show a temperature graph over time. the front end will connect to the db via a Go back-end in a restfull fashion.

- temperature update time needs to be configurualbe via an mqtt config command
- binary format for the mqtt message
- mapping iot device id to device name via db lookup
- saving room temp messages in the mongo db
- go backend connecting to the db and publising data via an API
- react frontend showing a temperature graph
