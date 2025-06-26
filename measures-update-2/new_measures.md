# Selected measures from the updated literature search which focus on the architectural properties

## Static measures

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