---
permalink: /measures
layout: page
title: Measures
---

Selected measures from literature which focus on the architectural properties:

## Static measures

### DM_NS / AM-L.2

Name: Number of Services / Number of Components

Adjusted Name: Total Number of Components

Source: Shim2008; Zimmermann2015

Entity: System

Product factor: Simplicity, Complexity

Calculation: Number of Components

### SM_NPS / NoS / NOS / NS / NS

Name: Number of Process Services / Number of Services / Number of Services / Number of Services / Number of Services

Adjusted Name: Number of Services

Source: Shim2008; Raj2018; Hirzalla2009; Hofmeister2008; Zhang2009, Rud2006

Entity: System

Product factor: Simplicity

Calculation: Number of Services

### SM_NIS / SM_NBS

Name: Number of Intermediary Services / Number of Basic Services

Adjusted Name: Number of Backing Services

Source: Shim2008

Entity: System

Product factor: Simplicity

Calculation: Number of Backing Services

### WSIC / IFN / MSM / SG

Name: Weighted Service Interface Count / Interface Number / Module Size Metric / Service Granularity

Name: Average Number of Endpoints per Service

Source: Bogner2017, Bogner2020, Hirzalla2009; Brito2021, Jin2021; Rosa2020; Kazemi2013, Ma2009; Desai2021

Entity: System, Service, Endpoint

Product factor: Simplicity; Size

Calculation: Number of Endpoints / Number of Services

### SIM_NMU

Name: Number of Messages Used

Adjusted Name: Data aggregate scope

Source: Shim2008

Entity: Service

Product factor: Coupling

Calculation: Number of Data aggregates used in a service

### SM_TMU

Name: Total Number of Message Used

Adjusted Name: Data aggregate scope

Source: Shim2008

Entity: System

Product factor: Simplicity

Calculation: Number of Data aggregates used in a system

### NPE / M1 / SIM_NO / ifn / OEM

Name: Number of Produced Endpoints / (A)synchronous interfaces / Number of Operations / interface number / Operations exposed by a microservice

Adjusted Name: Number of provided Endpoints / Number of provided synchronous and asynchronous endpoints

Source: Apel2019; Engel2018; Shim2008; Brito2021, Jin2021; Daniel2023

Entity: Service, Endpoint

Product factor: "Limited funtional scope"

Calculation: Number of endpoints of a service provides

### IR

Name: Interaction ratio of a component

Adjusted Name: Incoming outgoing ratio of a component

Source: Tiwari2014

Entity: Service, Link

Product factor: Service independence

Calculation: Number of outgoing links from a component / Number of incoming links of a component

### IR (CBS)

Name: Interaction ratio of a component-based software

Adjusted Name: Incoming outgoing ratio of a system

Source: Tiwari2014

Entity: System, Service, Link

Product factor: Service independence

Calculation: Number of outgoing links in a system / Number of incoming links in a system

### IMS

Name: Instability Metric for Service Metric

Adjusted Name: Ratio of outgoing links of a service

Source: PhamThiQuynh2009

Entity: Service, Link

Product factor: Service independence

Calculation: (Number of outgoing links of a service / (Total Number of links connected to a service)) * 100

### DCSS

Name: Degree of Coupling within a given set of services metric

Adjusted Name: Coupling degree based on potential coupling

Source: PhamThiQuynh2009

Entity: System, Service, Link

Product factor: Service independence, Coupling

Calculation: ((Maximum path lengths between components when no links exist) - (path lengths between components based on actually existing links)) / (Maximum path lengths between components when no links exist) - (Minimum path lengths when links exist between all components)

### AI

Name: Average interactions among components

Adjusted Name: Interaction density in the system

Source: Tiwari2014

Entity: System, Service, Link

Product factor: Service independence, Coupling

Calculation: (Number of outgoing links in a system + Number of incoming links in a system) / Number of components in as system

### IP% / DD

Name: Interaction Percentage of Components / Direct Dependency

Adjusted Name: Interaction density of a system

Source: Tiwari2014; Karhikeyan2012

Entity: System, Service, Link

Product factor: Service independence, Coupling

Calculation: ((Number of outgoing links in a system + Number of incoming links in a system) / Number of possible links in a system) * 100

### IDDT

Name: Indirect Dependency because of transitive dependency

Adjusted Name: Indirect Interaction density of a system

Source: Karhikeyan2012

Entity: Service, Link

Product factor: Service independence, Coupling

Calculation: (Number of components to which a path exists, but no direct link) / Number of components in a system)

### IE

Name: Information Entropy

Adjusted Name: Service Coupling based on Endpoint Entropy

Source: Wang2009

Entity: Service, Endpoint, Link

Product factor: Service independence, Coupling

Calculation: (sum-of(-log(1 /(Number of links connected to an endpoint + 1))) for all endpoints of a service) / Number of endpoints of a service

### CIE

Name: System Coupling based on Information Entropy

Adjusted Name: System Coupling based on Endpoint Entropy

Source: Wang2009

Entity: System, Service

Product factor: Service independence, Coupling

Calculation: sum-of((sum-of(-log(1 /(Number of links connected to an endpoint + 1))) for all endpoints of a service) / Number of endpoints of a service) for all services

### AM-L1

Name: Number of External Interfaces and Number of Invocations per Interface

Adjusted Name: Externally available endpoints

Source: Zimmermann2015

Entity: Service

Product factor: "Layered architecture"

Calculation: Number of endpoints which are accessible to externals.

### SIM_NAO / AI

Name: Number of Asynchronous Operations / Asynchronous connections a microservice receives

Adjusted Name: Number of asynchronous endpoints offered by a service

Source: Shim2008; Daniel2023

Entity: Service

Product factor: "Limited functional scope", "Asynchronous communication"

Calculation: Number of asynchronous endpoints offered by a service

### SM_NAO

Name: Number of Asynchronous Operations

Adjusted Name: Number of asynchronous endpoints

Source: Shim2008

Entity: System

Product factor: "Asynchronous communication"

Calculation: Number of asynchronous endpoints

### SIM_NSO

Name: Number of Synchronous Operations

Adjusted Name: Number of synchronous endpoints offered by a service

Source: Shim2008

Entity: Service

Product factor: "Limited functional scope"

Calculation: Number of synchronous endpoints offered by a service

### SM_NSO

Name: Number of Synchronous Operations

Adjusted Name: Number of synchronous endpoints

Source: Shim2008

Entity: System

Product factor:

Calculation: Number of synchronous endpoints

### AM-L2 / TI / SCM

Name: Number of Connectors per Component / Total interactions of a component / Service Coupling Metric

Adjusted Name: Number of Links per Component

Source: Zimmermann2015; Tiwari2014; Rosa2020

Entity: Service

Product factor: Coupling, Cohesion

Calculation: Number of Links of a component

### AM-P3

Name: IPC Index and Remote Call Counter

Adjusted Name: Number of asynchronous and synchronous links

Source: Zimmermann2015

Entity: System

Product factor: Scalability, Simplicity

Calculation: Number of asynchronous and synchronous links

### NCE / DO / FO

Name: Number of Consumed Endpoints / Degree_out / Fan out

Adjusted Name: Number of Consumed Endpoints

Source: Apel2019; Gamage2021; Perera2018; Perera2018a

Entity: Service, Link

Product factor: Coupling

Calculation: Number of endpoints a service is linked to

### NSSD / SD

Name: Number of Synchronous Service Dependencies / Synchronous connections a microservice creates

Adjusted Name: Number of synchronous outgoing links

Source: Apel2019; Daniel2023

Entity: Service, Link

Product factor: Asynchronous communication

Calculation: Number of outgoing links that are synchronous

### NASD / AD

Name: Number of Asynchronous Service Dependencies / Asynchronous connections a microservice creates 

Adjusted Name: Number of asynchronous outgoing links

Source: Apel2019; Daniel2023

Entity: Service, Link

Product factor: Asynchronous communication

Calculation: Number of outgoing links that are asynchronous

### DMsgD

Name: Delayed Message Dependency

Adjusted Name: Ratio of asynchronous outgoing links

Source: Karhikeyan2012

Entity: Service, Link

Product factor: Coupling, Asynchronous communication

Calculation: Number of outgoing links that are asynchronous / Number of all outgoing links

### MLASCH / M4 / ISCCM

Name: Max Length of Affected Service Chain per Handling / Longest synchronous call trace / Inter-Service Communication Complexity Metric

Adjusted Name: Maximum Length of Service Link chain per request trace

Source: Apel2019; Engel2018; Rosa2020

Entity: Request trace, System

Product factor: Simplicity, Service independence

Calculation: Longest length (number of links) of the communication chain of a request trace

### MASH

Name: Max Affected Services per Handling

Adjusted Name: Maximum number of services within a request trace

Source: Apel2019

Entity: System

Product factor: Simplicity, Service independence

Calculation: Amount of services needed for processing a request

### AM-SOA2

Name: Number and Complexity of Service Composition Workflows

Adjusted Name: Service composition scope

Source: Zimmermann2015

Entity: System

Product factor: Coupling

Calculation: Number and length of composition workflows

### NHSF

Name: Number of Dependencies with Simple Failover

Adjusted Name: Number of Links with retry logic

Source: Apel2019

Entity: Link

Product factor: Retries for safe invocations

Calculation: Number of synchronous links which implement a retry logic

### NHCF

Name: Number of Dependencies with Complex Failover

Adjusted Name: Number of Links with Complex Failover

Source: Apel2019

Entity: Link

Product factor: Circuit breaked communication, Vertical data replication (Caching)

Calculation: Number of synchronous links which implement a circuit breaker of caching

### PCC / CDD

Name: Part of Communication Cycle / Cyclic Dependencies Detection

Adjusted Name: Cyclic Communication

Source: Apel2019; Ntentos2020a

Entity: Service

Product factor: Service independence

Calculation: Service is part of a cyclic communication path

### M6

Name: #Synchronous cycles

Adjusted Name: Number of synchronous cycles

Source: Engel2018

Entity: System

Product factor: Simplicity, Service independence

Calculation: Number of cycles that exist between services based on synchronous links

### NDE

Name: Number of Discovered Endpoints

Adjusted Name: Service Discovery Usage

Source: Apel2019

Entity: System

Product factor: Linked through Service discovery

Calculation: Number of Links proxied via a discovery service

### NID

Name: Number of Implementation Dependencies

Adjusted Name: Number of Dependencies

Source: Apel2019

Entity: Service

Product factor: Simplicity, Component Similarity

Calculation: Number of compile-time dependecies needed by a component

### NLC

Name: Number of Loaded Configurations

Adjusted Name: Configuration externalization

Source: Apel2019

Entity: Component

Product factor: Configuration Management

Calculation: Number of configurations obtained at runtime

### NDT

Name: Number of Deployment Targets

Adjusted Name: Number of Deployment Target Environments

Source: Apel2019

Entity: Service

Product factor: Artifact immutability

Calculation: Number of traget environments such as development, staging, production

### UCID

Name: Usage of CI/CD

Adjusted Name: CI/CD Coverage

Source: Apel2019

Entity: Service

Product factor: Automated Continuous Delivery

Calculation: completeness of automation regarding the CI/CD process

### DSMBM

Name: Database Sharing Metric Between Modules

Adjusted Name: Degree of Storage Backend Sharing

Source: Rosa2020

Entity: Service, Storage Backing Service

Product factor: Coupling, Simplicity

Calculation: Number of Services sharing the same Storage Backing Service

### IDDSD

Name: Indirect Dependency because of shared data repository

Adjusted Name: Ratio of Storage Backend Sharing

Source: Karhikeyan2012

Entity: Service, Storage Backing Service

Product factor: Coupling, Isolated State

Calculation: (sum-of(Number of Services sharing the same Storage Backing Service) for all Storage Backing Services) / (Total Number of Services * Total Number of Storage Backing Service)

### IDD

Name: Indirect Dependency

Adjusted Name: Combined metric for indirect dependency

Source: Karhikeyan2012

Entity: Service, Storage Backing Service

Product factor: Coupling, Simplicity

Calculation: (IDDT + IDDSD) / 2

### SD

Name: State dependency

Adjusted Name: Ratio of state dependency of endpoints

Source: Karhikeyan2012

Entity: Service, Endpoint, Storage Backing Service

Product factor: Coupling, Simplicity, Mostly stateless services

Calculation: Number of endpoints which require state from a Storage Backing Service / Total Number of endpoints of a Service

### IOD

Name: IO Dependency

Adjusted Name: Complexity of message data

Source: Karhikeyan2012

Entity: Service, Endpoint

Product factor: Coupling, Simplicity

Calculation: sum-of(Value and weight of input and output items (t.b.d) of all endpoints) / Total number of data items of all endpoints

### NVS

Name: Number of Versions per Service

Adjusted Name: Number of Versions per Service

Source: Bogner2017, Hirzalla2009

Entity: Service, Endpoint

Product factor: Complexity, Maintainability

Calculation: Number of concurrently available versions of endpoints

### VC

Name: Coupling by means of versioning

Adjusted Name: Concurrently available versions complexity

Source: Karhikeyan2012

Entity: Service

Product factor: Simplicity, Service independence

Calculation: Number of concurrently available versions of a service / Total number of versions of a service

### SST

Name: Service Support for Transactions

Adjusted Name: Service Support for Transactions

Source: Bogner2017, Hirzalla2009

Entity: Service

Product factor: Complexity, Maintainability

Calculation: Number of services which support transactions

### AM-P2

Name: Process Coordination Means

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: performance, reliability

Calculation: Number of Links used in a transactional context

### SIY

Name: Services Interdependence in the System

Adjusted Name: Services Interdependence in the System

Source: Bogner2017, Rud2006

Entity: Service, Link

Product factor: Coupling, Service independence

Calculation: Number of services which are bi-directionally linked

### IRN / TI(CBS) / Coupling

Name: Interaction number / Total interactions of component based software / Coupling between microservices

Adjusted Name: Total number of links in a system

Source: Brito2021, Jin2018; Tiwari2014; Assuncao2021

Entity: System, Link

Product factor: Coupling, Service independence

Calculation: Number of links in the system

### SMQ

Name: Structural Modularity Quality

Adjusted Name: Modularity quality based on cohesion and coupling

Source: Brito2021, Jin2021

Entity: System, Component, Link

Product factor: Modularity, Limited function scope, Service independence

Calculation: (Average structural cohesiveness of services) - (sum of coupling between services / (Number of entities * (Number of entities -1) / 2))

### CMQ

Name: Conceptual Modularity Quality

Adjusted Name: Conceptual Modularity quality based on Data Aggregate cohesion and coupling

Source: Brito2021, Jin2021

Entity: System, Component, Link, Data Aggregate

Product factor: Modularity, Limited function scope, Service independence

Calculation: (Average structural cohesiveness of services) - (sum of coupling between services / (Number of entities * (Number of entities -1) / 2))

### DM_ADCS

Name: Average Number of Directly Connected Services

Adjusted Name: ?

Source: Shim2008

Entity: Service

Product factor: Coupling, Service independence

Calculation: (SEM_NDPS + SEM_NDCS) / SM_SSNS

### AIS / SEM_NDCS / IS / CC / DI / FI

Name: Absolute Importance of the Service / Number of Directly Connected Consumer Services / Impotance of Service / Client Count / Degree_in / Fan in

Adjusted Name: Number of Components that are linked to a component

Source: Bogner2017, Rud2009; Shim2008; Zhang2009; Asik2017; Gamage2021; Perera2018; Perera2018a

Entity: Service, Link

Product factor: Coupling, Service independence, Reusability

Calculation: Number of Components that are linked to a component (consumers)

### RIS

Name: Relative Importance of the Service

Adjusted Name: ?

Source: Zhang2009

Entity: Service, Link

Product factor: Coupling, Service independence, Reusability

Calculation: Number of Components that are linked to a component (consumers) / Total Number of Components

### ADS / M3 / SEM_NDPS / ISCI / CS / cos / CBS

Name: Absolute Dependence of the Service / #(A)synchronous dependencies / Number of Directly Connected Producer Serivces / Inter-Service Coupling Index / Coupling of Services / Coupling of service / Coupling Between Services Metric

Adjusted Name: Number of Components a component is linked to

Source: Bogner2017; Rud2009; Engel2018; Shim2008; Raj2021, Raj2018; Hofmeister2008; PhamThiQuynh2009; Zhang2009

Entity: Service, Link

Product factor: Coupling, Service indepedence

Calculation: Number of Components a component is linked to

### λ

Name: Inter-Service Coupling

Adjusted Name: Number of links between two services

Source: Hofmeister2008

Entity: Service, Link

Product factor: Coupling, Service indepedence

Calculation: Number of Links which connect the same Components via different endpoints in the same direction

### SSC / CC

Name: System’s Service Coupling / Clustering Coefficient

Adjusted Name: Aggregate System metric to measure service coupling

Source: Hofmeister2008; Gamage2021

Entity: System, Service, Link

Product factor: Coupling, Service indepedence

Calculation: (sum-of(Coupling of service Metric for all Service Consumers)) / (Number of all possible couplings)

### EOA

Name: Extent of Aggregation

Adjusted Name: Extent of Aggregation components

Source: Hofmeister2008

Entity: System, Service, Link

Product factor: Coupling, Service indepedence

Calculation: (sum-of((sum-of(Channels between consumer and aggregator) for all aggregators) / (sum-of(Channels between consumer and provider) for all producers)) for all consumers that are not aggregators )

### SCZ

Name: System’s CentraliZation

Adjusted Name: ?

Source: Hofmeister2008

Entity: System, Service, Link

Product factor: Coupling, Service indepedence

Calculation: see Hofmeister2008

### DOA

Name: Density of Aggregation

Adjusted Name: ?

Source: Hofmeister2008

Entity: System, Service, Link

Product factor: Coupling, Service indepedence

Calculation: see Hofmeister2008

### ACZ

Name: Aggregator CentraliZation

Adjusted Name: ?

Source: Hofmeister2008

Entity: System, Service, Link

Product factor: Coupling, Service indepedence

Calculation: see Hofmeister2008

### RCS

Name: Relative Coupling of Service

Adjusted Name: Number of Components a component is linked to relative to the total amount of components

Source: Raj2021, Raj2018, Zhang2009

Entity: Service, Link

Product factor: Coupling, Service indepedence

Calculation: Number of Components a component is linked to / Total Number of Components

### SCF

Name: Service Coupling Factor

Adjusted Name: Degree of coupling in a system

Source: Raj2021, Raj2018, Hofmeister2008, Zhang2009

Entity: System, Service, Link

Product factor: Coupling, Service indepedence

Calculation: Sum-of(Number of Components a component is linked to) / ((Total Number of Components)² - (Total Number of Components))

### SC

Name: Service Coupling

Adjusted Name: Service Coupling based on data exchange complexity

Source: Kazemi2013, Ma2009

Entity: System, Service, Link

Product factor: Coupling, Service indepedence

Calculation: Summation of complexity of messages sent through all links of a system

### BEC

Name: Business Entity Convergence

Adjusted Name: Data Aggregate Convergence across Components

Source: Kazemi2013, Ma2009

Entity: System, Service, Data Aggregate

Product factor: Coupling, Service indepedence

Calculation: ((sum-of(number of data aggregates used in a service) for all services) / Number of Services) + ((sum-of(Services that use a data aggregate) for all data aggregates) / Number of Data Aggregates)

### ARSD

Name: Average Required Service Dependency

Adjusted Name: Simple Degree of coupling in a system

Source: Qian2006

Entity: System, Service, Link

Product factor: Coupling, Service indepedence

Calculation: Sum-of(Number of Components a component is linked to) / (Total Number of Components)

### ASIC

Name: Average Service Invocation Coupling

Adjusted Name: Degree of asynchronous communication

Source: Qian2006

Entity: System, Service, Link

Product factor: Coupling, Service indepedence, Asynchronous communication

Calculation: (Sum-of(Degree of asynchronous communication of a component) for all components) / (Total Number of Components)

### ACS

Name: Absolute Criticality of the Service

Adjusted Name: Service Criticality

Source: Bogner2017, Rud2009

Entity: Service

Product factor: Coupling, Service independence

Calculation: AIS x ADS

### SIDC / CHM / CC

Name: Service Interface Data Cohesion / Cohesion at message level / Communicational cohesion

Adjusted Name: Service Interface Data Cohesion

Source: Bogner2017, Perepletchikov2007, Kazemi2011; Brito2021, Jin2021, Jin2018; Athanasopoulos2011, Athanasopoulos2015, Bogner2020, Moreira2022

Entity: Service, Endpoint

Product factor: Cohesion, Limited functional scope

Calculation: Similarity of parameter data aggregates of the endpoints of a service interface

### SIUC

Name: Service Interface Usage Cohesion

Adjusted Name: Service Interface Usage Cohesion

Source: Bogner2017, Perepletchikov2007, Kazemi2011, Moreira2022

Entity: Service, Endpoint

Product factor: Cohesion, Limited functional scope

Calculation: Number of endpoints used per client / (number of clients * number of endpoints)

### TSIC

Name: Total Service Interface Cohesion

Adjusted Name: Total Service Interface Cohesion

Source: Bogner2017, Perepletchikov2007, Moreira2022

Entity: Service

Product factor: Cohesion, Limited functional scope

Calculation: (SIDC + SIUC) / 2

### M2

Name: Distribution of synchronous calls

Adjusted Name: Distribution of synchronous calls

Source: Engel2018

Entity: Service

Product factor: Limited functional scope, Elasticity

Calculation: Quotient of the minimum and maximum amount of synchronous calls at the interfaces of a service

### SEM_NTPS / SP

Name: Total Number of Producer Services / Service Providers

Adjusted Name: Number of Services which have incoming links

Source: Shim2008; Hofmeister2008

Entity: System

Product factor: ?

Calculation: Number of Services which have incoming links

### SEM_NTCS / SC

Name: Total Number of Consumer Services / Service Consumers

Adjusted Name: Number of Services which have outgoing links

Source: Shim2008; Hofmeister2008

Entity: System

Product factor: ?

Calculation: Number of Services which have outgoing links

### SA

Name: Service Aggregators

Adjusted Name: Number of Services which have both incoming and outgoing links

Source: Shim2008; Hofmeister2008

Entity: System

Product factor: ?

Calculation: Number of Services which have both incoming and outgoing links

### RVID

Name: Ratio of components violating independent deployability to non-external components

Adjusted Name: Ratio of components violating independent deployability to non-external components

Source: Zdun2017

Entity: System

Product factor: Service independence

Calculation: Number of violating components / Number of non-external components

### RIDC

Name: Ratio of independently deployable component clusters to non-external components

Adjusted Name: Ratio of independently deployable component clusters to non-external components

Source: Zdun2017

Entity: System

Product factor: Service independence

Calculation: Number of independently deployable components / Number of non-external components

### RSCC

Name: Ratio of shared non-external components to non-external components

Adjusted Name: Ratio of shared non-external components to non-external components

Source: Zdun2017

Entity: System

Product factor: Service independence

Calculation: Number of shared components / Number of non-external components

### RSDP

Name: Ratio of shared dependencies of non-external components to possible dependencies

Adjusted Name: Ratio of shared dependencies of non-external components to possible dependencies

Source: Zdun2017

Entity: System

Product factor: ?

Calculation: Number of component sharings / (Number of non-external components)²

### AM-O2

Name: Clustering Index

Adjusted Name: Amount of redudancy

Source: Zimmermann2015

Entity: System

Product factor: Maintainability, Resiliency

Calculation: Deployment units / logical components

### AM I-1

Name: Data Model Size and Data Model Structure

Adjusted Name: Data Model Scope

Source: Zimmermann2015

Entity: System

Product factor: Performance, Maintainability

Calculation: Number of databases/schemas

### G98

Name: Data centre location

Adjusted Name: Number of Availability Zones used

Source: Guerron2020, BARANWAL-2014-IACC (S09,S10), BARANWAL-2016-CPE (
)

Entity: Infrastructure

Product factor: Data centre location, Time behaviour, Performance efficiency, Distribution

Calculation: ("yi?x, yi = number of data centres provided by provider, x =  number of data centres required by an application ") Number of Availability Zones on which the infrastructure is distributed.

### G108

Name: Database Backup

Adjusted Name: Component Backup Size

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Database Backup, Resource recoverability, Reliability

Calculation: measures the Database Backup for every cloud service (CS) in Giga Bytes(GB)

### G120

Name: Density App

Adjusted Name: Component density

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Density App, Sw Time behaviour, Performance efficiency 

Calculation: (mesures the number of application servers running on a system) Number of Components per Infrastructure unit (for example number of virtual machines running on a piece of physical software)

### G255

Name: Number of replicas

Adjusted Name: Storage Replication level

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: Component

Product factor: Storage replication , Physical Capacity, Performance efficiency 

Calculation: (measures the minimum number of replicas guaranteed) Minimum number of replicas used for storage

### G328

Name: Replication

Adjusted Name: Service Replication level

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: Component

Product factor: Server Capacity, Physical Capacity, Performance efficiency 

Calculation: measures the number of replicas of services

### G290

Name: Portability of service

Adjusted Name: Service portability

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: Service

Product factor: Portability ratio, Installability, Portability

Calculation: Portability= (number of compatible platforms)/(total number of platforms)

### CCF

Name: Client-side Communication via Facade utilization metric

Adjusted Name: Centralization of externally available endpoints

Source: Ntentos2020; Ntentos2021

Entity: System

Product factor: API Gateway

Calculation: Number of Client to Facade Links / Number of Unique Client Links

### APIC

Name: API Composition utilization metric

Adjusted Name: API Composition utilization metric

Source: Ntentos2020; Ntentos2021

Entity: System

Product factor: API Gateway

Calculation: (Number of Client to Services via other Services Routes / Total Number of Services) / Number of Unique Client Links

### SMP

Name: Service Messaging Persistence utilization metric

Adjusted Name: Service Link Persistence utilization metric

Source: Ntentos2020; Ntentos2021

Entity: System, Link

Product factor: ?

Calculation: Service Interconnections with Messaging or Stream Processing / Number of Service Interconnections

### SDB / SDBI

Name: Shared DataBase utilization metric / Shared Database Interactions

Adjusted Name: Shared Storage Backing Service Interactions

Source: Ntentos2020, Ntentos2020a; Ntentos2021

Entity: System

Product factor: Backing Service decentralization

Calculation: Service Interconnections with SharedDB / Number of Service Interconnections

### OES

Name: Outbox/Event Sourcing utilization metric

Adjusted Name: Outbox/Event Sourcing utilization metric

Source: Ntentos2020; Ntentos2021

Entity: System, Link

Product factor: ?

Calculation: Service Interconnections with Outbox or Event Sourcing / Number of Service Interconnections

### SFT

Name: Services and Facades supporting Distributed Tracing

Adjusted Name: Distributed Tracing Support

Source: Ntentos2020; Ntentos2021

Entity: System

Product factor: Distributed Tracing

Calculation: Services and Facades Support Distributed Tracing / Number of Services and Facades

### SICC

Name: Service Interaction via Central Component utilization metric

Adjusted Name: Service Interaction via Central Component utilization metric

Source: Ntentos2020; Ntentos2021

Entity: System, Link

Product factor: Distributed Tracing

Calculation: Service Interaction via Central Component w/o Event Sourcing

### SIES

Name: Service Interaction with Event Sourcing utilization metric

Adjusted Name: Service Interaction with Event Sourcing utilization metric

Source: Ntentos2020; Ntentos

Entity: System, Link

Product factor: Distributed Tracing

Calculation: Service Interaction via Central Component with Event Sourcing

### DTU

Name: Database Type Utilization

Adjusted Name: Database Type Utilization

Source: Ntentos2020a

Entity: System

Product factor: Backing Service decentralization

Calculation: Database per Service Links / Total Service-to-Database Links

### SIC

Name: Service Interaction via Intermediary Component

Adjusted Name: Service Interaction via Backing Service

Source: Ntentos2020a

Entity: System

Product factor: Service independence

Calculation: Service Interconnections via [MessageBrokers|Pub/sub|Stream] / Total Service Interconnections

### ACU

Name: Asynchronous Communication Utilization

Adjusted Name: Asynchronous Communication Utilization

Source: Ntentos2020a

Entity: System, Link

Product factor: Asynchronous communication

Calculation: Asynchronous Service Interconnections via [API | Polling |DirectCalls | SharedDB] / Total Service Interconnections

### DSS

Name: Direct Service Sharing

Adjusted Name: Direct Service Sharing

Source: Ntentos2020a

Entity: System

Product factor: Service independence

Calculation: ((Shared Services / Total Services) + (SharedServicesConnectors / TotalServiceInterconnections)) / 2

### TSS

Name: Transitively Shared Services

Adjusted Name: Transitively Shared Services

Source: Ntentos2020a

Entity: System

Product factor: Service independence

Calculation: /(TransitivelySharedService / TotalServices) + (Transitively Shared ServicesConnectors / Total Service Interconnections)) / 2

### LDC

Name: Lines of code (LOC) for deployment configuration.

Adjusted Name: Lines of code (LOC) for deployment configuration.

Source: Lehmann2017, Talwar2005

Entity: Component, Infrastructure

Product factor: Maintainability, Use infrastructure as Code, Automated continuous delivery

Calculation: Number of lines of files for component deployment

### NSD

Name: Number of steps involved in deployment

Adjusted Name: Number of steps for deployment

Source: Lehmann2017, Talwar2005

Entity: Component, Infrastructure

Product factor: Maintainability, Portability, Use infrastructure as Code, Ease of deployment

Calculation: Number of steps to deploy a component

### CoS

Name: Cohesiveness of Services

Adjusted Name: Covesiveness of Service

Source: Oliveira2018, La2013

Entity: Service

Product factor: Cohesion, Modularity, Limited functional scope

Calculation: Number of functionalities of a service / Number of services that provide that functionality (if Number of functionalities of a service > Number of services that provide that functionality) or Number of services that provide that functionality / Number of functionalities of a service (if Number of functionalities of a service < Number of services that provide that functionality)

### MoD

Name: Minimality of Dependency

Adjusted Name: Degree of dependence on other components

Source: Oliveira2018, La2013, Oh2011

Entity: Service

Product factor: Cohesion, Modularity, Service independence

Calculation: 1 - (Number of endpoints relying on external services / Total number of endpoints of a service)

### CoV

Name: Coverage of Variability

Adjusted Name: Degree of functionality variability

Source: Oliveira2018, La2013, Oh2011

Entity: Service

Product factor: Interoperability, API-based communication

Calculation: Number of Variation Point Supported / Total Number of Potential Variation Points

### CoA

Name: Completeness of Variant Set

Adjusted Name: Completeness of Variant Set

Source: Oliveira2018, La2013, Oh2011

Entity: Service

Product factor: Interoperability, API-based communication

Calculation: (sum-of (Number of Variants Supported in Variation Point / Total Number of Potential Variants in Variation Point) for all Variation Points) / Total Number of Variation Points

### ESA

Name: Effectiveness of Service Adaptation

Adjusted Name: Efficiency of service adaptation

Source: Oliveira2018, La2013

Entity: Endpoint, Service

Product factor: Interoperability, API-based communication

Calculation: (Degree of effort to adapt to variation / Number of Variation Points supported)

### ICC

Name: Inter-CaaS Composability

Adjusted Name: Service composability

Source: Oliveira2018, La2013

Entity: Service

Product factor: Interoperability

Calculation: Number of Services without complication / Number of Services with which a Service interacts

### ASSD

Name: Average Service State Dependency

Adjusted Name: Ratio of stateful components

Source: Qian2006

Entity: System, Component

Product factor: Mostly stateless services

Calculation: (Number of stateful Components / Total Number of Components)

### SS

Name: Stateless Services

Adjusted Name: Ratio of stateless components

Source: Hirzalla2009

Entity: System, Component

Product factor: Mostly stateless services

Calculation: (Number of stateless Components / Total Number of Components)

### ASPD

Name: Average Service Persistent Dependency

Adjusted Name: Degree to which components are linked to stateful components

Source: Qian2006

Entity: System, Component

Product factor: Mostly stateless services, Loose coupling

Calculation: (sum-of(Number of stateful Components a Component is linked to) for all components) / Total Number of Components)

### TCC

Name: Total Compute Cost

Adjusted Name: Runtime Compute Cost per time unit

Source: AbdelBaky2019

Entity: Infrastructure

Product factor: Cost efficiency

Calculation: sum-of(sum-of(compute cost per time unit) for all resources) for all availability zones

### ACC

Name: Average Compute Cost

Adjusted Name: Runtime Average Compute Cost per time unit

Source: AbdelBaky2019

Entity: Infrastructure

Product factor: Cost efficiency

Calculation: (sum-of(sum-of(compute cost per time unit) for all resources) for all availability zones) / (sum-of(sum-of(total capacity of resources) for all resources) for all availability zones)

### APL

Name: Average Path Length

Adjusted Name: Average URL path length of all endpoints of a service

Source: Bogner2020, Haupt2017

Entity: Service, Endpoint

Product factor: Simplicity (Complexity)

Calculation: sum-of(path length of all endpoint URLs of a service) / Number of Endpoints of a service

### APO

Name: Arguments per Operation

Adjusted Name: Average number of arguments per endpoint

Source: Bogner2020, BASCI2009

Entity: Service, Endpoint

Product factor: Simplicity (Complexity)

Calculation: sum-of(number of arguments of all endpoints of a service) / Number of Endpoints of a service

### LP

Name: Longest Path

Adjusted Name: Longest Path

Source: Bogner2020, Haupt2017

Entity: Service, Endpoint

Product factor: Simplicity (Complexity)

Calculation: Longest URL path of all endpoints in a Service

### NOR

Name: Number of Roots

Adjusted Name: Number of root endpoints

Source: Bogner2020, Haupt2017

Entity: Service, Endpoint

Product factor: Simplicity (Complexity)

Calculation: Number of unique roots for all endpoints of an API

### AverageCoupling

Name: Average Coupling

Adjusted Name: Average System Coupling

Source: Filippone2023

Entity: System, Entity, Endpoint, Service

Product factor: Low Coupling

Calculation: (Sum of relationship weights of edges between services) / Number of services; (relationship weights are defined for relationships between services and endpoints, services and entities, etc.; Details are in the paper)

### AverageCohesion

Name: Average Cohesion

Adjusted Name: Average System Cohesion

Source: Filippone2023

Entity: System, Entity, Endpoint, Service

Product factor: -

Calculation: (Sum of relationship weights of inner arcs) / (Sum of relationship weights of outer arcs); (relationship weights are defined for relationships between services and endpoints, services and entities, etc.; However, inner communication details would be necessary; Details are in the paper)

### Ratio of cyclic dependencies

Name: Ratio of cyclic dependencies

Adjusted Name: Ratio of cyclic request traces

Source: Genfer2021

Entity: Request Trace

Product factor: Functional decentralization

Calculation: IF ((Strong cycle exists in Request Trace) OR (Weak cycle exists in Request Trace)) / (All Request Traces)

### SEM

Name: Server Monitoring Metric

Adjusted Name: Ratio of Infrastructure nodes that support Monitoring

Source: Ntentos2022; Zdun2023

Entity: Infrastructure

Product factor: Automated Monitoring

Calculation: Infrastructure Nodes that support Monitoring / All Infrastructure Nodes

### AMS

Name: Application Monitoring Support metric

Adjusted Name: Ratio of Components that support Monitoring

Source: Ntentos2022; Zdun2023

Entity: Component

Product factor: Automated Monitoring

Calculation: Component Nodes that support Monitoring / All Component Nodes

### SMC

Name: System Metrics Collection Support metric

Adjusted Name: Ratio of Components or Infrastructure nodes that export metrics

Source: Ntentos2022

Entity: Component, Infrastructure

Product factor: Consistent centralized metrics

Calculation: Component or Infrastructure nodes that export metrics / All Components and Infrastructure Nodes

### CLM

Name: Centralized Log Management Support metric

Adjusted Name: Ratio of Components or Infrastructure nodes that export logs to a central service

Source: Ntentos2022

Entity: Component, Infrastructure

Product factor: Consistent centralized logging

Calculation: Component or Infrastructure nodes that export logs to a central service / All Components and Infrastructure Nodes

### SAS

Name: Service Availability Support metric

Adjusted Name: Ratio of Services that provide Health endpoints

Source: Ntentos2022

Entity: Service

Product factor: Health and readiness Checks

Calculation: Services that provide Health endpoints / All Services

### PAS

Name: Monitoring and Performance Analytics Support metric

Adjusted Name: Ratio of Components or Infrastructure nodes that enable Performance Analytics

Source: Ntentos2022

Entity: Component, Infrastructure

Product factor: Consistent centralized metrics

Calculation:  Components or Infrastructure nodes that enable Performance Analytics / All Components and Infrastructure Nodes

### SSLA

Name: SSL Protocol-based Authentication utilization metric

Adjusted Name: Ratio of endpoints that support SSL

Source: Ntentos2022

Entity: Endpoint

Product factor: Data encryption in transit

Calculation: Number of endpoints that support SSL / All endpoints

### TBA

Name: Token-Based Authentication utilization metric

Adjusted Name: Ratio of endpoints that support token-based authentication

Source: Ntentos2022; Zdun2023; Zdun2023a

Entity: Endpoint

Product factor: Access restriction, Access control management consistency

Calculation: Number of endpoints that support token-based authentication / All endpoints

### API

Name: API Keys utilization metric

Adjusted Name: Ratio of endpoints that support API Keys

Source: Ntentos2022; Zdun2023

Entity: Endpoint

Product factor: Access restriction, Access control management consistency

Calculation: Number of endpoints that support API Keys / All endpoints

### PLA

Name: Plaintext Authentication utilization metric

Adjusted Name: Ratio of endpoints that support plaintext authentication

Source: Ntentos2022; Zdun2023; Zdun2023a

Entity: Endpoint

Product factor: Access restriction, Access control management consistency

Calculation: Number of endpoints that support plaintext authentication / All endpoints

### SSO

Name: Single Sign-On Authentication utilization metric

Adjusted Name: Ratio of endpoints that are included in an single-sign-on approach

Source: Ntentos2022

Entity: Endpoint

Product factor: Access control management consistency

Calculation: Number of endpoints that are included in an single-sign-on approach / All endpoints

### ING

Name: Ingress Traffic Control utilization metric

Adjusted Name: Ratio of endpoints whose ingress is guarded

Source: Ntentos2022

Entity: Endpoint

Product factor: Guarded ingress

Calculation: Number of endpoints with guarded ingress / All endpoints

### EGR

Name: Egress Traffic Control utilization metric

Adjusted Name: Ratio of components whose egress is guarded

Source: Ntentos2022

Entity: Component

Product factor: -

Calculation: Number of components whose egress is guarded / All components

### DAH

Name: Data Access Cohesion

Adjusted Name: Cohesion between Endpoints based on data aggregate usage

Source: Peng2022

Entity: Service, Endpoint, Data Aggregate

Product factor: Limited data scope

Calculation: Number of Shared Usage of Data Aggregates per endpoint endpoints / All Data Aggregates used by endpoints

### PIH

Name: Predecessor Invocation Cohesion

Adjusted Name: Cohesion of Endpoints based on invocation by other services

Source: Peng2022

Entity: Service, Endpoint

Product factor: Limited endpoint scope

Calculation: Endpoints that are invoked by the same services / All Endpoint Invocations by other services

### SIH

Name: Successor Invocation Cohesion

Adjusted Name: Cohesion of a Service based on other Endpoints called

Source: Peng2022

Entity: Service, Endpoint

Product factor: Limited functional scope

Calculation: Endpoints that are called which are from the same service / All Endpoints called by this service

### DAP

Name: Data Access Coupling

Adjusted Name: Coupling of services based on used Data Aggregates

Source: Peng2022

Entity: Service, Data Aggregate

Product factor: Low coupling

Calculation: Data Aggregates used by both two services / All Data Aggregates used by two services

### PIP

Name: Predecessor Invocation Coupling

Adjusted Name: Coupling of services based services which call them

Source: Peng2022

Entity: Service

Product factor: Low coupling

Calculation: Common services which use endpoints of both two services / Call services which use endpoints of two services

### SUP

Name: Successor Invocation Coupling

Adjusted Name: Coupling of services based services which are called by them

Source: Peng2022

Entity: Service

Product factor: Low coupling

Calculation: Common services whose endpoints are used by both two services / Services whose endpoints are called by two services

### DIP

Name: Direct Invocation Coupling

Adjusted Name: Coupling of services based on amount of request traces that include a specific link

Source: Peng2022

Entity: Service, Request Trace

Product factor: Low coupling

Calculation: Number of times a Link is included in a Request Trace

### TCP

Name: Trace Co-occurrence Coupling

Adjusted Name: Coupling of services based times that they occur in the same request trace

Source: Peng2022

Entity: Service, Request Trace

Product factor: Low coupling

Calculation: Number or request traces which contain the same two services / Number of request traces

### LIC / PL

Name: Length of Invocation Chain / Path Length

Adjusted Name: Request Trace Length

Source: Peng2022; Gamage2021

Entity: Request Trace

Product factor: Limited request trace scope

Calculation: Number of Links included in a request trace

### RCD / CD

Name: Request-level Cyclic Dependency / Cyclic Dependency

Adjusted Name: Number of Cycles in Request Traces

Source: Peng2022; Gamage2021

Entity: Request Trace

Product factor: Limited request trace scope

Calculation: Number of cyclic dependencies in request traces

### SCD

Name: System-level Cyclic Dependency

Adjusted Name: Number of potential cycles in a system

Source: Peng2022

Entity: Component, Link

Product factor: Functional decentralization

Calculation: Number of potential cyclic dependencies in a system based on defined links

### RollingUpdatePossibility

Name: Update Time, Availability and successful requests

Adjusted Name: Rolling Update Option

Source: Straesser2023

Entity: Infrastructure, Component

Product factor: Rolling upgrades enabled

Calculation: The infrastructure should provide the possibility for rolling updates, meaning that components can be updated without interrupting availability.

### Provider-Managed Component

Name: Consumer-Managed Component and Provider-Managed Component

Adjusted Name: Ratio of Provider-Managed Components and Infrastructure

Source: Yussupov2022

Entity: Infrastructure, Component

Product factor: Operation outsourcing, Managed infrastructure, Managed backing services

Calculation: Although in the referenced paper, no measures are presented as such, patterns are presented. However, the distinction between provider-managed and consumer-managed aspects enables basic metrics for evaluating the occurrence of these patterns in a deployment stack. Proposed calculation: (Number of Provider-managed components and infrastrcture nodes) / All components and infrastructure nodes

### SCO

Name: Secure Distributed Connectors

Adjusted Name: Ratio of secured links

Source: Zdun2023; Zdun2023a

Entity: Link

Product factor: Data encryption in transit

Calculation: Number of links using secure communication / All links

### NOR

Name: Number of runnables per software component

Adjusted Name: Number of components

Source: Silva2023, Venkitachalam2017

Entity: Components

Product factor: Sparsity

Calculation: Number of Components in the System

### LCOM

Name: Lack of cohesion metric

Adjusted Name: Lack of cohesion of a service

Source: AlDebagy2020

Entity: Service, Endpoint

Product factor: Cohesion, Limited endpoint scope

Calculation: 1 - (sum-of(occurences of all parameters) / (number of operations * number of unique paramters))

### ALCOM

Name: Average Lack of cohesion metric

Adjusted Name: Average system lack of cohesion of a service

Source: AlDebagy2020

Entity: System, Service, Endpoint

Product factor: Cohesion, Limited endpoint scope

Calculation: (sum-of(LCOM values) / Number of services)

### RC

Name: Resource Count

Adjusted Name: Data Aggregate Count

Source: Asik2017

Entity: Service, Data Aggregate

Product factor: Limited data scope

Calculation: Number of Data Aggregates used in a service

### Size

Name: Size of a microservice

Adjusted Name: Size of a service

Source: Asik2017

Entity: Service

Product factor: Limited functional scope

Calculation: RC + CC

### URC

Name: Unused Resource Count

Adjusted Name: Unused Endpoint Count

Source: Asik2017

Entity: Service, Endpoint

Product factor: ? Compatibility

Calculation: Number of Endpoints of a Service that are not used by any other component

### UEC

Name: Unreachable Endpoint Count

Adjusted Name: Unreachable Endpoint Count

Source: Asik2017

Entity: Service, Link, Endpoint

Product factor: ? Compatibility

Calculation: Number of Links in a Component which target an Endpoint that does not exist

### COD

Name: Clients microservices of a given database

Adjusted Name: Number of Services connected to a Storage Backing Service

Source: Daniel2023

Entity: Service, Link, Storage Backing Service

Product factor: Backing service decentralization

Calculation: Number of Services that are connected to an Endpoint of a Storage Backing Service

### QOEM

Name: Query operations exposed by a microservice

Adjusted Name: Number of Read Endpoints provided by a service

Source: Daniel2023

Entity: Service, Endpoint

Product factor: Limited Endpoint Scope, Command Query Responsibility Segregation

Calculation: Number Read Endpoints included in a service

### COEM

Name: Command operations exposed by a microservice

Adjusted Name: Number of Write Endpoints provided by a service

Source: Daniel2023

Entity: Service, Endpoint

Product factor: Limited Endpoint Scope, Command Query Responsibility Segregation

Calculation: Number Write Endpoints included in a service

### MCMd

Name: Microservices composing a module

Adjusted Name: Number of Services hosted on one infrastructure entity

Source: Daniel2023

Entity: Service, Infrastructure

Product factor: Distribution

Calculation: Number of Services hosted on one infrastructure entity

### GWP

Name: Gateway Paths

Adjusted Name: Ratio of request traces through a gateway

Source: Zdun2023a

Entity: Request Trace, Component

Product factor: API Gateway

Calculation: Request Traces containing a Gateway Component / All Requet Traces

### FEP

Name: Frontend Service Paths

Adjusted Name: Ratio of request traces containing a frontend component

Source: Zdun2023a

Entity: Request Trace, Component

Product factor: ?

Calculation: Request Traces containing a Frontend Component / All Requet Traces

## Runtime measures

### SCA

Name: Size of Container artefact

Adjusted Name: Artifact size

Source: Apel2019

Entity: Component

Product factor: Artifact size

Calculation: Size of the built container image

### MU

Name: Memory Usage

Adjusted Name: Actual memory usage

Source: Apel2019

Entity: Service

Product factor: Resource predictability

Calculation: Memory needed by a service at runtime

### TDC

Name: Time to develop and deploy a change.

Adjusted Name: Amount of time from deployment trigger to component available

Source: Lehmann2017, Talwar2005

Entity: Component

Product factor: Maintainability, Portability, Ease of deployment

Calculation: Amount of time for one deployment process execution

### DC2S

Name: Degree of Coupling between 2 services metric

Adjusted Name: Runtime connections between two services

Source: PhamThiQuynh2009

Entity: Service, Link

Product factor: Service independence, Coupling

Calculation: (Number of times outgoing links of a service to a specific service are used / Number of times all outgoing links of a service are used) * 100

### R

Name: Resilience

Adjusted Name: Runtime resilience

Source: Wu2018

Entity: Component

Product factor: Automated restarts, Reliability

Calculation: Recovery during recovery action / Loss occuring during disruption

### G238

Name: memory_usage

Adjusted Name: Relative memory usage

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: Resource predictability

Product factor: Mem usage container, Virtualized utilization, Performance efficiency 

Calculation: measures the percentage of Memory usage of container

### G92

Name: CPU utilization

Adjusted Name: Relative CPU utilization

Source: Guerron2020, HU-2017-ISPDC (S35), GARG-2013-FUTURE (S24)

Entity: System

Product factor: CPU utilization , Physical utilization, Performance efficiency 

Calculation: CPU utilization = current occupied computing resource / total computing resource 

### G331

Name: resource allocation

Adjusted Name: Total resource allocation

Source: Guerron2020, ALAM-2016-ISCC (S04)

Entity: System

Product factor: resource allocation, Resource utilization, Performance efficiency 

Calculation: total amount of allocated resources (RAM, cpu)

### ScR

Name: Scalability Range

Adjusted Name: Scalability Range

Source: Becker2015

Entity: System

Product factor: Scalability

Calculation: Maximum number of requests servable per time unit

### ScS

Name: Scalability Speed

Adjusted Name: Scalability Speed

Source: Becker2015

Entity: System

Product factor: Scalability

Calculation: Rate to achieve maximum Scalability Range

### RPE

Name: Resource Provisioning Efficiency

Adjusted Name: Resource Provisioning Efficiency

Source: Becker2015

Entity: System

Product factor: Resource utilisation

Calculation: Mismatch between provisioned resources and needed resources (as a percentage)

### G12

Name: Actual turnaround time

Adjusted Name: Actual turnaround time

Source: Guerron2020, MANUEL-2015-AOR (S50)

Entity: System

Product factor: Turnaround Time, Time behaviour, Performance efficiency 

Calculation: actual turnaround time is the exact time between the submission of a job by a user and the delivery of the completed job to the user.

### G20

Name: Application capacity

Adjusted Name: Application capacity

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: System

Product factor: Application capacity, Sw Capacity, Performance efficiency 

Calculation: measures the capacity of application by the number of request per minute

### G26

Name: Availability

Adjusted Name: Availability

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: System

Product factor: Service Availability, Service Availability, Reliability

Calculation: "Availability =MTTF/MTBF where MTBF is Mean Time between Failures, MTTF is Mean Time to Failure"

### G40

Name: Average Response Time

Adjusted Name: Average Response Time

Source: Guerron2020, ARUMUGAM-2017-ICCMC (S07), GARG-2013-FUTURE (S24), GUEROUT-2014-SUSCOM (S30)

Entity: System

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "Tavg-rep=?Trepi/n ,  where Trepi is the elapsed time between the request sending time and the response reception time, n is the total number of transmitted requests"

### G42

Name: Average time to install

Adjusted Name: Average time to install

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: Service

Product factor: Installability, Installability, Portability

Calculation: average time experienced by the previous users of the Cloud service to install it.

### G124

Name: Deployment latency

Adjusted Name: Deployment latency

Source: Guerron2020, VEDAM-2012-IACSAC (S71)

Entity: Infrastructure

Product factor: Deployment latency, Elasticity, Performance efficiency 

Calculation: deployment latency = time actual provisioning of that cloud instance - time requesting for a cloud instance 

### G154

Name: Execution Cost

Adjusted Name: Execution Cost

Source: Guerron2020, VEDAM-2012-IACSAC (S71)

Entity: Infrastructure

Product factor: Performance of the infrastructure, Time behaviour, Performance efficiency 

Calculation: "C = (Ci * T) + (Cs * S * T) + (Cb * B) Where C = Total Cost ci = Cost of the cloud instance per hour  cs = Cost of the storage per Megabits per hour (In most cases this is bundled with the instance cost and so is zero.)  cb = Cost of the data transfer per Kilobits T = Time taken for the task to run rounded off the nearest higher whole number.  S = Storage consumed in Megabits  B = Data transferred in Kilobits"

### G408

Name: Testing time

Adjusted Name: Test execution time

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: Service

Product factor: Testing time, Testability, Maintainability

Calculation: Testing Time = Time to prepare test environment + Time to execute Test Suite for a Cloud workload. (Test Suite is collection of test cases).

### G446

Name: Time Utilization

Adjusted Name: Resource Time Utilization

Source: Guerron2020, XIONG-2015-ICDCSW (S78)

Entity: Infrastructure 

Product factor: Resource Utilization, Resource utilization, Performance efficiency 

Calculation: Utilization= (time that cloud resources are utilized/ total time of cloud resources)  *100

### IW

Name: Inconsistency window

Adjusted Name: Inconsistency window

Source: Kuhlenkamp2019

Entity: Service

Product factor: Availability, Seamless upgrades

Calculation: Difference between the time of a last response from an old version and the time of the earliest start of a new version when upgrading a service

### L7

Name: Utilization

Adjusted Name: VM Utilization

Source: Li2020c

Entity: System

Product factor: Cost efficiency

Calculation: Average number of busy VMs / Average number of VMs

### M5

Name: Average size of asynchronous messages

Adjusted Name: Average message size

Source: Engel2018

Entity: Service

Product factor: Service independence, "Data appropriateness"

Calculation: Average size of asynchronous messages exchanged

### LCC

Name: LOC to express configuration changes

Adjusted Name: LOC needed to change deployment configuration

Source: Lehmann2017, Talwar2005

Entity: Component, Infrastructure

Product factor: Maintainability, Portability, Use infrastructure as Code, Ease of deployment

Calculation: Average amount of LOC to change for an update of a component

### TDC

Name: Time to develop and deploy a change.

Adjusted Name: Amount of time from deployment trigger to component available

Source: Lehmann2017, Talwar2005

Entity: Component

Product factor: Maintainability, Portability, Ease of deployment

Calculation: Amount of time for one deployment process execution

### AV / SAV

Name: Availability / Service Availability

Adjusted Name: Runtime Availability

Source: AbdelBaky2019; Slimani2020

Entity: Component

Product factor: Availability

Calculation: runtime / runtime + downtime

### R / SR

Name: Reliability / Service Reliability

Adjusted Name: Runtime Reliability

Source: AbdelBaky2019; Slimani2020

Entity: Endpoint

Product factor: Reliability

Calculation: number of executed tasks / number of assigned tasks

### FR

Name: Failure Rate

Adjusted Name: Runtime Failure Rate

Source: AbdelBaky2019

Entity: Endpoint

Product factor: Reliability

Calculation: number of failed tasks / time period

### TSR

Name: Tracing Sampling Rate

Adjusted Name: Runtime coverage of executions by traces

Source: Bento2021

Entity: Endpoint, Request trace

Product factor: Distributed Tracing of Invocations

Calculation: Number of runtime invocations covered by distributed tracing

### TCT

Name: Temporal Coverage of a Trace

Adjusted Name: Runtime coverage of total trace execution time by children trace spans

Source: Bento2021

Entity: Endpoint, Request trace

Product factor: Distributed Tracing of Invocations

Calculation: Amount of time of a span covered by children spans

### IRC

Name: Identification of related component through trace

Adjusted Name: Possibility to relate spans to components of the system

Source: Bento2021

Entity: Endpoint, Request trace

Product factor: Distributed Tracing of Invocations

Calculation: Number of spans which can be clearly related to a component of an architecure


### P

Name: Performance estimator

Adjusted Name: Performance estimator

Source: Camilli2022

Entity: Endpoint

Product factor: Time behaviour

Calculation: (performance_threshold - average_response_time) / performance_threshold)

### R

Name: Reliability estimator

Adjusted Name: Reliability estimator

Source: Camilli2022

Entity: Endpoint

Product factor: Availability

Calculation: 1 - (Number_of_failed_requests / Total_number_of_requests)

### Resource Demand Metric

Name: Resource Demand Metric

Adjusted Name: Resource Demand Metric

Source: Henning2022

Entity: Component

Product factor: Resource utilisation

Calculation: Minimum of required resources to handle a specified load

### Load Capacity Metric

Name: Load Capacity Metric

Adjusted Name: Load Capacity Metric

Source: Henning2022

Entity: Component

Product factor: Elasticity (although the focus in the paper is explicitly on Scalability)

Calculation: Maximum of Load that a component with specified resources can handle

### RWR

Name: Read Write Ratio

Adjusted Name: Frequency of Reads and Writes of/to a Data Aggregate

Source: Peng2022

Entity: Service, Data Aggregate

Product factor: Command Query Responsibility Segregation

Calculation: Data Aggregate Reads / Data Aggregate Writes

### RIN

Name: Repeated Invocation Number

Adjusted Name: Repeated Invocation Number Within a request Trace

Source: Peng2022

Entity: Request Trace

Product factor: Limited request trace scope

Calculation: Maximum(Number of times the same Link is used within a request trace)

### ReadyTime

Name: Readiness Time

Adjusted Name: Component Readiness Time

Source: Straesser2023

Entity: Component

Product factor: Time behavior

Calculation: The time it takes from issuing a start command until the component is ready.

### RemovalTime

Name: Removal Time

Adjusted Name: Component Removal Time

Source: Straesser2023

Entity: Component

Product factor: Time behavior

Calculation: The time it takes from issuing a stop command until the component is removed.

### RestartTime

Name: Restart Time

Adjusted Name: Component Restart Time

Source: Straesser2023

Entity: Component

Product factor: Time behavior

Calculation: The time it takes to restart a component (until it is ready) after manual restarts or restarts caused by errors.
