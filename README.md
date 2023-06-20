# INCEPTION
## Summary
> Inception is a System Administration related exercise from the 42 curriculum. It introduces the uses of docker containerization platform through the utilization of docker compose tool, where several docker images are virtualized in a virtual machine creating various services in their own container. These services include:

1. NGINX container with TLSv1.2 or TLSv1.3 only
2. WordPress + php-fpm (installed and configured) container without Nginx.
3. MariaDB container without Nginx.
4. A volume that contains WordPress database.
5. A volume that contains WordPress website files.
6. A docker-network that establishes connections between these containers.


## Objective
>  setting up a small infrastructure composed of different services using docker compose

## Useful terminologies
<details>
    <summary>Container</summary>
    <div>
       <p>A <code>container</code> is a loosely isolated environment that allows building and running software packages (<code>container images</code>).</p>
    </div>
</details>
<details>
    <summary>Container Images</summary>
    <div>
        <code>Container images</code> are packages that include the code and all dependencies to run applications quickly and reliably on any computing environment. It is the unit used to distribute applications.
       </p>
    </div>
</details>
<details>
    <summary>Software Containerization</summary>
    <div>
        <p>
            <code>Software containerization</code> is an OS virtualization method that is used to run and deploy containers without the use of Virtulal Machines (VMs).
        <p>
        <p>
            OS Virtualization, aka Operating System-level virtualization is a method of virtualization where a single OS instance is partitioned into multiple isolated containers, each with its own user space and resource allocation, enabling efficient and lightweight virtualization of multiple virtual environments on a single host.
        </p>
    </div>
</details>
<details>
    <summary>Docker</summary>
    <div>
        <code>Docker</code> is a software containerization platform used to develop, ship (package an application, along with the dependencies and configurations into a docker image) and run <code>containers</code>.
    </div>
</details>
</details>
<details>
    <summary>Docker Engine</summary>
    <div>
        <p>
            The <code>docker engine</code> is a portion of the docker architecture that consists of several components configured as a client-server implementation where the client and server run simultaneously on the same host.
        </p>
        <p>
            The client communicates with the server usng a REST API, which enables the client to also communicate with a remote server instance
        </p>
    </div>
</details>
<details>
    <summary>Docker Client</summary>
    <div>
        <p>
            The <code>docker client</code> are of two types:
            <ol>
                <li>
                    A command line application named "docker".
                </li>
                <li>
                    A GUI based application named "Docker Desktop".
                </li>
            </ol>
        </p>
        <p>
            Both the CLI and Docker Desktop interact with a <code>docker server</code> and function as the primary interface to manage containers.
        </p>
    </div>
</details>
<details>
    <summary>Docker Server</summary>
    <div>
        <p>
            The <code>docker server</code> is a daemon named <code>dockerd</code>.
        </p>
        <p>
            The <code>dockerd</code> daemon responds to requests from the client via the Docker REST API and can interact with other daemons. Dockerd is also responsible for tracking the life cycle of containers.
        </p>
    </div>
</details>
<details>
    <summary>Docker Objects</summary>
    <div>
        <p>
            Docker objects include networks, storage volumes, plugins
        </p>
    </div>
</details>
<details>
    <summary>Docker Hub</summary>
    <div>
        <p>
           <code>Docker Hub</code> is a Software as a Service (SaaS) docker container registry. <br/>
           <blockquote>SaaS refers to a cloud computing model where s/w applications are provided and accessed over the internet, allowing users to utilize the application's functionalities without the need for local installation or management, typically through subscription-based or pay-per-use pricing model.</blockquote>
        </p>
        <p>
            Docker registries are repositories used to store and distribute container images.
            It's like GitHub but only for docker images. You'll find thousands of public repositories here containing
        </p>
    </div>
</details>
<details>
    <summary>Docker Compose</summary>
    <div>
        <p>
           <code>docker compose</code> is a tool that simplifies the management of multiple docker containers allowing developers to define and orchestrate the configuration of interconnected containers as a single application using a single YAML file.
        </p>
<pre>
        # Sample of a docker compose file that sets up MySQL and Nginx
        version: '3'
        services:
        nginx:
            image: nginx:latest
            ports:
            - 80:80
            volumes:
            - ./nginx.conf:/etc/nginx/nginx.conf
            restart: always

        mysql:
            image: mysql:latest
            ports:
            - 3306:3306
            environment:
            - MYSQL_ROOT_PASSWORD=your_root_password
            volumes:
            - ./mysql-data:/var/lib/mysql
            restart: always

        networks:
          my-network:
            driver: bridge
</pre>
    </div>
</details>

<details>
    <summary>Docker Network</summary>
    <div>
        <p>
            <code>Docker network</code> is a virtual network that enables the communication between docker containers on the same host or across multiple hosts.
        </p>
        <p>
            It provides an isolated environment for containers, allowing them to communicate securely and efficiently with each other. It also enables containers to interact with external networks and services.
        </p>
        <p>
            A <code>network driver</code> is responsible for implementing the network features and behavior of a <code>Docker Network</code>. Docker provides various network drivers such as:- <code>bridge</code>, <code>host</code>, <code>overlay</code>, <code>macvlan</code>, and more.
        </p>
        <pre>
            networks:
              my-network:
                driver: bridge
        </pre>
    </div>
</details>

<details>
    <summary>Docker Volumes</summary>
    <div>
        <p>
            A docker volume is a persistent storage mechanism that allows containers to store and share data with the host machine or other containers. It is a directory or file that resides outside a container's file system and is managed by docker.
        </p>
    </div>
</details>

## Resources
- Docker documentation: https://docs.docker.com/
- Good old! I mean, good new! *`chatGPT`*
