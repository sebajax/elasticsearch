# Elasticsearch with Kibana

✨ This project sets up Elasticsearch with Kibana using Docker Compose for a local development environment. It also includes a Makefile for streamlined command execution.

## Prerequisites

Before starting, ensure you have the following installed:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)
- A `.env` file (see below for configuration)

## Setup

### Step 1: Clone the Repository
Clone this repository to your local machine:
```bash
git clone https://github.com/your-repo/elasticsearch-kibana.git
cd elasticsearch-kibana
```

### Step 2: Create a .env File
Create a .env file in the root directory of the project with the following content:
```env
PROJECT_NAME=elasticsearch_kibana
PORT=5601
ELASTIC_PORT=9200
KIBANA_PORT=5601
ELASTIC_PASSWORD=changeme
```

### Step 3: Build and Start the Environment
Use the Makefile commands to build and start the containers:

```bash
make build       # Build the Docker containers
make start       # Start the Docker containers in detached mode
```

To stop the containers:

```bash
make stop        # Stop and remove the Docker containers


## Project Structure
```plaintext
.
├── docker-compose.yml   # Configuration for Elasticsearch and Kibana
├── Makefile             # Commands for managing the environment
├── .env                 # Environment variables (not included in the repo)
├── README.md            # Project documentation
```

## Accessing the Services
- **Elasticsearch**: Accessible at [http://localhost:9200](http://localhost:9200)  
  Use the username `elastic` and the password from the `.env` file (`ELASTIC_PASSWORD`).

- **Kibana**: Accessible at [http://localhost:5601](http://localhost:5601)  
  Configure it to connect to the local Elasticsearch instance.

## Troubleshooting
1. **Authentication Issues**  
   Ensure the `ELASTIC_PASSWORD` in the `.env` file matches the password used during the Elasticsearch configuration.

2. **Ports Already in Use**  
   If 9200 or 5601 is already in use, update the `.env` file with different port values and restart the environment.

3. **Logs**  
   View logs for troubleshooting:
   - Elasticsearch: `docker logs elasticsearch`
   - Kibana: `docker logs kibana`

