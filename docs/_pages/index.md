---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults
permalink: /
layout: home
title: Overview
---

This site describes the quality model for cloud-native application architectures as presented in the paper *[Towards a Quality Model for Cloud-native applications](http://doi.org/10.1007/978-3-031-04718-3_7)* and updated in the paper *Cloud-Native Architectural Characteristics and their Impacts on Software Quality: A Validation Survey*.
Our quality model focuses on the design time and is intended to enable quality evaluations of software architectures to assess their cloud-nativeness.
The quality model is based on the [Quamoco meta model](https://mediatum.ub.tum.de/doc/1110600/file.pdf) and contains the following **factors** (that means **quality aspects** and **product factors**):

![The current quality model focused on the architectural design](assets/img/revised-quality-model.svg)

The higher level **quality aspects** are adopted from the [ISO25010 standard](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010) and the relations (called **impacts**) between **product factors** and **quality aspects** is explained by this excerpt from the [Quamoco meta model](https://mediatum.ub.tum.de/doc/1110600/file.pdf):

![An excerpt of the Quamoco meta model](assets/img/quamoco.svg?sanitize=true)

It also shows that **entities** are needed which describe a software architecture and which are characterized by **product factors**. Our proposed entities for the quality model are the following:

| Name                    | Description                                                                                              | Relation        |
|-------------------------|----------------------------------------------------------------------------------------------------------|-----------------|
| System                  | The cloud-native application as a whole                                                                  | -               |
| Component               | An abstract part of the system, maps to a logical service or cloud "resource"                            | part-of System  |
| Service                 | A service implementing a business functionality                                                          | is-a Component  |
| Endpoint                | A communication endpoint, for example a REST endpoint, message producer/listener                         | part-of Service |
| External Endpoint       | An endpoint which is publicly available                                                                  | is-a Endpoint   |
| Backing Service         | A component providing general functionalities needed by services, for example, messaging, logging        | is-a Component  |
| Storage Backing Service | An explicitly stateful component used to store business data, e.g., a database                           | is-a Component  |
| Link                    | A connection between components                                                                          | part-of System  |
| Infrastructure          | The technical foundation where components are deployed, e.g., a container orchestration system           | part-of System  |
| Deployment Mapping      | A connection between a component or infrastructure and its (underlying) infrastructure                   | part-of System  |
| Request Trace           | The whole resulting trace of a service invocation from the outside, a collection of components and links | part-of System  |
| Data Aggregate          | An aggregate which needs to be persisted and is used by services, e.g., Business objects                 | part-of System  |
| Backing Data            | Non-business data, e.g., config values, secrets, logs, metrics                                           | part-of System  |

Finally, **measures** are needed for a quantitative evaluation. In its current state we have included **measures** so far presented in scientific literature. However, not for all **product factors** we could find suitable **measures** highlighting the need for future work in order to enable comprehensive quality evaluations for cloud-native application architectures (For more information on this and on the creation process of our quality model see [Initial Creation Process]({{ site.baseurl }}{% link _pages/creation-process.md %}) and [Validation Survey]({{ site.baseurl }}{% link _pages/validation-survey.md %})).

Our quality model is described in more detail in the following:

### Security

* Confidentiality  
  * **Data encryption in transit** (Link)  
    *Data which is sent through a link from one component to another should be encrypted so that even when an attacker has access to the network layer, the data remains confidential.*  
    Scholl2019 6 "Encrypt Data in Transit; Indrasiri2021 2 "Security" (Use TLS for synchronous communications)
  * **Secrets management** (Component)  
    *Secrets (e.g. passwords, access tokens, encryption keys) which allow access to other components or data should be managed specifically to make sure they stay confidential and only authorized components or persons can access them.*  
    * **Isolated secrets** (Component, Backing Data)  
      *Secrets (e.g. passwords, access tokens, encryption keys) should not be stored by in component artifacts (e.g. binaries, images). Instead, components should be given access at runtime only to those secrets which they actually need and only when they need it.*  
      Scholl2019 6 "Never Store Secrets or Configuration Inside an Image"; Adkins2019 14 "Don't Check In Secrets"
    * **Secrets stored in specialized services** (Service, Backing Service, Backing Data)  
      *A dedicated component to host secrets (e.g. passwords, access tokens, encryption keys) can be used which is also able to manage secrets (for example revoke them or replace them with updated secrets). Through such a component secrets can be stored securely but also stay readily available when needed.*  
      Scholl2019 6 "Securely Store All Secrets"; Arundel2019 10 "Kubernetes Secrets"
* Integrity  
  * **Access restriction** (Component, Endpoint)  
    *Access to components should be restricted to those who actually need it. Also within a system access controls should be put in place to have multiple layers of defense. A dedicated component to manage access policies can be used.*  
    * **Least-privileged access** (Component, Endpoint)  
      *Access to endpoints should be given as restrictive as possible so that only components who really need it can access an endpoint.*  
      Scholl2019 6 "Grant Least-Privileged Access"; Arundel2019 11 "Access Control and Permissions"  
    * **Access control management consistency** (Component)  
      *By managing access control in a consistent way, that means for example using the same format of access control lists or a single account directory for all components, vulnerabilities through misconfiguration can be reduced or avoided. Furthermore it is easier to verify that access restrictions are implemented correctly.*  
      Adkins2019 6 "Access Control" (Access control managed by framework); Goniwada2021 9 "Policy as Code" (consistently describe your security policies in form of code)
* Accountability  
  * **Account separation** (Component)  
    *Components should be separated by assigning them different accounts, ideally each component should have an individual account. Through this, it is possible to trace which component performed which actions and in case of an attack accounts that are compromised can be restricted on a fine-grained level so that parts of a system which are not compromised can remain functional.*  
    Scholl2019 6 "Use Separate Accounts/Subscriptions/Tenants"; Adkins2019 8 "Role separation" (let different services run with different roles to restric access); Adkins2019 8 "Location separation" (use different roles for a service in different locations to limit attack impacts)  
* Authenticity  
  * **Authentication delegation** (System, Backing Service)  
    *Delegating the verification of an entity for authenticity removes this concern from components so that their focus can remain on business functionalities while for example different authentication options can be managed in one place only.*  
    Scholl2019 6 "Use Federated Identity Management"; Goniwada2021 9 "Decentralized Identity"  

### Maintainability

* Modularity  
  * **Service-orientation** (System, Service)  
    *Cloud-native applications should realize modularity by being service-oriented, that means the system should be decomposed into services described by interfaces following the microservices architectural style.*  
    * **Limited functional scope** (Service, Endpoint)  
      *Each service should cover only a limited, but cohesive functional scope to keep service manageable.*  
       Reznik 2019 9 "Microservices Architecture"; Adkins2019 7 "Use Microservices" (aligns to zero-trust networking); Goniwada2021 3 "Polylithic Architecture Principle" (Build separate services for different business functionalitites)  
      * *Total Service Interface Cohesion* (Bogner2017, Perepletchikov2007)
      * *Covesiveness of Service* (Oliveira2018, La2013)
      * **Limited data scope** (Service, Data Aggregate)  
        *To keep the functional scope of a service limited, the service should be concerned only with a limited number of data aggregates that need to be administrated together, for example to fulfill data consistency requirements. Data aggregates for which consistency requirements can be relaxed might be split into separate services.*  
        * *Data aggregate scope* (Shim2008)
        * *Service Interface Data Cohesion* (Bogner2017, Perepletchikov2007, Kazemi2011; Brito2021, Jin2021, Jin2018; Athanasopoulos2011, Athanasopoulos2015, Bogner2020)
      * **Limited endpoint scope** (Service, Endpoint)  
        *To keep the functional scope of services limited, the number of endpoints of a service should be limited to a coveshive set of endpoints that provide related operations.*  
        * *Number of provided synchronous and asynchronous endpoints* (Apel2019; Engel2018; Shim2008; Brito2021, Jin2021)
        * *Number of synchronous endpoints offered by a service* (Shim2008)
        * *Service Interface Usage Cohesion* (Bogner2017, Perepletchikov2007, Kazemi2011)
        * *Distribution of synchronous calls* (Engel2018)
      * **Command Query Responsibility Segregation** (Service, Endpoint) -> Simplicity  
        *When read (query) and write (command) operations to data aggregates have differing usage patterns and require different formats or are changed for different reasons, separating them into different components can lead to better modularity and manageability.*  
        Davis2019 4.4; Richardson2019 7.2 "Using the CQRS pattern"; Bastani2017 12 "CQRS (Command Query Responsibility Segregation)"; Indrasiri2021 4 "Command and Query Responsibility Segregation Pattern"; Goniwada2021 4 "Command and Query Responsibility Segregation Pattern"
    * **Separation by gateways** (System, Component, Endpoint) +> Seamless upgrades  
      *By separating components through gateways, communication can be proxied and controlled at specific components. It also abstracts one part of a system from another so that it can be reused by different components without needing direct links to components that actually provide the needed funtionality, this also enables the redirection of communication when components change without changing the gateway endpoint. Furthermore, incoming communication from outside of a system can be controlled at a central component (the gateway) to ensure access control.*  
      Davis2019 10.2; Richardson2019 8.2; Bastani2017 8 "Edge Services: Filtering and Proxying with Netflix Zuul"; Indrasiri2021 7 "API Gateway Pattern"; Indrasiri2021 7 "API Microgateway Pattern" (Smaller API microgateways to avoid having a monolithic API gateway); Goniwada2021 4 "Mediator" (Use a mediator pattern between clients and servers)  
      * *Externally available endpoints* (Zimmermann2015)
      * *Centralization of externally available endpoints* (Ntentos2020)
      * *API Composition utilization metric* (Ntentos2020)
  * **Isolated state** (System, Component, Storage Backing Service) +> Replaceability, Elasticity  
    *In cloud-native applications services should be structured by clearly separating stateless and stateful services. Stateful services should be reduced to a minimum.*  
    Goniwada2021 3 "Coupling" (Services should be as loosely coupled as possible)  
    * **Mostly stateless services** (Component) +> Testability  
      *Most services in a cloud-native application should be stateless, because they can be replaced, scaled and updated more easily.*  
      Davis2019 5.4; Scholl2019 6 "Design Stateless Services That Scale Out"; Goniwada2021 3 "Be Smart with State Principle", 5 "Stateless Services"
      * *Ratio of state dependency of endpoints* (Karhikeyan2012)
      * *Ratio of stateful components* (Qian2006)
      * *Ratio of stateless components* (Hirzalla2009)
      * *Degree to which components are linked to stateful components* (Qian2006)
    * **Spezialized stateful services** (Component, Storage Backing Service)  
      *For stateful components, specialized software should be used that can still provide elasticity and reliability by handling distributed state and ensure consistency.*  
      Davis2019 5.4; Ibryam2020 11 "Stateful Service"
  * **Loose coupling** (System, Component, Link)  
    *In cloud-native applications links between components should be loosely coupled in time, location, and language to achieve independence.*  
    * **Asynchronous communication** (Link)  
      *By preferring asynchronous links (e.g. based on messaging middleware) for the communication between components, they can be decoupled in time so that not all linked components need to be available at the same time for a successfull communication.*  
      Davis2019: 4.2; Scholl2019 6 "Prefer Asynchronous Communication"; Richardson2019 3.3.2, 3.4 "Using asynchronous messaging to improve availability"; Indrasiri2021 3 "Service Choreography Pattern"; Ruecker2021 9 "Asynchronous Request/Response" (Use asynchronous communication to make services more robust); Goniwada2021 4 "Asynchronous Nonblocking I/O"
      * *Number of asynchronous endpoints offered by a service* (Shim2008)
      * *Number of synchronous outgoing links* (Apel2019)
      * *Number of asynchronous outgoing links* (Apel2019)
      * *Ratio of asynchronous outgoing links* (Karhikeyan2012)
      * *Degree of asynchronous communication* (Qian2006)
      * *Asynchronous Communication Utilization* (Ntentos2020a)
    * **Communication partner abstraction** (Link, Backing Service) -> Analyzability  
      *By abstracting from specific components as linked communication partners, components are further decoupled and must not exist at the same time for communication. An example is event-driven communication where events are published to channels and can also be received by components which are created later in time.*  
      Richardson2019 6 Event-driven communication; Ruecker2021 8: Event-driven systems "event chains emerge over time and therefore lack visibility." 
      * *Service Interaction with Event Sourcing utilization metric* (Ntentos2020)
* Reusability  
  * **Standardization** (System, Component, Link)  
    *By using standardized technologies within components, for interfaces, and especially for the infrastructure, backing services and other non-business concerns, reusability can be increased and the effort to develop additional functionality which integrates with existing components can be reduced.*  
    * **Component similarity** (Component)  
      *The more similar components are, the higher the reusability is and the easier it is for developers to work on an unfamiliar component. Furthermore, similar components can be more easily integrated and maintainted in the same way. Similarity considers mainly the libraries and technologies used for implementing and deploying services.*  
      Reznik2019 9 "Reference Architecture"
* Analysability  
  * **Automated monitoring** (Service, Link, Infrastructure)  
    *Cloud-native applications should enable monitoring at various levels (business functionalities in services, backing-service funtionalities, infrastructure) in an automated fashion to enable observable and autononmous reactions to changing system conditions.*  
    Goniwada2021 3 "High Observability Principle"  
    * **Consistent centralized logging** (Service, Backing Service) +> Accountability  
      *Logging functionality should be concentrated in a centralized component which combines and stores logs from the components of a system. The logs should also be consistent regarding their format and level of granularity so that a correlation and analysability of logs is facilitated.*  
      Davis2019 11.1; Scholl2019 6 "Use a Unified Logging System"; Scholl2019 6 "Common and Structured Logging Format"; Richardson2019 11.3.2 "Applying the Log aggregation pattern"; Reznik2019 10 "Observability"; Garrison2017 7 "Monitoring and Logging"; Adkins2019 15 "Design your logging to be immutable"; Arundel2019 15 "Logging"; Winn2017 2 "Aggregated Streaming of Logs and Metrics"; Bastani2017 13 "Application Logging"; Bastani2017 13 "Audit Events" (capture events for audits, like failed logins etc); Ruecker2021 11 "Custom Centralized Monitoring"; Goniwada2021 19 "One Source of Truth"  
    * **Consistent centralized metrics** (Service, Backing Service)  
      *Metrics gathering and calculation functionality should be concentrated in a centralized component which combines, aggregates and stores metrics from the components of a system. The metrics should also be consistent regarding their format and level of granularity so that a correlation and analysability of metrics is facilitated.*  
      Davis2019 11.2; Scholl2019 6 "Tag Your Metrics Appropriately"; Richardson2019 11.3.4 "Applying the Applications metrics pattern"; Garrison2017 7 "Monitoring and Logging", "Metrics Aggregation"; Reznik2019 10 "Observability"; Arundel2019 15 "Metrics help predict problems"; Winn2017 2 "Aggregated Streaming of Logs and Metrics"; Bastani2017 13 "Metrics"; Arundel2019 16 "The RED Pattern" (common metrics you should have for services); Arundel2019 16 "The USE Pattern" (common metrics for resources); Goniwada2021 19 "One Source of Truth"  
    * **Distributed tracing of invocations** (Service, Link, Request Trace)  
      *For requests that span multiple components in a cloud-native system, distributed tracing should be enabled so that complete traces can be analyzed and problems can be clearly attributed to single components.*  
      Davis 11.3; Scholl2019 6 "Use Correlation IDs"; Richardson2019 11.3.3 "Using the Distributed tracing pattern"; Garrison2017 7 "Debugging and Tracing"; Reznik2019 10 "Observability"; Arundel2019 15 "Tracing"; Bastani2017 13 "Distributed Tracing"; Ruecker2021 11 "Observability and Distributed Tracing Tools" (Use Distributed Tracing); Goniwada2021 19 "One Source of Truth"  
      * *Distributed Tracing Support* (Ntentos2020)
    * **Health and readiness Checks** (Service) +> Automated restarts, Availability  
      *All components in cloud-native system should enable health and readiness checks so that unhealthy components can be quickly identified and fixed and communication is carried out only between healthy and ready components. Furthermore, health and readiness checks enable an up-to-date holisitc overview of the health of a system.*  
      Scholl2019 6 "Implement Health Checks and Readiness Checks"; Ibryam2020 4 "Health Probe"; Richardson2019 11.3.1 "Using the Health check API pattern"; Garrison 7 "State Management"; Arundel2019 5 "Liveness Probes"; Arundel2019 5 "Readiness Probes"; Bastani2017 13 "Health Checks"; Indrasiri2021 1 "Why container orchestration?; Health monitoring"; Goniwada2021 4 "Fail Fast", 16 "Health Probe"  
* Modifiability  
  * **Automated infrastructure provisioning** (Infrastructure) +> Installability  
    *Infrastructure provisioning should be automated based on component requirements which are either stated explicitly or inferred from the component which should be deployed. The infrastructure and tools used should require only minimal manual effort. Ideally it should be combined with continuous delivery processes so that no further interaction is needed for a component deployment.*  
     Reznik2019 10 "Automated Infrastructure"; Goniwada2021 5 "Automation"  
    * **Use infrastructure as code** (Infrastructure) +> Adaptability, Reusability, Recoverability  
      *To avoid manual infrastructure operation and configuration, the infrastructure requirements and constraints should be defined (coded) independently of the actual runtime. That way a defined infrastructure can be automatically provisioned repeatedly and ideally on different underlying infrastructures (cloud providers).*  
      Scholl2019 6 "Describe Infrastructure Using Code"; Goniwada2021 16 "Declarative Deployment", 17 "What Is Infrastructure as Code?"  
      * *Lines of code (LOC) for deployment configuration.* (Lehmann2017, Talwar2005)
  * **Service independence** (Service, Link)  
    *In a cloud-native application services should be as independent as possible throughout their lifecycle, that means development, operation, and evolution. Changes to one services should not impact other services.*  
    Goniwada2021 3 "Decentralize Everything Principle" (Decentralize deployment, governance)  
    * **Low coupling** (Service, Link)  
      *In a cloud-native application coupling shoud be low in terms of links between components. Each link represents a dependency and therefore decreases service independen*
      * *Number of Links per Component* (Zimmermann2015; Tiwari2014; Rosa2020)
      * *Number of Consumed Endpoints* (Apel2019)
      * *Incoming outgoing ratio of a component* (Tiwari2014)
      * *Ratio of outgoing links of a service* (PhamThiQuynh2009)
      * *Coupling degree based on potential coupling* (PhamThiQuynh2009)
      * *Interaction density in the system* (Tiwari2014)
      * *Interaction density of a system* (Tiwari2014; Karhikeyan2012)
      * *Indirect Interaction density of a system* (Karhikeyan2012)
      * *Service Coupling based on Endpoint Entropy* (Wang2009)
      * *System Coupling based on Endpoint Entropy* (Wang2009)
      * *Modularity quality based on cohesion and coupling* (Brito2021, Jin2021)
      * *Combined metric for indirect dependency* (Karhikeyan2012)
      * *Services Interdependence in the System* (Bogner2017, Rud2006)
      * *Average Number of Directly Connected Services* (Shim2008)
      * *Number of Components that are linked to a component* (Bogner2017, Rud2009, Shim2008; Zhang2009)
      * *Number of Components a component is linked to* (Bogner2017; Rud2009; Engel2018; Shim2008; Raj2021, Raj2018; Hofmeister2008; PhamThiQuynh2009; Zhang2009)
      * *Number of links between two services* (Hofmeister2008)
      * *Aggregate System metric to measure service coupling* (Hofmeister2008)
      * *Number of Components a component is linked to relative to the total amount of components* (Raj2021, Raj2018, Zhang2009)
      * *Degree of coupling in a system* (Raj2021, Raj2018, Hofmeister2008, Zhang2009)
      * *Service Coupling based on data exchange complexity* (Kazemi2013, Ma2009)
      * *Simple Degree of coupling in a system* (Qian2006)
      * *Direct Service Sharing* (Ntentos2020a)
      * *Transitively Shared Services* (Ntentos2020a)
      * *Ratio of shared non-external components to non-external components* (Zdun2017)
      * *Ratio of shared dependencies of non-external components to possible dependencies* (Zdun2017)
      * *Degree of dependence on other components* (Oliveira2018, La2013, Oh2011)
      * *Degree of dependence on other components* (PhamThiQuynh2009)
    * **Functional decentralization** (System, Service, Link)  
      *Business functionality should be decentralized over the system as a whole to make components more independent.*
      * *Conceptual Modularity quality based on Data Aggregate cohesion and coupling* (Brito2021, Jin2021)
      * *Cyclic Communication* (Apel2019, Ntentos2020a)
      * *Number of synchronous cycles* (Engel2018)
      * *Relative Importance of the Service* (Zhang2009)
      * *Extent of Aggregation components* (Hofmeister2008)
      * *System’s CentraliZation* (Hofmeister2008)
      * *Density of Aggregation* (Hofmeister2008)
      * *Aggregator CentraliZation* (Hofmeister2008)
      * *Data Aggregate Convergence across Components* (Kazemi2013, Ma2009)
      * *Service Criticality* (Bogner2017, Rud2009)
    * **Limited request trace scope** (Request Trace)  
      *A request that requires the collaboration of several services should still be limited to as few services as possible, because otherwise services are less independent the more they need to collaborate to handle requests.*  
      * *Maximum Length of Service Link chain per request trace* (Apel2019, Engel2018; Rosa2020)
      * *Maximum number of services within a request trace* (Apel2019)
      * *Service composition scope* (Zimmermann2015)
    * **Logical grouping**  (System, Service)  
      *To increase the independence of services, services should also be grouped so that services which are related are in the same group, but services which are independent are separated further. That way a separation can also be achieved on the network and infrastucture level by separating independent component groups more strictly. Potential impacts of a compromised or misbehaving service can therefore be reduced to the group to which it belongs but other groups are unaffected.*  
      Scholl2019 6 "Use Namespaces to Organize Services in Kubernetes"; Arundel2019 5 "Using Namespaces"; Indrasiri2021 1 "Why container orchestration?; Componentization and isolation"  
    * **Backing service decentralization** (Service, Backing Service)  
      *By assigning different backing services to different components a decentralization can be achieved which makes components more independent. For example, instead of one message broker for a whole system, several message brokers can be used, each for a group of components that are interrelated. A problem in one messaging broker has an impact on only those components using it, but not on components having separate message brokers.*  
      Indrasiri2021 4 "Decentralized Data Management" (decentralized data leads to higher service independence while centralized data leads to higher consistency.); Indrasiri2021 4 "Data Service Pattern" (As having a negative impact because multiple services should not access the same data); Ruecker2021 2 "Different Workflow Engines for different services"; Goniwada2021 5 "Distributed State", "Decentralized Data"  
      * *Degree of Storage Backend Sharing* (Rosa2020)
      * *Ratio of Storage Backend Sharing* (Rosa2020)
      * *Shared Storage Backing Service Interactions* (Ntentos2020, Ntentos2020a)
      * *Database Type Utilization* (Ntentos2020a)
  * **Addressing abstraction** (Link, Backing Service) +> Replaceability  
    *By abstracting from specific addresses for reaching other components, address changes can be handled automatically without impacting the link between components. This can be achieved for example through service discovery where components are addressed through abstract service names and specific addresses are resolved through service discovery.*  
    Davis2019 8.3; Ibryam2020 12 "Service Discovery"; Richardson2019 "Using service discovery"; Garrison2017 7 "Service Discovery"; Indrasiri2021 3 "Service Registry and Discovery Pattern" ; Bastani2017 7 "Routing" (Use service discovery with support for health checks and respect varying workloads); Indrasiri2021 3 "Service Abstraction Pattern" (Use an abstraction layer in front of services (for example Kubernetes Service)); Goniwada2021 4 "Service Discovery"  
    * *Service Discovery Usage* (Apel2019)
* Testability  
* Simplicity (as the counterpart to complexity, but instead of naming it Low Complexity named it Simplicity)  
  * **Sparsity**
    *The more sparse a system is, that means the less components there are, the more simple it is in general*
    * *Average Number of Endpoints per Service* (Bogner2017, Bogner2020, Hirzalla2009; Brito2021, Jin2021; Rosa2020; Kazemi2013, Ma2009)
    * *Number of Dependencies* (Apel2019)
    * *Number of Versions per Service* (Bogner2017, Hirzalla2009)
    * *Concurrently available versions complexity* (Karhikeyan2012)
    * *Service Support for Transactions* (Bogner2017, Hirzalla2009)
    * *Data Model Scope* (Zimmermann2015)
  * **Operation outsourcing** (Backing Service, Infrastructure) +> Cost variability  
    *By outsourcing the operation of infrastructure and components to a cloud provider or other vendor, the operation is simplified because responsibility is transferred. Furthermore, costs can be made more flexible because providers and vendors can provide a usage-based pricing.*  
    * **Managed infrastructure** (Infrastructure)
      *Infrastructure such as basic computing, storage or network resources can be managed by vendors to ensure a stable functioning and up-to-date functionalities. Furthermore, it reduces the operational overhead.*
    * **Managed backing services** (Backing Service)  
      *Especially backing services that provide non-business functionality can be managed by vendors to ensure a stable functioning and up-to-date functionalities. Furthermore, it reduces the operational overhead.*  
      Scholl2019 6 "Use Managed Databases and Analytics Services"; Arundel2019 15 "Don’t build your own monitoring infrastructure" (Use an external monitoring service); Bastani2017 10 "managed and automated messaging system" (operating your own messaging system increases operational overhead, better use a system managed by a platform)  
  * **Usage of existing solutions for non-core capabilities** (Component, Link)  
    *By using readily available standardized, open source solutions for non-core capabilities, the development effort is reduced and the software quality can be increased, because a broader community ensures the well-functioning of a software solution.*
    Reznik2019 9 "Avoid Reinventing the Wheel"; Adkins2019 12 "Frameworks to Enforce Security and Reliability"  

### Performance efficiency

* Time-behaviour  
  * **Replication** (Service)  
    *In a cloud-native application business logic and needed data should be replicated at various points in a system so that latencies can be minimized and requests can be distributed for fast request handling.*  
    * **Service replication**  
      *In a cloud-native application services and therefore their provided functionalities should be replicated across different locations so that the latency for accesses from different locations is minimized and the incoming load can be distributed among replicas.*  
      * *Amount of redudancy* (Zimmermann2015)
      * *Service Replication level* (Guerron2020, SOUZA-2016-ISCC)
    * **Horizontal data replication** (Storage Backing Service, Data Aggregate)  
      *Data should be replicated horizontally, that means duplicated across several data storage components so that higher load can be handled and replicas closer to the service where data is needed can be used to reduce latency.*  
     Scholl2019 6 "Use Data Partitioning and Replication for Scale"; Goniwada2021 4 "Data Replication"  
      * *Storage Replication level* (Guerron2020, SOUZA-2016-ISCC)
    * **Vertical data replication** (Service, Data Aggregate) -> Analyzability +> Availability  
      *Data should be replicated vertically, that means across a request trace so that it is available closer to where a request initially comes in. Typically caching is used for vertical data replication.*  
      Scholl2019 6 "Use Caching"; Bastani2017 9 "Caching" (Use an In-Memory cache for queries to relieve datastore from traffic; replication into faster data storage); Indrasiri2021 4 "Caching Pattern"
    * **Sharded data store replication** (Storage Backing Service, Data Aggregate)  
      *Data should be sharded, that means split into several storage components by a reasonable strategy so that requests can be distributed across shards to increase performance, because one storage component is not as easily overloaded with requests.*  
      Indrasiri2014 4 "Data Sharding Pattern"; Goniwada2021 4 "Data Partitioning Pattern"
* Resource utilisation  
  * **Enforcement of appropriate resource boundaries** (Component) +> Availability  
    *In cloud-native applications, the resources required by a component should be predictable as precisely as possible and specified accordingly for each component in terms of lower and upper boundaries. Resources include CPU, memory, GPU, or Network requirements. This information should be used by the infrastructure to enforce these resource boundaries. Thereby it is ensured that a component has the resources available that it needs to function properly, that the infrastructure can optimize the amount of allocated resource, and that components are not negatively impacted by defective components which excessively consume resources.*  
    Scholl2019 6 "Define CPU and Memory Limits for Your Containers"; Arundel2019 5 "Resource Limits"; Ibryam2020 2 "Defined Resource requirements"; Arundel2019 5 "Resource Quotas" (limit maximum resources for a namespace); Goniwada2021 3 "Runtime Confinement Principle", 16 "Predictable Demands"  
  * **Dynamic scheduling** (Infrastructure)  
    *Resource provisioning to deployed components should be dynamic and automated so that every component is ensured to have the resources it needs and only that many resources are provisioned wich are really needed at the same time. This requires dynamic adjustments to resources to adapt to changing environments. This capability should be part of the used infrastructure.*  
    Reznik2019 10 "Dynamic Scheduling"; Garrison2017 7 "Resource Allocation and Scheduling"; Ibryam2020 6 "Automated Placement"; Indrasiri2021 1 "Why container orchestration?; Resource Management"; Indrasiri2021 1 "Why container orchestration?; Automatic provisioning"; Goniwada2021 16 "Automated Placement"
* Capability  
  * **Elasticity** (Service) +> Resource utilisation  
    *A cloud-native application should automatically add or remove computing resources based on the currently monitored needs to be capable of handling the current load, but also optimize resource utilization.*  
    * **Built-in autoscaling** (Service) +> Availability  
      *In a cloud-native application, autoscaling of components should be automated and ideally built-in into the infrastructure to reduce the operational effort for scaling. Autoscaling should be based on appropriate rules so that resurce utilization is optimized. The automated scaling also has to account for a services' dependencies*  
      Scholl2019 6 "Use Platform Autoscaling Features"; Ibryam2020 24 "Elastic Scale; Bastani2017 13 "Autoscaling"; Indrasiri2021 1 "Why container orchestration?; Scaling";  Goniwada2021 5 "Elasticity in Microservices"  

### Portability  

* Adaptability  
  * **Infrastructure abstraction** (Service, Infrastructure)  
    *In a cloud-native application the used infrastructure should be abstracted by clear boundaries to decouple the system from physical hardware or also virtual hardware to minimize the effort and risk involved with managing infrastructure*  
    Bastani2017 14 "Service Brokers" (make use of service brokers as an additional level of abstraction to automatically add or remove backing services); Goniwada2021 3 "Location-Independent Principle"  
  * **Cloud vendor abstraction** (Service, Infrastructure) +> Resuability  
    *In a cloud-native application the infrastructure and services offered by a cloud provider should be abstracted with a unifying boundary to enable portability across different cloud vendors.*  
    Wimm2017 3 "Infrastructure and the Cloud Provider Interface"; Indrasiri2021 1 "Dynamic Management; Mulicloud support"  
    * *Service portability* (Guerron2020, SINGH-2015-COMPELECENG)
  * **Configuration management** (Component, Backing Data)  
    *Configuration values which are specific to an environment should be managed separately in a consistent way. Through this, components are more portable across environments and configuration can change independently from components.*  
    * **Isolated configuration** (Service, Backing Data)  
      *Following DevOps principles, environment-specific configurations should be separated from component artifacts (e.g. deployment units) and provided by the environment in which a cloud-native application runs. This enables adaptability across environments (also across testing and production environments)*  
      Davis2019 6.2 "The app’s configuration layer"; Ibryam2020 18; Scholl2019 6 "Never Store Secrets or Configuration Inside an Image"; Adkins2019 14 "Treat Configuration as Code"; Indrasiri2021 1 "Decoupled Configurations"
      * *Configuration externalization* (Apel2019)
    * **Configuration stored in specialized services** (Service, Backing Data, Backing Service)  
      *By storing configuration values in specialized services and not only environment variables for example, changing configurations is facilitated and updating configurations of runnning components can be enabled.*  
      Ibryam2020 19 "Configuration Resource"; Richardson2019 11.2 "Designing configurable services"; Arundel2019 10 "ConfigMaps"; Bastani2017 2 "Centralized, Journaled Configuration", Bastani2017 2 "Refreshable Configuration"
  * **Contract-based** (Service, Endpoint)  
    *By defining contracts for links, changes to endpoints can be evaluated by their impact on the contract and delayed when a contract would be broken. That way consumers of endpoints can adapt to changes when necessary.*  
    Define Service Contracts That Do Not Leak Internal Details; Bastani2017 4 "Consumer-Driven Contract Testing" (Use contracts for APIs to test against)
* Installability  
  * **Standardized self-contained deployment unit** (Component)  
    *The components of a cloud-native applications should be deployed as standardized self-contained units so that the same artifact can reliably be installed and run in different environments and on different infrastructure.*  
     Reznik2019 10 "Containerized Apps"; Adkins2019 7 "Use Containers" (smaller deployments, separated operating system, portable); Indrasiri2021 1 "Use Containerization and Container Orchestration"; Garrison2017 7 "Application Runtime and Isolation"; Goniwada2021 3 "Deploy Independently Principle" (deploy services in independent containers), "Self-Containment Principle", 5 "Containerization"  
* Replaceability  
  * **Immutable artifacts** (Service, Infrastructure)  
    *Infrastructure and services of a cloud-native application should be defined and described in its entirety at development time so that artifacts are immutable at runtime. This ensures replaceability which means upgrades are introduced at runtime through replacement instead of modification. Furthermore components do not differ across environments and in case of replication all replicas are identical to avoid unexpected behaviour.*  
    Scholl2019 6 "Don’t Modify Deployed Infrastructure"; Indrasiri2021 1 "Containerization"; Goniwada2021 3 "Process Disposability Principle", "Image Immutability Principle"
    * *Number of Deployment Target Environments* (Apel2019)

### Reliability  

* Availability  
  * **Guarded ingress** (Service, Endpoint)  
    *Ingress communication, that means communication coming from the outside of a system, needs to be guarded. It should be ensured that access is controlled and that a system is not maliciously overwhelmed.*  
    Scholl2019 6 "Implement Rate Limiting and Throttling"; Adkins2019 8 "Throttling" (Delaying processing or responding to remain functional and decrease traffic from individual clients) (should be automated, part of graceful degradation); Adkins2019 8 "Load shedding" (In case of traffic spike, deny low priority requests to remain functional) (should be automated, part of graceful degradation); Goniwada2021 5 "Throttling"  
  * **Distribution** (Service, Infrastructure)  
    *In cloud-native applications components should be distributed across locations and data centers for availability, reliability, and performance.*  
    * *Component density* (Guerron2020, RIZVI-2017-JPROCS)
    * **Physical data distribution** (Storage Backing Service, Infrastructure)  
      *Data should be distributed across physical locations (e.g. availability zones) to ensure availability even in the case of data center failures.*  
      Scholl2019 6 "Keep Data in Multiple Regions or Zones"; Indrasiri2021 4 "Data Sharding Pattern: Geographically distribute data"
      * *Number of Availability Zones used* (Guerron2020, BARANWAL-2014-IACC)
    * **Physical service distribution** (Component, Infrastructure)  
      *Components should be distributed across physical locations (e.g. availability zones) to ensure availability even in the case of data center failures.*  
      Winn2017 2 "Resiliency Through Availability Zones"  
      * *Number of Availability Zones used* (Guerron2020, BARANWAL-2014-IACC)
  * **Seamless upgrades** (Component)  
    *Upgrades of services should not interfere with availability. There are different strategies, like rolling upgrades, to achieve this which should be provided as a capability by the infrastructure.*  
    * **Rolling upgrades enabled** (Component, Infrastructure)  
      *If the infrastructure on which components of a cloud-native application are deployed provides the ability for rolling upgrades, upgrades can be performed seamlessly in an automated manner with reduced effort.*  
      Davis2019 7.2; Scholl2019 6 "Use Zero-Downtime Releases"; Ibryam2020 3 "Declarative Deployment"; Reznik2019 10 "Risk-Reducing Deployment Strategies"; Arundel2019 13 "Rolling Updates"; Indrasiri2021 1 "Why container orchestration?; Rolling upgrades"
  * **Automated infrastructure maintenance** (Infrastructure) +> Reoverability  
    *The used infrastructure should automate regular maintenance tasks as much as possible in a way that the operation of components is not impacted by these tasks. Such tasks include updates of operating systems, standard libraries, and middleware managed by the infrastructure, but also certificate regeneration.*
     Reznik2019 10 "Automated Infrastructure"; Goniwada2021 5 "Automation"  
* Fault tolerance  
  * *Process Coordination Means* (Zimmermann2015)
  * **Autonomous fault handling** (Service, Link, Infrastructure)  
    *In cloud-native applications services should expect faults at different levels and either handle them or minimize their impact by relying on the capabilities of cloud environments.*  
    * **Invocation timeouts** (Link)  
      *For links between components, timeouts should be defined to avoid infinite waiting on a service that is unavailable and a timely handling of problemes.*  
      Indrasiri2021 3 "Resilient Connectivity Pattern: Time-out"; Richardson2019 3.2.3 "Handling partial failures using the Circuit Breaker pattern"; Goniwada2021 5 "Timeout"  
    * **Retries for safe invocations** (Link)  
      *Links that are safe to invoke multiple times without leading to unintended state changes, should be retried in case of failures to automatically handle transient faults in communication. That way faults can be prevented from being propagated higher up in the request trace.*  
      Davis2019 9.1; Scholl2019 6 "Handle Transient Failures with Retries"; Scholl2019 6 "Use a Finite Number of Retries"; Bastani2017 12 "Isolating Failures and Graceful Degradation: Use retries"; Indrasiri2021 3 "Resilient Connectivity Pattern: Retry"; Ruecker2021 9 "Synchronous Request/Response" (Use retries in synchronous communications); Ruecker2021 9 "The Importance of Idempotency" (Communication which is retried needs idempotency); Goniwada2021 4 "Idempotent Service Operation", "Retry", 5 "Retry"
      * *Number of Links with retry logic* (Apel2019)
    * **Circuit breaked communication** (Link)  
      *If a link is broken for an extended time, a circuit breaker can help to avoid unnecessary communication and therefore waiting time, instead a failure should be immediately returned or a default response should be given, if possible.*  
      Davis2019 10.1; Scholl2019 6 "Use Circuit Breakers for Nontransient Failures"; Richardson2019 3.2.3 "Handling partial failures using the Circuit Breaker pattern"; Bastani2017 12 "Isolating Failures and Graceful Degradation: circuit breaker"; Indrasiri2021 3 "Resilient Connectivity Pattern: Circuit breaker";  Goniwada2021 4 "Circuit Breaker"  
      * *Number of Links with Complex Failover* (Apel2019)
  * **Persistent communication** (Link)  
    *By using links that persist messages which have been sent, components can be further decoupled, because components need not even exist at the time a message is sent, but can still receive a message. Through this communication can also be repeated in case of failures.*  
    Indrasiri2021 5 "Event Sourcing Pattern: Log-based message brokers"
    * *Service Link Persistence utilization metric* (Ntentos2020)
    * *Outbox/Event Sourcing utilization metric* (Ntentos2020)
* Recoverability  
  * **Automated restarts** (Service)  
    *In a cloud-native application, when a component is found to be unhealthy, it should be automatically and directly restarted so that a recover from failures is possible. Ideally this concern should be moved to the infrastructure level.*  
    Winn2017 2 "Self-Healing Processes; Self-Healing VMs"; Bastani2017 13 "automatic remediation"; Indrasiri2021 1 "Why container orchestration?; High availability"; Goniwada2021 5 "Self-Healing"  

### Compatibility

* Co-existence  
* Interoperability  
  * **API-based communication** (Service, Endpoint, Link) +> Testability  
    *In a cloud-native application services should communicate via well-defined, standardized, documented, and declarative APIs which can be both synchronous or asynchronous.*  
    Reznik2019 9 "Communicate Through APIs"; Adkins2019 6 "Understandable Interface Specifications" (Use Interface specifications for understandability); Bastani2017 6 "Everything is an API" (Services are integrated via APIs); Indrasiri2021 2 "Service Definitions in Synchronous Communication" (Use a service definition for each service); Indrasiri2021 2 "Service Definition in Asynchronous Communication" (Use schemas to define message formats); Goniwada2021 3 "API First Principle"  
  * **Consistently mediated communication** (Component, Link) -> Time-behaviour +> Analyzability  
    *By mediating communication through additional components, there is no direct dependence on the other communication partner and additional operations can be performed to manage the communication, such as load balancing, monitoring, or the enforcement of policies. By using centralized mediation approaches, such as Service Meshes, management actions can be performed universally and consistently across the components of an application.*
    Indrasiri2021 3 "Sidecar Pattern", "Service Mesh Pattern", "Service Abstraction Pattern" Proxy communication with services to include service discovery and load balancing); Davis2019 10.3; Richardson2019 11.4.2  
    * *Service Interaction via Backing Service* (Ntentos2020a)
    * *Service Interaction via Central Component utilization metric* (Ntentos2020)

## Basic metrics

* *Total Number of Components* (Shim2008; Zimmermann2015)
* *Number of Services* (Shim2008; Raj2018; Hirzalla2009; Hofmeister2008; Zhang2009, Rud2006)
* *Number of Backing Services* (Shim2008)
* *Total number of links in a system* (Brito2021, Jin2018; Tiwari2014)
* *Data aggregate scope* (Shim2008)
* *Number of synchronous endpoints* (Shim2008)
* *Number of asynchronous endpoints* (Shim2008)
* *Number of asynchronous and synchronous links* (Zimmermann2015)
* *Number of Services which have incoming links* (Shim2008; Hofmeister2008)
* *Number of Services which have outgoing links* (Shim2008; Hofmeister2008)
* *Number of Services which have both incoming and outgoing links* (Shim2008; Hofmeister2008)