# Quality model with Entities, Quality aspects and Measures

## Entities which describe a software architecture that the quality model can be applied on

| Name                    | Description                                                                                                                                                                                                                                                                                               | Relation                        |
|-------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------|
| System                  | The cloud-native application as a whole                                                                                                                                                                                                                                                                   |                                 |
| Component               | An abstract entity for representing distinguishable executable parts of the system that provide certain functionalities. It can for example be a service or a certain cloud resource. Regarding its granularity, it should, generally speaking, correspond to something that can be run as an OS process. | part-of System                  |
| Service                 | A component that implements a business functionality                                                                                                                                                                                                                                                      | is-a Component                  |
| Backing Service         | A component providing general functionalities needed by services, for example, messaging, logging                                                                                                                                                                                                         | is-a Component                  |
| Storage Backing Service | An explicitly stateful component used to store business data, e.g., a database                                                                                                                                                                                                                            | is-a Component                  |
| Endpoint                | A communication endpoint, for example a REST endpoint, message producer/listener                                                                                                                                                                                                                          | part-of Component               |
| External Endpoint       | An endpoint which is explicitly publicly available                                                                                                                                                                                                                                                        | is-a Endpoint                   |
| Link                    | A directed potential connection between a specific component and a specific endpoint of a different component. Potential in this case refers to the design time perspective, meaning that a component is implemented so that it can invoke the respective endpoint.                                       | part-of System                  |
| Infrastructure          | The technical foundation where components are deployed, e.g., a container orchestration system                                                                                                                                                                                                            | part-of System                  |
| Deployment Mapping      | A connection between a component or infrastructure and its underlying infrastructure on which that component or infrastructure is deployed.                                                                                                                                                               | part-of System                  |
| Request Trace           | The whole resulting trace of a service invocation from the outside that means when an external endpoint is invoked. A request trace includes a collection of components and links                                                                                                                         | part-of System                  |
| Data Aggregate          | An aggregate which needs to be persisted and is used by services, e.g., Business objects                                                                                                                                                                                                                  | part-of System                  |
| Backing Data            | Non-business data, e.g., config values, secrets, logs, metrics                                                                                                                                                                                                                                            | part-of System                  |

## Quality aspects (high-level) and product factors (tangible in the software)

### Security

* Confidentiality  
  *Confidentiality describes to what extent data processed in a system is only accessible to those who actually need it and is otherwise protected from illegitimate access.*
  * **Data encryption in transit** (Link, Endpoint)  
    *Data which is sent or received through a link from one component to or from an endpoint of another component is encrypted so that even when an attacker has access to the network layer, the data is protected.*  
    [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Encrypt Data in Transit; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 2 Security (Use TLS for synchronous communications)
    * *Ratio of endpoints that support SSL* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029))
    * *Ratio of secured links* ([Zdun2023](https://doi.org/10.1145/3532183); [Zdun2023a](https://doi.org/10.1109/TDSC.2023.3276487))
  * **Secrets management** (Component)  
    *Secrets (e.g. passwords, access tokens, encryption keys) which allow access to other components or data are managed specifically to make sure they stay confidential and only authorized components or persons can access them. Managed in this case refers to where and how secrets are stored and how components which need them can access them.*  
    * **Secrets stored in specialized services** (Service, Backing Service, Backing Data)  
      *A dedicated backing service to host secrets (e.g. passwords, access tokens, encryption keys) exists. All secrets required by a system are hosted in this backing service where they can also be managed (for example they can be revoked or replaced with updated secrets). Components fetch secrets from this backing services in a controlled way when they need them.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Securely Store All Secrets; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 10 Kubernetes Secrets
    * **Isolated secrets** (Component, Backing Data)  
      *Secrets (e.g. passwords, access tokens, encryption keys) are not stored in component artifacts (e.g. binaries, images). Instead, secrets are stored for example in the deployment environment and components are given access at runtime only to those secrets which they actually need and only when they need it.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Never Store Secrets or Configuration Inside an Image; Adkins2019 14 Don't Check In Secrets
* Integrity  
  *Integrity describes how well a system is able to prevent unauthorized access or manipulation of functions and data.*
  * **Access restriction** (Component, Endpoint)  
    *Access to components is restricted to those who actually need it. Also, within a system access controls are put in place to have multiple layers of defense. A dedicated component to manage access policies can be used.*  
    * **Least-privileged access** (Component, Endpoint)  
      *Access to endpoints is given as restrictive as possible so that only components who really need it can access an endpoint.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Grant Least-Privileged Access; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 11 Access Control and Permissions
    * **Access control management consistency** (Component)  
      *Access control for endpoints is managed in a consistent way, that means for example always the same format is used for access control lists or a single account directory in a dedicated backing service exists for all components. Access control configurations can then be made always in the same known style and only in a dedicated place. Based on such a consistent access control configuration, also verifications can be performed to ensure that access restrictions are implemented correctly.*  
      Adkins2019 6 Access Control (Access control managed by framework); [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 9 Policy as Code (consistently describe your security policies in form of code)
      * *Ratio of endpoints that support token-based authentication * ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029); [Zdun2023](https://doi.org/10.1145/3532183); [Zdun2023a](https://doi.org/10.1109/TDSC.2023.3276487))
      * *Ratio of endpoints that support API Keys* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029); [Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029))
      * *Ratio of endpoints that support plaintext authentication* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029); [Zdun2023](https://doi.org/10.1145/3532183); [Zdun2023a](https://doi.org/10.1109/TDSC.2023.3276487))
      * *Ratio of endpoints that are included in an single-sign-on approach* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029))
* Non-repudiation  
  *Non-repudiation describes to what extent it is possible to prove and reconstruct which actions have taken place in a system.*
* Accountability  
  *Accountability describes to what extent it is possible in a system to trace back actions that have taken place back to the subject that performed them.*
  * **Account separation** (Component)  
    *Components are separated by assigning them different accounts. Ideally each component has an individual account. Through this, it is possible to trace which component performed which actions and it is possible to restrict access to other components on a fine-grained level, so that for example in the case of an attack, compromised components can be isolated based on their account.*  
    [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Separate Accounts/Subscriptions/Tenants”; Adkins2019 8 Role separation”(let different services run with different roles to restrict access); Adkins2019 8 “Location separation (use different roles for a service in different locations to limit attack impacts)
* Authenticity  
  *Authenticity describes how well a system is able to identify a subject and validate its identity as well as claims made by a subject.*
  * **Authentication delegation** (System, Backing Service)  
    *The verification of an entity for authenticity, for example upon a request, is delegated to a dedicated backing service. This concern is therefore removed from individual components so that their focus can remain on business functionalities while for example different authentication options can be managed in one place only.*  
    [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Federated Identity Management; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 9 Decentralized Identity

### Maintainability

* Modularity  
  *Modularity describes how well a system is composed of different components, so that a change in one component has a minimal impact on other components.*
  * **Service-orientation** (System, Service)  
    *Cloud-native applications realize modularity by being service-oriented, that means the system is decomposed into services encapsulating specific functionalities and communicating with each other only through specific interfaces. Commonly, a microservices architectural style is used.*  
    * **Limited functional scope** (Service, Endpoint)  
      *Each service covers only a limited, but cohesive functional scope to keep services manageable.*  
      [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 9 Microservices Architecture; Adkins2019 7 Use Microservices; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 Polylithic Architecture Principle (Build separate services for different business functionalitites) 
      * *Total Service Interface Cohesion* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); [Perepletchikov2007](https://doi.org/10.1109/qsic.2007.4385516))
      * *Covesiveness of Service* ([Oliveira2018](https://doi.org/10.1145/3229345.3229419); [La2013](https://doi.org/))
      * *Cohesion of a Service based on other Endpoints called* ([Peng2022](https://doi.org/10.1145/3540250.3558951))
      * *Lack of cohesion of a service* ([AlDebagy2020](https://doi.org/10.13052/jwe1540-9589.19341))
      * *Average system lack of cohesion of a service* ([AlDebagy2020](https://doi.org/10.13052/jwe1540-9589.19341))
      * *Size of a service* ([Asik2017](https://doi.org/10.1109/SERA.2017.7965739))
      * *Unreachable Endpoint Count* ([Asik2017](https://doi.org/10.1109/SERA.2017.7965739))
      * **Limited data scope** (Service, Data Aggregate)  
        *The number of data aggregates that are processed in a service is limited to those which need to be administrated together, for example to fulfill data consistency requirements. The aim is to keep the functional scope of a service cohesive. Data aggregates for which consistency requirements can be relaxed might be distributed over separate services.*  
        * *Data aggregate scope* ([Shim2008](https://doi.org/10.1109/apsec.2008.32))
        * *Service Interface Data Cohesion* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); [Perepletchikov2007](https://doi.org/10.1109/qsic.2007.4385516); [Kazemi2011](https://doi.org/); [Brito2021](https://doi.org/10.1145/3412841.3442016); [Jin2021](https://doi.org/10.1109/tse.2019.2910531); [Jin2018](https://doi.org/10.1109/icws.2018.00034); [Athanasopoulos2011](https://doi.org/10.1109/icws.2011.27); [Athanasopoulos2015](https://doi.org/10.1109/tsc.2014.2310195); [Bogner2020](https://doi.org/10.1007%2F978-3-030-59155-7_16))
        * *Cohesion between Endpoints based on data aggregate usage* ([Peng2022](https://doi.org/10.1145/3540250.3558951))
        * *Data Aggregate Count* ([Asik2017](https://doi.org/10.1109/SERA.2017.7965739))
      * **Limited endpoint scope** (Service, Endpoint)  
        *To keep the functional scope of services limited, the number of endpoints of a service is limited to a cohesive set of endpoints that provide related operations.*  
        * *Number of provided synchronous and asynchronous endpoints* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15); [Engel2018](https://doi.org/10.1007%2F978-3-319-92901-9_8); [Shim2008](https://doi.org/10.1109/apsec.2008.32); [Brito2021](https://doi.org/10.1145/3412841.3442016); [Jin2021](https://doi.org/10.1109/tse.2019.2910531); [Daniel2023](https://doi.org/10.1109/SEAA60479.2023.00029))
        * *Number of synchronous endpoints offered by a service* ([Shim2008](https://doi.org/10.1109/apsec.2008.32))
        * *Service Interface Usage Cohesion* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); [Perepletchikov2007](https://doi.org/10.1109/qsic.2007.4385516); [Kazemi2011](https://doi.org/))
        * *Distribution of synchronous calls* ([Engel2018](https://doi.org/10.1007%2F978-3-319-92901-9_8))
        * *Cohesion of Endpoints based on invocation by other services* ([Peng2022](https://doi.org/10.1145/3540250.3558951))
        * *Unused Endpoint Count* ([Asik2017](https://doi.org/10.1109/SERA.2017.7965739))
      * **Command Query Responsibility Segregation** (Service, Endpoint) -> Simplicity  
        *Endpoints for read (query) and write (command) operations on the same data aggregate are separated into different services. Changes to these operations can then be made independently and also different representations for data aggregates can be used. That way operations on data aggregates can be adjusted to differing usage patterns, different format requirements, or if they are changed for different reasons.*  
        [Davis2019](https://www.manning.com/books/cloud-native-patterns) 4.4; [Richardson2019](https://www.manning.com/books/microservices-patterns) 7.2 Using the CQRS pattern; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 12 CQRS (Command Query Responsibility Segregation); [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 4 Command and Query Responsibility Segregation Pattern; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 4 Command and Query Responsibility Segregation Pattern
        * *Number of Read Endpoints provided by a service* ([Daniel2023](https://doi.org/10.1109/SEAA60479.2023.00029))
        * *Number of Wrie Endpoints provided by a service* ([Daniel2023](https://doi.org/10.1109/SEAA60479.2023.00029))
    * **Separation by gateways** (System, Component, Endpoint) +> Seamless upgrades  
      *Individual components or groups of components are separated through gateways. That means communication is proxied and controlled at specific gateway components. It also abstracts one part of a system from another so that it can be reused by different components without needing direct links to components that actually provide the needed functionality. This way, communication can also be redirected when component endpoints change without changing the gateway endpoint. Also incoming communication from outside of a system can be directed at external endpoints of a central component (the gateway).*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 10.2; [Richardson2019](https://www.manning.com/books/microservices-patterns) 8.2; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 8 Edge Services: Filtering and Proxying with Netflix Zuul; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 7 API Gateway Pattern; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 7 API Microgateway Pattern (Smaller API microgateways to avoid having a monolithic API gateway); [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 4 “Mediator” (Use a mediator pattern between clients and servers)
      * *Externally available endpoints* (Zimmermann2015)
      * *Centralization of externally available endpoints* ([Ntentos2020](https://doi.org/10.1007/978-3-030-65310-1_42); [Ntentos2021](https://doi.org/10.1007/978-3-030-91431-8_12))
      * *API Composition utilization metric* ([Ntentos2020](https://doi.org/10.1007/978-3-030-65310-1_42); [Ntentos2021](https://doi.org/10.1007/978-3-030-91431-8_12))
      * *Ratio of request traces through a gateway* ([Zdun2023a](https://doi.org/10.1109/TDSC.2023.3276487))
  * **Isolated state** (System, Component, Storage Backing Service) +> Replaceability +> Elasticity  
    *Services are structured by clearly separating stateless from stateful services. Stateful services should be reduced to a minimum. That way, state is isolated within these specifically stateful services which can be managed accordingly. The majority of stateless services is easier to deploy and modify.*  
    [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 Coupling (Services should be as loosely coupled as possible)
    * **Mostly stateless services** (Component) +> Testability  
      *Most services in a system are kept stateless, that means not requiring durable disk space on the infrastructure that they run on. Stateless services can be replaced, updated or replicated at any time. Stateful services are reduced to a minimum.*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 5.4; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 “Design Stateless Services That Scale Out; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 Be Smart with State Principle, 5 Stateless Services
      * *Ratio of state dependency of endpoints* ([Karhikeyan2012](https://doi.org/10.1109/racss.2012.6212677))
      * *Ratio of stateful components* ([Qian2006](https://doi.org/10.1109/icis-comsar.2006.30))
      * *Ratio of stateless components* ([Hirzalla2009](https://doi.org/10.1007/978-3-642-01247-1_5))
      * *Degree to which components are linked to stateful components* ([Qian2006](https://doi.org/10.1109/icis-comsar.2006.30))
    * **Specialized stateful services** (Component, Storage Backing Service)  
      *For stateful components, that means components that do require durable disk space on the infrastructure that they run on, specialized software or frameworks are used that can handle distributed state by replicating it over several components or component instances while still ensuring consistency requirements for that state.*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 5.4; [Ibryam2020](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/) 11 “Stateful Service”
  * **Loose coupling** (System, Component, Link)  
    *In cloud-native applications communication between components is loosely coupled in time, location, and language to achieve greater independence.*  
    * **Asynchronous communication** (Link)  
      *Asynchronous links (e.g. based on messaging backing services) are preferred for the communication between components. That way, components are decoupled in time meaning that not all linked components need to be available at the same time for a successful communication. Additionally, callers do not await a response.*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 4.2; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Prefer Asynchronous Communication; [Richardson2019](https://www.manning.com/books/microservices-patterns) 3.3.2, 3.4 Using asynchronous messaging to improve availability; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 3 Service Choreography Pattern; [Ruecker2021](https://www.oreilly.com/library/view/practical-process-automation/9781492061441/) 9 Asynchronous Request/Response (Use asynchronous communication to make services more robust); [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 4 Asynchronous Nonblocking I/O
      * *Number of asynchronous endpoints offered by a service* ([Shim2008](https://doi.org/10.1109/apsec.2008.32); [Daniel2023](https://doi.org/10.1109/SEAA60479.2023.00029))
      * *Number of synchronous outgoing links* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15); [Daniel2023](https://doi.org/10.1109/SEAA60479.2023.00029))
      * *Number of asynchronous outgoing links* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15); [Daniel2023](https://doi.org/10.1109/SEAA60479.2023.00029))
      * *Ratio of asynchronous outgoing links* ([Karhikeyan2012](https://doi.org/10.1109/racss.2012.6212677))
      * *Degree of asynchronous communication* ([Qian2006](https://doi.org/10.1109/icis-comsar.2006.30))
      * *Asynchronous Communication Utilization* ([Ntentos2020a](https://doi.org/10.1007%2F978-3-030-58923-3_1))
    * **Communication partner abstraction** (Link, Backing Service) -> Analyzability  
      *Communication via links is not based on specific communication partners (specific components) but abstracted based on the content of communication. An example is event-driven communication where events are published to channels without the publisher knowing which components receive events and events can therefore also be received by components which are created later in time.*  
      [Richardson2019](https://www.manning.com/books/microservices-patterns) 6 Event-driven communication; [Ruecker2021](https://www.oreilly.com/library/view/practical-process-automation/9781492061441/) 8: Event-driven systems “event chains emerge over time and therefore lack visibility.
      * *Service Interaction with Event Sourcing utilization metric* ([Ntentos2020](https://doi.org/10.1007/978-3-030-65310-1_42))
* Reusability  
  *Reusability describes to what extent parts of a system can be used in more than one system.*
  * **Standardization** (System, Component, Link)  
    *By using standardized technologies within components, for interfaces, and especially for the infrastructure, backing services and other non-business concerns, reusability can be increased and the effort to develop additional functionality which integrates with existing components can be reduced.*  
    * **Component similarity** (Component)  
      *The more similar components are, the easier it is for developers to work on an unfamiliar component. Furthermore, similar components can be more easily integrated and maintained in the same way. Similarity considers mainly the libraries and technologies used for implementing service logic and service endpoints, as well as their deployment.*  
      [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 9 Reference Architecture
* Analyzability  
  *Analyzability describes to what extent it is possible to accurately assess the impact of an intended change as well as the extent to which failures can be diagnosed to find their cause or parts that need to be changed can be identified.*
  * **Automated Monitoring** (Service, Link, Infrastructure)  
    *Cloud-native applications enable monitoring at various levels (business functionalities in services, backing-service functionalities, infrastructure) in an automated fashion to enable observable and autonomous reactions to changing system conditions.*  
    [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 High Observability Principle
    * *Ratio of Infrastructure nodes that support Monitoring* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029); [Zdun2023](https://doi.org/10.1145/3532183))
    * *Ratio of Components that support Monitoring* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029); [Zdun2023](https://doi.org/10.1145/3532183))
    * **Consistent centralized logging** (Service, Backing Service) +> Accountability  
      *Logging functionality, specifically the automated collection of logs, is concentrated in a centralized backing service which combines and stores logs from the components of a system. The logs are kept consistent regarding their format and level of granularity. In the backing service also log analysis functionalities are provided, for example by also enabling a correlation of logs from different components.*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 11.1; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use a Unified Logging System; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Common and Structured Logging Format; [Richardson2019](https://www.manning.com/books/microservices-patterns) 11.3.2 Applying the Log aggregation pattern; [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 10 Observability; [Garrison2017](https://www.oreilly.com/library/view/cloud-native-infrastructure/9781491984291/) 7 Monitoring and Logging; Adkins2019 15 Design your logging to be immutable; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 15 Logging; Winn2017 2 Aggregated Streaming of Logs and Metrics; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 13 Application Logging; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 13 Audit Events (capture events for audits, like failed logins etc); [Ruecker2021](https://www.oreilly.com/library/view/practical-process-automation/9781492061441/) 11 Custom Centralized Monitoring; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 19 One Source of Truth
      * *Ratio of Components or Infrastructure nodes that export logs to a central service* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029))
    * **Consistent centralized metrics** (Service, Backing Service)  
      *Metrics gathering and calculation functionality for monitoring purposes is concentrated in a centralized component which combines, aggregates and stores metrics from the components of a system. The metrics are kept consistent regarding their format and support multiple levels of granularity. In the backing service also metric analysis functionalities are provided, for example by also enabling correlations of metrics.*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 11.2; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Tag Your Metrics Appropriately; [Richardson2019](https://www.manning.com/books/microservices-patterns) 11.3.4 Applying the Applications metrics pattern; [Garrison2017](https://www.oreilly.com/library/view/cloud-native-infrastructure/9781491984291/) 7 Monitoring and Logging, Metrics Aggregation; [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 10 Observability; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 15 Metrics help predict problems; Winn2017 2 Aggregated Streaming of Logs and Metrics; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 15 Logging; Winn2017 2 Aggregated Streaming of Logs and Metrics; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 13 Metrics; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 16 The RED Pattern (common metrics you should have for services; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 16 The USE Pattern (common metrics for resources; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 19 One Source of Truth
      * *Ratio of Components or Infrastructure nodes that export metrics* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029))
      * *Ratio of Components or Infrastructure nodes that enable Performance Analytics* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029))
    * **Distributed tracing of invocations** (Service, Link, Request Trace)  
      *For request traces that span multiple components in a system, distributed tracing is enabled so that traces based on correlation IDs are captured automatically and stored in a backing service where they can be analyzed and problems within request traces can be clearly attributed to single components.*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 11.3; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Correlation IDs; [Richardson2019](https://www.manning.com/books/microservices-patterns) 11.3.3 AUsing the Distributed tracing pattern; [Garrison2017](https://www.oreilly.com/library/view/cloud-native-infrastructure/9781491984291/) 7 Debugging and Tracing; [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 10 Observability; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 15 Tracing; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 13 Distributed Tracing; [Ruecker2021](https://www.oreilly.com/library/view/practical-process-automation/9781492061441/) 11 Observability and Distributed Tracing Tools (Use Distributed Tracing); [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 19 One Source of Truth
      * *Distributed Tracing Support* ([Ntentos2020](https://doi.org/10.1007/978-3-030-65310-1_42); [Ntentos2021](https://doi.org/10.1007/978-3-030-91431-8_12))
    * **Health and readiness Checks** (Service) +> Automated restarts +> Availability  
      *All components in a system offer health and readiness checks so that unhealthy components can be identified and communication can be restricted to happen only between healthy and ready components. Health and readiness checks can for example be dedicated endpoints of components which can be called regularly to check a component. That way, also an up-to-date holistic overview of the health of a system is enabled.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Implement Health Checks and Readiness Checks; [Ibryam2020](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/) 4 Health Probe; [Richardson2019](https://www.manning.com/books/microservices-patterns) 11.3.1 Using the Health check API pattern; [Garrison2017](https://www.oreilly.com/library/view/cloud-native-infrastructure/9781491984291/) 7 State Management; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 5 Liveness Probes; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 5 Readiness Probes; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 13 Health Checks; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Why container orchestration?, Health monitoring; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 4 Fail Fast, 16 Health Probe
      * *Ratio of Services that provide Health endpoints* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029))
* Modifiability  
  *Modifiability describes how well a system can be modified without introducing defects or degrading other qualities of the system.*
  * **Automated infrastructure Provisioning** (Infrastructure) +> Installability  
    *Infrastructure provisioning should be automated based on component requirements which are either stated explicitly or inferred from the component which should be deployed. The infrastructure and tools used should require only minimal manual effort. Ideally it should be combined with continuous delivery processes so that no further interaction is needed for a component deployment.*  
    [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 10 Automated Infrastructure; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 5 Automation
  * **Use infrastructure as code** (Infrastructure) +> Adaptability +> Reusability +> Recoverability  
    *The infrastructure requirements and constraints of a system are defined (coded) independently of the actual runtime in a storable format. That way a defined infrastructure can be automatically provisioned repeatedly and ideally also on different underlying infrastructures (cloud providers) based on the stored infrastructure definition. Infrastructure provisioning and configuration operations are not performed manually via an interface of a cloud provider.*  
    [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Describe Infrastructure Using Code; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 16 Declarative Deployment, 17 What Is Infrastructure as Code?
    * *Lines of code (LOC) for deployment configuration* ([Lehmann2017](https://doi.org/10.1145/3018896.3018961); [Talwar2005](https://doi.org/10.1109/icdcs.2005.18))
  * **Service independence** (Service, Link)  
    *Services are as independent as possible throughout their lifecycle, that means development, operation, and evolution. Changes to one service have a minimum impact on other services.*  
    [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 Decentralize Everything Principle (Decentralize deployment, governance)
    * **Low coupling** (Service, Link)  
      *The coupling in a system is low in terms of links between components. Each link represents a dependency and therefore decreases service independence.*  
      * *Number of Links per Component * (Zimmermann2015; [Tiwari2014](https://doi.org/10.1145/2659118.2659135); [Rosa2020](https://doi.org/10.1109/ICSA-C50368.2020.00023))
      * *Number of Consumed Endpoints* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15); [Gamage2021](https://doi.org/10.1109/MERCon52712.2021.9525743); [Perera2018](https://doi.org/10.1109/ICIS.2018.8466390))
      * *Incoming outgoing ratio of a component* ([Tiwari2014](https://doi.org/10.1145/2659118.2659135))
      * *Ratio of outgoing links of a service* (PhamThiQuynh2009)
      * *Coupling degree based on potential coupling* (PhamThiQuynh2009)
      * *Interaction density based on components* ([Tiwari2014](https://doi.org/10.1145/2659118.2659135))
      * *Interaction density based on links*  ([Tiwari2014](https://doi.org/10.1145/2659118.2659135); [Karhikeyan2012](https://doi.org/10.1109/racss.2012.6212677))
      * *Indirect Interaction density of a system* ([Karhikeyan2012](https://doi.org/10.1109/racss.2012.6212677))
      * *Service Coupling based on Endpoint Entropy* ([Wang2009](https://doi.org/10.1109/iciecs.2009.5362767))
      * *System Coupling based on Endpoint Entropy* ([Wang2009](https://doi.org/10.1109/iciecs.2009.5362767))
      * *Modularity quality based on cohesion and coupling* ([Brito2021](https://doi.org/10.1145/3412841.3442016); [Jin2021](https://doi.org/10.1109/tse.2019.2910531))
      * *Combined metric for indirect dependency* ([Karhikeyan2012](https://doi.org/10.1109/racss.2012.6212677))
      * *Services Interdependence in the System* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); Rud2006)
      * *Indirect Interaction density of a system* ([Karhikeyan2012](https://doi.org/10.1109/racss.2012.6212677))
      * *Average Number of Directly Connected Services* ([Shim2008](https://doi.org/10.1109/apsec.2008.32))
      * *Number of Components that are linked to a component* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); Rud2009; [Shim2008](https://doi.org/10.1109/apsec.2008.32); [Zhang2009](https://doi.org/10.1109/kam.2009.90); [Asik2017](https://doi.org/10.1109/SERA.2017.7965739); [Gamage2021](https://doi.org/10.1109/MERCon52712.2021.9525743); [Perera2018](https://doi.org/10.1109/ICIS.2018.8466390))
      * *Number of Components a component is linked to* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); Rud2009; [Engel2018](https://doi.org/10.1007%2F978-3-319-92901-9_8); [Shim2008](https://doi.org/10.1109/apsec.2008.32); [Raj2021](https://doi.org/10.1007%2Fs42979-021-00767-6); [Raj2018](https://doi.org/10.1109/RTEICT42901.2018.9012140); [Hofmeister2008](https://doi.org/10.1109/edoc.2008.13); PhamThiQuynh2009; [Zhang2009](https://doi.org/10.1109/kam.2009.90))
      * *Number of links between two services* ([Hofmeister2008](https://doi.org/10.1109/edoc.2008.13))
      * *Aggregate System metric to measure service coupling* ([Hofmeister2008](https://doi.org/10.1109/edoc.2008.13); [Gamage2021](https://doi.org/10.1109/MERCon52712.2021.9525743))
      * *Number of Components a component is linked to relative to the total amount of components* ([Raj2021](https://doi.org/10.1007%2Fs42979-021-00767-6); [Raj2018](https://doi.org/10.1109/RTEICT42901.2018.9012140); [Zhang2009](https://doi.org/10.1109/kam.2009.90))
      * *Degree of coupling in a system* ([Raj2021](https://doi.org/10.1007%2Fs42979-021-00767-6); [Raj2018](https://doi.org/10.1109/RTEICT42901.2018.9012140); [Hofmeister2008](https://doi.org/10.1109/edoc.2008.13); [Zhang2009](https://doi.org/10.1109/kam.2009.90))
      * *Service Coupling based on data exchange complexity* (Kazemi2013; [Ma2009](https://doi.org/10.1109/scc.2009.44))
      * *Simple Degree of coupling in a system* ([Qian2006](https://doi.org/10.1109/icis-comsar.2006.30))
      * *Direct Service Sharing* ([Ntentos2020a](https://doi.org/10.1007%2F978-3-030-58923-3_1))
      * *Transitively Shared Services* ([Ntentos2020a](https://doi.org/10.1007%2F978-3-030-58923-3_1))
      * *Ratio of shared non-external components to non-external components* ([Zdun2017](https://doi.org/10.1007%2F978-3-319-69035-3_29))
      * *Ratio of shared dependencies of non-external components to possible dependencies* ([Zdun2017](https://doi.org/10.1007%2F978-3-319-69035-3_29))
      * *Degree of dependence on other components* ([Oliveira2018](https://doi.org/10.1145/3229345.3229419); [La2013](https://doi.org/); [Oh2011](https://doi.org/10.1109/icebe.2011.27); PhamThiQuynh2009)
      * *Average System Coupling* ([Filippone2023](https://doi.org/10.1109/icsa56044.2023.00013))
      * *Coupling of services based on used Data Aggregates* ([Peng2022](https://doi.org/10.1145/3540250.3558951))
      * *Coupling of services based services which call them* ([Peng2022](https://doi.org/10.1145/3540250.3558951))
      * *Coupling of services based services which are called by them* ([Peng2022](https://doi.org/10.1145/3540250.3558951))
      * *Coupling of services based on amount of request traces that include a specific link* ([Peng2022](https://doi.org/10.1145/3540250.3558951))
      * *Coupling of services based times that they occur in the same request trace* ([Peng2022](https://doi.org/10.1145/3540250.3558951))
    * **Functional decentralization** (System, Service, Link)  
      *Business functionality is decentralized over the system as a whole to separate unrelated functionalities from each other and make components more independent.*  
      * *Conceptual Modularity quality based on Data Aggregate cohesion and coupling* ([Brito2021](https://doi.org/10.1145/3412841.3442016); [Jin2021](https://doi.org/10.1109/tse.2019.2910531))
      * *Cyclic Communication* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15); [Ntentos2020a](https://doi.org/10.1007%2F978-3-030-58923-3_1))
      * *Number of synchronous cycles* ([Engel2018](https://doi.org/10.1007%2F978-3-319-92901-9_8))
      * *Relative Importance of the Service* ([Zhang2009](https://doi.org/10.1109/kam.2009.90))
      * *Extent of Aggregation components* ([Hofmeister2008](https://doi.org/10.1109/edoc.2008.13))
      * *System's CentraliZation* ([Hofmeister2008](https://doi.org/10.1109/edoc.2008.13))
      * *Density of Aggregation* ([Hofmeister2008](https://doi.org/10.1109/edoc.2008.13))
      * *Aggregator CentraliZation* ([Hofmeister2008](https://doi.org/10.1109/edoc.2008.13))
      * *Data Aggregate Convergence across Components* (Kazemi2013; [Ma2009](https://doi.org/10.1109/scc.2009.44))
      * *Service Criticality* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); Rud2009)
      * *Ratio of cyclic request traces* ([Genfer2021](https://doi.org/10.1007/978-3-030-86044-8_15))
      * *Number of potential cycles in a system* ([Peng2022](https://doi.org/10.1145/3540250.3558951))
    * **Limited request trace scope** (Request Trace)  
      *A request that requires the collaboration of several services is still limited to as few services as possible. Otherwise, the more services are part of a request trace the more dependent they are on each other.*  
      * *Maximum Length of Service Link chain per request trace* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15); [Engel2018](https://doi.org/10.1007%2F978-3-319-92901-9_8); [Rosa2020](https://doi.org/10.1109/ICSA-C50368.2020.00023))
      * *Maximum number of services within a request trace* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15))
      * *Service composition scope* (Zimmermann2015)
      * *Request Trace Length* ([Peng2022](https://doi.org/10.1145/3540250.3558951); [Gamage2021](https://doi.org/10.1109/MERCon52712.2021.9525743))
      * *Number of Cycles in Request Traces* ([Peng2022](https://doi.org/10.1145/3540250.3558951); [Gamage2021](https://doi.org/10.1109/MERCon52712.2021.9525743))
    * **Logical grouping** (System, Service)  
      *Services are logically grouped so that services which are related (for example by having many links or processing the same data aggregates) are in the same group, but services which are more independent are separated in different groups. That way a separation can also be achieved on the network and infrastructure level by separating service groups more strictly, such as having different subnets for such logical groups or not letting different groups run on the same infrastructure. Potential impacts of a compromised or misbehaving service can therefore be reduced to the group to which it belongs but other groups are ideally unaffected.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Namespaces to Organize Services in Kubernetes; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 5 Using Namespaces; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Why container orchestration?; Componentization and isolation
    * **Backing service decentralization** (Service, Backing Service)  
      *Different backing services are assigned to different components. That way, a decentralization is achieved. For example, instead of one message broker for a whole system, several message brokers can be used, each for a group of components that are interrelated. A problem in one messaging broker has an impact on only those components using it, but not on components having separate message brokers.*  
      [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 4 Decentralized Data Management (decentralized data leads to higher service independence while centralized data leads to higher consistency.); [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 4 Data Service Pattern (As having a negative impact because multiple services should not access the same data);; [Ruecker2021](https://www.oreilly.com/library/view/practical-process-automation/9781492061441/) 2 Different Workflow Engines for different services; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 5 Distributed State, Decentralized Data
      * *Degree of Storage Backend Sharing* ([Rosa2020](https://doi.org/10.1109/ICSA-C50368.2020.00023))
      * *Ratio of Storage Backend Sharing* ([Rosa2020](https://doi.org/10.1109/ICSA-C50368.2020.00023))
      * *Shared Storage Backing Service Interactions* ([Ntentos2020](https://doi.org/10.1007/978-3-030-65310-1_42); [Ntentos2020a](https://doi.org/10.1007%2F978-3-030-58923-3_1); [Ntentos2021](https://doi.org/10.1007/978-3-030-91431-8_12))
      * *Database Type Utilization* ([Ntentos2020a](https://doi.org/10.1007%2F978-3-030-58923-3_1))
      * *Number of Services connected to a Storage Backing Service* ([Daniel2023](https://doi.org/10.1109/SEAA60479.2023.00029))
  * **Addressing abstraction** (Link, Backing Service) +> Replaceability  
    *In a link from one component to another the specific addresses for reaching the other component is not used, but instead an abstract address is used. That way, the specific addresses of components can be changed without impacting the link between components. This can be achieved for example through service discovery where components are addressed through abstract service names and specific addresses are resolved through service discovery which can be implemented in the infrastructure or a backing service.*  
    [Davis2019](https://www.manning.com/books/cloud-native-patterns) 8.3; [Ibryam2020](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/) 12 Service Discovery; [Richardson2019](https://www.manning.com/books/microservices-patterns) Using service discovery; [Garrison2017](https://www.oreilly.com/library/view/cloud-native-infrastructure/9781491984291/) 7 Service Discovery; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 3 Service Registry and Discovery Pattern; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 7 Routing (Use service discovery with support for health checks and respect varying workloads); [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 3 Service Abstraction Pattern (Use an abstraction layer in front of services (for example Kubernetes Service)); [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 4 Service Discovery
    * *Service Discovery Usage* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15))
* Testability  
  *Testability describes how effective test criteria can be defined and used for a system are to check the intended behavior of a system as well as how facile it is to perform the tests to determine whether the test criteria are met.*
* Simplicity  
  *Simplicity describes how well a system is composed of as few components as possible and includes simple instead of complex interrelations to enable a good overview and understanding of the system.*
  * **Usage of existing solutions for non-core capabilities** (Component, Backing Service)  
    *For non-core capabilities readily available solutions are used. This means solutions which are based on a standard or a specification, are widely adopted and ideally open source so that their well-functioning is ensured by a broader community. Non-core capabilities include interface technologies or protocols for endpoints, infrastructure technologies (for example container orchestration engines), and software for backing services. That way capabilities don't need to self-implemented and existing integration options can be used.*  
    [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 9 Avoid Reinventing the Wheel; Adkins2019 12 Frameworks to Enforce Security and Reliability
  * **Sparsity** (System, Component, Infrastructure)  
    *The more sparse a system is, the less components there are which need to be operated and maintained by the developers of a system. This covers all types of components, such as services, backing services, storage backing services, and also the infrastructure.*  
    * *Average Number of Endpoints per Service* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); [Bogner2020](https://doi.org/10.1007%2F978-3-030-59155-7_16); [Hirzalla2009](https://doi.org/10.1007/978-3-642-01247-1_5); [Brito2021](https://doi.org/10.1145/3412841.3442016); [Jin2021](https://doi.org/10.1109/tse.2019.2910531); [Rosa2020](https://doi.org/10.1109/ICSA-C50368.2020.00023); Kazemi2013; [Ma2009](https://doi.org/10.1109/scc.2009.44); [Desai2021](https://doi.org/10.1609/aaai.v35i1.16079))
    * *Number of Dependencies* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15))
    * *Number of Versions per Service* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); [Hirzalla2009](https://doi.org/10.1007/978-3-642-01247-1_5))
    * *Concurrently available versions complexity* ([Karhikeyan2012](https://doi.org/10.1109/racss.2012.6212677))
    * *Service Support for Transactions* ([Bogner2017](https://doi.org/10.1145/3143434.3143443); [Hirzalla2009](https://doi.org/10.1007/978-3-642-01247-1_5))
    * *Data Model Scope* (Zimmermann2015)
    * *Number of components* ([Silva2023](https://doi.org/10.1109/icsa56044.2023.00014); Venkitachalam2017)
  * **Operation outsourcing** (Backing Service, Infrastructure)  
    *By outsourcing the operation of infrastructure and components to a cloud provider or other vendor, the operation is simplified because responsibility is transferred. Furthermore, costs can be made more flexible because providers and vendors can provide a usage-based pricing.*  
    * *Ratio of Provider-Managed Components and Infrastructure* ([Yussupov2022](https://doi.org/10.1007/978-3-031-18304-1_3))
    * **Managed infrastructure** (Infrastructure)  
      *Infrastructure such as basic computing, storage or network resources, but potentially also software infrastructure (for example a container orchestration engine) is managed by a cloud provider who is responsible for a stable functioning and up-to-date functionalities. The more infrastructure is managed, the more operational responsibility is transferred. This will also be reflected in the costs which are then calculated more on usage-based pricing schemes.*  
    * **Managed backing services** (Backing Service)  
      *Backing services that provide non-business functionality are operated and managed by vendors who are responsible for a stable functioning and up-to-date functionalities. Operational responsibility is transferred which is also reflected in the costs which are then calculated more on usage-based pricing schemes.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Managed Databases and Analytics Services; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 15 Don't build your own monitoring infrastructure (Use an external monitoring service); [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 10 managed and automated messaging system (operating your own messaging system increases operational overhead, better use a system managed by a platform)
    * **Managed backing services** (Backing Service)  
      *Backing services that provide non-business functionality are operated and managed by vendors who are responsible for a stable functioning and up-to-date functionalities. Operational responsibility is transferred which is also reflected in the costs which are then calculated more on usage-based pricing schemes.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Managed Databases and Analytics Services; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 15 Don't build your own monitoring infrastructure (Use an external monitoring service); [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 10 managed and automated messaging system (operating your own messaging system increases operational overhead, better use a system managed by a platform)

### Performance efficiency

* Time-behaviour  
  *Time-behaviour describes how well a system performs in terms of processing and response times as well as the throughput rate when performing its functions.*
  * **Replication** (System, Component)  
    *Business logic and needed data is replicated at various points in a system so that latencies can be minimized and requests can be distributed for fast request handling.*  
    * **Service replication** (Service) +> Availability  
      *Services and therefore their provided functionalities are replicated across different locations so that the latency for accesses from different locations is minimized and the incoming load can be distributed among replicas.*  
      * *Amount of redundancy* (Zimmermann2015)
      * *Service Replication level* ([Guerron2020](https://doi.org/10.1109/ACCESS.2020.3009079); SOUZA-2016-ISCC)
    * **Horizontal data replication** (Storage Backing Service, Data Aggregate)  
      *Data is replicated horizontally, that means duplicated across several instances of a storage backing service so that a higher load can be handled and replicas closer to the service where data is needed can be used to reduce latency.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Data Partitioning and Replication for Scale; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 4 Data Replication
      * *Storage Replication level* ([Guerron2020](https://doi.org/10.1109/ACCESS.2020.3009079); SOUZA-2016-ISCC)
    * **Vertical data replication** (Service, Data Aggregate) -> Analyzability +> Availability  
      *Data is replicated vertically, that means across a request trace so that it is available closer to where a request initially comes in. Typically caching is used for vertical data replication.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Caching; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 9 Caching (Use an In-Memory cache for queries to relieve datastore from traffic; replication into faster data storage); [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 4 Caching Pattern
    * **Sharded data store replication** (Storage Backing Service, Data Aggregate)  
      *Data storage is sharded, that means data is split into several storage backing service instances by a certain strategy so that requests can be distributed across shards to increase performance. One example strategy could be to shard data geographically, that means user data from one location is stored in one shard while user data from another location is stored in a different shard. One storage backing service instance is then less likely to be overloaded with requests, because the number of potential requests is limited by the amount of data in that instance.*  
      Indrasiri2014 4 Data Sharding Pattern; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 4 Data Partitioning Pattern
* Resource utilization  
  *Resource utilization describes to what extent resources are available and used as required by a system when performing its functions, in terms of storage space needed, CPU utilization, memory usage, or network usage.*
  * **Dynamic scheduling** (Infrastructure)  
    *Resource provisioning to deployed components is dynamic and automated so that every component is ensured to have the resources it needs and only that many resources are provisioned wich are really needed at the same time. This requires dynamic adjustments to resources to adapt to changing environments. This capability should be part of the used infrastructure.*  
    [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 10 Dynamic Scheduling; [Garrison2017](https://www.oreilly.com/library/view/cloud-native-infrastructure/9781491984291/) 7 Resource Allocation and Scheduling; [Ibryam2020](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/) 6 Automated Placement; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Why container orchestration?; Resource Management; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Why container orchestration?; Automatic provisioning; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 16 Automated Placement
  * **Enforcement of appropriate resource boundaries** (Component) +> Availability  
    *The resources required by a component are predictable as precisely as possible and specified accordingly for each component in terms of lower and upper boundaries. Resources include CPU, memory, GPU, or Network requirements. This information is used by the infrastructure to enforce these resource boundaries. Thereby it is ensured that a component has the resources available that it needs to function properly, that the infrastructure can optimize the amount of allocated resource, and that components are not negatively impacted by defective components which excessively consume resources.*  
    [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Define CPU and Memory Limits for Your Containers; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 5 Resource Limits; [Ibryam2020](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/) 2 Defined Resource requirements; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 5 Resource Quotas (limit maximum resources for a namespace); [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 Runtime Confinement Principle, 6 Predictable Demands
* Capability  
  *Capability describes to which extent the maximum limits of a system meet its requirements, in terms of workload sizes or number of concurrent users.*
* Elasticity  
  *Elasticity describes the rapidness and accurateness with which a system is able to adjust its allocated resources to the currently required amount without over- or under-allocation.*

### Portability

* Adaptability  
  *Adaptability describes how well and how easy a system can be adapted to be executed on different or evolving software, platforms, environments, or hardware.*
  * **Infrastructure abstraction** (Service, Infrastructure)  
    *The used infrastructure such as physical hardware, virtual hardware, or software platform is abstracted by clear boundaries to enable a clear differentiation of responsibilities for operating and managing infrastructure. For example, when a managed container orchestration system is used, the system is operable on that level of abstraction meaning that the API of the orchestration system is the boundary. Problems with underlying hardware or VMs are handled transparently by the provider.*  
    [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 14 Service Brokers (make use of service brokers as an additional level of abstraction to automatically add or remove backing services); [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 Location-Independent Principle
  * **Cloud vendor abstraction** (Service, Infrastructure) +> Reusability  
    *The managed infrastructure and backing services used by a system and provided by a cloud vendor are based on unified or standardized interfaces so that vendor specifics are abstracted and a system could potentially be transferred to a another cloud vendor offering the same unified or standardized interfaces.*  
    Wimm2017 3 Infrastructure and the Cloud Provider Interface; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Dynamic Management; Multicloud support
    * *Service portability* ([Guerron2020](https://doi.org/10.1109/ACCESS.2020.3009079); SINGH-2015-COMPELECENG)
  * **Configuration management** (Component, Backing Data)  
    *Configuration values which are specific to an environment are managed separately in a consistent way. Through this, components are more portable across environments and configuration can change independently from components.*  
    * **Isolated configuration** (Service, Backing Data)  
      *Following DevOps principles, environment-specific configurations are separated from component artifacts (e.g. deployment units) and provided by the environment in which a cloud-native application runs. This enables adaptability across environments (also across testing and production environments)*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 6.2 The app's configuration layer; [Ibryam2020](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/) 18; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Never Store Secrets or Configuration Inside an Image; Adkins2019 14 Treat Configuration as Code; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/)  Decoupled Configurations
      * *Configuration externalization* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15))
    * **Configuration stored in specialized services** (Service, Backing Data, Backing Service)  
      *Configuration values are stored in specialized backing services and not only environment variables for example. That way, changing configurations at runtime is facilitated and can be enabled by connecting components to such specialized backing services and checking for updated configurations at runtime. Additionally, configurations can be stored once, but accessed by different components.*  
      [Ibryam2020](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/) 19 Configuration Resource; [Richardson2019](https://www.manning.com/books/microservices-patterns) 11.2 “Designing configurable services; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 10 ConfigMaps; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 2 Centralized, Journaled Configuration; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 2 Refreshable Configuration
  * **Contract-based links** (Service, Endpoint, Link)  
    *Contracts are defined for the communication via links so that changes to endpoints can be evaluated by their impact on the contract and delayed when a contract would be broken. That way consumers of endpoints can adapt to changes when necessary without suddenly breaking communication via a link due to a changed endpoint.*  
    [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 4 Consumer-Driven Contract Testing (Use contracts for APIs to test against)
* Installability  
  *Installability describes how well a system can be installed or uninstalled completely and correctly in a specific environment.*
  * **Standardized self-contained deployment unit** (Component)  
    *The components are deployed as standardized self-contained units so that the same artifact can reliably be installed and run in different environments and on different infrastructure.*  
    [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 10 Containerized Apps; Adkins2019 7 Use Containers (smaller deployments, separated operating system, portable);; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Use Containerization and Container Orchestration; [Garrison2017](https://www.oreilly.com/library/view/cloud-native-infrastructure/9781491984291/) 7 Application Runtime and Isolation; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 Deploy Independently Principle (deploy services in independent containers), Self-Containment Principle, 5 Containerization
* Replaceability  
  *Replaceability describes how well a component or system can replace another component or system for the same purpose in the same environment.*
  * **Immutable artifacts** (Service, Infrastructure)  
    *Infrastructure and components of a system are defined and described in its entirety at development time so that artifacts are immutable at runtime. This means upgrades are introduced at runtime through replacement of components instead of modification. Furthermore components do not differ across environments and in case of replication all replicas are identical to avoid unexpected behavior.*  
    [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Don't Modify Deployed Infrastructure; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Containerization; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 Process Disposability Principle, Image Immutability Principle
    * *Number of Deployment Target Environments* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15))

### Reliability

* Availability  
  *Availability describes to what extent a system is operational and accessible at any point in time when it is needed.*
  * **Seamless upgrades** (Component)  
    *Upgrades of services do not interfere with availability. There are different strategies, like rolling upgrades, to achieve this which should be provided as a capability by the infrastructure.*  
    * **Rolling upgrades enabled** (Component, Infrastructure)  
      *The infrastructure on which components are deployed provides the ability for rolling upgrades. That means upgrades of components can be performed seamlessly in an automated manner. Seamlessly means that upgrades of components do not necessitate planned downtime.*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 7.2; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Zero-Downtime Releases; [Ibryam2020](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/) 3 Declarative Deployment; [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 10 Risk-Reducing Deployment Strategies; [Arundel2019](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/) 13 Rolling Updates; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Why container orchestration?; Rolling upgrades
      * *Rolling Update Option* ([Straesser2023](https://doi.org/10.1145/3578244.3583726))
  * **Built-in autoscaling** (Component, Infrastructure) +> Elasticity  
    *Horizontal up- and down-scaling of components is automated and built into the infrastructure on which components run. Horizontal scaling means that component instances are replicated when the load increases and components instances are removed when load decreases. This autoscaling is based on rules which can be configured according to system needs.*  
    [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Platform Autoscaling Features; [Ibryam2020](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/) 24 Elastic Scale; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 13 Autoscaling; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Why container orchestration?; Scaling; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 5 Elasticity in Microservices
  * **Guarded ingress** (Service, Endpoint)  
    *Ingress communication, that means communication coming from outside of a system, needs to be guarded. It should be ensured that access to external endpoints is controlled by components offering these external endpoints. Control means for example that only authorized access is possible, maliciously large load is blocked, or secure communication protocols are ensured.*  
    [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Implement Rate Limiting and Throttling; Adkins2019 8 Throttling (Delaying processing or responding to remain functional and decrease traffic from individual clients) (should be automated, part of graceful degradation); Adkins2019 8 Load shedding (In case of traffic spike, deny low priority requests to remain functional) (should be automated, part of graceful degradation); [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 5 Throttling 
    * *Ratio of endpoints whose ingress is guarded* ([Ntentos2022](https://doi.org/10.1109/scc55611.2022.00029))
  * **Distribution** (Service, Infrastructure)  
    *Components are distributed across locations and data centers for better availability, reliability, and performance.*  
    * *Component density* ([Guerron2020](https://doi.org/10.1109/ACCESS.2020.3009079); RIZVI-2017-JPROCS)
    * *Number of Services hosted on one infrastructure entity* ([Daniel2023](https://doi.org/10.1109/SEAA60479.2023.00029))
    * **Physical data distribution** (Storage Backing Service, Infrastructure)  
      *Storage Backing Service instances where Data aggregates are persisted are distributed across physical locations (e.g. availability zones of a cloud vendor) so that even in the case of a failure of one physical location, another physical location is still useable.*  
      [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Keep Data in Multiple Regions or Zones; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 4 Data Sharding Pattern: Geographically distribute data
      * *Number of Availability Zones used* ([Guerron2020](https://doi.org/10.1109/ACCESS.2020.3009079); BARANWAL-2014-IACC)
    * **Physical service distribution** (Component, Infrastructure)  
      *Components are distributed through replication across physical locations (e.g. availability zones of a cloud vendor) so that even in the case of a failure of one physical location, another physical location is still useable.*  
      Winn2017 2 Resiliency Through Availability Zones
      * *Number of Availability Zones used* ([Guerron2020](https://doi.org/10.1109/ACCESS.2020.3009079); BARANWAL-2014-IACC)
  * **Automated infrastructure maintenance** (Infrastructure) +> Recoverability  
    *The used infrastructure should automate regular maintenance tasks as much as possible in a way that the operation of components is not impacted by these tasks. Such tasks include updates of operating systems, standard libraries, and middleware managed by the infrastructure, but also certificate regeneration.*  
    [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 10 Automated Infrastructure; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 5 Automation
* Fault tolerance  
  *Fault tolerance describes how well a system is able to operate even when facing software or hardware faults.*
  * **Persistent communication** (Link)  
    *Links persist messages which have been sent (e.g. based on messaging backing services). That way, components are decoupled, because components need not yet exist at the time a message is sent, but can still receive a message. Communication can also be repeated, because persisted messages can be retrieved again.*  
    [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 5 Event Sourcing Pattern: Log-based message brokers
    * *Service Link Persistence utilization metric* ([Ntentos2020](https://doi.org/10.1007/978-3-030-65310-1_42); [Ntentos2021](https://doi.org/10.1007/978-3-030-91431-8_12))
    * *Outbox/Event Sourcing utilization metric* ([Ntentos2020](https://doi.org/10.1007/978-3-030-65310-1_42); [Ntentos2021](https://doi.org/10.1007/978-3-030-91431-8_12))
  * **Autonomous fault handling** (Service, Link, Infrastructure)  
    *Services expect faults at different levels and either handle them or minimize their impact by relying on the capabilities of cloud environments.*  
    * **Invocation timeouts** (Link)  
      *For links between components, timeouts are defined to avoid infinite waiting on a service that is unavailable and a timely handling of problems.*  
      [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 3 Resilient Connectivity Pattern: Time-out; [Richardson2019](https://www.manning.com/books/microservices-patterns) 3.2.3 Handling partial failures using the Circuit Breaker pattern; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 5 Timeout
    * **Retries for safe invocations** (Link)  
      *Links that are safe to invoke multiple times without leading to unintended state changes, are automatically retried in case of errors to transparently handle transient faults in communication. That way faults can be prevented from being propagated higher up in a request trace.*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 9.1; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Handle Transient Failures with Retries; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use a Finite Number of Retries; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 12 Isolating Failures and Graceful Degradation: Use retries; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 3 Resilient Connectivity Pattern: Retry; [Ruecker2021](https://www.oreilly.com/library/view/practical-process-automation/9781492061441/) 9 Synchronous Request/Response (Use retries in synchronous communications); [Ruecker2021](https://www.oreilly.com/library/view/practical-process-automation/9781492061441/) 9 The Importance of Idempotency (Communication which is retried needs idempotency); [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) Idempotent Service Operation, Retry, 5 Retry 
      * *Number of Links with retry logic* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15))
    * **Circuit breaked communication** (Link)  
      *For links a circuit breaker implementation is used which avoids unnecessary communication and therefore waiting time if a communication is known to fail. Instead the circuit breaker immediately returns an error response of a default response, is possible, while periodically retrying communication in the background.*  
      [Davis2019](https://www.manning.com/books/cloud-native-patterns) 10.1; [Scholl2019](https://www.oreilly.com/library/view/cloud-native/9781492053811/) 6 Use Circuit Breakers for Nontransient Failures; [Richardson2019](https://www.manning.com/books/microservices-patterns) 3.2.3 Handling partial failures using the Circuit Breaker pattern; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 12 Isolating Failures and Graceful Degradation: circuit breaker; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 3 Resilient Connectivity Pattern: Circuit breaker;  Goniwada2021 4 Circuit Breaker
      * *Number of Links with Complex Failover* ([Apel2019](https://doi.org/10.1007%2F978-3-030-22482-0_15))
* Recoverability  
  *Recoverability describes how well a system is able to recover and return to the intended state after an interruption or failure.*
  * **Automated restarts** (Component)  
    *When a component is found to be unhealthy, that means not functioning as expected, it is directly and automatically restarted. Ideally this capability is provided by the infrastructure on which a component is running.*  
    Winn2017 2 Self-Healing Processes; Self-Healing VMs; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 13 automatic remediation; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 1 Why container orchestration?; High availability; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 5 Self-Healing
* Maturity  
  *Maturity describes to what extent a system meets the specified needs for reliability in normal, expected circumstances.*

### Compatibility

* Co-existence  
  *Co-existence describes how well a system can operate and perform its functions while sharing an environment and resources with other systems and without negatively impacting those other systems.*
* Interoperability  
  *Interoperability describes how well two parts of a system or two systems are able to exchange information and to process such exchanged information.*
  * **API-based communication** (Service, Endpoint, Link) +> Testability  
    *All endpoints that are offered by a service are part of a well-defined and documented API. That means, the APIs are based on common principles, are declarative instead of imperative, and are documented in a standardized or specified format (such as the OpenAPI specification). Communication only happens via endpoints that are part of such APIs and can be both synchronous or asynchronous.*  
    [Reznik2019](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/) 9 Communicate Through APIs; Adkins2019 6 Understandable Interface Specifications (Use Interface specifications for understandability; [Bastani2017](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/) 6 Everything is an API (Services are integrated via APIs); [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 2 Service Definitions in Synchronous Communication (Use a service definition for each service);; [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 2 Service Definition in Asynchronous Communication (Use schemas to define message formats);; [Goniwada2021](https://link.springer.com/book/10.1007/978-1-4842-7226-8) 3 API First Principle
  * **Consistently mediated communication** (Component, Link) -> Time-behaviour +> Analyzability  
    *By mediating communication through additional components, there is no direct dependence on the other communication partner and additional operations can be performed to manage the communication, such as load balancing, monitoring, or the enforcement of policies. By using centralized mediation approaches, such as Service Meshes, management actions can be performed universally and consistently across the components of an application.*  
    [Indrasiri2021](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) 3 Sidecar Pattern, Service Mesh Pattern, Service Abstraction Pattern (Proxy communication with services to include service discovery and load balancing); [Davis2019](https://www.manning.com/books/cloud-native-patterns) 10.3; [Richardson2019](https://www.manning.com/books/microservices-patterns) 11.4.2
    * *Service Interaction via Backing Service* ([Ntentos2020a](https://doi.org/10.1007%2F978-3-030-58923-3_1))
    