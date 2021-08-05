# CNA definition statements mapped to ISO 25010 characteristics and subcharacteristics  

## Entities

* System (the CNA as a whole)
* Service (one service of the CNA)
* Link (connection between services)
* Infrastructure (the technical foundation where the system is deployed) -> better word for it?

Differentiate between technical infrastructure such as PaaS or CaaS and complementing infrastructure such as monitoring and logging services?

* Platform?

## Quality aspects
  
* Functional suitability  
  * Functional Appropriateness  
  * Functional Correctness  
  * Functional Completeness  
* Security  
  * Confidentiality  
    * **Isolated secrets** (Component) -> Seamless upgrades  
      *Sensitive credentials, or in general secrets should not be stored by services. Instead, services should have access only to those secrets which they actually need and only when they need it. A dedicated component to host secrets can be used which is also able to manage secrets (for example revoke them or replace them with updated secrets).*  
      The numerous small components of a cloud-native application must not hold sensitive credentials. (Gannon2017)  
  * Integrity  
    * **Access restriction** (Component)  
      *Access to services should be restricted to those who actually need it. Also within a system access controls should be put in place to have multiple layers of defense. A dedicated component to manage access policies can be used.*  
      Access controls need to be managed at multiple levels in the application. (Gannon2017)  
  * Non-repudiation  
  * Accountability  
  * Authenticity  
* Maintainability  
  * Modularity  
    * **Service-orientation** (System, Service) -> Structural scalability  
      *Cloud-native applications should realize modularity by being service-oriented, that means the system should be decomposed into services described by interfaces following the microservices architectural style.*  
      Cloud applications have to be decomposed into separate application components. (Fehling2014)  
      A CNA is a system composed of (micro)services. (Kratzke2017)  
      Microservices exemplify the cloud-native approach. (CNCF2018)  
      Building and operating cloud-native applications requires Microservices which is an architectural approach to developing an application as a collection of small services. (Pivotal2017)  
      Microservices architecture decomposes applications into small services. (Pivotal2017)  
      Cloud-native applications are a collection of small services. (RedHat2018)  
      Cloud-native development focuses on an architecture’s modularity. (RedHat2018)  
      Cloud architectures are service-oriented and employ modularity to expose service interfaces only and encapsulate implementation details. (Pahl2018)  
    * **Isolated state** (System, Component) -> Replacability, Automated horizontal scalability  
      *In cloud-native applications services should be structured by clearly separating stateless and stateful services. Stateful services should be reduced to a minimum.*  
      Isolated state means that large portions of a cloud application are stateless, thus, isolating state in small portions of the application. (Fehling2014)  
      A cloud-native application (CNA) isolates state in a minimum of stateful components. (Kratzke2017)  
      Cloud-native applications are designed with a clear separation among stateless and stateful services. (Wurster2020)  
    * **Loose coupling** (System, Component, Link) -> Service independence  
      *In cloud-native applications links between services should be loosely coupled in time, location, and language to achieve independence.*  
      In cloud applications dependencies between application components should be minimized to reach loose coupling as a well-established concept in distributed applications. (Fehling2014)  
      Cloud applications should be loosely coupled, that means decoupled in time, location and language dimensions. (Pahl2018)  
      These techniques enable loosely coupled systems. (CNCF2018)  
      Microservices architecture decomposes applications into loosely coupled services. (Pivotal2017)  
      Cloud-native applications are a collection of independent services. (RedHat2018)  
      Cloud-native applications are a collection of loosely coupled services. (RedHat2018)  
      Cloud-native development focuses on an architecture’s loose coupling. (RedHat2018)  
      Cloud-native applications are designed as suites of loosely coupled (micro)services. (Wurster2020)  
      Service meshes exemplify the cloud-native approach. (CNCF2018)  
      Declarative APIs exemplify the cloud-native approach. (CNCF2018)  
  * Reusability  
    * **Standardization** (System, Component, Link)  
      *Complemental services in the system, libraries and technologies used by services, and communication links between services should be standardized to achieve reusability of technologies within services and reusability of services themselves.*  
      Twelve-factor apps are based on standardized developer stacks. (Pivotal2017)  
      Twelve-factor apps are calling on a standard set of services. (Pivotal2017)  
      Twelve-factor apps provide a standard developer ‘contract’. (Pivotal2017)  
      APIs are typically based on well-known standard protocols (e. g., REST over HTTP). (Wurster2020)  
    * **Layered architecture** (System) -> Service-orientation, Seamless upgrades, Access restriction  
      *In cloud-native applications services shoulds follow a layered architecture with differing interface granularities to improve the reusability of services. API gateways can be used to achieve layering.*  
      Cloud architectures are service-oriented and employ layering to allow for varying interface granularity and lifecycles. (Pahl2018)  
  * Analysability  
    * **Automated monitoring** (Service, Link, Infrastructure) -> Elasticity, Automated horizontal scalability, Autonomous fault handling, Automated restarts  
      *Cloud-native applications should enable monitoring at various levels in an automated fashion to enable observable and autononmous reactions to changing system conditions.*  
      To deal with uncertainty, cloud applications need to measure on upper levels represented by application-level qualities, e.g., performance for different storage configurations. (Pahl2018)  
      To deal with uncertainty, cloud applications need to measure on lower levels represented by loads of infrastructure resources that run the service (processor and memory loads). (Pahl2018)  
      These techniques enable observable systems. (CNCF2018)  
      Service meshes exemplify the cloud-native approach. (CNCF2018)  
      Cloud-native application monitoring is highly automated. (Wurster2020)  
  * Modifiability  
    * **Structural scalability** (System)  
      *The structure of a cloud-native application should allow for expanding the system functionalities without major modifications to the exsiting system.*  
      A cloud-native application (CNA) is a horizontal scalable system: Structural scalability (expand in a chosen dimension without major modifications to its architecture). (Kratzke2017)  
    * **Automated Continuous Delivery** (Service)  -> Seamless upgrades  
      *Modifications to services should be automatically built and tested before deployment to enable timely and safe modifications. A deployment process should be in place which does not interrupt the service availability during upgrades.*  
      Upgrade and test occur seamlessly in cloud-native applications without disrupting production. (Gannon2017)  
      Robust automation allows engineers to make high-impact changes frequently and predictably with minimal toil. (CNCF2018)  
      Building and operating cloud-native applications requires DevOps with which building, testing and releasing software can happen rapidly. (Pivotal2017)  
      Building and operating cloud-native applications requires DevOps which has the goal of automating the process of software delivery. (Pivotal2017)  
      Continuous delivery is used for cloud-native applications and works best with other related approaches including test-driven development. (Pivotal2017)  
      Continuous delivery is used for cloud-native applications and works best with other related approaches including continuous integration. (Pivotal2017)  
      Cloud-native application management is highly automated. (Wurster2020)  
      Building and operating cloud-native applications requires Continuous Delivery which makes an individual application change ready for release as soon as it is ready. (Pivotal2017)  
      The application life cycle of cloud-native applications is automated from development to production. (RedHat2018)  
    * **Automated Infrastructure** (Infrastructure)  -> Automated restarts
      *The provisioning and configuration of cloud infrastructure required to operate a cloud-native application should be automated based on the capabilities provided by the cloud provider.*  
      Cloud virtualization provides automated management. (Pahl2018)  
      Cloud virtualization provides self-service capability. (Pahl2018)  
      A CNA is operated on a self-service elastic platform. (Kratzke2017)  
      These techniques enable manageable systems. (CNCF2018)  
      Building and operating cloud-native applications requires DevOps which has the goal of automating the process of infrastructure changes. (Pivotal2017)  
      A cloud-native application platform automates infrastructure provisioning and configuration, dynamically allocating and reallocating resources at deploy time based on the ongoing needs of the application. (Pivotal2017)  
      With serverless computing routine tasks like provisioning servers or managing scaling are abstracted by the cloud provider, allowing developers to push code to production much faster than in traditional models. (RedHat2018)  
      If an app is "cloud-native," it’s specifically designed to provide a consistent automated management experience across private, public, and hybrid clouds. (RedHat2018)  
    * **Service independence** (Service)  
      *In a cloud-native application services should be as independent as possible throughout their lifecycle, that means development, operation, and evolution*  
      Microservices architecture decomposes applications into independently operating services. (Pivotal2017)  
      Cloud-native applications are a collection of independent services. (RedHat2018)  
      Cloud-native development focuses on the independence of its services. (RedHat2018)  
      Each service of a cloud-native application is developed in a separate code base. (Wurster2020)  
  * Testability  
    Declarative APIs exemplify the cloud-native approach. (CNCF2018)  
    Building and operating cloud-native applications requires DevOps with which building, testing and releasing software can happen rapidly. (Pivotal2017)  
* Performance efficiency  
  * Time-behaviour  
    * **Replication** (Service)  
      *In a cloud-native application services should be replicated across different location so that the latency for accesses from different locations is minimized.*  
      The application’s data and services are replicated in local data centers so that interaction latencies are minimized. (Gannon2017)  
  * Resource utilisation  
    * **Elasticity** (Service)  
      *A cloud-native application can automatically add or remove computing resources based on the currently monitored needs to optimize resource utilization.*  
      Elasticity includes both the dynamic addition and removal of IT resources and demands that the application can add and free IT resources to adjust its performance quickly if the workload changes. (Fehling2014)  
      Adding and removing resources should be automated by monitoring system load and interacting with management interfaces of cloud providers to provision or decommission resources. (Fehling2014)  
      A CNA is operated on a self-service elastic platform. (Kratzke2017)  
      A cloud-native application (CNA) is an elastic system: Elasticity is the degree to which a system is able to adapt to workload changes by provisioning and de-provisioning resources in an autonomic manner. (Kratzke2017)  
      CNA have to be elastic meaning that they need to support adjusting their capacity by adding or removing resources to provide the required QoS in face of load variation. (Toffetti2017)  
      Cloud virtualization provides elasticity. (Pahl2018)  
    * **Cost variability** (Service, Infrastructure)  
      *For a cloud-native application the cost of computing resources should be variable according to the system needs*  
      Cloud virtualization provides pay-as you go service. (Pahl2018)  
    Building on a cloud-native runtime optimizes resource utilization. (Pivotal2017)  
  * Capability  
    * **Automated Horizontal scalability** (Service)
      *In a cloud-native application, services should automatically scale horizontally to be capable of handling increasing demands. The automated scaling also has to account for a services' dependencies*  
      Cloud applications have to be designed to be horizontally scalable. (Fehling2014)  
      Cloud virtualization provides scalability. (Pahl2018)  
      Load scalability is the ability of a system to perform gracefully as the offered traffic increases. (Kratzke2017)  
      Cloud-native application scale well with thousands of concurrent users. (Gannon2017)  
      Cloud-native applications are deployed to a platform that offers easy scale-out. (Pivotal2017)  
      Building on a cloud-native runtime optimizes scaling to meet demand. (Pivotal2017)  
      Organizations adopt cloud computing to increase the scalability of apps. (RedHat2018)  
      Cloud-native applications are horizontally scalable by configuring scaling policies. (Wurster2020)  
      Elasticity includes both the dynamic addition and removal of IT resources and demands that the application can add and free IT resources to adjust its performance quickly if the workload changes. (Fehling2014)  
      CNA have to be elastic meaning that they need to support adjusting their capacity by adding or removing resources to provide the required QoS in face of load variation. (Toffetti2017)  
      A cloud-native application platform automates infrastructure provisioning and configuration, dynamically allocating and reallocating resources at deploy time based on the ongoing needs of the application. (Pivotal2017)  
      Cloud-native applications must run as elastic-scale services. (Pivotal2017)  
      Cloud-native platforms uses orchestration to dynamically manage placement of containers across a cluster of VMs to provide elastic scaling. (Pivotal2017)  
      Stateful services ensure scalability by exploiting natively scalable storage systems in the form of eventual consistent NoSQL databases. (Wurster2020)  
      Cloud-native application scaling is highly automated. (Wurster2020)  
      Building and operating cloud-native applications requires Microservices where each microservice can be scaled independent of other services. (Pivotal2017)  
* Portability  
  * Adaptability  
    * **Infrastructure abstraction** (Infrastructure) -> Automated infrastructure
      *In a cloud-native application the used infrastructure should be abstracted by clear boundaries to decouple the system from physical hardware or also virtual hardware to minimize the effort and risk involved with managing infrastructure*  
      The infrastructure on which a cloud-native application runs is fluid. (Gannon2017)  
      Unexpected fluctuations of the infrastructure performance need to be expected and managed accordingly. (Toffetti2017)  
      Cloud applications should adapt and must be able to cope with variable resources while maintaining the goals and properties envisioned by the developers and users. (Pahl2018)  
      Cloud-native platforms offer greater agility. (Pivotal2017)  
      Cloud-native applications are deployed to a platform that offers hardware decoupling. (Pivotal2017)  
      Cloud-native application architecture requires developers to use a platform as a means for abstracting away from underlying infrastructure dependencies. (Pivotal2017)  
      Cloud-native application abstract from underlying infrastructure and operating system dependencies by exploiting self-service deployment platforms, allowing to ship and scale deployment units on IaaS or PaaS clouds. (Wurster2020)  
    * **Cloud vendor abstraction** (Service, Infrastructure)
      *In a cloud-native application the infrastructure and services offered by a cloud provider should be abstracted with a unifying boundary to enable portability across different cloud vendors.*  
      Cloud-native platforms offer greater portability across clouds. (Pivotal2017)  
      Building on a cloud-native runtime optimizes orchestration across available resources. (Pivotal2017)  
      Cloud-native development helps your company derive more value from a hybrid cloud architecture. (RedHat2018)  
      Cloud-native applications run on any cloud without modification. (Pivotal2017)  
      If an app is "cloud-native," it’s specifically designed to provide a consistent development experience across private, public, and hybrid clouds. (RedHat2018)  
      Teams developing cloud-native applications should have the ability to migrate or distribute applications across multiple cloud vendors and a private cloud. (Pivotal2017)  
    * **Isolated configuration** (Service) -> Seamless upgrades  
      *Following DevOps principles, environment-specific configurations should be separated from the service deployment units and provided by the environment in which a cloud-native application runs. This enables adaptability across environments (also across testing and production environments)*  
      Building and operating cloud-native applications requires DevOps with which building, testing and releasing software can happen rapidly. (Pivotal2017)
  * Installability  
    * **Standardized self-contained deployment unit** (Service)  
      *Cloud-native applications should use standardized self-contained deployment units to deploy services to ensure installability on varying infrastructure and in varying environments.*  
      CNAs are realized with self-contained deployment units: A self-contained deployment unit encapsulates a software component and all its dependencies in a format that is self-describing and portable, typically containers are used. (Kratzke2017)  
      With virtualization as a basis, container support is required to achieve portability at platform level. (Pahl2018)  
      Containers exemplify the cloud-native approach. (CNCF2018)  
      Container adoption supports DevOps practices by offering an ideal application deployment unit and self-contained execution environment. (RedHat2018)  
      The services forming a cloud-native application are packaged in standardized, self-contained deployment units. (Wurster2020)  
      Beside PaaS and FaaS, containerization is a key enabler for self-contained deployment of the services in a cloud-native application. (Wurster2020)  
    * **Automated installation** (Service)
      *Deployment of services should be automated to avoid effort and potential errors.*
      Cloud-native application deployment is highly automated. (Wurster2020)  
      Automation is typically achieved using infrastructure as code. (Wurster2020)  
  * Replaceability  
    * **Immutable artifacts** (Service, Infrastructure)
      *Infrastructure and services of a cloud-native application should be defined and described in its entirety at development time so that artifacts are immutable at runtime. This ensures replaceability which means upgrades are introduced at runtime through replacement instead of modification.*  
      Immutable infrastructure exemplify the cloud-native approach. (CNCF2018)  
    * **State isolation** *repeated* (System)  
      *In cloud-native applications services should be structured by clearly separating stateless and stateful services. Stateful services should be reduced to a minimum, because stateless services are easier to replace than stateful services.*  
      Isolated state means that large portions of a cloud application are stateless, thus, isolating state in small portions of the application. (Fehling2014)  
      An IT resource that does not hold application state can be added and removed more easily as no state information has to be synchronized. (Fehling2014)  
    * **Start-up time** (Service, Infrastructure)  -> Automated horizontal scalability  
      *In cloud-native applications services and infrastructure are regularly replaced and should therefore have a short start-up time to minimize the impact of replacements.*  
      Building and operating cloud-native applications requires Containers wich have a low overhead for creating and destroying them compared to traditional VMs. (Pivotal2017)  
      Instances of the services forming a cloud-native application are disposable for favoring both fast startups and scalability of services. (Wurster2020)  
* Usability  
  * Appropriateness  
  * Recognisability  
  * Learnability  
  * Operability  
  * User error protection  
  * User interface aesthetics  
  * Accessibility  
* Reliability  
  * Availability  
    * **Distribution** (Service, Infrastructure)  
      *In cloud-native applications services should be distributed across locations and data centers for performance, availability and reliability.*  
      Cloud applications are distributed among resources in globally distributed environments. (Fehling2014)  
      A cloud-native application (CNA) is a distributed system. (Kratzke2017)  
      Cloud-native applications often operate at global scale. (Gannon2017)  
    * **Seamless upgrades** (Service)  
      *Upgrades of services should not interfere with availability. There are different strategies, like rolling upgrades, to achieve this.*
      Upgrade and test occur seamlessly in cloud-native applications without disrupting production. (Gannon2017)  
      Cloud-native applications must run as always-on services. (Pivotal2017)  
      Building and operating cloud-native applications requires Microservices where each microservice can be upgraded independent of other services. (Pivotal2017)  
    * **Infrastructure automation** *repeated*  (Infrastructure)  -> Automated restarts
      *The provisioning and configuration of cloud infrastructure required to operate a cloud-native application should be automated based on the capabilities provided by the cloud provider.*  
      Cloud-native applications use Infrastructure automation at scale to eliminate downtime. (Pivotal2017)  
    Organizations adopt cloud computing to increase the availability of apps. (RedHat2018)  
  * Fault tolerance  
    * **Autonomous fault handling** (Service, Link, Infrastructure)  
      *In cloud-native applications services should expect faults at different levels and either handle them or minimize their impact by relying on the capabilities of cloud environments.*  
      Cloud applications have an increased need for automated management to ensure that a cloud application is failure resistant. (Fehling2014)  
      Failure in cloud-native applications is constant. (Gannon2017)  
      To ensure resilience, CNA have to anticipate failures. (Toffetti2017)  
      To ensure resilience, CNA have to anticipate fluctuation in quality of both cloud resources and third-party services. (Toffetti2017)  
      Cloud applications should adapt and must be able to cope with system errors while maintaining the goals and properties envisioned by the developers and users. (Pahl2018)  
      Cloud applications should adapt and must be able to cope with changing user characteristics while maintaining the goals and properties envisioned by the developers and users.(Pahl2018)  
      These techniques enable resilient systems. (CNCF2018)  
      Cloud-native platforms offer greater resilience. (Pivotal2017)  
      Cloud-native applications indeed assume that service instances can fail at any time and feature mechanisms ensuring fault-resilience. (Wurster2020)  
      Building on a cloud-native runtime optimizes recovery from failures to minimize downtime. (Pivotal2017)  
      Services typically exploit cloud-native design patterns, e. g., circuit breakers. (Wurster2020)  
  * Recoverability  
    * **Distribution** *repeated* (Service, Infrastructure)  
      *In cloud-native applications services should be distributed across locations and data centers for performance, availability and reliability.*  
      Cloud-native platforms uses orchestration to dynamically manage placement of containers across a cluster of VMs to provide recovery/restart in the event of failure. (Pivotal2017)  
    * **Automated restarts** (Service) -> Autonomous fault handling  
      *Failed instances of services should be recovered automatically.*  
      The platforms exploited for deploying and managing cloud-native applications are suitably configured to automatically recover failed service instances. (Wurster2020)  
      Building and operating cloud-native applications requires Microservices where each microservice can be restarted independent of other services. (Pivotal2017)  
  * Maturity  
    * **Usage of established patterns** (Service, Link)  
      *Cloud-native application should exploit popular cloud-focused design patterns and make use of services provided by cloud providers.*  
      Services typically exploit cloud-native design patterns, e. g., circuit breakers. (Wurster2020)  
      A CNA is designed according to cloud-focused design patterns. (Kratzke2017)  
    * **Up-to-date environments** (Infrastructure)  
      *Cloud-native applications should run in up-to-date environments and adjust to dynamically changing environments.*  
      Cloud native technologies empower organizations to build and run scalable applications in modern, dynamic environments. (CNCF2018)  
* Compatibility  
  * Co-existence  
    * **Service independence** *repeated* (System, Service)  
      *In a cloud-native application services should be as independent as possible throughout their lifecycle, that means development, operation, and evolution*  
      Building and operating cloud-native applications requires Microservices where each microservice can be deployed independent of other services. (Pivotal2017)  
      Building and operating cloud-native applications requires Microservices where each microservice can be restarted independent of other services. (Pivotal2017)  
      Microservices architecture decomposes applications into independently operating services. (Pivotal2017)  
      Cloud-native applications are a collection of independent services. (RedHat2018)  
      Cloud-native development focuses on the independence of its services. (RedHat2018)  
      Each service of a cloud-native application is developed in a separate code base. (Wurster2020)  
      Each service of a cloud-native application is possibly equipped with its own deployment pipeline. (Wurster2020)  
  * Interoperability  
    * **API-based communication** (Service, Link)  
      *In a cloud-native application services should communicate via well-defined, standardized and declarative APIs which can be both synchronous or asynchronous.*  
      Both Web services and asynchronous messaging are equally usable and relevant for cloud applications. (Fehling2014)  
      Each microservice communicates via application programming interfaces (APIs) which can be managed through a service mesh layer. (RedHat2018)  
      Service-to-service communications in cloud-native application are API-based. (Wurster2020)  
      APIs are typically based on well-known standard protocols (e. g., REST over HTTP). (Wurster2020)  
      Declarative APIs exemplify the cloud-native approach. (CNCF2018)  
    * **Managed communication** (Service, Link) -> Access restriction, Loose coupling, Automated monitoring
      *Communication between services in a cloud-native application should be managed through additional software to increase observability and ensure loose coupling.*  
      Each microservice communicates via messaging which can be managed through a service mesh layer. (RedHat2018)  
      Service meshes exemplify the cloud-native approach. (CNCF2018)  
      A service typically interacts with other services in an application, which are discovered by exploiting features provided by the application runtime. (Wurster2020)  
