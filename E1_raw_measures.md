# Measures from literature

## Template

### Abbreviation

Name:

Adjusted Name:

Source:

Entity:

Product factor:

Calculation:

## Measures

### DM_NS / AM-L.2

Name: Number of Services / Number of Components

Adjusted Name: Total Number of Components

Source: Shim2008, Zimmermann2015

Entity: System

Product factor: Simplicity, Complexity

Calculation: Number of Components

### WSIC / IFN / MSM / SG

Name: Weighted Service Interface Count / Interface Number / Module Size Metric / Service Granularity

Name: Average Number of Endpoints per Service

Source: Bogner2017, Bogner2020, Hirzalla2009; Brito2021, Jin2021; Rosa2020; Kazemi2013, Ma2009

Entity: System, Service, Endpoint

Product factor: Simplicity; Size

Calculation: Number of Endpoints / Number of Services

### NPE / M1 / SIM_NO / ifn

Name: Number of Produced Endpoints / (A)synchronous interfaces / Number of Operations / interface number

Adjusted Name: Number of provided Endpoints / Number of provided synchronous and asynchronous endpoints

Source: Apel2019; Engel2018; Shim2008; Brito2021, Jin2021

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

### DC2S

Name: Degree of Coupling between 2 services metric

Adjusted Name: Runtime connections between two services

Source: PhamThiQuynh2009

Entity: Service, Link

Product factor: Service independence, Coupling

Calculation: (Number of times outgoing links of a service to a specific service are used / Number of times all outgoing links of a service are used) * 100

### DCSS

Name: Degree of Coupling within a given set of services metric

Adjusted Name: Coupling degree based on potential coupling

Source: PhamThiQuynh2009

Entity: System, Service, Link

Product factor: Service independence, Coupling

Calculation: ((Maximum path lengths between components when no links exist) - (path lengths between components based on actually existing links)) / (Maximum path lengths between components when no links exist) - (Minimum path lengths when links exist between all components)

### SCM

Name: Service Coupling Metric

Adjusted Name: Total Number of Links connected to a Service

Source: Rosa2020

Entity: Service, Link

Product factor: Service independence, Coupling

Calculation: Number of outgoing links of a Service + Number of incoming links of a Service

### AI

Name: Average interactions among components

Adjusted Name: Interaction density of an integration (trace?)

Source: Tiwari2014

Entity: System, Service, Link

Product factor: Service independence, Coupling

Calculation: (Number of outgoing links in an integration + Number of incoming links in an integration) / Number of components in the integration

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

### NCE

Name: Number of Consumed Endpoints

Adjusted Name: Number of Consumed Endpoints

Source: Apel2019

Entity: Service, Link

Product factor: Coupling

Calculation: Number of endpoints a service is linked to

### NSSD

Name: Number of Synchronous Service Dependencies

Adjusted Name: Number of synchronous outgoing links

Source: Apel2019

Entity: Service, Link

Product factor: ?

Calculation: Number of outgoing links that are synchronous

### NASD

Name: Number of Asynchronous Service Dependencies

Adjusted Name: Number of asynchronous outgoing links

Source: Apel2019

Entity: Service, Link

Product factor: Asynchronous communication

Calculation: Number of outgoing links that are asynchronous

### DMsgD

Name: Delayed Message Dependency

Adjusted Name: Ratio of synchronous outgoing links

Source: Karhikeyan2012

Entity: Service, Link

Product factor: Coupling, Asynchronous communication

Calculation: Number of outgoing links that are asynchronous / Number of all outgoing links

### NSDI

Name: Number of Service Dependencies in Initialisation

Adjusted Name: ?

Source: Apel2019

Entity: ?

Product factor: ?

Calculation: Number of links to services that are only needed during initialisation

### MLASCH / ISCCM

Name: Max Length of Affected Service Chain per Handling / Inter-Service Communication Complexity Metric

Adjusted Name: ?

Source: Apel2019; Rosa2020

Entity: Request Trace

Product factor: Service independence

Calculation: Length of the communication chain to process a request

### MASH

Name: Max Affected Services per Handling

Adjusted Name: ?

Source: Apel2019

Entity: ?

Product factor: ?

Calculation: Amount of services needed for processing a request

### NHSF

Name: Number of Dependencies with Simple Failover

Adjusted Name: Number of Links with retry logic

Source: Apel2019

Entity: Link

Product factor: Retries for safe invocations

Calculation: Number of synchronous links which implement a retry logic

### NHCF

Name: Number of Dependencies with Complex Failover

Adjusted Name: ?

Source: Apel2019

Entity: Link

Product factor: Circuit breaked communication, Vertical data replication (Caching)

Calculation: Number of synchronous links which implement a circuit breaker of caching

### PCC / CDD

Name: Part of Communication Cycle / Cyclic Dependencies Detection

Adjusted Name: ?

Source: Apel2019; Ntentos2020a

Entity: Service

Product factor: ?

Calculation: Service is part of a cyclic communication path

### NCH

Name: Number of Communication Handlings

Adjusted Name: ?

Source: Apel2019

Entity: ?

Product factor: ?

Calculation: Number of handlings for events in the context of produced and consumed endpoints

### NDE

Name: Number of Discovered Endpoints

Adjusted Name: ?

Source: Apel2019

Entity: ?

Product factor: Linked through Service discovery

Calculation: Number of connections explored via a discovery service

### NID

Name: Number of Implementation Dependencies

Adjusted Name: ?

Source: Apel2019

Entity: Service

Product factor: Component Similarity

Calculation: Number of compile-time dependecies needed by a component

### NLC

Name: Number of Loaded Configurations

Adjusted Name:

Source: Apel2019

Entity: Component

Product factor: Configuration Management

Calculation: Number of configurations obtained at runtime

### SCA

Name: Size of Container artefact

Adjusted Name: Artifact size

Source: Apel2019

Entity: Component

Product factor: Artifact size

Calculation: Size of the built container image

### NDT

Name: Number of Deployment Targets

Adjusted Name: ?

Source: Apel2019

Entity: ?

Product factor: ?

Calculation: Number of traget environments such as development, staging, production

### NRSD

Name: Number of Required Services for Development

Adjusted Name: ?

Source: Apel2019

Entity: ?

Product factor: ?

Calculation: Amount of services necessary to work on a local setup

### UCID

Name: Usage of CI/CD

Adjusted Name: ?

Source: Apel2019

Entity: Service

Product factor: Automated Continuous Delivery

Calculation: completeness of automation regarding the CI/CD process

### MU

Name: Memory Usage

Adjusted Name: ?

Source: Apel2019

Entity: Service

Product factor: Resource predictability

Calculation: Memory needed by a service at runtime

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

Adjusted Name: Combined message for indirect dependency

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

### R

Name: Resilience

Adjusted Name: Runtime resilience

Source: Wu2018

Entity: Component

Product factor: Automated restarts, Reliability

Calculation: Recovery during recovery action / Loss occuring during disruption

### NVS

Name: Number of Versions per Service

Adjusted Name: ?

Source: Bogner2017, Hirzalla2009

Entity: Service

Product factor: Complexity, Maintainability

Calculation: Number of concurrently available versions of endpoints

### VC

Name: Coupling by means of versioning

Adjusted Name: Concurrently available versions complexity

Source: Karhikeyan2012

Entity: Service

Product factor: Service independence

Calculation: Number of concurrently available versions of a service / Total number of versions of a service

### SST

Name: Service Support for Transactions

Adjusted Name: ?

Source: Bogner2017, Hirzalla2009

Entity: Service

Product factor: Complexity, Maintainability

Calculation: Number of services which support transactions

### SIY

Name: Services Interdependence in the System

Adjusted Name: ?

Source: Bogner2017, Rud2006

Entity: Service, Link

Product factor: Coupling, Service independence

Calculation: Number of services which are bi-directionally linked

### IRN / TI(CBS)

Name: Interaction number / Total interactions of component based software

Adjusted Name: Total number of links in a system

Source: Brito2021, Jin2018; Tiwari2014

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

### AIS / SEM_NDCS / IS

Name: Absolute Importance of the Service / Number of Directly Connected Consumer Services / Impotance of Service

Adjusted Name: ?

Source: Bogner2017, Rud2006; Shim2008; Zhang2009

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

Source: Bogner2017; Rud2006; Engel2018; Shim2008; Raj2021, Raj2018; Hofmeister2008; PhamThiQuynh2009; Zhang2009

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

### SSC

Name: System’s Service Coupling

Adjusted Name: Aggregate System metric to measure service coupling

Source: Hofmeister2008

Entity: System, Service, Link

Product factor: Coupling, Service indepedence

Calculation: (sum-of(Coupling of service Metric for all Service Consumers)) / (Number of all possible couplings)

### EOA

Name: Extent of Aggregation

Adjusted Name: ?

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

Adjusted Name: ?

Source: Bogner2017, Rud2006

Entity: Service

Product factor: Coupling, Service independence

Calculation: AIS x ADS

### SIDC / CHM / CC

Name: Service Interface Data Cohesion / Cohesion at message level / Communicational cohesion

Adjusted Name: ?

Source: Bogner2017, Perepletchikov2007, Kazemi2011; Brito2021, Jin2021, Jin2018; Athanasopoulos2011, Athanasopoulos2015, Bogner2020

Entity: Service, Endpoint

Product factor: Cohesion, Limited functional scope

Calculation: Similarity of parameter data types of the operations of a service interface

### CHD

Name: Cohesion at domain level

Adjusted Name: Domain cohesiveness

Source: Brito2021, Jin2021, Jin2018

Entity: Service, Endpoint

Product factor: Cohesion, Limited functional scope

Calculation: Similarity of entities the operations of a service interface are concerned with

### SIUC

Name: Service Interface Usage Cohesion

Adjusted Name: ?

Source: Bogner2017, Perepletchikov2007, Kazemi2011

Entity: Service, Endpoint

Product factor: Cohesion, Limited functional scope

Calculation: Number of operations used per client / (number of clients * number of operations)

### TSIC

Name: Total Service Interface Cohesion

Adjusted Name: ?

Source: Bogner2017, Perepletchikov2007

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

### M4

Name: Longest synchronous call trace

Adjusted Name: ?

Source: Engel2018

Entity: Service, System

Product factor: Service independence

Calculation: Longest synchronous call trace identified in the microservice system

### M5

Name: Average size of asynchronous messages

Adjusted Name: ?

Source: Engel2018

Entity: Service

Product factor: Service independence, "Data appropriateness"

Calculation: Average size of asynchronous messages exchanged

### M6

Name: #Synchronous cycles

Adjusted Name: Number of synchronous trace cycles

Source: Engel2018

Entity: System

Product factor: Simplicity

Calculation: Number of cycles that exist between services based on synchronous links

### SIM_NFPO

Name: Number of Fine-Grained Parameter Operations

Adjusted Name: ?

Source: Shim2008

Entity: Service

Product factor: ?

Calculation: ?

### SIM_NMU

Name: Number of Messages Used

Adjusted Name: ?

Source: Shim2008

Entity: Service

Product factor: Coupling

Calculation: Number of Messages used in a service

### SIM_NAO

Name: Number of Asynchronous Operations

Adjusted Name: Number of asynchronous endpoints offered by a service

Source: Shim2008

Entity: Service

Product factor: "Limited functional scope"

Calculation: Number of asynchronous endpoints offered by a service

### SIM_NSO

Name: Number of Synchronous Operations

Adjusted Name: Number of synchronous endpoints offered by a service

Source: Shim2008

Entity: Service

Product factor: "Limited functional scope"

Calculation: Number of synchronous endpoints offered by a service

### SEM_NCSL

Name: Number of Consumers in Same Level

Adjusted Name: ?

Source: Shim2008

Entity: Service

Product factor: Service independence

Calculation: ?

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

### SM_TMU

Name: Total Number of Message Used

Adjusted Name: ?

Source: Shim2008

Entity: System

Product factor:

Calculation: Number of messages used in a system

### SM_NAO

Name: Number of Asynchronous Operations

Adjusted Name: Number of asynchronous endpoints

Source: Shim2008

Entity: System

Product factor:

Calculation: Number of asynchronous endpoints

### SM_NSO

Name: Number of Synchronous Operations

Adjusted Name: Number of synchronous endpoints

Source: Shim2008

Entity: System

Product factor:

Calculation: Number of synchronous endpoints

### SM_NFPO

Name: Number of Fine-Grained Parameter Operations

Adjusted Name: ?

Source: Shim2008

Entity: System

Product factor: ?

Calculation: ?

### SM_NPS / NoS / NOS / NS / NS

Name: Number of Process Services / Number of Services / Number of Services / Number of Services / Number of Services

Adjusted Name: Number of Services

Source: Shim2008; Raj2018; Hirzalla2009; Hofmeister2008; Zhang2009, Rud2006

Entity: System

Product factor:

Calculation: Number of Services

### SM_NIS / SM_NBS

Name: Number of Intermediary Services / Number of Basic Services

Adjusted Name: Number of Backing Services

Source: Shim2008

Entity: System

Product factor:

Calculation: Number of Backing Services

### DM_ADCS

Name: Average Number of Directly Connected Services

Adjusted Name: ?

Source: Shim2008

Entity: Service

Product factor: Coupling, Service independence

Calculation: (SEM_NDPS + SEM_NDCS) / SM_SSNS

### DM_IAUM

Name: Inverse of Average Number of Used Message

Adjusted Name: ?

Source: Shim2008, Kazemi2011

Entity: System

Product factor: Cohesion

Calculation: SM_SSNS / SM_TMU

### DM_NO

Name: Number of Operations

Adjusted Name: ?

Source: Shim2008

Entity: System

Product factor: Complexity

Calculation: SM_NSO + SM_NAO * 1.5

### DM_AOMR

Name: Squared Average Number of Operations to Squared Average Number of Messages

Adjusted Name: ?

Source: Shim2008

Entity: System

Product factor: Service Granularity

Calculation: ((SM_NAO + SM_NSO) / SM_SNSS)² / (SM_TMU / SM_SNSS)²

### DM_CPR

Name: Coarse-Grained Parameter Ratio

Adjusted Name:

Source: Shim2008

Entity: System

Product factor: Parameter Granularity

Calculation: (SM_NSO + SM_NAO - SM_NFPO) / (SM_NSO + SM_NAO)

### RVID

Name: Ratio of components violating independent deployability to non-external components

Adjusted Name: ?

Source: Zdun2017

Entity: System

Product factor: Service independence

Calculation: Number of violating components / Number of non-external components

### RIDC

Name: Ratio of independently deployable component clusters to non-external components

Adjusted Name: ?

Source: Zdun2017

Entity: System

Product factor: Service independence

Calculation: Number of independently deployable components / Number of non-external components

### RSIC

Name: Ratio of sharing non-external components to non-external components

Adjusted Name: ?

Source: Zdun2017

Entity: System

Product factor: ?

Calculation: Number of component which share a dependency / Number of non-external components

### RSCC

Name: Ratio of shared non-external components to non-external components

Adjusted Name: ?

Source: Zdun2017

Entity: System

Product factor: ?

Calculation: Number of shared components / Number of non-external components

### RSDP

Name: Ratio of shared dependencies of non-external components to possible dependencies

Adjusted Name: ?

Source: Zdun2017

Entity: System

Product factor: ?

Calculation: Number of component sharings / (Number of non-external components)²

### AM-L1

Name: Number of External Interfaces and Number of Invocations per Interface

Adjusted Name: ?

Source: Zimmermann2015

Entity: Service

Product factor: ?

Calculation: Number of endpoints which are accessible to externals.

### AM-L2 / TI

Name: Number of Connectors per Component / Total interactions of a component

Adjusted Name: Number of Links per Component

Source: Zimmermann2015; Tiwari2014

Entity: Service

Product factor: Coupling, Cohesion, Service independence

Calculation: Number of Links of a component

### AM-P2

Name: Process Coordination Means

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: performance, reliability

Calculation: Number of transactional links?

### AM-P3

Name: IPC Index and Remote Call Counter

Adjusted Name: Number of asynchronous and synchronous links

Source: Zimmermann2015

Entity: System

Product factor: Scalability, others

Calculation: Number of asynchronous and synchronous links

### AM-P4

Name: Size of Application State and Size of User Session State

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: ?

Calculation: ?

### AM-P5

Name: Workload Profile

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: ?

Calculation: ?

### AM-O1

Name: Tier Counter

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: ?

Calculation: Number of tiers through which requests go for processing

### AM-O2

Name: Clustering Index

Adjusted Name: Amount of redudancy

Source: Zimmermann2015

Entity: System

Product factor: Maintainability, Resiliency

Calculation: Deployment units / logical components

### AM I-1

Name: Data Model Size and Data Model Structure

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: Performance, Maintainability

Calculation: Number of databases/schemas

### AM-I-2

Name: Transaction Volume and Transaction Weight.

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: ?

Calculation: ?

### AM POSA-1

Name: Layers Usage

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: ?

Calculation: number of layers, the number of components per layer, the number of calls from layer to layer as well as the number of layering violations

### AM-SOA1

Name: Number of Service Endpoints and Weight of Services

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: ?

Calculation: Number of Endpoints and their granularity?

### AM-SOA2

Name: Number and Complexity of Service Composition Workflows

Adjusted Name: ?

Source: Zimmermann2015

Entity: System

Product factor: ?

Calculation: Number and length of composition workflows

### ScR

Name: Scalability Range

Adjusted Name: ?

Source: Becker2015

Entity: System

Product factor: Scalability

Calculation: Maximum number of requests servable per time unit

### ScS

Name: Scalability Speed

Adjusted Name: ?

Source: Becker2015

Entity: System

Product factor: Scalability

Calculation: Rate to achieve maximum Scalability Range

### NSLOV

Name: Number of SLO Violations

Adjusted Name: ?

Source: Becker2015

Entity: System

Product factor: Elasticity

Calculation: SLO violations per time range

### MTTQR

Name: Mean Time To Quality Repair

Adjusted Name: ?

Source: Becker2015

Entity: System

Product factor: Elasticity

Calculation: Time it takes to adjust to an increasing workload

### RPE

Name: Resource Provisioning Efficiency

Adjusted Name: ?

Source: Becker2015

Entity: System

Product factor: Resource utilisation

Calculation: Mismatch between provisioned resources and needed resources (as a percentage)

### MC

Name: Marginal costs

Adjusted Name: ?

Source: Becker2015

Entity: System

Product factor: Cost efficiency

Calculation: costs to serve an additional workload unit

### G1

Name: % Energy saved

Adjusted Name: ?

Source: Guerron2020, JOY-2015-ICCIC (S38)

Entity: ?

Product factor: Energy Saved, Energy Consumption, Performance efficiency 

Calculation: "% of energy saved = ((en � ep) / en)*100 en is the energy consumed in normal scenario,  ep is the energy consumed by the proposed system"

### G2

Name: Ac_state 

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Access Control, Authenticity, Security

Calculation: indicates the access control state

### G3

Name: Ac_trans

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Transition State, Integrity, Security

Calculation: indicates the state transition

### G11

Name: Active connections

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Connections, Connectivity, Performance efficiency 

Calculation: measure the number of active connections

### G12

Name: actual turnaround time

Adjusted Name: ?

Source: Guerron2020, MANUEL-2015-AOR (S50)

Entity: ?

Product factor: Turnaround Time, Time behaviour, Performance efficiency 

Calculation: actual turnaround time is the exact time between the submission of a job by a user and the delivery of the completed job to the user.

### G13

Name: Adaptability

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: service Adaptability, Adaptability, Portability

Calculation: "Adaptability = W.CoV + W.CoM The weights for each metric which the sum is 1. where Coverage Of Variability (CoV) and Completeness of Variant Set (CoM). "

### G14

Name: Adaptability

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: service Adaptability, Adaptability, Portability

Calculation: measures the time taken to adapt to changes or upgrading the service to a higher level. Adaptability is the ability of the service provider to adjust changes in services based on customers� requests.

### G15

Name: Aggregate request slowdown

Adjusted Name: ?

Source: Guerron2020, DEASSUNCAO-2013-FUTURE (S18)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: ? delays suffered by requests

### G16

Name: Agility

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Agility, Elasticity, Performance efficiency 

Calculation: ?  | Cap_ prov(i) - Cap_min(i) |

### G17

Name: Agility manteined

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Agility manteined, Elasticity, Performance efficiency 

Calculation: Agility manteined = ? Excess(i)/?Cap_min(i) + ?Shortage(i)/?Cap_min(i)

### G18

Name: Allocated resource-time

Adjusted Name: ?

Source: Guerron2020, DEASSUNCAO-2013-FUTURE (S18)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: Allocated resource-time: resource capacity � in machine- seconds � allocated to serve user requests.

### G19

Name: Allocation reactivity(Al)

Adjusted Name: ?

Source: Guerron2020, ABDELADIM-2014-CIST (S02)

Entity: ?

Product factor: Reactivity, Elasticity, Performance efficiency 

Calculation: "Al = 1 - ? Min(1, Ta/(Tp - Ta)) / K where Ta: allocation time, Tp: procesing time, Tr: release time"

### G20

Name: Application capacity

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Application capacity, Sw Capacity, Performance efficiency 

Calculation: measures the capacity of application by the number of request per minute

### G21

Name: Authenticity

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Authenticity, Authenticity, Security

Calculation: Authenticity --> Real(0,1)

### G22

Name: Availability

Adjusted Name: ?

Source: Guerron2020, HEIDARI-2015-CLOUDCOM (S34)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: "Availabiliy = MTTF/(MTTF +MTTR) MTTF stands for Mean Time To Failure MTTR stands for Mean Time To Recover."

### G23

Name: Availability

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: Availability --> Real[0,1]

### G24

Name: Availability

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2016-CPE (S10)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: Global Provider View tool by Compuware

### G25

Name: Availability of resource

Adjusted Name: ?

Source: Guerron2020, MANUEL-2015-AOR (S50,S27), GHOLAMI-2015-KBEI (
)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: "Availability of resource Rk(AV) = Ak / Nk Nk recorded works/jobs  submitted to Rk resource, Ak number of works/jobs accepted by Rk resource in T time limit"

### G26

Name: Availability

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: "Availability =MTTF/MTBF where MTBF is Mean Time between Failures, MTTF is Mean Time to Failure"

### G27

Name: Availability SaaS provider (avEff)

Adjusted Name: ?

Source: Guerron2020, LIM-2014-IC2E (S45)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: "avEff t-j = av SaaS t-j / (? k?K t-j avCloud t-k / |K t-j|) where K t-j is the set of cloud providers that are servicing SaaS provider j at time t"

### G28

Name: Availability of the Composite Service

Adjusted Name: ?

Source: Guerron2020, BARDHAN-2012-WCS (S12)

Entity: ?

Product factor: Composite Service Availability, Service Availability, Reliability

Calculation: Availability of the Composite Service C up to Nth minute

### G29

Name: Availability of web service

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: "Availability = W.FoS + W.CoS + W.RT + W.CoM The weights for each metric which the sum is 1. FoS: Flexibility of service, CoS: Scalability of service, RT: Response time, CoM: Completeness of variant . "

### G30

Name: Availability Time

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Availability Time, Service Availability, Reliability

Calculation: "A(t)=1 - (E[r d1-X(t)] + E[r d2-X(t)]) where rd1 checks when the drop condition is satisfied: rd1 = ( P# run = M & P# queue = Q & P# send= D) ?1:0 and rd2 checks when a request is dropped due to the federated cloud unavailability: rd2 = (P# run = M & P# queue = Q & P# send <D) ?1 -af :0"

### G31

Name: Availability utility function

Adjusted Name: ?

Source: Guerron2020, SON-2015-ISF (S67)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: "UP (X)= {uXmin + (1 + uXmin) .|RXP-X / RXP-IXP| where IXP ? X ? RXP,  otherwise: 0, uX min is the minimum utility that the consumer and the provider receive for reaching a deal at its reserve performance. Qa be the availability performance quality at which a consensus is reached by both parties. Qa is substituted to X which are generalized utility functions for cloud QoS so that the performance utility is UQa(Qa) for reaching a consensus at Qa where IX=IQa,and RX=RQa. "

### G32

Name: average cost of scaling down

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Cost Scaling, Elasticity, Performance efficiency 

Calculation: "AVCd = P/AVTd where P: renting price per renting a min of the VM"

### G33

Name: average cost of scaling up

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Cost Scaling, Elasticity, Performance efficiency 

Calculation: "AVCu = P/AVTu wher P: renting price per renting a min of the VM"

### G34

Name: Average delay for a logical I/O request

Adjusted Name: ?

Source: Guerron2020, DUGGAN-2011-ICMD (S20)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: Average delay for a logical I/O request.

### G35

Name: average delay time at scaling down

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Scaling Down , Elasticity, Performance efficiency 

Calculation: AVTd = ? scaling down delay time/number of scaling down

### G36

Name: average delay time at scaling up

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Scaling Up, Elasticity, Performance efficiency 

Calculation: AVTu= ?  scaling up delay time/number of scaling up

### G37

Name: Average Energy Consumption per Request (AECpR)

Adjusted Name: ?

Source: Guerron2020, HASAN-2017-TSUSC (S31)

Entity: ?

Product factor: Energy Efficiency, Energy consumption, Performance efficiency 

Calculation: AECpR= total energy consumption/total successful requests been served

### G38

Name: Average number of queries

Adjusted Name: ?

Source: Guerron2020, HECHT-20144-CLOUDCOM (S33)

Entity: ?

Product factor: Performance of the Cloud patterns, Resource utilization, Performance efficiency 

Calculation: Average number of queries

### G39

Name: Average Overprovisioning resource

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Overprovisioning, Elasticity, Performance efficiency 

Calculation: AVEs = The Dynamism can be evaluated as the average of free CPU capacity of all running hosts.

### G40

Name: Average Response Time

Adjusted Name: ?

Source: Guerron2020, ARUMUGAM-2017-ICCMC (S07), GARG-2013-FUTURE (S24), GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "Tavg-rep=?Trepi/n ,  where Trepi is the elapsed time between the request sending time and the response reception time, n is the total number of transmitted requests"

### G41

Name: Average Service Response Time

Adjusted Name: ?

Source: Guerron2020, COSTA-2015-SMARTCITY (S17)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "ASRT ri = ? ri  SRT RI /n where SRTRi is the time between the moment a request Ri is ready to run and the service executes the request effectively"

### G42

Name: Average time to install

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: Installability, Installability, Portability

Calculation: average time experienced by the previous users of the Cloud service to install it.

### G46

Name: Average Underprovisioning resource

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Underprovisioning, Elasticity, Performance efficiency 

Calculation: AVEd = Underprovisioning resource/Number or Underprovisioning

### G47

Name: Awarability of Service(AoS)

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Publicity, Reusability, Maintainability

Calculation: "Awarability of Service(AoS) AoS = 1 - No. of users with services undiscoverability / total number of fields"

### G48

Name: Bandwidth

Adjusted Name: ?

Source: Guerron2020, GARCIA-2018-COMCOM (S23), HWANG-2016-TPDS (S36), SOUZA-2016-ISCC (S69), SINGH-2015-COMPELECENG (S65), BARANWAL-2014-IACC (S09)

Entity: ?

Product factor: Bandwidth, Networking Capacity, Performance efficiency 

Calculation: network capacity metric. Binary rate of video, Data transfer rate or I/O processing speed

### G49

Name: Bandwidth availability 

Adjusted Name: ?

Source: Guerron2020, ALJAWAD-2015-NETSOFT (S05)

Entity: ?

Product factor: Bandwidth, Networking Capacity, Performance efficiency 

Calculation: "|blast?bk/blast| > thr blast is the last updated value of the available bandwidth metric and bk is the current state of the metric."

### G50

Name: Bandwidth blocking rate

Adjusted Name: ?

Source: Guerron2020, ALJAWAD-2015-NETSOFT (S05)

Entity: ?

Product factor: Bandwidth, Networking Capacity, Performance efficiency 

Calculation: "bandwidth blocking rate = ? Bandwidth of rejected requests/  ? Bandwidth of arrived requests, "

### G51

Name: Bandwidth capacity

Adjusted Name: ?

Source: Guerron2020, CERVINO-2011-CLOUD (S16), BARANWAL-2016-CPE (S10)

Entity: ?

Product factor: Bandwidth, Networking Capacity, Performance efficiency 

Calculation: measure the limits of available Amazon network�s bandwidth.

### G52

Name: Base Energy Consumption

Adjusted Name: ?

Source: Guerron2020, DOU-2015-TICACBD (S19)

Entity: ?

Product factor: Energy Consumption, Energy Consumption, Performance efficiency 

Calculation: "EBase = ttotal ? P * , where ttotal is the total open time of the server S, P* is the base power of S"

### G53

Name: blkio_io_bytes_read

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Bytes read from hard disk, Physical utilization, Performance efficiency 

Calculation: measures the bytes read from hard disk

### G54

Name: blkio_io_bytes_write

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Bytes written to hard disk, Physical utilization, Performance efficiency 

Calculation: measures the bytes written to hard disk

### G55

Name: Buffer Access Latency (BAL)

Adjusted Name: ?

Source: Guerron2020, DUGGAN-2011-ICMD (S20)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: Buffer Access Latency (BAL)

### G56

Name: Capacity Avg

Adjusted Name: ?

Source: Guerron2020, RAVINDHREN-2017-CC (S58)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: Capacity Avg = average utilization over a period of time of the workloads handled by the system.

### G57

Name: Capacity Max

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: capacity ?  =  upper limit of the number of requests (per second) a service is able to process.

### G58

Name: Capacity Min

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: Cap_min= difference between the minimum capacity needed to meet the QOS at a given workload level for an interval i

### G59

Name: Capacity of service provider

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: "capacityi= ?(Fij*Wj) F=[cpu, mem, sto, bw] Wj = weights of capacity of cpu, mem, sto, bw"

### G60

Name: Capacity provisioned

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Capacity provisioned, Capacity, Performance efficiency 

Calculation: Cap_prov = recorded capacity provisioned for interval i

### G61

Name: Capacity ratio

Adjusted Name: ?

Source: Guerron2020, PREUVENEERS-2016-JSS (S55)

Entity: ?

Product factor: Capacity ratio, Capacity, Performance efficiency 

Calculation: "C(p) = X (p) /X (1)  The relative capacity curve C ( p ) is a good indicator for how much the observed behavior diverges from the ideal linear scalability C L (p) = p."

### G62

Name: Certification

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2016-CPE (S10)

Entity: ?

Product factor: Certification, Confidentiality, Security

Calculation: Type of cerfication

### G63

Name: Cloud Energy consumption

Adjusted Name: ?

Source: Guerron2020, DOU-2015-TICACBD (S19)

Entity: ?

Product factor: Energy Consumption, Energy Consumption, Performance efficiency 

Calculation: "ECloud =  ?ES +  ?ESCom  ECloud is the total energy consumption of the cloud infrastructure, ES  is the energy consumption of server S, and ?ES is the energy consumption of all servers in use, ESCom is the energy consumption for communication between two servers, and ?ESCom is the energy consumption for communication among all servers."

### G64

Name: Cloud Energy consumption

Adjusted Name: ?

Source: Guerron2020, JOY-2015-ICCIC (S38)

Entity: ?

Product factor: Energy Consumption, Energy Consumption, Performance efficiency 

Calculation: "Etotal = Efix + ?ECtsi + ?ECtci + ?ECtti + Esche where i= 1 to n Total energy consumption in the cloud environment can be summed up as the energy consumed in all three tasks namely data intensive ECtsi, computation intensive ECtci and communication intensive ECtti where tsi,tci and tti is the ID of each tasks subsequently"

### G65

Name: Cloud Energy consumption

Adjusted Name: ?

Source: Guerron2020, JOY-2015-ICCIC (S38)

Entity: ?

Product factor: Energy Consumption, Energy Consumption, Performance efficiency 

Calculation: Total Energy consumption = (Fixed energy consumption+ Storage energy consumption + Computation energy consumption + Communication Energy consumption)

### G66

Name: Cloud power consumption

Adjusted Name: ?

Source: Guerron2020, JOY-2015-ICCIC (S38)

Entity: ?

Product factor: Cloud Energy Consumption, Energy Consumption, Performance efficiency 

Calculation: "E = ?EDC+ ?ET E is the total energy consumption,  EDC is the data centers energy consumption, ET is the transmission energy consumption."

### G67

Name: Communication Resource Utilization

Adjusted Name: ?

Source: Guerron2020, ABD-2017-JOCS (S01)

Entity: ?

Product factor: Energy Efficiency, Energy Consumption, Performance efficiency 

Calculation: "RU = fcmi(Ncmi, DPcmi, DTcmi, SCi) where Ncmi is the Process Number communication,  Dpcmi is the Size of Data Processed communication,   Dtcmi is the Size of Data Transmitted communication"

### G69

Name: Completeness of variant set(CoM)

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Completeness of variant set, Service Availability, Reliability

Calculation: CoM =  ? (number of variants supported in variant point/total number or potencial variants in  variant point) /n

### G70

Name: Completion mean time

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: "Completion time ", Time behaviour, Performance efficiency 

Calculation: Mean time of response: avg (time of response)

### G71

Name: Completion standard deviation time (asynchronous task)

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: "Completion time", Time behaviour, Performance efficiency 

Calculation: Standard deviation time of response

### G72

Name: Composability

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Composability, Co-existence, Compatibility

Calculation: "Composability = W.SM + W.SI Service Modularity, SM, and Service Interoperability SI, W weight assigned based on the importance The weights for each metric which the sum is 1."

### G73

Name: Compute usage

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: Compute usage, Physical utilization, Performance efficiency 

Calculation: measures the compute usage

### G74

Name: Computing Capacity

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Computing Capacity, Capacity, Performance efficiency 

Calculation: Computing Capacity = Actual Usage time of the Resource/Expected Usage time of the Resource

### G75

Name: Conference start time

Adjusted Name: ?

Source: Guerron2020, ALAM-2016-ISCC (S04)

Entity: ?

Product factor: Conference start time, Time behaviour, Performance efficiency 

Calculation: Conference start time= time conference ready - time receipt of a request

### G76

Name: Connections utilization

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Connections utilization, Networking utilization, Performance efficiency 

Calculation: Connections utilization = current connections / total available connections *100

### G79

Name: Content_cc

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Storage utilization, Physical utilization, Performance efficiency 

Calculation:  Content_cc= (Content Data_scale --> Integritymetrics)

### G80

Name: correlation performance security

Adjusted Name: ?

Source: Guerron2020, XU-2018-ACCESS (S79)

Entity: ?

Product factor: correlation performance security, Time behaviour, Performance efficiency 

Calculation: "E(?(x)) = ? Na(x, n) � ?(x) (Na(x, n)) reflects the impact of security factors on the number of available VMs. (?(x)) reflects the impact of the number of available VMs on the service performance."

### G81

Name: Cost (c) 

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Cost Scaling, Elasticity, Performance efficiency 

Calculation: "c = (AVCu +AVCd) /2 average price AVCu and AVCd to describe the cost of scaling up and scaling down"

### G82

Name: Coverage of Failure Recovery (CFR)

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44)

Entity: ?

Product factor: Failure Recovery, Recoverability, Reliability

Calculation: "CFR=(number of failures remedied) /(total number of failures),where the denominator is the total number of failures caused by faults"

### G83

Name: Coverage of Fault Tolerance (CFT)

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44)

Entity: ?

Product factor: Fault tolerance, Fault tolerance, Reliability

Calculation: "CFT =(number of faults without becoming failures)/(total number of faults occurred), where the denominator is the total number of occurring faults identified and the numerator is the number of faults which do not cause failures"

### G84

Name: Coverage of Scalability

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26), ABDELADIM-2014-CIST (S02), LEE-2009-ACIS (S44), NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Coverage of Scalability, Scalability, Performance efficiency 

Calculation: "COS = ?(amount of allocated resources of ist request)/(total amount of requested resources of ist request) /k where k is the total number of requests for extending resources used"

### G85

Name: Coverage of Variability

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Variability, Reusability, Maintainability

Calculation: "CoV = 1 - No.variation point not supported  / total number of Variation points , where denominator the total number of potential variation points by considering and protruding its set of users applications,   numerator is the number of variation points not supported by the service"

### G86

Name: Coverage of Variability rate

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44)

Entity: ?

Product factor: Variability, Reusability, Maintainability

Calculation: "CV = (number of variation points realized in the SaaS) / (number of variation points in the domain), where denominator is the number of variation points identified for SRSs in the domain."

### G87

Name: CPU capacity

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09,S10), BARANWAL-2016-CPE (
)

Entity: ?

Product factor: CPU capacity, CPU Capacity, Performance efficiency 

Calculation: CPU capacity = number of CPU * frequency of CPU

### G88

Name: CPU Frequency

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: CPU capacity, CPU Capacity, Performance efficiency 

Calculation: measures the CPU Frequency

### G89

Name: CPU performance

Adjusted Name: ?

Source: Guerron2020, ZANT-2015-JCC (S81)

Entity: ?

Product factor: CPU performance, Physical Time behaviour, Performance efficiency 

Calculation: measures the number of iterations per second.

### G90

Name: CPU Performance Coefficient(CPU-PC)

Adjusted Name: ?

Source: Guerron2020, MASTELIC-2012-CLOUDCOM (S51)

Entity: ?

Product factor: CPU Downtime, Resource Availability, Reliability

Calculation: "CPU-PC = cpu unavailable/ cpu cores * ti "

### G91

Name: CPU Power consumption

Adjusted Name: ?

Source: Guerron2020, JOY-2015-ICCIC (S38)

Entity: ?

Product factor: CPU Power consumption, Physical Energy Consumption, Performance efficiency 

Calculation: "Power consumed by the CPU = k * Pmax + ( 1- k ) * Pmax * u where Pmax is the maximum CPU utilization"

### G92

Name: CPU utilization 

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: CPU utilization , Physical utilization, Performance efficiency 

Calculation: CPU utilization = current occupied computing resource / total computing resource 

### G93

Name: CPU_unavailable

Adjusted Name: ?

Source: Guerron2020, MASTELIC-2012-CLOUDCOM (S51)

Entity: ?

Product factor: CPU Downtime, Resource Availability, Reliability

Calculation: Actual unavailability time of the CPU(CPU_unavailable)

### G94

Name: cpu_usage

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: CPU usage Container, Virtualized utilization, Performance efficiency 

Calculation: measures the percentage of CPU usage of container

### G95

Name: cpuUsedPercent

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: CPU usage VM, Virtualized utilization, Performance efficiency 

Calculation: measures the percentage of CPU utilization of VM

### G96

Name: CReset

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Reset state, Time behaviour, Performance efficiency 

Calculation: measures the reseting clock after state transition

### G97

Name: Customizability

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Customizability workload, Elasticity, Performance efficiency 

Calculation: "Nd/(Nd+Ns) where Nd: Number of dynamic changes in a Cloud service with respect to a workload.  Ns: Number of static changes in a Cloud service with respect to a workload."

### G98

Name: Data centre location

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09,S10), BARANWAL-2016-CPE (
)

Entity: ?

Product factor: Data centre location, Time behaviour, Performance efficiency 

Calculation: "yi?x, yi = number of data centres provided by provider, x =  number of data centres required by an application "

### G99

Name: Data communication

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: Data communication, Networking utilization, Performance efficiency 

Calculation: measures the data communication

### G100

Name: Data Integrity

Adjusted Name: ?

Source: Guerron2020, MANUEL-2015-AOR (S50), GHOLAMI-2015-KBEI (S27), KAANICHE-2017-EDGE (S39)

Entity: ?

Product factor: Data Integrity, Integrity, Security

Calculation: "Data Integrity of resource Rk(DI) = Dk / Ck  Ck jobs completed successfully by resource Rk, Dk denote the number of jobs data integrity preserved by resource Rk over the period T,  checks if the resource correctly stores data"

### G101

Name: Data loss

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Data loss, Resource recoverability, Reliability

Calculation: MTTDL mean time to data loss

### G102

Name: Data transfer rate

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Data transfer, Physical Time behaviour, Performance efficiency 

Calculation: measures how fast the service is provided

### G103

Name: Data transfer time

Adjusted Name: ?

Source: Guerron2020, BOUSSELMI-2016-AINA (S13)

Entity: ?

Product factor: Data transfer, Physical Time behaviour, Performance efficiency 

Calculation: "Dj = ? DT i,l Dj is the maximum data to be stored in the storage resource Dsj associated to VMl  where DT i,l ? 0 if the task i and l are related in the Workflow"

### G104

Name: Data transmission speed achieved

Adjusted Name: ?

Source: Guerron2020, SAIZ-2014-IKAC (S63)

Entity: ?

Product factor: Data transmission performance, Capacity, Performance efficiency 

Calculation: Mean value and standard deviation of transmission rate

### G105

Name: data_alteration_prevention

Adjusted Name: ?

Source: Guerron2020, KAANICHE-2017-EDGE (S39)

Entity: ?

Product factor: Data Integrity, Integrity, Security

Calculation: verifies if the resource correctly implements security measures to preserve data integrity.

### G106

Name: data_alteration_slo

Adjusted Name: ?

Source: Guerron2020, KAANICHE-2017-EDGE (S39)

Entity: ?

Product factor: Data Integrity, Integrity, Security

Calculation: precondition says that the SLO is valid whenever the evaluation of the composite metric is true

### G107

Name: data_replication

Adjusted Name: ?

Source: Guerron2020, KAANICHE-2017-EDGE (S39)

Entity: ?

Product factor: Replication Policy, Integrity, Security

Calculation: measures the data_replication. Verifies if the resource correctly deploys the replication policy

### G108

Name: Database Backup

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Database Backup, Resource recoverability, Reliability

Calculation: measures the Database Backup for every cloud service (CS)

### G109

Name: DB sever commits

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: DB sever, Physical Time behaviour, Performance efficiency 

Calculation: measures the number of commits per second

### G110

Name: Defective Operations Per Millon attemps (DPM)

Adjusted Name: ?

Source: Guerron2020, ABRAHAO-2017-SERVICES (S03)

Entity: ?

Product factor: Defective Operation, Service Availability, Reliability

Calculation: DPM= (OperationsAttempted - OperationsSuccessful) / OperationsAttempted * 10^6

### G111

Name: Defective Operations Per Millon attemps (DPM)

Adjusted Name: ?

Source: Guerron2020, ABRAHAO-2017-SERVICES (S03)

Entity: ?

Product factor: Defective Operation, Service Availability, Reliability

Calculation: DPM= OperationsFailed / OperationsAttempted * 10^6

### G112

Name: Defective Operations Per Millon attemps (DPM)

Adjusted Name: ?

Source: Guerron2020, ABRAHAO-2017-SERVICES (S03)

Entity: ?

Product factor: Defective Operation, Service Availability, Reliability

Calculation: DPM= OperationsFailed / (OperationsSuccesful+ OperationsFailed) * 10^6

### G113

Name: Defects

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Defects, Analysability, Maintainability

Calculation: Number of Defects reported= Defects/CS

### G114

Name: Degradation time

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Resiliency, Recoverability, Reliability

Calculation: "T?,deg = td - tb It is the time Tdeg elapsed between the burst begin (tb) and the instant (td) at which the performance index reaches a value lower to the ?- 100% of its steady-state value"

### G115

Name: Delay

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69), CERVINO-2011-CLOUD (S16), SAIZ-2014-IKAC (S63)

Entity: ?

Product factor: Delay, Networking Time Behaviour, Performance efficiency 

Calculation: The core network that will be used only as a transport network may introduce inherent propagation delays., Mean value and standard deviation of the delay (in milliseconds).

### G116

Name: Delay

Adjusted Name: ?

Source: Guerron2020, PEDERSEN-2011-DASC (S54)

Entity: ?

Product factor: Delay, Networking Time Behaviour, Performance efficiency 

Calculation: Measured as the round trip time for packets, simply using the standard Ping command.

### G117

Name: Delay Time

Adjusted Name: ?

Source: Guerron2020, BARBA-2016-JNCA (S11), GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Delay, Networking Time Behaviour, Performance efficiency 

Calculation: "T Dij= Trij + Tnij + TOg where Trij is the response time from the cloud storage, TOg is the delay time in the gateway caused by the redirection overhead, and Tnij is the network time the request takes to travel from client i to cloud j."

### G118

Name: Delay Time

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Delay, Networking Time Behaviour, Performance efficiency 

Calculation: Delay time:  time  getting resource - time  requesting resource 

### G119

Name: Delta

Adjusted Name: ?

Source: Guerron2020, GARCIA-2018-COMCOM (S23)

Entity: ?

Product factor: Delta, Networking Time Behaviour, Performance efficiency 

Calculation: measures the packet inter-arrival time per RTP packet

### G120

Name: Density App

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Density App, Sw Time behaviour, Performance efficiency 

Calculation: mesures the number of application servers running on a system

### G121

Name: Density User

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Density User, Resource utilization, Performance efficiency 

Calculation: measure the number of users that the system can service

### G122

Name: Density VM

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Density VM, Virtualized utilization, Performance efficiency 

Calculation: number of virtual machines running on a piece of physical software

### G123

Name: Dependability

Adjusted Name: ?

Source: Guerron2020, RAVINDRAN-2013-DSRT (S59)

Entity: ?

Product factor: Dependability, Adaptability, Portability

Calculation: DS(e,G), is a measure of how good the system S meets its goal G under the environment condition e ? E?.

### G124

Name: Deployment latency

Adjusted Name: ?

Source: Guerron2020, VEDAM-2012-IACSAC (S71)

Entity: ?

Product factor: Deployment latency, Elasticity, Performance efficiency 

Calculation: deployment latency = time actual provisioning of that cloud instance - time requesting for a cloud instance 

### G125

Name: Disk input output (I/O) performance

Adjusted Name: ?

Source: Guerron2020, ZANT-2015-JCC (S81)

Entity: ?

Product factor: Performance of Virtual Machine, Virtualized utilization, Performance efficiency 

Calculation: refers to the property of storing data on a permanent basis, and it corresponds to the evaluation of the VM Disk storage

### G126

Name: Disk read

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Storage capacity, Physical Capacity, Performance efficiency 

Calculation: measures the speed of reading disk

### G127

Name: Disk utilization

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Disk utilization, Physical utilization, Performance efficiency 

Calculation: Disk utilization = current occupied disk resource/total disk resource

### G128

Name: Disk write

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Storage capacity, Physical Capacity, Performance efficiency 

Calculation: measures the speed of writing disk

### G129

Name: diskFree

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Disk utilization, Physical utilization, Performance efficiency 

Calculation: measures the amount of available disk capacity

### G130

Name: diskUsed

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Disk utilization, Physical utilization, Performance efficiency 

Calculation: measures the amount of used disk capacity

### G131

Name: Data centre distance

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09,S10), BARANWAL-2016-CPE (
)

Entity: ?

Product factor: Data centre location, Time behaviour, Performance efficiency 

Calculation: For finding data centres as per the requirement of application find the distance between each service location and data centre and add them.

### G133

Name: Downtime

Adjusted Name: ?

Source: Guerron2020, CEDILLO-2015-SCC (S15)

Entity: ?

Product factor: Downtime, Service Availability, Reliability

Calculation: Downtime = (Uptime2.PreciseTimeStamp - Uptime1. PreciseTimeStamp) - Uptime 2

### G134

Name: Downtime%

Adjusted Name: ?

Source: Guerron2020, BAO-2010-ICACTE (S08)

Entity: ?

Product factor: Downtime, Service Availability, Reliability

Calculation: "UAv(s)= ( ?SF(t) / AG(t) ) x 100% SF(t) is the service unavailable time during the negotiated time, AG(t) is the negotiated time."

### G135

Name: Durability

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Durability, Recoverability, Reliability

Calculation: "Durability = (MTTF/ (MTTDL *MTTR)) MTTF represents mean time to multiple failures,  MTTDL represents mean time to data loss MTTR represents the mean time to repair (downtime)"

### G136

Name: Duration of a single outage

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Downtime, Service Availability, Reliability

Calculation: outage end time - outage begin

### G137

Name: Dynamic changes

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Customizability workload, Elasticity, Performance efficiency 

Calculation: Number of dynamic changes in a Cloud service /workload (Nd)

### G138

Name: Dynamism or �Latent Capacity�,

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Latent Capacity, Capacity, Performance efficiency 

Calculation: "If the hosts have DVFS enabled, the Dynamism is computed rel- atively to the maximum CPU capacity and the current capacity  used Dyn =  (? f,cpu ?? f,cpu )/nH,  where f is the highest CPU frequency allowed and nH only includes hosts that are powered On"

### G139

Name: Effective arrival

Adjusted Name: ?

Source: Guerron2020, XU-2018-ACCESS (S79)

Entity: ?

Product factor: Effective arrival, Resource utilization, Performance efficiency 

Calculation: "?e = ?(1 ? qL) ? is the arrival rate of tasks. qL represents the probability that the task queue is full.  When the queue is full, a new arriving task is abandoned"

### G140

Name: Efficiency

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36)

Entity: ?

Product factor: Efficiency, Resource utilization, Performance efficiency 

Calculation: % max Performance (speedup or utilization) achievable 

### G141

Name: Efficiency

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44), NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Efficiency, Resource utilization, Performance efficiency 

Calculation: "Efficiency= W.RU + W.TB where Time Behaviour (TB), Resource Utilization (RU)"

### G142

Name: Efficiency

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24), BARANWAL-2016-CPE ( S10), BARANWAL-2014-IACC (S09)

Entity: ?

Product factor: Efficiency, Resource utilization, Performance efficiency 

Calculation: "System efficiency = E=T/(T+To) T: the execution of tasks of an application in traditional data center To: the overhead of Cloud data centre"

### G143

Name: Elasticity

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Cloud elasticity, Elasticity, Performance efficiency 

Calculation: "Ec = Tj/ Tm = 1 ?(Tu +To)/Tm percentage of time when the platform is in just-in-need states. Tu is the under-provisioning time that the cloud platform needs to switch from an under-provisioning state to a corresponding balanced state  To denotes the over- provisioning time in which cloud platform needs to switch from an over-provisioning state to a balanced one in those periods of time."

### G144

Name: Elasticity

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Cloud elasticity, Elasticity, Performance efficiency 

Calculation: "Eq =1/6 (AVEs + AVEd) (AVTu + AVTd) (AVCu + AVCd ) where average cost of scaling down (AVCd),  average cost of scaling up (AVCu),  average delay time at scaling down (AVTd),average delay time at scaling up (AVTu), Average Overprovisioning resource (AVEs) Average Underprovisioning resource (AVEd)"

### G145

Name: Elasticity

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Cloud elasticity, Elasticity, Performance efficiency 

Calculation: "Ra= the capacity variation to the previous capacity/ the necessary time for this reconfiguration(Trcf sc?,?). Then Ra is defined by two variables: the necessary time Trcf sc?,? to increase or decrease the service and the maximum capacity variation of the service. The maximum processing capacity of a service is considered as the number of computing units and their respective maximum capacity that can be allocated during an attendance peak."

### G146

Name: Elasticity

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36)

Entity: ?

Product factor: Cloud elasticity, Elasticity, Performance efficiency 

Calculation: "El,= 1/(?*?) where ?= the average time to switch from an under-provisioned state to an elevated state,  ?= be the offset between actual scaling and the auto scaling."

### G147

Name: Elasticity

Adjusted Name: ?

Source: Guerron2020, ZHENG-2014-TII (S82,S83), ZHENG-2013-SCC (
)

Entity: ?

Product factor: Cloud elasticity, Elasticity, Performance efficiency 

Calculation: "ELAS= ? = ? r i1 / ?r i2 where r i1 y r i2 denote the i1, i2 amount of resources allocated and requested in the ith request, respectively, and n is the number of requests that issued in an operational period."

### G148

Name: Elasticity rate

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09,S10), BARANWAL-2016-CPE (
)

Entity: ?

Product factor: Cloud elasticity, Elasticity, Performance efficiency 

Calculation: Elasticity=w1*time+w2*cost

### G149

Name: Ending Time(Te)

Adjusted Name: ?

Source: Guerron2020, QIAN-2015-AICDEBS (S56)

Entity: ?

Product factor: Performance of matching algorithms, Time behaviour, Performance efficiency 

Calculation: TE = te ? tl

### G150

Name: VM Energy consumption

Adjusted Name: ?

Source: Guerron2020, WU-2015-ICIEA (S75)

Entity: ?

Product factor: VM Energy consumption, Virtualized Energy Consumption, Performance efficiency 

Calculation: represents the amount of energy consumption that VMj consumes to process ?ij data block for request Ri

### G151

Name: Energy Cost

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Energy Cost, Physical Energy Consumption, Performance efficiency 

Calculation: "P(Fi) = ? (Pfull(Fi) ? Pidle(Fi) + Pidle(Fi),  where  ? is the CPU load, Pfull(Fi) and Pidle(Fi) are the power given by the host using the Fi frequency at 100% and 0% of CPU utilization."

### G152

Name: Energy efficiency

Adjusted Name: ?

Source: Guerron2020, ARUMUGAM-2017-ICCMC (S07)

Entity: ?

Product factor: Energy Efficiency, Energy Consumption, Performance efficiency 

Calculation: EE = (?Storage capacity + ? Network capacity)/Total Energy

### G153

Name: Excess capacity

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: "Excess(i) = Cap_prov(i)�Cap_min(i),  when Cap_prov(i) > Cap_min(i) and zero otherwise."

### G154

Name: Execution Cost

Adjusted Name: ?

Source: Guerron2020, VEDAM-2012-IACSAC (S71)

Entity: ?

Product factor: Performance of the infrastructure, Time behaviour, Performance efficiency 

Calculation: "C = (Ci * T) + (Cs * S * T) + (Cb * B) Where C = Total Cost ci = Cost of the cloud instance per hour  cs = Cost of the storage per Megabits per hour (In most cases this is bundled with the instance cost and so is zero.)  cb = Cost of the data transfer per Kilobits T = Time taken for the task to run rounded off the nearest higher whole number.  S = Storage consumed in Megabits  B = Data transferred in Kilobits"

### G155

Name: Execution Time

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Execution time, Time behaviour, Performance efficiency 

Calculation: "Execution Time=Treq,s ex= ? req,s f,cpu / ?v,h.?,? Execution Time depends on the complexity of the request req to be executed (i.e. number of instructions, denoted ?req,s-f,cpu)and the VM capacity, denoted ?v,h?,? , where the request is processed. "

### G156

Name: Execution time

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36,S13,S19), BOUSSELMI-2016-AINA (
), DOU-2015-TICACBD ()

Entity: ?

Product factor: Execution time, Time behaviour, Performance efficiency 

Calculation: measures the time elapsed during program or job execution.

### G157

Name: Expected Request completion time

Adjusted Name: ?

Source: Guerron2020, XIA-2015-ITASE (S76)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "E(RCT) = E(FLT) + E(RTqFLT denote the interval between the time when the first job arrives at PM queue and the time when the last one g job is done.RTq Resonse Time for queue"

### G158

Name: Failure Recovery

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Failure Recovery, Recoverability, Reliability

Calculation: FR = 1 - number of failure not rectified/total number of failure

### G159

Name: Fault Tolerance ratio

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Fault Tolerance ratio, Fault tolerance, Reliability

Calculation: FT = 1 - number of faults becoming failure/total number of faults occured

### G160

Name: Fault tolerance(FTs)

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Fault tolerance, Fault tolerance, Reliability

Calculation: "FTs = f(?M, ?N, ?SW)If it is assumed that the physical machine and network errors make the service unreachable, then only software errors(?SW) should be taken into account."

### G161

Name: File transfer rate

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Data Transfer, Physical Time behaviour, Performance efficiency 

Calculation: measures the file server transfer in MB per second

### G162

Name: Fineness of multiplexing(F)

Adjusted Name: ?

Source: Guerron2020, YU-2015-SCN (S80)

Entity: ?

Product factor: Fineness of Flow Control, Energy Consumption, Performance efficiency 

Calculation: "f ? p'/pwhere f is the fineness of multiplexing, which is the ratio of p' and p (optimal impact power and the impact power)"

### G163

Name: Flexibility

Adjusted Name: ?

Source: Guerron2020, ARUMUGAM-2017-ICCMC (S07)

Entity: ?

Product factor: Flexibility, Flexibility, Maintainability

Calculation: upgrading the service/ total time

### G164

Name: Flexibility

Adjusted Name: ?

Source: Guerron2020, EZENWOKE-2018-JCC (S21)

Entity: ?

Product factor: Flexibility, Flexibility, Maintainability

Calculation: rating of the ability to add or remove predefined features from a service in order to accommodate users� preferences 

### G165

Name: Flexibility of service(FOS)

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: FOS= 1 - unavailable time for invoking web service/total time for opearing the web services

### G166

Name: Flow in

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Bandwidth, Networking Capacity, Performance efficiency 

Calculation: measures the bandwidth of flow in, and the flow isn�t limited

### G167

Name: Flow out

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Bandwidth, Networking Capacity, Performance efficiency 

Calculation: measures the bandwidth of flow out, and the peak flow decided by ECS 

### G168

Name: Functional Commonality(FC)

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53,S44), LEE-2009-ACIS (
)

Entity: ?

Product factor: Functional Commonality, Reusability, Maintainability

Calculation: 131"

### G169

Name: Gaming Response Time

Adjusted Name: ?

Source: Guerron2020, WANG-2012-SMCCR (S73)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "RT= Rdelay + Ds + Dr + Df + De + Dc Where Df = 1/(2*FR) Ds as service delay, Dr as rendering delay, Df as average value of Tframe, De encodinf delay,  Dc coding delay"

### G170

Name: Gap Time(Tg)

Adjusted Name: ?

Source: Guerron2020, QIAN-2015-AICDEBS (S56)

Entity: ?

Product factor: Performance of matching algorithms, Time behaviour, Performance efficiency 

Calculation: "TG = TDl ?TDf where TDl and TDf are the determining time of the last and the first matched subscription"

### G171

Name: Group of Pictures (GOP)

Adjusted Name: ?

Source: Guerron2020, GARCIA-2018-COMCOM (S23)

Entity: ?

Product factor: Group of Pictures (GOP), Capacity, Performance efficiency 

Calculation: measures the Group of Pictures or Frames with inter dependences for decoding

### G172

Name: Host Energy consumption

Adjusted Name: ?

Source: Guerron2020, ABD-2017-JOCS (S01)

Entity: ?

Product factor: Host Energy consumption, Physical Energy Consumption, Performance efficiency 

Calculation: "P=I*V I: corriente V: voltaje"

### G173

Name: IaaS Energy efficiency

Adjusted Name: ?

Source: Guerron2020, KATSAROS-2013-FUTURE (S41)

Entity: ?

Product factor: Energy Efficiency, Energy Consumption, Performance efficiency 

Calculation: Ef Infrastructure = ?i Ef Nodej / n

### G174

Name: I-Frame Loss Rate

Adjusted Name: ?

Source: Guerron2020, GARCIA-2018-COMCOM (S23)

Entity: ?

Product factor: I-Frame Loss Rate, Resource fault tolerance, Reliability

Calculation: IFLR= number of I-frames lost/ number of I-frame sent

### G175

Name: Impact energy (E )

Adjusted Name: ?

Source: Guerron2020, YU-2015-SCN (S80)

Entity: ?

Product factor: Fineness of Flow Control, Energy Consumption, Performance efficiency 

Calculation: "e ? l2 where e represents impact energy and l denotes the length/amplitude of the continuous content. "

### G176

Name: Impact power(P)

Adjusted Name: ?

Source: Guerron2020, YU-2015-SCN (S80)

Entity: ?

Product factor: Fineness of Flow Control, Energy Consumption, Performance efficiency 

Calculation: "p ? e/t (15) where t is the time span of exerting the impact energy e and p denotes the impact power."

### G177

Name: Inactive connections

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Connections, Connectivity, Performance efficiency 

Calculation: measures the inactive connections

### G178

Name: Incidence of accidents (IoA)

Adjusted Name: ?

Source: Guerron2020, ZHOU-2015-HPCC (S84)

Entity: ?

Product factor: Continuity, Continuity, Reliability

Calculation: "when a < b, x = 1-a / b

### G179

Name: Initial Buffering Time (IBT)

Adjusted Name: ?

Source: Guerron2020, SAMET-2016-WAINA (S64)

Entity: ?

Product factor: Video streaming, Physical Time behaviour, Performance efficiency 

Calculation: duration = time beginning of the playback - starting time of loading a video

### G180

Name: Instance mean starting time

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Instance mean starting time, Time behaviour, Performance efficiency 

Calculation: Avg (Time up - time requested)

### G181

Name: Instance standard deviation starting time

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Instance standard deviation starting time, Time behaviour, Performance efficiency 

Calculation: Standard deviation of (Time up - time requested) 

### G182

Name: Instant service probability at time t (I(t))

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: "I(t)= E [ri  X(t)] Instant service probability at time t"

### G183

Name: Instantaneous Availability

Adjusted Name: ?

Source: Guerron2020, MESBAHI-2018-HCIIS (S52)

Entity: ?

Product factor: Instantaneous Availability, Service Availability, Reliability

Calculation: "A(t) = R(t) + R(t ? u)m(u)du where m(u) is the system renewal density function"

### G184

Name: Integrity

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Integrity, Integrity, Security

Calculation: Integrity =? (1-Threat) x (1 -Security)

### G185

Name: Integrity

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Integrity, Integrity, Security

Calculation: Integrity= (Content, Content_cc ,Integritymetrics)

### G186

Name: Integritymetrics

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Data Integrity, Integrity, Security

Calculation: Integritymetrics--> Real ? 0

### G187

Name: Internet Accessibility

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Accessibility, Time behaviour, Performance efficiency 

Calculation: IA = Number of request time out/Total number of requests or Percentage of Time Out Request

### G188

Name: Interoperability dependency

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Interoperability of service, Interoperability, Compatibility

Calculation: "SI = No. of depedent services with satisfactory interaction / total no. of depedent services in participating BP's, numerator is the number of dependent services with satisfactory interaction capacity, denominator is the total number services with dependency on the present service"

### G189

Name: Interoperability platforms

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: Interoperability of service, Interoperability, Compatibility

Calculation: number of platforms offered by the provider / number of platforms required by users for interoperability

### G190

Name: Interoperability resources

Adjusted Name: ?

Source: Guerron2020, LU-2018-JSS (S49)

Entity: ?

Product factor: Interoperability of service, Interoperability, Compatibility

Calculation: the number of resources offered by the provider / the number of resources required by users for interoperability

### G191

Name: Interval Time (Ti)

Adjusted Name: ?

Source: Guerron2020, QIAN-2015-AICDEBS (S56)

Entity: ?

Product factor: Performance of matching algorithms, Time behaviour, Performance efficiency 

Calculation: Ii,j = TDj ?TDi

### G192

Name: Intra-coded Block Size

Adjusted Name: ?

Source: Guerron2020, SLIVAR-2016-ICMS (S66)

Entity: ?

Product factor: Video Quality, Physical utilization, Performance efficiency 

Calculation: IBS measures the spatial aspect of video (scene complexity).

### G193

Name: Intra-coded Macroblocks

Adjusted Name: ?

Source: Guerron2020, SLIVAR-2016-ICMS (S66)

Entity: ?

Product factor: Video Quality, Physical utilization, Performance efficiency 

Calculation: PFIM measures the temporal aspect of the video(motion in subsequent images)

### G194

Name: IOPS

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: IOPS, Time behaviour, Performance efficiency 

Calculation: measures the IO request per second

### G195

Name: Java order rate

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Java order rate, Sw Time behaviour, Performance efficiency 

Calculation: measures the number of new orders per second

### G196

Name: Jitter

Adjusted Name: ?

Source: Guerron2020, CERVINO-2011-CLOUD (S16)

Entity: ?

Product factor: Jitter, Time behaviour, Performance efficiency 

Calculation: measures the variation in the time between packet arrivals caused by network congestion, timing drift, or route change.

### G197

Name: Jitter

Adjusted Name: ?

Source: Guerron2020, PEDERSEN-2011-DASC (S54)

Entity: ?

Product factor: Jitter, Time behaviour, Performance efficiency 

Calculation: "J=J�+(|D(i-1,i)|-J�)/16. J is jitter calculated continuously every time a Ping packet is received,  J� is the previous jitter value,  and t |D(i,j)| which is the value of the difference in Ping times between the i�th and j�th packets."

### G198

Name: Jitter

Adjusted Name: ?

Source: Guerron2020, GARCIA-2018-COMCOM (S23), SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Jitter, Time behaviour, Performance efficiency 

Calculation: measures the delay variation

### G199

Name: Latency

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: "Tnet(n) = l + �(n),  where l is a constant (i.e. Latency) and �(n) the time needed to send n bytes."

### G200

Name: Latency

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: Latency =Time of input a Cloud workload - Time of output produced with respect to that Cloud workload

### G201

Name: Latency

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26), RAVINDHREN-2017-CC (S58), HWANG-2016-TPDS (S36), RIZVI-2017-JPROCS (S61), GARCIA-2018-COMCOM (S23)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: time = time arrival at its destination - time submitting a packet

### G202

Name: Latency

Adjusted Name: ?

Source: Guerron2020, ABRAHAO-2017-SERVICES (S03)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: Avg (RequestTime-ResponseTime)

### G203

Name: Latency Read

Adjusted Name: ?

Source: Guerron2020, IBRAHIM-2018-CLOUD (S37)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: measures the Latency Read

### G204

Name: Latency Update

Adjusted Name: ?

Source: Guerron2020, IBRAHIM-2018-CLOUD (S37)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: measures the Latency Update

### G206

Name: Load average

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Load average, Capacity, Performance efficiency 

Calculation: avg (number of load)

### G207

Name: Location

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Location, Time behaviour, Performance efficiency 

Calculation: location affinity

### G208

Name: Mail action rate

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Mail action rate, Physical Time behaviour, Performance efficiency 

Calculation: measures the number of actions per minute

### G209

Name: Main Loop Iteration Time (MLIT)

Adjusted Name: ?

Source: Guerron2020, HASSAM-2014-ISMMWA (S32)

Entity: ?

Product factor: Execution time, Time behaviour, Performance efficiency 

Calculation: MLIT= tSceneDataUpdated � tSimulatePhysics

### G210

Name: Maintenance cost

Adjusted Name: ?

Source: Guerron2020, LIN-2011-ESWA (S46)

Entity: ?

Product factor: Maintenance cost, , Maintainability

Calculation: "maintenance cost is calculated in terms of the amount of capacity that each edge/node needs to be restored. The total cost mto recover the edges/nodes in a CCN from the state X is TC (X) = ?ci(Wi - xi) where ci(Wi - xi) is the maintenance cost for ei on any MP to recover from the current capacity xi to its highest capacity Wi."

### G211

Name: Max Queries processed

Adjusted Name: ?

Source: Guerron2020, HECHT-20144-CLOUDCOM (S33)

Entity: ?

Product factor: Cloud patterns, Capacity, Performance efficiency 

Calculation: Max (queries processed per second)

### G212

Name: Capacity Max

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: the maximum number of compute units that can be provided at peak times

### G213

Name: Maximum performance loss

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Resiliency, Recoverability, Reliability

Calculation: "MPL(%)=(Psteady - Pmin)/Psteady x 100 where Psteady and Pmin are the steady-state value of the considered performance index and its minimum value reached during the load burst, respectively."

### G214

Name: Maximum Response Time(Tmax)

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24), GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: The maximum Response Time, denoted Tmax is the maximum Response Time  claimed by the Cloud service provider.

### G215

Name: Mean Availability

Adjusted Name: ?

Source: Guerron2020, MESBAHI-2018-HCIIS (S52)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: Am(T) = 1 /T *  A(t)dt

### G216

Name: Mean buffering duration (MBD)

Adjusted Name: ?

Source: Guerron2020, SAMET-2016-WAINA (S64)

Entity: ?

Product factor: Video streaming, Physical Time behaviour, Performance efficiency 

Calculation: bit rate of the video/average bandwidth available for the viewer

### G217

Name: Mean number of jobs in RPDE (Erpde)

Adjusted Name: ?

Source: Guerron2020, GHOSH-2010-RDS (S28)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: E[NRPDE] = ? number of jobs that are waiting in the RPDE queue +  the job that is currently undergoing provisioning decision.

### G218

Name: Mean Number of PMs in active mode(Npm)

Adjusted Name: ?

Source: Guerron2020, ROOHITAVAF-2013-ICPADS (S62)

Entity: ?

Product factor: PMs in active mode, Resource Availability, Reliability

Calculation: "rm = ? #Pm,active where #Pm denotes the number of tokens inside place P in marking m"

### G219

Name: Mean Number of requests(q)

Adjusted Name: ?

Source: Guerron2020, LIU-2014-ICC (S47)

Entity: ?

Product factor: Number of requests, Resource utilization, Performance efficiency 

Calculation: q = E|q|= ? + ?2T2 ( E[Y2]) / 2(1 ? ?) 

### G220

Name: Mean queue length (MQL)

Adjusted Name: ?

Source: Guerron2020, KIRSAL-2015-UCC (S43)

Entity: ?

Product factor: Performance of data centres, Resource utilization, Performance efficiency 

Calculation: "MQL = r + (r^c ? / c!(1 ? ?)^2)P0 where C is the number of servers"

### G221

Name: Mean queue length (MQL)

Adjusted Name: ?

Source: Guerron2020, KIRSAL-2015-UCC (S43)

Entity: ?

Product factor: Performance of data centres, Resource utilization, Performance efficiency 

Calculation: "MQL = ? qi.MQLi i is teh number of operative servers"

### G222

Name: Mean Response time (MRT)

Adjusted Name: ?

Source: Guerron2020, ZANT-2015-JCC (S81)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: The Mean response time represents the Round Trip Time (RTT) that took a ping of one CSP�s virtual machine�s address

### G223

Name: Mean response time( r)

Adjusted Name: ?

Source: Guerron2020, LIU-2014-ICC (S47), NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "mean Response time = Execution time +Waiting time,r = q/? = x + ?T2 (E[Y2])/ 2(1 ? ?) "

### G224

Name: Mean Time between Failures(MTBF)

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Mean Time between Failures, Fault tolerance, Reliability

Calculation: "Reliability= MTBF = MTTF+MTTR MTBF is Mean Time between Failures, MTTF is Mean Time to Failure, MTTR is Mean Time to Repair"

### G225

Name: Mean Time between Failures(MTBF)

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Mean Time between Failures, Fault tolerance, Reliability

Calculation: MTBF= (Units*time)/number units failures

### G226

Name: Mean Time between Failures(MTBF)

Adjusted Name: ?

Source: Guerron2020, ZHENG-2014-TII,RAVINDHREN-2017-CC (S83)

Entity: ?

Product factor: Mean Time between Failures, Fault tolerance, Reliability

Calculation: measures the mean Time between Failures(MTBF)

### G227

Name: Mean Time between Failures(MTBF)

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09,S10), BARANWAL-2016-CPE (
)

Entity: ?

Product factor: Mean Time between Failures, Fault tolerance, Reliability

Calculation: MTBF=Total time / Number of failures

### G228

Name: Mean time scale up

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: Time Scaling, Elasticity, Performance efficiency 

Calculation: measures the mean time taken to expand or contract the service capacity. Elasticity of a Cloud service is inferred from the time it takes to scale up.

### G229

Name: Mean Time to Change with respect to particular Cloud Service(MTTC)

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Changeability workload, Elasticity, Performance efficiency 

Calculation: Changeability(MTTC) = ?(Time to analyze the change in workload + Time to modify the change in workload + Time to test the change in workload + time to distribute the change in workload)/(No. of change requests in workload)

### G230

Name: Mean Time to Failure(MTTF)

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30), ZHENG-2014-TII (S83), SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Mean Time to Failure, Fault tolerance, Reliability

Calculation: " MTTF =? tf dp (t) dt,   where, ? fdp(t)dt = 1.  Therefore, ? which represents ""failure rate"" ?=1/MTTF"

### G231

Name: Mean time to recover

Adjusted Name: ?

Source: Guerron2020, RAVINDHREN-2017-CC (S58,S65), SINGH-2015-COMPELECENG (S69), SOUZA-2016-ISCC (
)

Entity: ?

Product factor: Failure Recovery, Recoverability, Reliability

Calculation: MTTR = Avg (Time to a complete recovery from a service failure)

### G232

Name: Mean Time to Repair(MTTR)

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Failure Recovery, Recoverability, Reliability

Calculation: MTTR

### G233

Name: Mean time to switchover

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Mean time to switchover, Recoverability, Reliability

Calculation: measures the time to switchover from a failure

### G234

Name: Mean waiting time

Adjusted Name: ?

Source: Guerron2020, LIU-2014-ICC (S47)

Entity: ?

Product factor: Response time, Time behaviour, Performance efficiency 

Calculation: w = r ? x

### G235

Name: Memory capacity

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09), BARANWAL-2016-CPE (S10), SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Memory capacity, Memory Capacity, Performance efficiency 

Calculation: measures the memory capacity.

### G236

Name: Memory performance

Adjusted Name: ?

Source: Guerron2020, ZANT-2015-JCC (S81)

Entity: ?

Product factor: VM Memory, Virtualized Capacity, Performance efficiency 

Calculation: measures the property of storing data on a temporary basis, and it corresponds to the evaluation of the VM RAM

### G237

Name: Memory utilization 

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Memory utilization , Physical utilization, Performance efficiency 

Calculation: Memory utilization = current occupied memory resource /total memory resource * 100

### G238

Name: memory_usage

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Mem usage container, Virtualized utilization, Performance efficiency 

Calculation: measures the percentage of Memory usage of container

### G239

Name: memUsed

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: VM Memory utilization , Virtualized utilization, Performance efficiency 

Calculation: measures the current memory usage of VM

### G240

Name: memUsedPercent

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: VM Memory utilization , Virtualized utilization, Performance efficiency 

Calculation: measures the percentage of Memory usage of VM

### G241

Name: Modularity

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Service Modularity, Modularity, Maintainability

Calculation: "SM = No. of elements without external dependancy / total number of elements, denominator is the number of elements in a service,  numerator is the number of elements which are not depend on external services."

### G242

Name: Monitored process number

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Server Capacity, Physical Capacity, Performance efficiency 

Calculation: measures the number  of monitored process

### G243

Name: Motion difference feature

Adjusted Name: ?

Source: Guerron2020, SLIVAR-2016-ICMS (S66)

Entity: ?

Product factor: Video Quality, Physical utilization, Performance efficiency 

Calculation: "Mn(i, j) = Fn(i, j) ?Fn?1(i, j) Fn(i, j)  is the luminance value of the pixel at the ith row and jth column of nth frame in time."" "

### G244

Name: Net job rejection rate( ?reject )

Adjusted Name: ?

Source: Guerron2020, GHOSH-2010-RDS (S28)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: "Net job rejection rate( ?reject ) = pblock + pdrop  where  ?block results from admission control, which results from rejection of jobs when RPDE buffer is full. ?drop is  rejection rate."

### G245

Name: netBytesIn

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Network rate, Networking Time Behaviour, Performance efficiency 

Calculation: Bytes in per second

### G246

Name: netBytesOut

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Network rate, Networking Time Behaviour, Performance efficiency 

Calculation: Bytes out per second

### G247

Name: netPacketsIn

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Network rate, Networking Time Behaviour, Performance efficiency 

Calculation: Packets in per second

### G248

Name: netPacketsOut

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Network rate, Networking Time Behaviour, Performance efficiency 

Calculation: Packets out per second

### G249

Name: New connections 

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Connections, Connectivity, Performance efficiency 

Calculation: measures the new connections 

### G250

Name: Node Energy efficiency

Adjusted Name: ?

Source: Guerron2020, KATSAROS-2013-FUTURE (S41)

Entity: ?

Product factor: Node Energy efficiency, Networking Energy Consumption, Performance efficiency 

Calculation: Ef = Useful work/Energy (J) = (Useful work/s)/(Energy (J)/s) = (Useful work/s) / Power (W)

### G251

Name: Non-functional Commonality(NFC)

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44)

Entity: ?

Product factor: Non-functional Commonality, Reusability, Maintainability

Calculation: "NFC = ( ?number of requirements appling ith non-functional feature / total number of requirements analyzed in the domain)/m,  where m is the total number of non-functional features in the domain.   The non-functional features are identified from the SRSs in the same domain"

### G252

Name: Number of  alarms monitored

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Alarms monitored, Confidentiality, Security

Calculation: Number of Fake alarms monitored by Corporate Security

### G253

Name: Number of CPU

Adjusted Name: ?

Source: Guerron2020, MASTELIC-2012-CLOUDCOM (S51), SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: CPU capacity VM, Virtualized Capacity, Performance efficiency 

Calculation: measures the computing using  the number of CPU cores assigned to the monitored VM

### G254

Name: Number of ineffectual service responses

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Ineffectual service , Confidentiality, Security

Calculation: Number of ineffectual service responses to the issues identified by the Security as control weaknesses

### G255

Name: Number of replicas

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Storage replication , Physical Capacity, Performance efficiency 

Calculation: measures the minimum number of replicas guaranteed

### G256

Name: Number of safety hazards

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Safety hazards, Accountability, Security

Calculation: Number of safety hazards proactively identified

### G257

Name: Number of tenants

Adjusted Name: ?

Source: Guerron2020, PREUVENEERS-2016-JSS (S55)

Entity: ?

Product factor: Number of tenants, Capacity, Performance efficiency 

Calculation: measures the number of tenants of a cloud service

### G258

Name: Operating systems support

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2016-CPE (S10)

Entity: ?

Product factor: Operating systems support, Installability, Portability

Calculation: identify the different Operating systems Providers support, for example, Mac OS X, Windows and Open SUSE Linux.

### G259

Name: Operational availability

Adjusted Name: ?

Source: Guerron2020, MESBAHI-2018-HCIIS (S52)

Entity: ?

Product factor: Operational availability, Service Availability, Reliability

Calculation: A0 = Uptime /Operating cycle

### G260

Name: Overall Efficiency(eff)

Adjusted Name: ?

Source: Guerron2020, LIM-2014-IC2E (S45)

Entity: ?

Product factor: Efficiency, Resource utilization, Performance efficiency 

Calculation: "eff t-j = wav � avEff t-j +wrl � rlEff t-j +wrt � rtEff t-j  w are the weights of availability, reliability, response time.  Sum of weights is equal to 1"

### G261

Name: Overprovisioning

Adjusted Name: ?

Source: Guerron2020, ABDELADIM-2014-CIST (S02)

Entity: ?

Product factor: Overprovisioning, Elasticity, Performance efficiency 

Calculation: "OVPR DT = 1 - 1/n where n is a number of the requests received and i the number of the request where the requested resources are beyond the available resources during a period of time DT."

### G262

Name: Overprovisioning resource

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Overprovisioning, Elasticity, Performance efficiency 

Calculation: ? over provisioning resource

### G263

Name: Packet Loss Distribution (PLD)

Adjusted Name: ?

Source: Guerron2020, GARCIA-2018-COMCOM (S23)

Entity: ?

Product factor: Packet Loss, Resource recoverability, Reliability

Calculation: measured by PLR per time

### G264

Name: Packet Loss Rate (PLR)

Adjusted Name: ?

Source: Guerron2020, GARCIA-2018-COMCOM (S23)

Entity: ?

Product factor: Packet Loss, Resource recoverability, Reliability

Calculation: "P prob = 1/N ? n k where Pprob is the probability of packet loss, N is total number of packets, nk is number of lost packets by the k-th period"

### G265

Name: Packet losses

Adjusted Name: ?

Source: Guerron2020, CERVINO-2011-CLOUD (S16)

Entity: ?

Product factor: Packet loss, Resource recoverability, Reliability

Calculation: measures the amount of packets lost in an interval. A discontinuity in the sequence number of RTP packets is perceived as a loss. Packet loss causes degradation in voice and video quality.

### G266

Name: Packets in 

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Packets in , Networking Capacity, Performance efficiency 

Calculation: measures the number of packets in

### G267

Name: Packets out

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Packets out, Networking Capacity, Performance efficiency 

Calculation: measures the number of packets out

### G268

Name: Page download rate(Rate)

Adjusted Name: ?

Source: Guerron2020, BAO-2010-ICACTE (S08)

Entity: ?

Product factor: Web Services Performance, Capacity, Performance efficiency 

Calculation: "Rate(p)=Bytes(p) / Page(t), where Bytes(p) is the bytes of the request page, Page(t) is the download time of request page. "

### G269

Name: Participant joining time

Adjusted Name: ?

Source: Guerron2020, ALAM-2016-ISCC (S04)

Entity: ?

Product factor: Participant joining time, Time behaviour, Performance efficiency 

Calculation: measures the time required to add a participant to a running conference

### G270

Name: Peak Overshoot or Undershoot (PO)

Adjusted Name: ?

Source: Guerron2020, GHOSH-2010-RDS (S28)

Entity: ?

Product factor: Resiliency, Recoverability, Reliability

Calculation: "PO(%) = (|Mpeak(ac) ?Mss(ac) |  / Mss(ac) )� 100%  where Mpeak(ac) be the maximum deviation of the measure from its steady state value after application of change."

### G272

Name: Peak Time

Adjusted Name: ?

Source: Guerron2020, GHOSH-2010-RDS (S28)

Entity: ?

Product factor: Resiliency, Recoverability, Reliability

Calculation: Peak Time (Tpeak) is the time taken to reach maximum deviation Mpeak(ac)  of the measure, from its steady state value (Mss (ac)) attained after the change is applied

### G273

Name: Percentage of dangerous data resources 

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Dangerous data, Accountability, Security

Calculation: Percentage of dangerous data resources residing on systems

### G274

Name: Percentage of QoS violations

Adjusted Name: ?

Source: Guerron2020, DEASSUNCAO-2013-FUTURE (S18)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: "Percentage of QoS violations: percentage of requests whose response times were longer than the amount of time expected by their end-users

### G275

Name: Percentile of response time

Adjusted Name: ?

Source: Guerron2020, XIONG-2015-ICDCSW (S78), XIAO-2010-ICC (S77)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "FT(t)|t=TD= ?fT(t)dt ? ? (0 ? ?? 1) Let T be a random variable representing the response time,  fT(t) and FT(t) be its probability and cumulative distributions pdf and CDF, respectively.  TD be the desired target response time that a customer requests and agrees with its service provider based on a fee paid by the customer.  which is called percentile response time. This means that ?�100% of the time a service request job will be executed in less than TD. , F(t) =1-e^rT =? ?? the probability of the response time being less than T B should be no less than ?."

### G276

Name: Percentile Time

Adjusted Name: ?

Source: Guerron2020, GHOSH-2010-RDS (S28)

Entity: ?

Product factor: Resiliency, Recoverability, Reliability

Calculation: tpercentile=|Mss(bc)?Mss(ac)|. (100 ? ?)

### G277

Name: performance

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Performance of service, Time behaviour, Performance efficiency 

Calculation: performance=< Time Reliability Cost >

### G278

Name: performance

Adjusted Name: ?

Source: Guerron2020, XU-2018-ACCESS (S79)

Entity: ?

Product factor: Performance of service, Time behaviour, Performance efficiency 

Calculation: measures the number of accomplished requests per unit time

### G279

Name: Performance Degradation due to Migrations (PDM) 

Adjusted Name: ?

Source: Guerron2020, GHAFARI-2013-IC3 (S25)

Entity: ?

Product factor: Degradation due to Migration, Resource utilization, Performance efficiency 

Calculation: measures the performance degradation due to migrations (PDM). is bounded by host capacity and VMs are not provided with the required performance level

### G280

Name: Performance utility function

Adjusted Name: ?

Source: Guerron2020, SON-2015-ISF (S67)

Entity: ?

Product factor: Performance utility, Time behaviour, Performance efficiency 

Calculation: "UP (X)= {uXmin + (1 + uXmin) .|RXP-X / RXP-IXP| where IXP ? X ? RXP,  otherwise: 0, uX min is the minimum utility that the consumer and the provider receive for reaching a deal at its reserve performance. Qp be the performance quality at which a consensus is reached by both parties. Qp is substituted to X which are generalized utility functions for cloud QoS so that the performance utility is UQp (Qp) for reaching a consensus at Qp where IX=IQp, and RX=RQp"

### G281

Name: Performance utility function

Adjusted Name: ?

Source: Guerron2020, ALVARES-2011-GCM (S06)

Entity: ?

Product factor: Performance utility, Time behaviour, Performance efficiency 

Calculation: "for each component cj ? C, we define a function perfj : (?, ?j) ?? N in terms of response time, where ? corresponds to the workload and ?j to the total amount of CPU allocated to component cj.  One application is composed of a set of components expressed by the vector C."

### G282

Name: performance VM

Adjusted Name: ?

Source: Guerron2020, XU-2018-ACCESS (S79)

Entity: ?

Product factor: Performance of Virtual Machine, Virtualized utilization, Performance efficiency 

Calculation: "?(x) = ?e(1 ? ptime?out) defined as ?(x) with x representing the number of available VMs. ?(x) gives the number of completed tasks per unit"

### G283

Name: Performance-Cost Normalization (PCN)

Adjusted Name: ?

Source: Guerron2020, VEDAM-2012-IACSAC (S71)

Entity: ?

Product factor: Performance of the infrastructure, Time behaviour, Performance efficiency 

Calculation: "Performance-Cost Normalization (PCN) = P/C, where C is execution cost, P is the parameter to measure the performance of the reference application(e.g. response time)."

### G284

Name: Permissible capacity fluctuations to workloads

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Server vertical scalability, Scalability, Performance efficiency 

Calculation: measures permissible capacity fluctuations to workloads. fluctuation number of CPUs and RAM size in GBs.

### G285

Name: Permissible changes to increased workloads

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Server horizontal scalability , Scalability, Performance efficiency 

Calculation: measures permissible changes to increased workloads

### G286

Name: Persistence

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Persistence, Time behaviour, Performance efficiency 

Calculation: It is defined as the number of time periods required for a given proportion of the total uncertainties in a given service to collect

### G288

Name: Platform support

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2016-CPE (S10)

Entity: ?

Product factor: Platform support, Installability, Portability

Calculation: identify the provider different types of platforms.

### G289

Name: PM Energy consumption

Adjusted Name: ?

Source: Guerron2020, JOY-2015-ICCIC (S38)

Entity: ?

Product factor: PM Energy consumption, Physical Energy Consumption, Performance efficiency 

Calculation: "Ej = Ej min + ut CPUj . (Ej max  - Ej min) Ej min and Ej max represents minimum and maximum energy consumption of a particular PM j,  ut signifies the utilization of the CPU of PM Physical Machine"

### G290

Name: Portability of service

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Portability ratio, Installability, Portability

Calculation: Portability= (number of compatible platforms)/(total number of platforms)

### G291

Name: Power Demand

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61), HWANG-2016-TPDS (S36)

Entity: ?

Product factor: Power Consumption, Resource utilization, Performance efficiency 

Calculation: measures the total watt usage by the cloud system, Power consumption of a cloud computing system (MWatt)

### G292

Name: Preparing Time(Tp)

Adjusted Name: ?

Source: Guerron2020, QIAN-2015-AICDEBS (S56)

Entity: ?

Product factor: Performance of matching algorithms, Time behaviour, Performance efficiency 

Calculation: "TP = tf ? ts where tf  time first and tl time last matched subscription"

### G293

Name: Privacy

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Privacy, Privacy, Security

Calculation: Privacy= (Ac_state,Ac_trans)

### G294

Name: Probability an APT accessed

Adjusted Name: ?

Source: Guerron2020, GONZALES-2017-TCC (S29)

Entity: ?

Product factor: APT Accesed, Confidentiality, Security

Calculation: ATP can access high value data. Data compromised or erased from the CCS

### G295

Name: Probability the APT detected 

Adjusted Name: ?

Source: Guerron2020, GONZALES-2017-TCC (S29)

Entity: ?

Product factor: APT Detected, Confidentiality, Security

Calculation: "Pr DIN = (Pr (A | nodetection) - Pr(A))/Pr(A) (Pr (A | nodetection) is the probability that the APT can infiltrate the gold data without any detection (i.e., Pr DIN=0 for i = 1

### G296

Name: ProcessingTime

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Processing time, Time behaviour, Performance efficiency 

Calculation: measures the processing time

### G297

Name: ProcessingTime

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Processing time, Time behaviour, Performance efficiency 

Calculation: average response time

### G298

Name: Productivity

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36)

Entity: ?

Product factor: Productivity, Time behaviour, Performance efficiency 

Calculation: P, (Eq. (4)) 

### G299

Name: promised turnaround time

Adjusted Name: ?

Source: Guerron2020, MANUEL-2015-AOR (S50)

Entity: ?

Product factor: Turnaround Time, Time behaviour, Performance efficiency 

Calculation: "The promised turnaround time is the expected time by a resource provider between the submission of a job and the delivery of the completed job. It is promised by the resource provider to the user in the SLA."

### G300

Name: Provisioning time

Adjusted Name: ?

Source: Guerron2020, ZANT-2015-JCC (S81)

Entity: ?

Product factor: Provisioning time, Elasticity, Performance efficiency 

Calculation: It is defined as the time taken by a CSP to allocate a new VM once the customer requested it. 

### G301

Name: Quality shifting frequency(QSF)

Adjusted Name: ?

Source: Guerron2020, SAMET-2016-WAINA (S64)

Entity: ?

Product factor: Video Quality, Physical utilization, Performance efficiency 

Calculation: This indicator measures how frequently the resolution shifting occurs in the video player

### G302

Name: Ratio of available VMs to accepted VM requests(Rava)

Adjusted Name: ?

Source: Guerron2020, ROOHITAVAF-2013-ICPADS (S62)

Entity: ?

Product factor: VM Availability, Resource Availability, Reliability

Calculation: "rm = (? #Pm,vmsi )/( #Pm,vtp + #Pm,vtm + ? (#Pm,vmsi + #Pm,vtpi + #Pm, vtmi)) where #Pm denotes the number of tokens inside place P in marking m. In the states in which the denominator of the fraction is zero, the reward rate is 1,"

### G303

Name: Readiness of emergency preparedness for key businesses (RoEPKB)

Adjusted Name: ?

Source: Guerron2020, ZHOU-2015-HPCC (S84)

Entity: ?

Product factor: Continuity, Continuity, Reliability

Calculation: "k =v / 2 (6) k = RoEPKB, 0?k?1

### G304

Name: readLatency

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: Keyspace read latency

### G305

Name: Re-buffering frequency (RBF)

Adjusted Name: ?

Source: Guerron2020, SAMET-2016-WAINA (S64)

Entity: ?

Product factor: Video Quality, Physical utilization, Performance efficiency 

Calculation: Re-buffering frequency (RBF) = Avg ( buffering duration)

### G306

Name: Recommended Service Response Time(RSRT)

Adjusted Name: ?

Source: Guerron2020, COSTA-2015-SMARTCITY (S17)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: measures the Recommended Service Response Time(RSRT)

### G307

Name: Recovery rate

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36)

Entity: ?

Product factor: Resiliency, Recoverability, Reliability

Calculation: Rc

### G308

Name: Recovery point objective (RPO)

Adjusted Name: ?

Source: Guerron2020, MESBAHI-2018-HCIIS (S52)

Entity: ?

Product factor: Recovery point objective (RPO), Recoverability, Reliability

Calculation: amount of data to be lost as a result of a fault or disaster, 

### G309

Name: Recovery time

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Resiliency, Recoverability, Reliability

Calculation: "Trec = tr - tf where the time Trec elapsed between the burst end (tf) and the instant (tr) at which the performance indices returns to a value greater than the ?-100% of its steady-state value."

### G310

Name: Recovery time objective (RTO)

Adjusted Name: ?

Source: Guerron2020, MESBAHI-2018-HCIIS (S52)

Entity: ?

Product factor: Recovery time objective (RTO), Recoverability, Reliability

Calculation: minimum downtime for recovering from faults

### G311

Name: Rejection probability(RJ)

Adjusted Name: ?

Source: Guerron2020, XIA-2015-ITASE (S76)

Entity: ?

Product factor: Request Rejection, Capacity, Performance efficiency 

Calculation: "RJ=1-(1-RJC) * (1-RJP) RJC is the request rejection probability at the CMU handling phase, and is the expected number of jobs that one request generates. RJP job rejection probability"

### G312

Name: Release reactivity

Adjusted Name: ?

Source: Guerron2020, ABDELADIM-2014-CIST (S02)

Entity: ?

Product factor: Reactivity, Elasticity, Performance efficiency 

Calculation: "Re = 1 - ? Min(1, Tr-Tp/(Tp - Ta)) / K where Ta: allocation time, Tp: procesing time, Tr: release time."

### G313

Name: Reliability

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09,S10), BARANWAL-2016-CPE (
)

Entity: ?

Product factor: Service Reliability, , Reliability

Calculation: R(t)= -t/e^MTBF

### G314

Name: Failure rate

Adjusted Name: ?

Source: Guerron2020, LU-2018-JSS (S49)

Entity: ?

Product factor: Failure rate, Fault tolerance, Reliability

Calculation: the number(or time) of failures / the mean number (or time) of failures promised by a provider in a given time interval

### G315

Name: Success rate

Adjusted Name: ?

Source: Guerron2020, MANUEL-2015-AOR (S50,S27), GHOLAMI-2015-KBEI (
)

Entity: ?

Product factor: Success Operation, Maturity, Reliability

Calculation: "Reliability of resource Rk(RE) = Ck / Ak, Ak number of works/jobs accepted by Rk resource Ck number of works/jobs completed successfully by Rk source in T time limit"

### G316

Name: Reliability

Adjusted Name: ?

Source: Guerron2020, ARUMUGAM-2017-ICCMC,GHAHRAMANI-2017-JAS ( S07,S26,S24), GARG-2013-FUTURE (
)

Entity: ?

Product factor: Service Reliability, , Reliability

Calculation: "Reliability = Pr[V]�P[TF] =( 1 ? nf/n) P[TF] Pr[V] is the probability of violation, nf is the number of users who have experienced a failure, n is the number of users in a concerned time period, and P[TF] is the promised mean time to failure."

### G317

Name: Reliability

Adjusted Name: ?

Source: Guerron2020, WU-2015-ICIEA (S75)

Entity: ?

Product factor: Service Reliability, , Reliability

Calculation: "Rel(Ri)={ 1, RRi ? VRi

### G318

Name: Reliability

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44), NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Service Reliability, , Reliability

Calculation: "Reliability= W.CFT +W.CFR + W.SA where w is the weight for each metric, which the sum is 1 Coverage of Fault Tolerance (CFT) + Coverage of Failure Recovery (CFR) + Accuracy (SA)"

### G319

Name: Reliability

Adjusted Name: ?

Source: Guerron2020, ZHENG-2014-TII (S82,S83), ZHENG-2013-SCC (
)

Entity: ?

Product factor: Service Reliability, , Reliability

Calculation: "p = 1 - n/ns where n and ns denote the number of failed and total operations that occurred in a time interval"

### G320

Name: Reliability

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Service Reliability, , Reliability

Calculation: Re(t) = e??t

### G321

Name: Reliability Efficiency

Adjusted Name: ?

Source: Guerron2020, LIM-2014-IC2E (S45)

Entity: ?

Product factor: Reliability Efficiency, , Reliability

Calculation: "rlEfft = rlSaaS t-j / (? k?Kt  rlCloudt / |Kt-j| ) K t-j is the set of cloud providers that are servicing SaaS provider j at time t"

### G322

Name: Reliability Importance

Adjusted Name: ?

Source: Guerron2020, MESBAHI-2018-HCIIS (S52)

Entity: ?

Product factor: Reliability Importance, , Reliability

Calculation: "RIi(t) = ?Rs(t) /?Ri(t) where Rs(t): is the system reliability at a certain time, t

### G323

Name: Reliability of Links

Adjusted Name: ?

Source: Guerron2020, FARAGARDI-2013-ICIS (S22)

Entity: ?

Product factor: Reliability of Links, , Reliability

Calculation: "R DL KL(t) Where t D kl (X) is duration in which DL kl is used to transmit data"

### G324

Name: Reliability of processor

Adjusted Name: ?

Source: Guerron2020, FARAGARDI-2013-ICIS (S22)

Entity: ?

Product factor: Reliability of processor, , Reliability

Calculation: "R Pj (X) = e^-?j ? Eij Xij Reliability of processing node Pj in time interval [0,t]. As the total time for executing the tasks assigned to processor Pj by assignment X "

### G325

Name: Reliability state

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Reliability state, , Reliability

Calculation: Reliability: Trans--> Real

### G326

Name: reliability utility function

Adjusted Name: ?

Source: Guerron2020, SON-2015-ISF (S67)

Entity: ?

Product factor: Service Reliability, , Reliability

Calculation: "time slot utility UPT(X) =  uX,min + (1 + uX,min)* |RXp -X / RXp-IXp| 

### G327

Name: Repair rate of accidents (RRoA)

Adjusted Name: ?

Source: Guerron2020, ZHOU-2015-HPCC (S84)

Entity: ?

Product factor: Continuity, Continuity, Reliability

Calculation: "r = a / b

### G328

Name: Replication

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Server Capacity, Physical Capacity, Performance efficiency 

Calculation: measures the number of replicas

### G329

Name: requestCount

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Performance of service, Time behaviour, Performance efficiency 

Calculation: measures the number of requests served since last collection

### G330

Name: resource (r) 

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Resource Scaling, Scalability, Performance efficiency 

Calculation: "r=?� AVEd  + (1- ?)  �  AVEs,  ?? [0,1]  where Average Overprovisioning resource (AVEs), Average Underprovisioning resource (AVEd)"

### G331

Name: resource allocation

Adjusted Name: ?

Source: Guerron2020, ALAM-2016-ISCC (S04)

Entity: ?

Product factor: resource allocation, Resource utilization, Performance efficiency 

Calculation: total amount of allocated resources (RAM, cpu)

### G332

Name: Resource in use

Adjusted Name: ?

Source: Guerron2020, DEASSUNCAO-2013-FUTURE (S18)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: "wtb=Number of resources in use at time t"

### G333

Name: Resource pool capacity

Adjusted Name: ?

Source: Guerron2020, DEASSUNCAO-2013-FUTURE (S18)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: mt = Service provider�s resource pool capacity at time t

### G334

Name: Resource utilization

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44), NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Resource Utilization, Resource utilization, Performance efficiency 

Calculation: "UoR = RU = (amount of allocated resources) /(amount of pre - defined resources) where the denominator is the amount of pre-defined resources for each type of resources and it is defined in the SLA."

### G335

Name: Resource utilization

Adjusted Name: ?

Source: Guerron2020, DEASSUNCAO-2013-FUTURE (S18)

Entity: ?

Product factor: Resource Utilization, Resource utilization, Performance efficiency 

Calculation: "Resource utilization(?t) =number wt of resource hours effectively used to handle requests/ number mt of resource hours allocated from the cloud  (i.e., idle resources are not considered)"

### G336

Name: Resource utilization

Adjusted Name: ?

Source: Guerron2020, KAUR-2014-FUTURE (S42)

Entity: ?

Product factor: Resource Utilization, Resource utilization, Performance efficiency 

Calculation: U= resource allocated VM/resource size

### G337

Name: "Response mean time (synchronous operation) "

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69), VEDAM-2012-IACSAC (S71)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: Mean time of response: avg in milliseconds

### G338

Name: "Response mean time (synchronous operation) "

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09,S10), BARANWAL-2016-CPE (
)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: response time= time request service is available -  time of request for service

### G339

Name: "Response mean time "

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69), VEDAM-2012-IACSAC (S71)

Entity: ?

Product factor: Performance of the infrastructure, Time behaviour, Performance efficiency 

Calculation: Mean time of response: avg( time for a request to be serviced)

### G340

Name: Response standard deviation time (synchronous operation)

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Response time, Time behaviour, Performance efficiency 

Calculation: Standard deviation time of response: avg in milliseconds

### G341

Name: Response Time

Adjusted Name: ?

Source: Guerron2020, RAVINDHREN-2017-CC (S21), KARIM-2015-SOSE (S40), LU-2018-JSS (S42), EZENWOKE-2018-JCC (S49), KAUR-2014-FUTURE (S58)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "response time = time user receives a response from a cloud - the time a user sends a request to the cloud Time between sending a request and getting a response"

### G342

Name: Response Time

Adjusted Name: ?

Source: Guerron2020, XIONG-2015-ICDCSW (S78)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: Is the time for a service request to be satisfied. That is, this is the time it takes for a service request to be executed on the service provider�s multiple resource sites

### G343

Name: Response time

Adjusted Name: ?

Source: Guerron2020, HECHT-20144-CLOUDCOM (S33)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: measures response time of the application when executing all the queries.

### G344

Name: Response Time

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "time elapsed from a user�s submitting a service request until the final output is received RT = Tf ?Ts"

### G345

Name: Response Time

Adjusted Name: ?

Source: Guerron2020, HASAN-2017-TSUSC (S31)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: Time since it provides better approximation of entire distribution than the average response time

### G346

Name: Response time

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Response time, Time behaviour, Performance efficiency 

Calculation: time it takes to receive the first byte of any file being requested.

### G347

Name: Response Time

Adjusted Name: ?

Source: Guerron2020, SOUSA-2012-UCC (S68)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: The value of maximum time response expected for processing the input workload

### G348

Name: Response Time

Adjusted Name: ?

Source: Guerron2020, GHOLAMI-2015-KBEI (S27)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: RT=delivery time= delivery of done work - request time

### G349

Name: Response time efficiency

Adjusted Name: ?

Source: Guerron2020, LIM-2014-IC2E (S45)

Entity: ?

Product factor: Response Time Efficiency, Time behaviour, Performance efficiency 

Calculation: "rtEff t-j = max k?K t-j rtCloud t-k / rtSaaS t-j K t-j is the set of cloud providers that are servicing SaaS provider j at time t"

### G350

Name: Response Time Failure

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: " 100(n?/n),  where n? is the number of occasions when the service provider was not able to fulfill their promise."

### G351

Name: Response Time Failure

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: "?rep = n`/n * 100 where n is the total number of service accesses, n` the number of times where the Response Time exceeds the expected maximum value (Trepi> Tmax,repi)"

### G352

Name: Response Time(Trep)

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Response Time, Time behaviour, Performance efficiency 

Calculation: Treq-rep = 2 � Treq-net (n) + Treq-net

### G353

Name: Reusability

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Reusability, Reusability, Maintainability

Calculation: "Reusability = W.UoS+ W.AoS + W.CoV + W.CF The weights for each metric which the sum is 1. Understandability of Service (UoS), Awarability of Service(AoS), Coverage of Variability(CoV), Commonality feature(CF)"

### G354

Name: Reusability

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44)

Entity: ?

Product factor: Reusability, Reusability, Maintainability

Calculation: "Reusability = w.(FC) + w.(NFC) + w.(CV) where w is the weight for each metric, which the sum is 1. Functional Commonality(FC)+ Non-functional Commonality(NFC) + Coverage of Variability(CV)"

### G355

Name: Robustness of Service

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44)

Entity: ?

Product factor: Operational availability, Service Availability, Reliability

Calculation: "ROS=(available time for invoking SaaS) / (total time for operating SaaS) where  the numerator is the specific period of time to be able to invoke the SaaS and the denominator is a total period of time to start operating the SaaS The numerator can be calculated as �total operating time of SaaS � Service Failure Time�. The Service Failure Time is a total time when the service cannot be invoked because of any service failures."

### G356

Name: Robustness

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Robustness, Robustness, Reliability

Calculation: "Rob = ?ny / nH the average number of services on hosts: "

### G357

Name: Round-trip reaction delay (RTRD)

Adjusted Name: ?

Source: Guerron2020, WEN-2014-MMSP (S74)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: "Round-trip reaction delay = transmission delay + server-side processing delay + client-side processing delay The transmission delay represents the time for a command packet to travel from a client to the server plus the time for the packets of the corresponding frame to be delivered back to the client. The transmission delay can be approximated with the round-trip time (RTT) between the two nodes.  The server-side processing delay stands for the time for the server to process the command signal from a client, to render the graphics, andto compress the video frames for the client.  The client-side processing delay is the time for the client to decompress and display the video frames after the video packets are received."

### G358

Name: RunSpeed Value

Adjusted Name: ?

Source: Guerron2020, GHOLAMI-2015-KBEI (S27)

Entity: ?

Product factor: CPU Performance, Physical Time behaviour, Performance efficiency 

Calculation: RunSpeed Value= CPU job / CPU resource

### G359

Name: rx_bytes

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Bytes received, Networking Capacity, Performance efficiency 

Calculation: measures the bytes received (rx_bytes)

### G360

Name: rx_packets

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Packets received, Networking Capacity, Performance efficiency 

Calculation: measures the packets received

### G361

Name: SaaS Energy efficiency

Adjusted Name: ?

Source: Guerron2020, KATSAROS-2013-FUTURE (S41)

Entity: ?

Product factor: Energy Efficiency, Energy Consumption, Performance efficiency 

Calculation: Ef Servicek = ? j?Service  EfVMj / mk

### G362

Name: Saving Cost

Adjusted Name: ?

Source: Guerron2020, DOU-2015-TICACBD (S19)

Entity: ?

Product factor: Saving Cost, Energy Consumption, Performance efficiency 

Calculation: "The saving cost on energy can benefit users with discount price, calculated as ?C = cu??E and ?E = Einit E?opt , where cu is the unit price of energy charge, E? is the saving energy, Einit is the energy consumed by completing the application tasks with the initial resource allocation, and Eopt is the energy consumption consumed by completing the application tasks after VM scheduling"

### G363

Name: Users Scalability

Adjusted Name: ?

Source: Guerron2020, RAVINDHREN-2017-CC (S58)

Entity: ?

Product factor: Scalability, Scalability, Performance efficiency 

Calculation: the number of users it can support from a baseline value.

### G364

Name: Scalability rate

Adjusted Name: ?

Source: Guerron2020, LU-2018-JSS (S49)

Entity: ?

Product factor: Scalability, Scalability, Performance efficiency 

Calculation: maximum available increase capacity / time interval

### G365

Name: Resource Scaling

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36)

Entity: ?

Product factor: Scalability, Scalability, Performance efficiency 

Calculation: S (Eq. (5)) 

### G366

Name: service Scaling

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Scalability, Scalability, Performance efficiency 

Calculation: " S = T srep/n req where Response Time of a service (T srep) in terms of number of requests nreq the service receives"

### G367

Name: Scalability Time

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Time Scaling, Elasticity, Performance efficiency 

Calculation: "Tm = Tj +Tu +To where Tj : time just needed Tu: time underprovisioning To: time overprovisioning"

### G368

Name: Security

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Security level, , Security

Calculation: secure  =<Integrity, Privacy, Availabiltiy, Authenticity>

### G369

Name: Security mechanism

Adjusted Name: ?

Source: Guerron2020, RAVINDHREN-2017-CC (S10), BARANWAL-2016-CPE (S58)

Entity: ?

Product factor: Security mechanism, , Security

Calculation: The security in Cloud computing means a set of technologies and user policies designed to follow the regulatory compliance rules and to protect all the resources like information, applications and hardware infrastructure connected with cloud computing use.

### G370

Name: Security (SECY-CQ)

Adjusted Name: ?

Source: Guerron2020, ZHENG-2014-TII (S82,S83), ZHENG-2013-SCC (
)

Entity: ?

Product factor: Security breach, , Security

Calculation: " ?= 1-  FT(t)  where ? represents security and FT(t) denotes a cumulative distribution function of a random variable T indicating the time until the first security breach occurs"

### G371

Name: Security cost

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Security cost, , Security

Calculation: Security cost = % of total company revenue

### G372

Name: Security index value (Iv)

Adjusted Name: ?

Source: Guerron2020, RIZVI-2015-ICUIMC (S60)

Entity: ?

Product factor: Security index, , Security

Calculation: "Index = ?(SV Fi) W(Fi Cd)  /n * 100 - n represents the total number of factors considered in the security index calculation - SV Fi = ? SF = SF + SF+... + SF where m represents the total number of subfactors for a given factor - Cd represents the code for user assigned weight from top-level factors {Cr, Hg, Md, Lw, No, Uk} {critical, high, medium, low, none, unknown}"

### G373

Name: Security Management

Adjusted Name: ?

Source: Guerron2020, EZENWOKE-2018-JCC (S21)

Entity: ?

Product factor: Security Management, , Security

Calculation: This is a rating of the extent to which a service can satisfy user security requirements in terms of access control, privacy, data, infrastructure, etc

### G374

Name: security metric 

Adjusted Name: ?

Source: Guerron2020, XU-2018-ACCESS (S79)

Entity: ?

Product factor: Security level, , Security

Calculation: "Na(x, n)(x ? n)  n is the total number of VMs and x is the number of available VMs."

### G375

Name: Security(Sec)

Adjusted Name: ?

Source: Guerron2020, WU-2015-ICIEA (S75)

Entity: ?

Product factor: Security level, , Security

Calculation: "Sec(Ri)={ 1, RSi ? VSi

### G376

Name: Server Communication Energy consumption

Adjusted Name: ?

Source: Guerron2020, DOU-2015-TICACBD (S19)

Entity: ?

Product factor: Communication Energy Consumption, Networking Energy Consumption, Performance efficiency 

Calculation: "?ESCom= ? ? Dpq/bpq?wpq where Dpq is the amount of data transferred from server Sp to Sq,  bpq is the communication bandwidth between Sp and Sq,  wpq represents the energy consumption rate for the communication between Sp and Sq."

### G377

Name: Server Energy consumption

Adjusted Name: ?

Source: Guerron2020, DOU-2015-TICACBD (S19)

Entity: ?

Product factor: Server Energy consumption, Physical Energy Consumption, Performance efficiency 

Calculation: "ES =  EBase + ?ERun + ?EIdle + ?EVCom  where EBase is the basic energy consumption of S,  ?ERun is the energy consumption of all running VMs in the server,  ?EIdle is the energy consumption of all idle VMs in S,  ?EVCom is the energy consumed by communication among all VMs in S"

### G378

Name: Server reliability

Adjusted Name: ?

Source: Guerron2020, FARAGARDI-2013-ICIS (S22)

Entity: ?

Product factor: Server reliability, , Reliability

Calculation: reliability of each server can be calculated by multiplying its processors and other components reliability

### G379

Name: service Scaling

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Scalability, Scalability, Performance efficiency 

Calculation: "s= ? x AVTu + (1-?) AVTd , ? ? [0,1]  where average delay time at scaling down (AVTd), average delay time at scaling up (AVTu)"

### G380

Name: Service local Time

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Execution time, Time behaviour, Performance efficiency 

Calculation: "Sl = E[r ux] / Thr [Tserv] where E is expected number of running VMs and Thr is the expected throughput of transition Tserv "

### G381

Name: Service Remote Time

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Execution time, Time behaviour, Performance efficiency 

Calculation: "Sr =l/? * qf where qf is federated quality level. It is used when VM multiplexing is not allowed."

### G382

Name: Service Time

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Execution time, Time behaviour, Performance efficiency 

Calculation: "S= Sl (E[rl-x]/(E[rl-x]+E[rr -x])) + Sr (E[r r-x]/(E[rl-x]+E[rr -x])) Sl and Sr have to be weighted summed with respect to the conditional probability of being locally or remotely accepted"

### G383

Name: service time of the task

Adjusted Name: ?

Source: Guerron2020, XU-2018-ACCESS (S79)

Entity: ?

Product factor: service time of the task, Time behaviour, Performance efficiency 

Calculation: fe(t) = �i � e?�it

### G384

Name: Settling Time

Adjusted Name: ?

Source: Guerron2020, GHOSH-2010-RDS (S28)

Entity: ?

Product factor: Resiliency, Recoverability, Reliability

Calculation: Settling Time (tset). This is defined as the elapsed time from the time when the change is applied to the system until the measure of interest reaches and stays within �?% of |Mss(bc)?Mss(ac)|

### G385

Name: Shortage capacity

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Capacity of a service, Capacity, Performance efficiency 

Calculation: "Shortage(i)= Cap_min(i)�Cap_prov(i)  when Cap_min(i) > Cap_prov(i) and zero otherwise"

### G386

Name: Skew

Adjusted Name: ?

Source: Guerron2020, GARCIA-2018-COMCOM (S23)

Entity: ?

Product factor: Skew, Time behaviour, Performance efficiency 

Calculation: Clock skew between sender and receiver from RTP timestamp

### G387

Name: SLA Violation Time per Active Host (SLATAH)

Adjusted Name: ?

Source: Guerron2020, GHAFARI-2013-IC3 (S25)

Entity: ?

Product factor: SLA violation, Time behaviour, Performance efficiency 

Calculation: SLATAH is percentage of time that active hosts experienced CPU utilization of 100%

### G388

Name: SLA violation(SLAV)

Adjusted Name: ?

Source: Guerron2020, GHAFARI-2013-IC3 (S25)

Entity: ?

Product factor: SLA violation, Time behaviour, Performance efficiency 

Calculation: "SLAV = SLATAH .PDM where PDM is Performance Degradation due to Migrations, SLA Violation Time per Active Host (SLATAH)"

### G389

Name: SLA/Security

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36)

Entity: ?

Product factor: SLA/Security, , Security

Calculation: Compliance of SLA, security, privacy or copyright regulations

### G390

Name: Sobel filter

Adjusted Name: ?

Source: Guerron2020, SLIVAR-2016-ICMS (S66)

Entity: ?

Product factor: Video Quality, Physical utilization, Performance efficiency 

Calculation: [Sobel(Fn)] is each video frame (luminance plane) at time n(Fn) and it is first filtered with the Sobel filter . 

### G391

Name: Software Tooling

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36)

Entity: ?

Product factor: Software Tooling, Adaptability, Portability

Calculation: Sw

### G392

Name: Speed

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36)

Entity: ?

Product factor: Operation time, Time behaviour, Performance efficiency 

Calculation: Number of operations executed per second, (PFlops, TPS, WIPS, etc.)

### G393

Name: Speedup

Adjusted Name: ?

Source: Guerron2020, HWANG-2016-TPDS (S36)

Entity: ?

Product factor: Speedup, Time behaviour, Performance efficiency 

Calculation: Su

### G394

Name: Stability

Adjusted Name: ?

Source: Guerron2020, ARUMUGAM-2017-ICCMC (S07), GARG-2013-FUTURE (S24), GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: performance Stability, Time behaviour, Performance efficiency 

Calculation: "? (?avg.i ??sla.i) / (T /n) where ? can be computational unit, network unit or storage unit of the resource,  ?avg.i is the observed average performance of the user i who leased the Cloud service,  ?sla.i is the promised values in the SLA, T is the service time, n is the total number of users In the case of a computing service, the stability is defined as the difference between the achieved performance and the specified performance in the SLA: St(t1, t2) = avg(t1, t2), where ? is a unit of computing, network or resource storage, ?u-avg is the average performance of the requested service between the time instant"

### G395

Name: Stabilize rate

Adjusted Name: ?

Source: Guerron2020, HASAN-2017-TSUSC (S31)

Entity: ?

Product factor: performance Stability, Time behaviour, Performance efficiency 

Calculation: Error (t)= 1-?(t)*r(t)

### G396

Name: Static changes

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Customizability workload, Elasticity, Performance efficiency 

Calculation: Number of static changes in a Cloud service/workload (Ns)

### G397

Name: Steady-state availability

Adjusted Name: ?

Source: Guerron2020, MESBAHI-2018-HCIIS (S52)

Entity: ?

Product factor: Steady-state availability, Service Availability, Reliability

Calculation: "A(?) = lim A(T) T??"

### G398

Name: Storage Capacity

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09), GARG-2013-FUTURE (S10), HWANG-2016-TPDS (S24), BARANWAL-2016-CPE (S36), SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Storage capacity, Physical Capacity, Performance efficiency 

Calculation: measures the storage capacity with virtual disks to serve many user groups. Measured in GB), , Sg, , GBs 

### G399

Name: Storage changes

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Storage horizontal scalability, Scalability, Performance efficiency 

Calculation: Permissible storage changes to increased workloads

### G400

Name: Storage cost

Adjusted Name: ?

Source: Guerron2020, BOUSSELMI-2016-AINA (S13)

Entity: ?

Product factor: Storage cost, Physical utilization, Performance efficiency 

Calculation: "?Cj*Dj where Dj is the maximum data to be stored in the storage resource D sj associated to VM l, Cj Execution time of a task j on especific VM"

### G401

Name: Storage size

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S48), LIU-2017-BDC (S69)

Entity: ?

Product factor: Storage Capacity, Physical Capacity, Performance efficiency 

Calculation: "measure the size of storage data. GBs, Content --> Real size of storage data"

### G402

Name: StreamEye

Adjusted Name: ?

Source: Guerron2020, GARCIA-2018-COMCOM (S23)

Entity: ?

Product factor: StreamEye, Time behaviour, Performance efficiency 

Calculation: SE

### G406

Name: System Continuity

Adjusted Name: ?

Source: Guerron2020, FARAGARDI-2013-ICIS (S22)

Entity: ?

Product factor: Continuity, Continuity, Reliability

Calculation: "Rs(x) = Rs�(x)*Rs��(x) where Rs(x) is system reliability for assignment X. Rs�(x) is system reliability without considering failure of links. Rs��(x)is system reliability without considering failure of servers. X = [x ij]is task to precessor assignment matrix"

### G407

Name: TCP connections

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Connections, Connectivity, Performance efficiency 

Calculation: measures the TCP connections

### G408

Name: Testing time

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Testing time, Testability, Maintainability

Calculation: Testing Time = Time to prepare test environment + Time to execute Test Suite for a Cloud workload. (Test Suite is collection of test cases).

### G409

Name: TGuard 

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: TGuard , Time behaviour, Performance efficiency 

Calculation: TGuard: Trans-->?( C)

### G410

Name: Throughput

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Throughput, Time behaviour, Performance efficiency 

Calculation: measures the rate at which requests are processed

### G411

Name: Throughput

Adjusted Name: ?

Source: Guerron2020, LU-2018-JSS (S36), PREUVENEERS-2016-JSS (S49), HWANG-2016-TPDS (S55)

Entity: ?

Product factor: Throughput, Time behaviour, Performance efficiency 

Calculation: "the number of service requests served / total service time where a request can be jobs, tasks,operations"

### G412

Name: Throughput

Adjusted Name: ?

Source: Guerron2020, PEDERSEN-2011-DASC (S54)

Entity: ?

Product factor: Throughput, Time behaviour, Performance efficiency 

Calculation: Average maximum data rate from sender to receiver when transmitting a file. 

### G413

Name: Throughput

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S30), IBRAHIM-2018-CLOUD (S37), GUEROUT-2014-SUSCOM (S69)

Entity: ?

Product factor: Throughput, Time behaviour, Performance efficiency 

Calculation: "� =n/B(n) where B(n) is the time needed to send n bytes"

### G414

Name: Throughput

Adjusted Name: ?

Source: Guerron2020, XIONG-2015-ICDCSW (S78)

Entity: ?

Product factor: Throughput, Time behaviour, Performance efficiency 

Calculation: It is defined by the maximum throughput or by the undergoing change of throughput with service intensity.

### G415

Name: Throughput

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26), RIZVI-2017-JPROCS (S40), KARIM-2015-SOSE (S61)

Entity: ?

Product factor: Throughput, Time behaviour, Performance efficiency 

Calculation: Throughput= (Tasks -Completed)/ (#Computations /Cloud) -Resource

### G416

Name: Throughput App

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2014-IACC (S09,S10), BARANWAL-2016-CPE (
)

Entity: ?

Product factor: Throughput, Time behaviour, Performance efficiency 

Calculation: "Thrapp=n/(T-To) T: the execution of tasks of an application in traditional data center To: the overhead of Cloud data centre n:collection of tasks"

### G417

Name: Throughput Cloud

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: Throughput, Time behaviour, Performance efficiency 

Calculation: "total throughput of a Cloud service  ? =n/Te(n, m) + To Te(n, m) be the execution time of n tasks on m machines.  To be the time overhead due to various factors such as infrastructure initiation delays and inter task communication delays Let an user application have �n� tasks and they are submitted to run on �m� machines from the Cloud provider. "

### G418

Name: Time constraint

Adjusted Name: ?

Source: Guerron2020, LIU-2017-BDC (S48)

Entity: ?

Product factor: Time constraint, Time behaviour, Performance efficiency 

Calculation: "Time=(C,TGuard,CReset) where C is the clock variable, Tguard is clock guard, Creset is reseting clock"

### G419

Name: Time Behaviour

Adjusted Name: ?

Source: Guerron2020, NADANAM-2009-ICCCNT (S53)

Entity: ?

Product factor: Time Behaviour, Time behaviour, Performance efficiency 

Calculation: "Behavior of Time (BoT) BoT =waiting time/Total time for service invocation The denominator is the time taken for sending the requests and receiving a response.  The numerator is waiting time for the service to get executed"

### G420

Name: Time Behaviour

Adjusted Name: ?

Source: Guerron2020, LEE-2009-ACIS (S44)

Entity: ?

Product factor: Time Behaviour, Time behaviour, Performance efficiency 

Calculation: "TB =(executiontime)/(total service invocation time) where the denominator is the consumed time period from sending request to receiving response. The numerator is an execution time just for processing functionality.The execution time can be computed as (total service invocation time � waiting time)."

### G421

Name: Time between consecutive service failures

Adjusted Name: ?

Source: Guerron2020, SOUZA-2016-ISCC (S69)

Entity: ?

Product factor: Mean Time between Failures, Fault tolerance, Reliability

Calculation: NormalOperationalPeriodDuration/NumberOfFailures

### G422

Name: Time slot utility function

Adjusted Name: ?

Source: Guerron2020, SON-2015-ISF (S67)

Entity: ?

Product factor: Time slot, Time behaviour, Performance efficiency 

Calculation: "time slot utility UPT(X) =  uX,min + (1 + uX,min)* |RXp -X / RXp-IXp| 

### G423

Name: Time Spent with Physics (TSP)

Adjusted Name: ?

Source: Guerron2020, HASSAM-2014-ISMMWA (S32)

Entity: ?

Product factor: Execution time, Time behaviour, Performance efficiency 

Calculation: TSP=  tPhysicsSimulationResults � tSimulatePhysics.

### G424

Name: Time Spent with Rendering (TSR)

Adjusted Name: ?

Source: Guerron2020, HASSAM-2014-ISMMWA (S32)

Entity: ?

Product factor: Execution time, Time behaviour, Performance efficiency 

Calculation: TSR =  tSceneDataUpdated � tUpdateSceneData.

### G425

Name: Timeliness

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Timeliness, Time behaviour, Performance efficiency 

Calculation: "TL(i) = Twait(i) +Texec(i) +Ttrans(i) TL(i) represents the total completion time, Twait(i) is the waiting time, Texec(i) is the task execution time, Ttrans(i) indicates the transmission time of the i-th task during VM migration"

### G426

Name: Total processes number

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Server Capacity, Physical Capacity, Performance efficiency 

Calculation: measures the total number of process

### G427

Name: Transcoding Jitter Probability

Adjusted Name: ?

Source: Guerron2020, RAN-2014-GCWKSHPS (S57)

Entity: ?

Product factor: Jitter, Time behaviour, Performance efficiency 

Calculation: "? = Tj/Ttotal,  where Tj specifies the total jitter time and Ttotal means the total runtime of the system "

### G428

Name: Turnaround efficiency

Adjusted Name: ?

Source: Guerron2020, MANUEL-2015-AOR (S50)

Entity: ?

Product factor: Turnaround Time, Time behaviour, Performance efficiency 

Calculation: TE = Turnaround Efficiency for a job by resource Rk = Promised Turnaround time by Rk in the SLA / Actual Turnaround time by Rk to complete the job

### G429

Name: Turnaround efficiency (TE)

Adjusted Name: ?

Source: Guerron2020, GHOLAMI-2015-KBEI (S27)

Entity: ?

Product factor: Turnaround Efficiency, Resource utilization, Performance efficiency 

Calculation: "TE=w*AV + w*RE+w*DI+w*RT, where AV is availability, RE is reliability, DI is data integrity, RT is response time"

### G430

Name: tx_bytes

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Packets received, Networking Capacity, Performance efficiency 

Calculation: measures the bytes sent in Packets received

### G431

Name: tx_packets

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Packets sent, Networking Capacity, Performance efficiency 

Calculation: measures the packets sent (tx_packets)

### G432

Name: Underprovisioning ratio

Adjusted Name: ?

Source: Guerron2020, ABDELADIM-2014-CIST (S02)

Entity: ?

Product factor: Underprovisioning, Elasticity, Performance efficiency 

Calculation: "UDPR DT = 1 - 1/n n as a number of the requests received during a period of time DT and i the number of the requests where the requested resources are beyond the available resources"

### G433

Name: Underprovisioning resource

Adjusted Name: ?

Source: Guerron2020, HU-2017-ISPDC (S35)

Entity: ?

Product factor: Underprovisioning, Elasticity, Performance efficiency 

Calculation: ? underprovisioning resource

### G435 / AV

Name: Availability / Availability

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61), WAGLE-2015-CLOUDCOM (S65), SINGH-2015-COMPELECENG (S72); Slimani2020

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: "Availability=MTBF/(MTBF + MTTR) where MTBF represents the mean time between failures (uptime)  MTTR represents the mean time to repair (downtime)"

### G436

Name: Uptime percentage

Adjusted Name: ?

Source: Guerron2020, GUEROUT-2014-SUSCOM (S30)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: Av =? 1/fdp(t) * dt

### G437

Name: Uptime percentage

Adjusted Name: ?

Source: Guerron2020, BAO-2010-ICACTE (S08)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: "Av(s)=100% -UAv(s) UAv(s)= ( ?SF(t) / AG(t) ) x 100% SF(t) is the service unavailable time during the negotiated time, AG(t) is the negotiated time."

### G438

Name: Uptime ratio

Adjusted Name: ?

Source: Guerron2020, ARUMUGAM-2017-ICCMC (S07), CEDILLO-2015-SCC (S15), GARG-2013-FUTURE (S24), GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: Availability = ((total service time) �(total time for which service was not available))/ (total service time)

### G439

Name: Uptime ratio

Adjusted Name: ?

Source: Guerron2020, ZANT-2015-JCC (S81), RAVINDHREN-2017-CC (S58), ZHOU-2015-HPCC (S84), ZHENG-2013-SCC (S82), LU-2018-JSS (S49), EZENWOKE-2018-JCC (S21), BOUSSELMI-2016-AINA (S13), ZHENG-2014-TII (S83), SOUZA-2016-ISCC (S69), XIONG-2015-ICDCSW (S78), HWANG-2016-TPDS (S36), BARDHAN-2012-WCS (S12)

Entity: ?

Product factor: Service Availability, Service Availability, Reliability

Calculation: Availability = TotalUptime/TotalTime

### G443

Name: User Self Service Rate

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Service use rate, Resource utilization, Performance efficiency 

Calculation: Self Service Rate =100%-(# of Inquiries regarding workloads/# of Support Resource Visits)

### G444

Name: Utility of performance for request(Pi)

Adjusted Name: ?

Source: Guerron2020, WU-2015-ICIEA (S75)

Entity: ?

Product factor: Performance utility, Time behaviour, Performance efficiency 

Calculation: "Pi=1/(wt max ? {tij} + wc ? cij+ we? eij) T is waiting time matrix, C is cost matrix and E is energy consumption matrix. where wt, wc, we are weights of waiting time, cost and energy consumption. Sum of weights is equal to 1."

### G445

Name: Data center utilization

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Data center utilization, Resource utilization, Performance efficiency 

Calculation: "U = min{ 1

### G446

Name: Time Utilization

Adjusted Name: ?

Source: Guerron2020, XIONG-2015-ICDCSW (S78)

Entity: ?

Product factor: Resource Utilization, Resource utilization, Performance efficiency 

Calculation: Utilization= (time that cloud resources are utilized/ total time of cloud resources)  *100

### G447

Name: Variability

Adjusted Name: ?

Source: Guerron2020, RIZVI-2017-JPROCS (S61)

Entity: ?

Product factor: Variability, Reusability, Maintainability

Calculation: Variability= standard deviation of the metrics

### G448

Name: Variability through relative standard deviation (RSD)

Adjusted Name: ?

Source: Guerron2020, ZANT-2015-JCC (S81)

Entity: ?

Product factor: Performance of Virtual Machine, Virtualized utilization, Performance efficiency 

Calculation: "RSD = 1/E(x)? 1/(N-1) * ?(xi ? E(x))^2, where N is the total number of measurements, x1, ... , xN are the measured results, and E(x) is the mean of those measurements."

### G449

Name: Variable Computing Load

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Variable Computing Load, Capacity, Performance efficiency 

Calculation: "Variable Computing Load = Change in Load Balancing (?LB) ?LB= Actual load at time t/Expected load at time t "

### G450

Name: Vertical scalability

Adjusted Name: ?

Source: Guerron2020, GARG-2013-FUTURE (S24)

Entity: ?

Product factor: Vertical scalability, Scalability, Performance efficiency 

Calculation: "vertical scalability=?mi ?nij (proportion of increase in rij ). where rij be resource j that needs to be enhanced on Cloud service i,  n and m be the number of resources assigned  to a particular Cloud service and the number of Cloud services used by the user, respectively."

### G451

Name: Video Quality Score(VQS)

Adjusted Name: ?

Source: Guerron2020, SAMET-2016-WAINA (S64)

Entity: ?

Product factor: Display video streaming, Physical utilization, Performance efficiency 

Calculation: "VQS = ? Qi * Duration/Qmax ? Total Duration ? 100  where Qi quality displayed, Qmax maximal quality that can be displayed"

### G452

Name: Virtual Systems

Adjusted Name: ?

Source: Guerron2020, GHAHRAMANI-2017-JAS (S26)

Entity: ?

Product factor: Virtual Systems resources, Installability, Portability

Calculation: identify the cloud virtual infrastructure

### G453

Name: Virtualization measure

Adjusted Name: ?

Source: Guerron2020, BARANWAL-2016-CPE (S10)

Entity: ?

Product factor: Virtualization platform, Installability, Portability

Calculation: identify the Virtualization platform support

### G454

Name: VM available probability

Adjusted Name: ?

Source: Guerron2020, XU-2018-ACCESS (S79)

Entity: ?

Product factor: VM availability, Resource Availability, Reliability

Calculation: "pa = ?G + ?A = 1 ? ?F Sum i?(G,A,F) ?i = 1. steady-state probabilities of states: G good, A attack, F fail.  "

### G455

Name: VM Communication Energy consumption

Adjusted Name: ?

Source: Guerron2020, DOU-2015-TICACBD (S19)

Entity: ?

Product factor: VM Energy Consumption, Virtualized Energy Consumption, Performance efficiency 

Calculation: "energy consumption for communication among all VMs in the server S,  ?EVCom= ? ?dij/bS?wS where dij represents the amount of data transferred from Vi to Vj in S, bS is the internal communication bandwidth of S, wS is the energy consumption rate for the internal communication among VMs of S."

### G456

Name: VM Energy efficiency

Adjusted Name: ?

Source: Guerron2020, KATSAROS-2013-FUTURE (S41)

Entity: ?

Product factor: VM Energy Efficiency, Virtualized Energy Consumption, Performance efficiency 

Calculation: EfVMj

### G457

Name: VM Iddle Energy Consumption

Adjusted Name: ?

Source: Guerron2020, DOU-2015-TICACBD (S19)

Entity: ?

Product factor: VM Energy Efficiency, Virtualized Energy Consumption, Performance efficiency 

Calculation: "?EIdle = ?tj ? Pl =  ? tj ?? S i-? where l is the number of iddle VMs in the server

### G458

Name: VM Migrations

Adjusted Name: ?

Source: Guerron2020, ABD-2017-JOCS (S01)

Entity: ?

Product factor: VM Migrations, Virtualized utilization, Performance efficiency 

Calculation: measures how much migrations happened during VM allocation

### G459

Name: VM Run Energy Consumption

Adjusted Name: ?

Source: Guerron2020, DOU-2015-TICACBD (S19)

Entity: ?

Product factor: VM Energy Efficiency, Virtualized Energy Consumption, Performance efficiency 

Calculation: "?ERun = ?ti ? PR =  ? ti ?? S r-? where R is the number of running VMs in the server

### G460

Name: Waiting time

Adjusted Name: ?

Source: Guerron2020, WU-2015-ICIEA (S75)

Entity: ?

Product factor: Waiting Time, Time behaviour, Performance efficiency 

Calculation: Ri=max {tij| tij ? ti}

### G461

Name: Waiting time

Adjusted Name: ?

Source: Guerron2020, BRUNEO-2014-ITPDS (S14)

Entity: ?

Product factor: Waiting Time, Time behaviour, Performance efficiency 

Calculation: "W = E[rq1x] + E[rq2x] /Thr(Tarr) * A where Thr(Tarr) is the expected throughput of transition Tarr. rq1 = P# queue

### G462

Name: Web access rate

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Web server access, Physical Time behaviour, Performance efficiency 

Calculation: measures the number of accesses per second

### G463

Name: Workload arrival rate

Adjusted Name: ?

Source: Guerron2020, HASAN-2017-TSUSC (S31)

Entity: ?

Product factor: Workload rate, Time behaviour, Performance efficiency 

Calculation: ?(t)=?(t-1)/?median

### G464

Name: writeLatency

Adjusted Name: ?

Source: Guerron2020, TAHERIZADEH-2017-COMPSAC (S70)

Entity: ?

Product factor: Latency, Time behaviour, Performance efficiency 

Calculation: measures the Keyspace write latency

### G465

Name: Flexible Capacity ( C)

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Flexibility, Flexibility, Maintainability

Calculation: "C =?Ki

### G466

Name: Flexible Degree

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Flexibility, Flexibility, Maintainability

Calculation: "Flexible Degree, a measure for service flexibility at FXPi. Flexible Point (FXPi)"

### G467

Name: Flexible Distance (Si)

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Flexibility, Flexibility, Maintainability

Calculation: "Flexible Distance Si:  Ki = Si/ (1 + fi)"

### G468

Name: Flexible Force (Fi)

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Flexibility, Flexibility, Maintainability

Calculation: Flexible Force Fi: Minimum external force Fe applied to FXPi that may cause service to change. Flexible Point (FXPi)

### G469

Name: Flexible Point

Adjusted Name: ?

Source: Guerron2020, SINGH-2015-COMPELECENG (S65)

Entity: ?

Product factor: Flexibility, Flexibility, Maintainability

Calculation: A point or a location in service which can cause flexible changes to occur, upon which the external force Fe may apply. Fe causes software to change through the flexible point. 

### IW

Name: inconsistency window

Adjusted Name: ?

Source: Kuhlenkamp2019

Entity: Service

Product factor: Availability, Seamless upgrades

Calculation: Difference between the time of a last response from an old version and the time of the earliest start of a new version when upgrading a service

### L1

Name: Average number of requests

Adjusted Name: ?

Source: Li2020

Entity: Endpoint

Product factor: Capability

Calculation: Average number of tasks over a defined period of time

### L2

Name: Average task response time

Adjusted Name: ?

Source: Li2020

Entity: Service

Product factor: Time-behaviour

Calculation: Average number of tasks / task arrival rate

### L3

Name: Throughput

Adjusted Name: ?

Source: Li2020

Entity: Service

Product factor: Time-behaviour

Calculation: Task arrival rate (output should be the same as the input)

### L4

Name: Quality of Service

Adjusted Name: ?

Source: Li2020

Entity: Service

Product factor: Time-behaviour

Calculation: 1 / average task response time

### L5

Name: Average number of VMs

Adjusted Name: ?

Source: Li2020

Entity: System

Product factor: Cost efficiency

Calculation: Average number of all servers (busy, idle, being shut down)

### L6

Name: Average number of busy VMs

Adjusted Name: ?

Source: Li2020

Entity: System

Product factor: Cost efficiency

Calculation: Average number of only the busy servers

### L7

Name: Utilization

Adjusted Name: ?

Source: Li2020

Entity: System

Product factor: Cost efficiency

Calculation: Average number of busy VMs / Average number of VMs

### L8

Name: Cost

Adjusted Name: ?

Source: Li2020

Entity: System

Product factor: Cost efficiency

Calculation: Renting cost and cost of static power consumption + cost of dynamic power consumption

### L9, CPR

Name: Cost-performance ratio

Adjusted Name: ?

Source: Li2020

Entity: System

Product factor: Cost efficiency

Calculation: Cost * Quality of Service (because cost/performance)

### L10

Name: Productivity

Adjusted Name: ?

Source: Li2020

Entity: System

Product factor: Cost efficiency

Calculation: Throughput / Cost-performance ratio

### L11

Name: Production-driven scalability

Adjusted Name: ?

Source: Li2020

Entity: System

Product factor: Cost efficiency

Calculation: ?

### CCF

Name: Client-side Communication via Facade utilization metric

Adjusted Name: Centralization of externally available endpoints

Source: Ntentos2020

Entity: System

Product factor: Separation by gateways

Calculation: Number of Client to Facade Links / Number of Unique Client Links

### APIC

Name: API Composition utilization metric

Adjusted Name: ?

Source: Ntentos2020

Entity: System

Product factor: Separation by gateways

Calculation: (Number of Client to Services via other Services Routes / Total Number of Services) / Number of Unique Client Links

### SCP

Name: Service Composition Pattern

Adjusted Name: ?

Source: Hirzalla2009

Entity: System, Service

Product factor: Separation by gateways

Calculation: Composite Services / Total Number of Services

### SMP

Name: Service Messaging Persistence utilization metric

Adjusted Name: ?

Source: Ntentos2020

Entity: System, Link

Product factor: ?

Calculation: Service Interconnections with Messaging or Stream Processing / Number of Service Interconnections

### SDB / SDBI

Name: Shared DataBase utilization metric / Shared Database Interactions

Adjusted Name: ?

Source: Ntentos2020, Ntentos2020a

Entity: System

Product factor: Backing Service decentralization

Calculation: Service Interconnections with SharedDB / Number of Service Interconnections

### OES

Name: Outbox/Event Sourcing utilization metric

Adjusted Name: ?

Source: Ntentos2020

Entity: System, Link

Product factor: ?

Calculation: Service Interconnections with Outbox or Event Sourcing / Number of Service Interconnections

### SFT

Name: Services and Facades supporting Distributed Tracing

Adjusted Name: ?

Source: Ntentos2020

Entity: System

Product factor: Distributed Tracing

Calculation: Services and Facades Support Distributed Tracing / Number of Services and Facades

### SICC

Name: Service Interaction via Central Component utilization metric

Adjusted Name: ?

Source: Ntentos2020

Entity: System, Link

Product factor: Distributed Tracing

Calculation: Service Interaction via Central Component w/o Event Sourcing

### SIES

Name: Service Interaction with Event Sourcing utilization metric

Adjusted Name: ?

Source: Ntentos2020

Entity: System, Link

Product factor: Distributed Tracing

Calculation: Service Interaction via Central Component with Event Sourcing

### DTU

Name: Database Type Utilization

Adjusted Name: ?

Source: Ntentos2020a

Entity: System

Product factor: Backing Service decentralization

Calculation: Database per Service Links / Total Service-to-Database Links

### SIC

Name: Service Interaction via Intermediary Component

Adjusted Name: ?

Source: Ntentos2020a

Entity: System

Product factor: Service independence

Calculation: Service Interconnections via [MessageBrokers|Pub/sub|Stream] / Total Service Interconnections

### ACU

Name: Asynchronous Communication Utilization

Adjusted Name: ?

Source: Ntentos2020a

Entity: System, Link

Product factor: Asynchronous communication

Calculation: Asynchronous Service Interconnections via [API | Polling |DirectCalls | SharedDB] / Total Service Interconnections

### DSS

Name: Direct Service Sharing

Adjusted Name: ?

Source: Ntentos2020a

Entity: System

Product factor: Service independence

Calculation: ((Shared Services / Total Services) + (SharedServicesConnectors / TotalServiceInterconnections)) / 2

### TSS

Name: Transitively Shared Services

Adjusted Name: ?

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

### CAC

Name: CaaS-to-Application Composability

Adjusted Name: CaaS-to-Application Composability

Source: Oliveira2018, La2013

Entity: Service

Product factor: Interoperability

Calculation: (Number of Objects without Complication / Number of Objects Interacting with Target CaaS)

### ASSD

Name: Average Service State Dependency

Adjusted Name: Relation of stateful components

Source: Qian2006

Entity: System, Component

Product factor: Mostly stateless services

Calculation: (Number of stateful Components / Total Number of Components)

### SS

Name: Stateless Services

Adjusted Name: Relation of stateless components

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

### BRC

Name: Biggest root coverage

Adjusted Name: ?

Source: Bogner2020, Haupt2017

Entity: Service, Endpoint

Product factor: Simplicity (Complexity)

Calculation: ?

### DW

Name: Data Weight

Adjusted Name: Complexity of a Service API based on endpoint message complexity

Source: Bogner2020, BASCI2009

Entity: Service, Endpoint

Product factor: Simplicity (Complexity)

Calculation: sum-of(weights assigned to message parts) for all messages used in a service's endpoints

### DMR

Name: Distinct Message Ratio

Adjusted Name: ?

Source: Bogner2020, BASCI2009

Entity: Service, Endpoint

Product factor: Simplicity (Complexity)

Calculation: ?

### LP

Name: Longest Path

Adjusted Name: ?

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
