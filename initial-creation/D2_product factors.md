# ISO 25010 characteristics and subcharacteristics as quality aspects with product factors added from practitioner books

## Entities

### Surely needed

* System (the CNA as a whole)
  * Component (an abstract part of the system, maps to a deployable service or cloud "resource") (part-of System)
    * Service (a service implementing a business functionality) (is-a Component)
      * Endpoint (a communication endpoint, for example REST endpoint, message producer/listener) (part-of Service)
    * Backing Service (a component providing general functionalities needed by services, for example, messaging, storage, logging, ...) (is-a Component)
  * Link (A connection between components) (part-of System)
  * Infrastructure (the technical foundation where components are deployed, maybe platform??) (part-of System)

### Potentially needed

* Data Aggregate (An aggregate which needs to be persisted and is used by services -> Business data)
* Backing Data (To capture Config values, Secrets, Logs, Metrics, ...)
* Frontend Service (A Service which is accessible from the outside)
* Storage as an explicit additional component?? (Because data handling in cloud-native application is critical)
* Repository (The system where the source code is managed)
* Deployment process?? (to capture CI/CD and deployment strategies)
* Request Trace (the whole resulting trace of a service invocation from the outside)

## Quality aspects (high-level) and product factors (tangible in the software)

### Security

* Confidentiality  
  * **Failing Secure** (Component)  
    Adkins2019 8 "Failing secure" (maximize security, by strictly denying operations when facing failures)
  * **Data Encryption in Transit** (Link)  
    Scholl2019 6 "Encrypt Data in Transit; Indrasiri2021 2 "Security" (Use TLS for synchronous communications)
  * **Secrets Management** (Component) +> Seamless upgrades  
    * **Isolated secrets** (Component)  
      Scholl2019 6 "Never Store Secrets or Configuration Inside an Image"; Adkins2019 14 "Don't Check In Secrets"
    * **Secrets stored in specialized services** (Service, Backing Service)  
      Scholl2019 6 "Securely Store All Secrets"; Arundel2019 10 "Kubernetes Secrets"
    * **Automated credential rotation** (Component)  
      Winn2017 3 "The Three Rs of Enterprise Security" (rotate credentials frequently)
* Integrity  
  * **Access restriction** (Component, Endpoint)  
    * **Least-Privileged Access** (Component, Endpoint)  
      Scholl2019 6 "Grant Least-Privileged Access"; Arundel2019 11 "Access Control and Permissions"  
    * **Access Control Management Consistency** (Component)
      Adkins2019 6 "Access Control" (Access control managed by framework); Goniwada2021 9 "Policy as Code" (consistently describe your security policies in form of code)
  * **Artifact trustworthiness**  
    * **Trustworthy artifact storage**  
      Scholl2019 6 "Store Images in a Trusted Registry"  
    * **Trustworthy artifact content**  
      Adkins2019 14 "Verify Artifacts" (sign and very artifacts to ensure only verified builds go into production)  
* ~~Non-repudiation~~  
* Accountability  
  * **Account separation** (Component)  
    Scholl2019 6 "Use Separate Accounts/Subscriptions/Tenants"; Adkins2019 8 "Role separation" (let different services run with different roles to restric access); Adkins2019 8 "Location separation" (use different roles for a service in different locations to limit attack impacts)  
* Authenticity  
  * **Authentication Delegation** (System)  
    Scholl2019 6 "Use Federated Identity Management"; Goniwada2021 9 "Decentralized Identity"  

### Maintainability

* Modularity  
  * **Service-orientation** (System, Service)  
    * **Limited functional scope** (Service)  
      Reznik 2019 9 "Microservices Architecture"; Adkins2019 7 "Use Microservices" (aligns to zero-trust networking); Goniwada2021 3 "Polylithic Architecture Principle" (Build separate services for different business functionalitites)  
    * **Command Query Responsibility Segregation** (Service)
      Davis2019 4.4; Richardson2019 7.2 "Using the CQRS pattern"; Bastani2017 12 "CQRS (Command Query Responsibility Segregation)"; Indrasiri2021 4 "Command and Query Responsibility Segregation Pattern"; Goniwada2021 4 "Command and Query Responsibility Segregation Pattern"
  * **Isolated state** (System, Component) +> Replaceability, Elasticity  
    * **Mostly stateless services** (Component)
      Davis2019 5.4; Scholl2019 6 "Design Stateless Services That Scale Out"; Goniwada2021 3 "Be Smart with State Principle", 5 "Stateless Services"
    * **Spezialized Stateful services** (Component)  
      Davis2019 5.4; Ibryam2020 11 "Stateful Service"
  * **Loose coupling** (System, Component, Link)  
    Goniwada2021 3 "Coupling" (Services should be as loosely coupled as possible)
    * **Asynchronous communication** (Link)  
      Davis2019: 4.2; Scholl2019 6 "Prefer Asynchronous Communication"; Richardson2019 3.3.2, 3.4 "Using asynchronous messaging to improve availability"; Indrasiri2021 3 "Service Choreography Pattern"; Ruecker2021 9 "Asynchronous Request/Response" (Use asynchronous communication to make services more robust); Goniwada2021 4 "Asynchronous Nonblocking I/O"
* Reusability  
  * **Standardization** (System, Cmoponent, Link)  
    * **Component Similarity** (Component)
      Reznik2019 9 "Reference Architecture"
    * **Usage of existing solutions for non-core capabilities** (Component, Link)
      Reznik2019 9 "Avoid Reinventing the Wheel"; Adkins2019 12 "Frameworks to Enforce Security and Reliability"  
  * **Layered architecture** (System, Component) +> Service-orientation, Seamless upgrades, Least-Privileged Access  
    Goniwada2021 3 "Use Layering"
    * **Internal Service composition** (Service)  
      Indrasiri2021 3 "Service Orchestration Pattern"; Indrasiri2021 4 "Composite Data Services Pattern"  
    * **API gateway** (Service) +> Guarded ingress
      Davis2019 10.2; Richardson2019 8.2; Bastani2017 8 "Edge Services: Filtering and Proxying with Netflix Zuul"; Indrasiri2021 7 "API Gateway Pattern"; Indrasiri2021 7 "API Microgateway Pattern" (Smaller API microgateways to avoid having a monolithic API gateway); Goniwada2021 4 "Mediator" (Use a mediator pattern between clients and servers)
* Analysability  
  * **Identifiability** (Component)
    Adkins2019 14 "Binary Provenance" (store metadata in artifacts to enable later analysis); Bastani2017 13 "Identifying Your Service with the /info Endpoint" (a service should identify itself, which git commit, which version, ...)  
  * **Automated monitoring** (Service, Link, Infrastructure) +> Elasticity, Autonomous fault handling, Automated restarts  
    Goniwada2021 3 "High Observability Principle"
    * **Consistent centralized logging** (Service, Backing Service)  
      Davis2019 11.1; Scholl2019 6 "Use a Unified Logging System"; Scholl2019 6 "Common and Structured Logging Format"; Richardson2019 11.3.2 "Applying the Log aggregation pattern"; Reznik2019 10 "Observability"; Garrison2017 7 "Monitoring and Logging"; Adkins2019 15 "Design your logging to be immutable"; Arundel2019 15 "Logging"; Winn2017 2 "Aggregated Streaming of Logs and Metrics"; Bastani2017 13 "Application Logging"; Bastani2017 13 "Audit Events" (capture events for audits, like failed logins etc); Ruecker2021 11 "Custom Centralized Monitoring"; Goniwada2021 19 "One Source of Truth"  
    * **Consistent centralized metrics capturing** (Service, Backing Service)  
      Davis2019 11.2; Scholl2019 6 "Tag Your Metrics Appropriately"; Richardson2019 11.3.4 "Applying the Applications metrics pattern"; Garrison2017 7 "Monitoring and Logging", "Metrics Aggregation"; Reznik2019 10 "Observability"; Arundel2019 15 "Metrics help predict problems"; Winn2017 2 "Aggregated Streaming of Logs and Metrics"; Bastani2017 13 "Metrics"; Arundel2019 16 "The RED Pattern" (common metrics you should have for services); Arundel2019 16 "The USE Pattern" (common metrics for resources); Goniwada2021 19 "One Source of Truth"  
    * **Distributed tracing of invocations** (Service, Link)  
      Davis 11.3; Scholl2019 6 "Use Correlation IDs"; Richardson2019 11.3.3 "Using the Distributed tracing pattern"; Garrison2017 7 "Debugging and Tracing"; Reznik2019 10 "Observability"; Arundel2019 15 "Tracing"; Bastani2017 13 "Distributed Tracing"; Ruecker2021 11 "Observability and Distributed Tracing Tools" (Use Distributed Tracing); Goniwada2021 19 "One Source of Truth"  
    * **Health and Readiness Checks** (Service)  
      Scholl2019 6 "Implement Health Checks and Readiness Checks"; Ibryam2020 4 "Health Probe"; Richardson2019 11.3.1 "Using the Health check API pattern"; Garrison 7 "State Management"; Arundel2019 5 "Liveness Probes"; Arundel2019 5 "Readiness Probes"; Bastani2017 13 "Health Checks"; Indrasiri2021 1 "Why container orchestration?; Health monitoring"; Goniwada2021 4 "Fail Fast", 16 "Health Probe"  
  * **Status visualizazion**  (System)  
    Bastani2017 13 "Dashboards" (use web dashboards for overviews on observability and monitoring); Goniwada2021 19 "Visualization"
* Modifiability  
  * **Automated Continuous Delivery** (Service) +> Seamless upgrades  
      Reznik2019 9 "Continuous Integration"; Reznik2019 10 "Continuous Delivery"; Reznik2019 10 "Continuous Deployment"  
    * **Keep Code and CI/CD together** (Service)  
      Scholl2019 6 "CI/CD Definition Lives with the Component"  
    * **Automated execution and fallback** (Infrastructure)  
      Scholl2019 6 "Consistent Application Deployment"; Adkins2019 14 "Rely on Automation"; Arundel2019 14 "Continuous Deployment in Kubernetes"; Indrasiri2021 1 "Automate the Development Life Cycle"  
    * **Fast CI/CD** (Service)  
      Reznik2019 9 "No Long Tests in CI/CD"  
  * **Automated Infrastructure** (Infrastructure) +> Automated restarts  
    Reznik2019 10 "Automated Infrastructure"; Goniwada2021 5 "Automation"  
    * **Use Infrastructure as Code** (Infrastructure) +> Installability
      Scholl2019 6 "Describe Infrastructure Using Code"; Goniwada2021 16 "Declarative Deployment", 17 "What Is Infrastructure as Code?"  
    * **Dynamic Scheduling** (Infrastructure) +> Resource utilisation
      Reznik2019 10 "Dynamic Scheduling"; Garrison2017 7 "Resource Allocation and Scheduling"; Ibryam2020 6 "Automated Placement"; Indrasiri2021 1 "Why container orchestration?; Resource Management"; Indrasiri2021 1 "Why container orchestration?; Automatic provisioning"; Goniwada2021 16 "Automated Placement"  
  * **Service independence** (Service) +> Co-existence  
    Goniwada2021 3 "Decentralize Everything Principle" (Decentralize deployment, governance)  
    * **Logical grouping**  (System, Service)  
      Scholl2019 6 "Use Namespaces to Organize Services in Kubernetes"; Arundel2019 5 "Using Namespaces"; Indrasiri2021 1 "Why container orchestration?; Componentization and isolation"  
    * **Separated Code Base** (Service)  
      Scholl2019 "Separate Function Source Code"; Indrasiri2021 1 "Independent Codebase"  
    * **Backing Service decentralization** (Service)
      Indrasiri2021 4 "Decentralized Data Management" (decentralized data leads to higher service independence while centralized data leads to higher consistency.); Indrasiri2021 4 "Data Service Pattern" (As having a negative impact because multiple services should not access the same data); Ruecker2021 2 "Different Workflow Engines for different services"; Goniwada2021 5 "Distributed State", "Decentralized Data"  
* Testability  
  * **Isolated environments** (Infrastructure)  
    Scholl2019 6 "Isolate the Environments"; Reznik2019 9 "Reproducible Dev Environments"; Garrison2017 7 "Environment Isolation"
  * **Automated Testing** (System, Service)  
    Reznik2019 9 "Automated Testing"; Adkins2019 7 "Release Frequently Using Automated Testing" (Use automated testing for being able to release frequently)
* Simplicity (as the counterpart to complexity, but instead of naming it Low Complexity named it Simplicity)  
  * **Operation outsourcing** -> Cost variability  
    * **Managed infrastructure** (Infrastructure)  
      *Infrastructure such as basic computing, storage or network resources can be managed by vendors to ensure a stable functioning and up-to-date functionalities. Furthermore, it reduces the operational overhead.*
    * **Managed backing services** (Backing Service)  
      Scholl2019 6 "Use Managed Databases and Analytics Services"; Arundel2019 15 "Don’t build your own monitoring infrastructure" (Use an external monitoring service); Bastani2017 10 "managed and automated messaging system" (operating your own messaging system increases operational overhead, better use a system managed by a platform)  

### Performance efficiency

* Time-behaviour  
  * **Replication** (Service)  
    * **Horizontal data replication** (Service)  
      Scholl2019 6 "Use Data Partitioning and Replication for Scale"; Goniwada2021 4 "Data Partitioning Pattern", "Data Replication"  
    * **Vertical data replication** (Service)  
      Scholl2019 6 "Use Caching"; Bastani2017 9 "Caching" (Use an In-Memory cache for queries to relieve datastore from traffic; replication into faster data storage); Indrasiri2021 4 "Caching Pattern"
  * **Data appropriateness**
    Scholl2019 6 Avoid Overfetching and Chatty I/O; Indrasiri2021 2 "GraphQL" (as an API approach which gives more flexibility to clients because they can choose which data they want. This leads to optimized data exchanges (only the data which is needed, not more not less))
* Resource utilisation  
  * **Resource predictability**
    * **Resource Limits** (Service)  
      Scholl2019 6 "Define CPU and Memory Limits for Your Containers"; Arundel2019 5 "Resource Limits"; Ibryam2020 2 "Defined Resource requirements"; Arundel2019 5 "Resource Quotas" (limit maximum resources for a namespace); Goniwada2021 3 "Runtime Confinement Principle", 16 "Predictable Demands"  
  * ~~**Cost variability** (Service, Infrastructure)~~  
* Capability  
  * **Elasticity** (Service) -> Resource utilisation  
    * **Built-in autoscaling** (Service)  
      Scholl2019 6 "Use Platform Autoscaling Features"; Ibryam2020 24 "Elastic Scale; Bastani2017 13 "Autoscaling"; Indrasiri2021 1 "Why container orchestration?; Scaling";  Goniwada2021 5 "Elasticity in Microservices"  

### Portability  

* Adaptability  
  * **Infrastructure abstraction** (Service, Infrastructure) +> Automated infrastructure  
      Bastani2017 14 "Service Brokers" (make use of service brokers as an additional level of abstraction to automatically add or remove backing services); Goniwada2021 3 "Location-Independent Principle"  
  * **Cloud vendor abstraction** (Service, Infrastructure)
      Wimm2017 3 "Infrastructure and the Cloud Provider Interface"; Indrasiri2021 1 "Dynamic Management; Mulicloud support"  
  * **Configuration Management** (Component) +> Seamless upgrades  
    * **Isolated configuration** (Service)  
      Davis2019 6.2 "The app’s configuration layer"; Ibryam2020 18; Scholl2019 6 "Never Store Secrets or Configuration Inside an Image"; Adkins2019 14 "Treat Configuration as Code"; Indrasiri2021 1 "Decoupled Configurations"
    * **Configuration stored in specialized services** (Service)  
      Ibryam2020 19 "Configuration Resource"; Richardson2019 11.2 "Designing configurable services"; Arundel2019 10 "ConfigMaps"; Bastani2017 2 "Centralized, Journaled Configuration", Bastani2017 2 "Refreshable Configuration"
* Installability  
  * **Standardized self-contained deployment unit** (Service)  
      Reznik2019 10 "Containerized Apps"; Adkins2019 7 "Use Containers" (smaller deployments, separated operating system, portable); Indrasiri2021 1 "Use Containerization and Container Orchestration"; Garrison2017 7 "Application Runtime and Isolation"; Goniwada2021 3 "Deploy Independently Principle" (deploy services in independent containers), "Self-Containment Principle", 5 "Containerization"  
* Replaceability  
  * **Immutable artifacts** (Service, Infrastructure)
    Scholl2019 6 "Don’t Modify Deployed Infrastructure"; Indrasiri2021 1 "Containerization"; Goniwada2021 3 "Process Disposability Principle", "Image Immutability Principle"
  * **Ease of deployment** (Component) +> Elasticity
    * **Start-up time** (Component)
        Indrasiri2021 1 "Containerization" (containers should have a fast startup time)
    * **Artifact size** (Component) +> Small deployments
        Adkins2019 7 "Use Containers" (smaller deployments, separated operating system, portable); Arundel2019 5 "Keep Your Containers Small" (minimize image size for faster startup and resource efficiency)  

### Reliability  

* Availability  
  * **Guarded ingress**  
    Scholl2019 6 "Implement Rate Limiting and Throttling"; Adkins2019 8 "Throttling" (Delaying processing or responding to remain functional and decrease traffic from individual clients) (should be automated, part of graceful degradation); Adkins2019 8 "Load shedding" (In case of traffic spike, deny low priority requests to remain functional) (should be automated, part of graceful degradation); Goniwada2021 5 "Throttling"  
  * **Distribution** (Service, Infrastructure)  
    * **Distribute Data among Availability Zones** (Infrastructure)  
      Scholl2019 6 "Keep Data in Multiple Regions or Zones"; Indrasiri2021 4 "Data Sharding Pattern: Geographically distribute data"
    * **Distribute Services among Availability Zones** (Infrastructure)  
      Winn2017 2 "Resiliency Through Availability Zones"  
  * **Seamless upgrades** (Component)  
    * **Rolling upgrades enabled** (Component, Infrastructure)  
      Davis2019 7.2; Scholl2019 6 "Use Zero-Downtime Releases"; Ibryam2020 3 "Declarative Deployment"; Reznik2019 10 "Risk-Reducing Deployment Strategies"; Arundel2019 13 "Rolling Updates"; Indrasiri2021 1 "Why container orchestration?; Rolling upgrades"
    * **Separate Deployment and release** (Component)  
      Scholl2019 6 "Deployments and Releases Are Separate Activities"
    * **Small deployments** (Component)  
      Scholl2019 6 "Keep Deployments Small"
* Fault tolerance  
  * **Failing safe** (Component)  
    Adkins2019 8 "Failing safe" (maximize reliability, by still allowing operations even when facing failures)
  * **Autonomous fault handling** (Service, Link, Infrastructure)  
    * **Invocation timeouts** (Link)  
      Indrasiri2021 3 "Resilient Connectivity Pattern: Time-out"; Richardson2019 3.2.3 "Handling partial failures using the Circuit Breaker pattern"; Goniwada2021 5 "Timeout"  
    * **Retries for safe invocations** (Link)  
      Davis2019 9.1; Scholl2019 6 "Handle Transient Failures with Retries"; Scholl2019 6 "Use a Finite Number of Retries"; Bastani2017 12 "Isolating Failures and Graceful Degradation: Use retries"; Indrasiri2021 3 "Resilient Connectivity Pattern: Retry"; Ruecker2021 9 "Synchronous Request/Response" (Use retries in synchronous communications); Ruecker2021 9 "The Importance of Idempotency" (Communication which is retried needs idempotency); Goniwada2021 4 "Idempotent Service Operation", "Retry", 5 "Retry"
    * **Circuit breaked communication** (Link)  
      Davis2019 10.1; Scholl2019 6 "Use Circuit Breakers for Nontransient Failures"; Richardson2019 3.2.3 "Handling partial failures using the Circuit Breaker pattern"; Bastani2017 12 "Isolating Failures and Graceful Degradation: circuit breaker"; Indrasiri2021 3 "Resilient Connectivity Pattern: Circuit breaker";  Goniwada2021 4 "Circuit Breaker"  
* Recoverability  
  * **Automated restarts** (Service)  
      Winn2017 2 "Self-Healing Processes; Self-Healing VMs"; Bastani2017 13 "automatic remediation"; Indrasiri2021 1 "Why container orchestration?; High availability"; Goniwada2021 5 "Self-Healing"  
  * **Backups**  
      Arundel2019 11 "Backups" (Backup Kubernetes Cluster state to restore in case of mistakes/failures)
* Maturity  
  * **Up-to-date software** (Components, Infrastructure)  
      Adkins2019 7 "Keep Dependencies Up to Date and Rebuild Frequently" (refer to latest versions)

### Compatibility

* ~~Co-existence~~  
* Interoperability  
  * **API-based communication** (Service, Link)  
      Reznik2019 9 "Communicate Through APIs"; Adkins2019 6 "Understandable Interface Specifications" (Use Interface specifications for understandability); Bastani2017 6 "Everything is an API" (Services are integrated via APIs); Indrasiri2021 2 "Service Definitions in Synchronous Communication" (Use a service definition for each service); Indrasiri2021 2 "Service Definition in Asynchronous Communication" (Use schemas to define message formats); Goniwada2021 3 "API First Principle"  
    * **Compatibility** (Service)  
      Scholl2019 6 "Design for Backward and Forward Compatibility"; Bastani2017 6 "Content negotiation" (Services should be flexible with respect to data formats); Goniwada2021 4 "Service Versioning"
    * **Contract-based** (Service)  
      Define Service Contracts That Do Not Leak Internal Details; Bastani2017 4 "Consumer-Driven Contract Testing" (Use contracts for APIs to test against)
  * **Managed communication** (Service, Link) +> Access Control Management Consistency, Automated monitoring  
    Indrasiri2021 3 "Service Abstraction Pattern" Proxy communication with services to include service discovery and load balancing)
    * **Linked through Service discovery** (Link) +> Loose coupling
      Davis2019 8.3; Ibryam2020 12 "Service Discovery"; Richardson2019 "Using service discovery"; Garrison2017 7 "Service Discovery"; Indrasiri2021 3 "Service Registry and Discovery Pattern" ; Bastani2017 7 "Routing" (Use service discovery with support for health checks and respect varying workloads); Indrasiri2021 3 "Service Abstraction Pattern" (Use an abstraction layer in front of services (for example Kubernetes Service)); Goniwada2021 4 "Service Discovery"  
    * **Communication proxied by a service mesh** (Link)
      Davis2019 10.3; Richardson2019 11.4.2; Indrasiri2021 3 "Sidecar Pattern"; Indrasiri2021 3 "Service Mesh Pattern"
