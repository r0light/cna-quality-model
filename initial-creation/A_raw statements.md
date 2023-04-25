# Cloud-native application definitions

## Definition of Fehling 2014 (IDEAL)

Cloud applications have to be decomposed into separate application components. (Fehling2014)

Cloud applications are distributed among resources in globally distributed environments. (Fehling2014)

Cloud applications have to be designed to be horizontally scalable. (Fehling2014)

Elasticity includes both the dynamic addition and removal of IT resources and demands that the application can add and free IT resources to adjust its performance quickly if the workload changes. (Fehling2014)

Isolated state means that large portions of a cloud application are stateless, thus, isolating state in small portions of the application. (Fehling2014)

An IT resource that does not hold application state can be added and removed more easily as no state information has to be synchronized. (Fehling2014)

Adding and removing resources should be automated by monitoring system load and interacting with management interfaces of cloud providers to provision or decommission resources. (Fehling2014)

Cloud applications have an increased need for automated management to ensure that a cloud application is failure resistant. (Fehling2014)

In cloud applications dependencies between application components should be minimized to reach loose coupling as a well-established concept in distributed applications. (Fehling2014)

Both Web services and asynchronous messaging are equally usable and relevant for cloud applications. (Fehling2014)

<div style="page-break-after: always;"></div>

## Definition of Kratzke & Quint 2017

A cloud-native application (CNA) is a distributed system. (Kratzke2017)

A cloud-native application (CNA) is an elastic system: Elasticity is the degree to which a system is able to adapt to workload changes by provisioning and de-provisioning resources in an autonomic manner. (Kratzke2017)

A cloud-native application (CNA) is a horizontal scalable system: Structural scalability (expand in a chosen dimension without major modifications to its architecture). (Kratzke2017)

Load scalability is the ability of a system to perform gracefully as the offered traffic increases. (Kratzke2017)

A CNA is designed according to cloud-focused design patterns. (Kratzke2017)

A CNA is operated on a self-service elastic platform. (Kratzke2017)

A CNA is a system composed of (micro)services. (Kratzke2017)

A cloud-native application (CNA) isolates state in a minimum of stateful components. (Kratzke2017)

CNAs are realized with self-contained deployment units: A self-contained deployment unit encapsulates a software component and all its dependencies in a format that is self-describing and portable, typically containers are used. (Kratzke2017)

<div style="page-break-after: always;"></div>

## Properties listed by Gannon 2017

Cloud-native applications often operate at global scale. (Gannon2017)

The application’s data and services are replicated in local data centers so that interaction latencies are minimized. (Gannon2017)

Cloud-native application scale well with thousands of concurrent users. (Gannon2017)

The infrastructure on which a cloud-native application runs is fluid. (Gannon2017)

Failure in cloud-native applications is constant. (Gannon2017)

Upgrade and test occur seamlessly in cloud-native applications without disrupting production. (Gannon2017)

The numerous small components of a cloud-native application must not hold sensitive credentials. (Gannon2017)

Access controls need to be managed at multiple levels in the application. (Gannon2017)

<div style="page-break-after: always;"></div>

## Main requirements for cloud-native applications by Toffetti et al. 2017

To ensure resilience, CNA have to anticipate failures. (Toffetti2017)

To ensure resilience, CNA have to anticipate fluctuation in quality of both cloud resources and third-party services. (Toffetti2017)

Unexpected fluctuations of the infrastructure performance need to be expected and managed accordingly. (Toffetti2017)

CNA have to be elastic meaning that they need to support adjusting their capacity by adding or removing resources to provide the required QoS in face of load variation. (Toffetti2017)

<div style="page-break-after: always;"></div>

## Cloud architectural principles by Pahl et al. 2018

Cloud architectures are service-oriented and employ layering to allow for varying interface granularity and lifecycles. (Pahl2018)

Cloud architectures are service-oriented and employ modularity to expose service interfaces only and encapsulate implementation details. (Pahl2018)

Cloud applications should be loosely coupled, that means decoupled in time, location and language dimensions. (Pahl2018)

Cloud virtualization provides self-service capability. (Pahl2018)

Cloud virtualization provides elasticity. (Pahl2018)

Cloud virtualization provides automated management. (Pahl2018)

Cloud virtualization provides scalability. (Pahl2018)

Cloud virtualization provides pay-as you go service. (Pahl2018)

With virtualization as a basis, container support is required to achieve portability at platform level. (Pahl2018)

Cloud applications should adapt and must be able to cope with variable resources while maintaining the goals and properties envisioned by the developers and users. (Pahl2018)

Cloud applications should adapt and must be able to cope with system errors while maintaining the goals and properties envisioned by the developers and users. (Pahl2018)

Cloud applications should adapt and must be able to cope with changing user characteristics while maintaining the goals and properties envisioned by the developers and users.(Pahl2018)

To deal with uncertainty, cloud applications need to measure on upper levels represented by application-level qualities, e.g., performance for different storage configurations. (Pahl2018)

To deal with uncertainty, cloud applications need to measure on lower levels represented by loads of infrastructure resources that run the service (processor and memory loads). (Pahl2018)

<div style="page-break-after: always;"></div>

## Definition of cloud-native by the Cloud Native Computing Foundation (2018)

Cloud native technologies empower organizations to build and run scalable applications in modern, dynamic environments. (CNCF2018)

Containers exemplify the cloud-native approach. (CNCF2018)

Service meshes exemplify the cloud-native approach. (CNCF2018)

Microservices exemplify the cloud-native approach. (CNCF2018)

Immutable infrastructure exemplify the cloud-native approach. (CNCF2018)

Declarative APIs exemplify the cloud-native approach. (CNCF2018)

These techniques enable loosely coupled systems. (CNCF2018)

These techniques enable resilient systems. (CNCF2018)

These techniques enable manageable systems. (CNCF2018)

These techniques enable observable systems. (CNCF2018)

Robust automation allows engineers to make high-impact changes frequently and predictably with minimal toil. (CNCF2018)

<div style="page-break-after: always;"></div>

## Definition by Pivotal (2017)

Building and operating cloud-native applications requires DevOps which has the goal of automating the process of software delivery. (Pivotal2017)

Building and operating cloud-native applications requires DevOps which has the goal of automating the process of infrastructure changes. (Pivotal2017)

Building and operating cloud-native applications requires DevOps with which building, testing and releasing software can happen rapidly. (Pivotal2017)

Building and operating cloud-native applications requires DevOps with which building, testing and releasing software can happen frequently. (Pivotal2017)

Building and operating cloud-native applications requires DevOps with which building, testing and releasing software can happen more reliably. (Pivotal2017)

Building and operating cloud-native applications requires Continuous Delivery which makes an individual application change ready for release as soon as it is ready. (Pivotal2017)

Building and operating cloud-native applications requires Microservices which is an architectural approach to developing an application as a collection of small services. (Pivotal2017)

Building and operating cloud-native applications requires Microservices where each microservice can be deployed independent of other services. (Pivotal2017)

Building and operating cloud-native applications requires Microservices where each microservice can be upgraded independent of other services. (Pivotal2017)

Building and operating cloud-native applications requires Microservices where each microservice can be scaled independent of other services. (Pivotal2017)

Building and operating cloud-native applications requires Microservices where each microservice can be restarted independent of other services. (Pivotal2017)

Building and operating cloud-native applications requires Containers wich have a low overhead for creating and destroying them compared to traditional VMs. (Pivotal2017)

Cloud-native applications are deployed to a platform that offers easy scale-out. (Pivotal2017)

Cloud-native applications are deployed to a platform that offers hardware decoupling. (Pivotal2017)

Cloud-native platforms offer greater agility. (Pivotal2017)

Cloud-native platforms offer greater resilience. (Pivotal2017)

Cloud-native platforms offer greater portability across clouds. (Pivotal2017)

Cloud-native applications must run as always-on services. (Pivotal2017)

Cloud-native applications must run as elastic-scale services. (Pivotal2017)

Cloud-native applications run on any cloud without modification. (Pivotal2017)

Teams developing cloud-native applications should have the ability to migrate or distribute applications across multiple cloud vendors and a private cloud. (Pivotal2017)

Twelve-factor apps are based on standardized developer stacks. (Pivotal2017)

Twelve-factor apps are calling on a standard set of services. (Pivotal2017)

Twelve-factor apps provide a standard developer ‘contract’. (Pivotal2017)

Cloud-native application architecture requires developers to use a platform as a means for abstracting away from underlying infrastructure dependencies. (Pivotal2017)

A cloud-native application platform automates infrastructure provisioning and configuration, dynamically allocating and reallocating resources at deploy time based on the ongoing needs of the application. (Pivotal2017)

Building on a cloud-native runtime optimizes scaling to meet demand. (Pivotal2017)

Building on a cloud-native runtime optimizes resource utilization. (Pivotal2017)

Building on a cloud-native runtime optimizes orchestration across available resources. (Pivotal2017)

Building on a cloud-native runtime optimizes recovery from failures to minimize downtime. (Pivotal2017)

Continuous delivery is used for cloud-native applications and works best with other related approaches including test-driven development. (Pivotal2017)

Continuous delivery is used for cloud-native applications and works best with other related approaches including continuous integration. (Pivotal2017)

Microservices architecture decomposes applications into small services. (Pivotal2017)

Microservices architecture decomposes applications into loosely coupled services. (Pivotal2017)

Microservices architecture decomposes applications into independently operating services. (Pivotal2017)

Cloud-native applications use Infrastructure automation at scale to eliminate downtime. (Pivotal2017)

Cloud-native platforms uses orchestration to dynamically manage placement of containers across a cluster of VMs to provide elastic scaling. (Pivotal2017)

Cloud-native platforms uses orchestration to dynamically manage placement of containers across a cluster of VMs to provide recovery/restart in the event of failure. (Pivotal2017)

<div style="page-break-after: always;"></div>

## Definition by Red Hat (2018)

Cloud-native applications are a collection of small services. (RedHat2018)

Cloud-native applications are a collection of independent services. (RedHat2018)

Cloud-native applications are a collection of loosely coupled services. (RedHat2018)

If an app is "cloud-native," it’s specifically designed to provide a consistent development experience across private, public, and hybrid clouds. (RedHat2018)

If an app is "cloud-native," it’s specifically designed to provide a consistent automated management experience across private, public, and hybrid clouds. (RedHat2018)

Organizations adopt cloud computing to increase the scalability of apps. (RedHat2018)

Organizations adopt cloud computing to increase the availability of apps. (RedHat2018)

The application life cycle of cloud-native applications is automated from development to production. (RedHat2018)

Container adoption supports DevOps practices by offering an ideal application deployment unit and self-contained execution environment. (RedHat2018)

Cloud-native development focuses on an architecture’s modularity. (RedHat2018)

Cloud-native development focuses on an architecture’s loose coupling. (RedHat2018)

Cloud-native development focuses on the independence of its services. (RedHat2018)

Each microservice communicates via application programming interfaces (APIs) which can be managed through a service mesh layer. (RedHat2018)

Each microservice communicates via messaging which can be managed through a service mesh layer. (RedHat2018)

Cloud-native development helps your company derive more value from a hybrid cloud architecture. (RedHat2018)

With serverless computing routine tasks like provisioning servers or managing scaling are abstracted by the cloud provider, allowing developers to push code to production much faster than in traditional models. (RedHat2018)

<div style="page-break-after: always;"></div>

## Characteristics by Wurster et al (2020)

Cloud-native applications are designed as suites of loosely coupled (micro)services. (Wurster2020)

A service typically interacts with other services in an application, which are discovered by exploiting features provided by the application runtime. (Wurster2020)

Service-to-service communications in cloud-native application are API-based. (Wurster2020)

APIs are typically based on well-known standard protocols (e. g., REST over HTTP). (Wurster2020)

Cloud-native applications are designed with a clear separation among stateless and stateful services. (Wurster2020)

Stateful services ensure scalability by exploiting natively scalable storage systems in the form of eventual consistent NoSQL databases. (Wurster2020)

The services forming a cloud-native application are packaged in standardized, self-contained deployment units. (Wurster2020)

Beside PaaS and FaaS, containerization is a key enabler for self-contained deployment of the services in a cloud-native application. (Wurster2020)

Instances of the services forming a cloud-native application are disposable for favoring both fast startups and scalability of services. (Wurster2020)

Cloud-native applications indeed assume that service instances can fail at any time and feature mechanisms ensuring fault-resilience. (Wurster2020)

Services typically exploit cloud-native design patterns, e. g., circuit breakers. (Wurster2020)

The platforms exploited for deploying and managing cloud-native applications are suitably configured to automatically recover failed service instances. (Wurster2020)

Cloud-native application abstract from underlying infrastructure and operating system dependencies by exploiting self-service deployment platforms, allowing to ship and scale deployment units on IaaS or PaaS clouds. (Wurster2020)

Cloud-native application deployment is highly automated. (Wurster2020)

Cloud-native application management is highly automated. (Wurster2020)

Cloud-native application scaling is highly automated. (Wurster2020)

Cloud-native application monitoring is highly automated. (Wurster2020)

Automation is typically achieved using infrastructure as code. (Wurster2020)

Cloud-native applications are horizontally scalable by configuring scaling policies. (Wurster2020)

Each service of a cloud-native application is developed in a separate code base. (Wurster2020)

Each service of a cloud-native application is possibly equipped with its own deployment pipeline. (Wurster2020)
