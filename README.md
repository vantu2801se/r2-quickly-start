# Realtime Ranked infrastructure emulator
This resource to build as infrastructure emulator (mock on local) for r2-update-score-services use

**Resources:**
- Redis: To cache score of video by global and each user
- Pulsar: Choose for queue to receive interaction video message. These message will update event and score to database
- RDS: To save user and video and interaction event

## Required
- Docker
- Docker compose

## Set up local
- Clone this resource to your local
- When execute bash
- Go to workspace directory
```sh
cd r2-quickly-start
```

- Start services
```sh
docker-compose up
```
-
  - A folder data is generative contain data of application
  - The infra ready for service use