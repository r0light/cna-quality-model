# Selected measures from the updated literature search which focus on the architectural properties

## Static measures

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

Source: Ntentos2022; Zdun2023

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

Source: Ntentos2022; Zdun2023

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

Adjusted Name: Cohesion between Endpoints based on data aggragte usage

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

### LIC

Name: Length of Invocation Chain

Adjusted Name: Request Trace Length

Source: Peng2022

Entity: Request Trace

Product factor: Limited request trace scope

Calculation: Number of Links included in a request trace

### RCD

Name: Request-level Cyclic Dependency

Adjusted Name: Number of Cycles in Request Traces

Source: Peng2022

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

Source: Zdun2023

Entity: Link

Product factor: Data encryption in transit

Calculation: Number of links using secure communication / All links

## Runtime measures

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

