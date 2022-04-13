# Home-automation

My Home-automation project consists of several different components aka services with their own responsibility and divided in their own repositories.

|                             **Service**                            |    **Language**    |                                    **Description**                                   |
|:------------------------------------------------------------------:|:------------------:|:------------------------------------------------------------------------------------:|
| [WSN](https://github.com/DankersW/wsn)                             | C                  | Wireless battery powered applications for embedded devices based on the Zephyr RTOS  |
| [Dobby](https://github.com/DankersW/dobby)                         | Go                 | Gateway between the wireless notes and the rest of the system                        |
| [Framework](https://github.com/DankersW/home-automation-framework) | Python             | Scheduling scenes and poll devices                                                   |
| [Pakhuis](https://github.com/DankersW/pakhuis)                     | Go                 | DB driver translating Kafka streams to DB read/writes                                |
| [Frontend](https://github.com/DankersW/home-automation-frontend)   | JavaScript (React) | Frontend to visualize system data                                                    |
| [backend](https://github.com/DankersW/home-automation-backend)     | Go                 | RESt service                                                                         |
| [IPC](https://github.com/DankersW/home-automation-ipc)             | Protobuf           | Holds all interprocess communication definitions                                     |
| [SMD](https://github.com/DankersW/smart-home-devices)              | C++                | Some Arduino based applications                                                      |

## Run

```sh
# x86
docker-compose -f docker-compose_dev-x86.yml up -d

# ARM used also as the production image
docker-compose -f docker-compose_prod-arm.yml up -d
```

TODO:
* List here with all the Repos, links, language and function of them
* One big architecture picture of the system
- a wish list 

|                                      | Status             | Start date | Completion date |
|--------------------------------------|--------------------|------------|-----------------|
| Stage 1: Poc - Apartment temperature | Done :beers:       | 05-03-2021 | 25-03-2021      |
| Stage 2: Cleanup PoC                 | In-progress :gear: |            |                 |
| Stage 3: Plant health monitoring     | Defined :dart:     |            |                 |

&nbsp;

![Architecture](static/architecture/Home-automation.png "Architectural overview")

## Home-automation-framework

Follows the Observer pattern and is primarily used as link between the smart-home-appliances, the cloud, and the visualization.

**Writen in:** Python
![Architecture](static/architecture/Home-automation-framework.png "Architectural overview")

[Github repo](https://github.com/DankersW/home-automation-framework)

## IoT-monitoring

Front-end to visualize device status, host health monitoring, and iot-message tracing.

Using Angular as a front-end framework.

**Writen in:** Typescript

## Connected-home-cloud

Cloud part of the project. GCP is selected as the cloud provider. The main purpose of the cloud part is as an bridge my
Sonos eco-system and my IoT units. GCP enables me to talk to units using voice commands via Google Assistant which is
enabled on my Sonos network speakers.  

**Writen in:** GCP, Python, Node-js
![Architecture](static/architecture/Connected-home-cloud.png "Architectural overview")

[Github repo](https://github.com/DankersW/connected-home-cloud)

## Smart-home-devices

**Writen in:** C++

[Github repo](https://github.com/DankersW/smart-home-devices)
