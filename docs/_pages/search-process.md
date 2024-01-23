---
permalink: /search-process
layout: page
title: Measure Search Process
---

The search process we used to find scientific literature presenting measures suitable for our quality model is detailed in the following.
The `.bib` files can be found in the [base repository](https://github.com/r0light/cna-quality-model/tree/main/literatureSearch).

## Initial search on 2021-10-04

### Basics

We used the following two general search strings (which we transformed into library-specific forms as shown below) to capture both the topics of service-orientation for which microservices are the latest trend and cloud computing as being the foundation for cloud-nativeness:

Search string 1: (Abstract:(architecture)) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(service-oriented) OR Abstract:(microservices))

Search string 2: (Abstract:(cloud-native) OR Abstract:("cloud computing")) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(quality))

We did the literature search on all libraries on 2021-10-04.

### Searched libraries

#### [ACM](https://dl.acm.org/)

```
"query": { (Abstract:(architecture)) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(service\-oriented) OR Abstract:(microservices)) }
"filter": { Publication Date: (01/01/2014 TO 12/31/2021), ACM Content: DL }
```

This search returned 291 results.

```
"query": { (Abstract:(cloud\-native) OR Abstract:("cloud computing")) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(quality)) }
"filter": { Publication Date: (01/01/2014 TO 12/31/2021), ACM Content: DL }
```

This search returned 178 results.

#### [IEEE](https://ieeexplore.ieee.org/Xplore/)

```
(("Abstract":"architecture") AND ("Abstract":"measure" OR "Abstract":"metric") AND ("Abstract":"service-oriented" OR "Abstract":"microservices))
2014 - 2021
```

This search returned 34 results.

```
(("Abstract":"cloud-native" OR "Abstract":"cloud computing") AND ("Abstract":"measure" OR "Abstract":"metric") AND ("Abstract":"quality"))
2014 - 2021
```

This search returned 84 results.

#### [Springer Link](https://link.springer.com)

Because Springer Link does not allow for searching the abstracts only, but instead searches full texts, the search keywords were adjusted to be even more specific.

```
("microservice architecture" OR "service-oriented architecture") AND ("metric" OR "measure") AND ("quality evaluation" OR "architecture evaluation" OR "architecture quality)
2014 - 2021
```

This search returned 109 results.

```
"cloud-native application" AND (measure OR metric) AND quality
2014 - 2021
```

This search returned 84 results.

#### Merged results

It includes 749 results (after removing duplicates).

### Filtering for suitable literature

#### 1. Filtering based on the title and other meta information

In this step we...:

* removed meta entries for conference proceedings
* removed books (which were included in the SpringerLink search)
* removed abstracts for keynotes
* removed papers with unrelated topics based on the title, including hardware-focused topics and topics considering too specific contexts like cloud gaming, autonomous vehicles or smart cities

...which resulted in 193 papers being left.

#### 2. Filtering based on the abstract

In this step we...:

* removed papers which consider the data center level from a cloud provider perspective or very low-level measurements and approaches (operating system, runtime environments)
* removed papers which foucs on the quality of services from an end-user perspective
* removed papers with measures which focus on internal component design (at the class or method level)
* removed papers with measures for which a calculation is not clearly described or for which a manual assessment for example by an expert is required
* removed papers with a too specific focus on a specific technology (like databases, big data analysis)

...which resulted in 101 papers being left.

#### 3. Scanned papers based on the full-text

In this step we...:

* reapplied the criteria mentioned in the previous steps, because the title and abstract sometimes do not contain all information needed for a correct judgement about the suitability of a paper.
* selected only those papers which contained measures or metrics on a suitable level of abstraction and described sufficiently enough to be included in the quality model

##### For each paper removed in this step, we provide a short reason why

*Mapping based on the Bibtex-Keys used in the mentioned files*

* Abderrahim2016: An approach for managing fail-over for PaaS-based applications, where a deployed application is moved to another PaaS provider, if SLAs are not met; No suitable metrics described.
* AdjeponYamoah2016: Presents cloud-ATAM, an approach for evaluating software architectures of cloud applications based on described requirements, trade-offs, and possible architecture scenarios to find a suitable architecture, the evaluation however then seems to be based on expert judgements or experimental executions of an application. No architectural metrics described, but might be interesting as related work.
* AlSaidAhmad2018: Propose metrics for measuring the technical elasticity of a system, however by ignoring additional aspects such as cost and by making the assumptions that service instances are needed propotionally to the demand.
* Anchuri2014: An approach for modelling applications on the basis of service call graphs with the goal of measuring and optimizing latencies within call graphs. The focus however is on finding services which provide the most potential for optimization internally rather than describing characteristics of the call graphs. Optimizations based on the structures of the call graphs themselves could have been interesting for our quality model.
* Andreou2021: Using Fuzzy Influence Diagrams, influencing factors for the decision of whether or not to migrate to a microservices architecture are investigated. The focus however is more on which factors have which importance instead of which quality attributes are impacted by certain microservices-based architectures.
* Antonescu2014: Presents a performance modeling approach based on the CloudSim framework. But software architectures and their properties and how different architectures would impact performance are not considered.
* Ardagna2014: Perform a performance modelling optimization based on an extension of the Palladio Component Model (PCM). It extends the PCM in the sense that different VM types from an IaaS offering are simulated to find a cost-efficient deployment solution. Because the software architecture remains fixed and only infrastructure configurations are varied, it does not provide suitable architectural metrics.
* Athanasopoulos2021: Presents stability metrics and modelling options for service-oriented systems. Stability metrics are based on changes over time and would therefore represent an extension of a software architecture quality model focusing only on one instance in time.
* Avritzer2020: It is only the abstract for tutorial which was held at a conference.
* Avritzer2018: Focus on performance evaluation investigated in an experimental setup, but the software architecture itself is not varied.
* Banijamali2020: A presentation of a self-adaptive system in the automotive industry. Although the system and its capabilities are described, it is evaluated based on metrics specific to the use case and not considering its architecture.
* Bogner2018: Presents a survey among practitioners regarding maintainability assurance. While it was asked for metrics used to ensure maintainability, the metrics report focus on single services.
* Bogner2021: Similar direction as Bogner2018 but using a grey literature survey and interviews. While it was explicitly asked for service-oriented and architectural metrics, practitioners did not really report to use them. Mostly source-code level metrics for single services were used.
* Brataas2017: Exploring scalability of cloud systems through benchmarking; Defined metrics are runtime metrics, but specific to their approach for exploring the resource space.
* Brilhante2017: Non-english text
* Brondolin2020: Presents performance measurement metrics which could be included as runtime metrics, however the metrics are quite low-level and therefore not suitable for our approach.
* Bryzgalov2021: Presentation of a Batch Extract-Load process implementation using serverless technologies, but system is not evaluated from an architectural perspective using usable metrics.
* Camilli2020: Similar stream of research as Avritzer2018, focus on workload and performance. While different architectures are considered, the architectures are not characterized by metrics, but investigated based on their impacts on performance.
* Cardarelli2019: Similar to our approach, but using a different quality meta model as a basis. Focus on maintainability without a detailed discussion on used metrics.
* Casale2019: High-level overview of the RADON project which has a similar aim as our approach but with a specific focus on FaaS. No detailed discussion of quality factors or even measures or metrics.
* Cedillo2015: Implementation description for a models@runtime middleware for monitoring cloud-based applications, but no architectural metrics discussed.
* Cedillo2021: Empirical validation of the approach presented in Cedillo2015, but no details on the used metrics for Non-functional requirements presented.
* Chauhan2016: High-level process framework for building software reference architectures with a focus on cloud computing, but no metrics or measures for architectural models considered.
* Chhetri2016: Only basic metrics described (CPU utilization, Memory usage, request rate)
* Ciancone2013: An analysis tool for evaluating the reliability of software systems, but focusing on specific models covering the behaviour of software. No suitable metrics or measures described.
* Dudouet2015: Description of a management system for ensuring reliability of cloud applications through rolling upgrades, but no architectural metrics discussed.
* Ewing2014: Description and evaluation of the SASSY approach for self-architecting service-based architectures, but only general runtime metrics like execution time are considered. But similar in the application modeling approach.
* FernandesMiotodeOliveiradosSantos2019: A survey on the reasons for adopting microservices architectures and their consequences as well as methods followed. But no dicussion of architectural evaluations.
* Floerecke2018: Collection of success factors for SaaS providers based on multiple case studies. But success factors are rather high-level and cannot be used to evaluate software architectures in detail.
* Fowley2018: Discussion of cost aspects of different cloud services and cloud services models. While some cost scenarios are exemplary discussed, they cannot be used as architectural metrics.
* Herbst2015: Metrics for measuring the quality of elasticity: Measures for the runtime only
* Hu2017: An investigation of Cache strategy effectiveness for online social networks, also considers metrics for cache characteristics and efficiency, but not in a general way applicable to sofware architectures.
* Ibrahim2016: High-level overview of their approach, but no detailed description of measures or metrics
* Ilin2017: High-level overview on the management of enterprise architecture, but not detailed discussion of suitable metrics.
* Jindal2021: Performance focused comparison of different deployment models for a microservices-based application, but no metrics for describing the different deployment options are used.
* Kehrer2019: Considers the specific case of parallel application run on HPC systems and compares properties of these applications according to their suitability to cloud computing. While quality factors and influences from application characteristics on these factors are considered, the focus is on parallel applications and not applications in general, there are some overlappings between these influences and our quality model, but no useable metrics.
* Khazaei2017: Implementation of an autoscaling system which scales containers based on performance functions, but no useable metrics are described.
* Kosinska2020: Description of a cloud-native framework which discusses many aspects also relevant to our quality model, but no metrics/measures are presented.
* Kratzke2017: Benchmarking experiment with typical technologies for microservices to analyze the impact of different technological choices on performance.
* Lehrig2015a: Only a high level overview of their approach
* Lehrig2015: Metrics for Scalability, Elasticity and Efficiency reviewed, not not really applicable at the architectural level.
* Lin2018: An approach for finding the cause of a problem in a microservices-based architecture through building causal graphs where a causal connection can exist either because of a communication dependency or a colocation dependency. While this also leads to a representation of an architecture of a microservices-based system, the architecture itself is not evaluated by metrics or measures.
* Lopez2017: Experiment approach to compute the optimal distribution of services on a cluster to optimize for performance or cost. While metrics are used to parameterize the experiment and calculate the results, the metrics are not suitable to our approach in the sense that architectural properties are captures through metrics.
* Ma2020: Presentation of an approach to analyze service-based systems by reconstructing a behaviour graph for a system to find the root cause of an anomaly. Different metrics are used, but they are very general metrics which are not directly applied in an architectural context.
* Marmsoler2018: A new formalism to differentiate between syntactic and semantic dependencies in component-based software architectures. These formalism however seem to apply more to internal service architectures rather than considering inter-service communication, because as an example for semantic dependency the compilation of one component affecting another component is described.
* Marquez2018: Focus on mobile communication networks with cloud computing as a side aspect.
* MartinezOrtiz2019: While quality metrics are explicitly discussed, the focus is on internal component aspects of web components and therefore not on a suitable level of abstraction.
* Michael2017: Presentation of a cloud performance measurement system. While the presented system also captures performance metrics, these metrics are not discussed in detail and with sufficient precision.
* Mo2018: Comprehensive approach for investigating the software quality of software systems, but on the internal level of components using metrics suitable to that level and not the level of abstraction fitting to our approach.
* Mohsin2018: A review of modeling languages and approaches for SOA-based software with one result being that none of the investigated modelling languages considers the evaluation of quality attributes. Therefore no suitable measures or metrics are described in the paper.
* Moreno2017: A comparison of self-adaptation approaches which also benchmarks them, but the metrics used in the benchmark are either specific to the context or very general and therefore not suitable to our approach.
* Nogueira2016: A literature survey on the topic of interoperable and portable cloud applications which however does not find any evaluation models in the literature. Metrics or measures for evaluating interoperability of cloud applications could have been in such a evaluation model.
* Ntentos2019: While fitting the context of our approach of evaluating software architectures also of microservices-based systems, this paper discuss architectural decision making without presenting metrics or measures on a level of detail suitable to our approach.
* Nuraini2014: While an approach is presented to evaluate quality attributes of a SOA-based software architecture, the metrics used are already covered by our search (through Bogner2017) and other metrics which seem to have been used are not explained in detail.
* Oliveira2016: It was not possible to retrieve a full-text for this paper reference.
* OparaMartins2016: An investigation of vendor lock-in in cloud computing based on interviews and a questionnaire. The focus however is on the business perspective and no metrics are described.
* ParviziMosaed2014: Presents an comprehensive approach to guide the design and development of service-oriented software where also quality attributes and architectural tactics are considered. But the paper presents the general process and details on suitable metrics for measuring quality attributes are missing.
* Rosati2019: Investigation of the cost of migrating to a cloud-native software architecture. While the cost factors are listed, they are not combined into the architectural view so that they could be used as metrics or measures in the sense of our approach.
* Salgado2016: Presents an approach to align business requirements with quality attributes of a software architecture. But the approach is used on a higher-level than what would be suitable for our approach.
* Santos2020a: Defines architectural metrics to evaluate microservices-based architectures. However the metrics are specific to an object-oriented programming style and consider the internal implementation of services to evaluate a decomposition starting from a monolithic system.
* Shabelnyk2021: An approach specific to the problem of performing software updates in air-gapped environments. The air-gapped architectures are not described by metrics. 
* Shatnawi2018: Interesting approach and also using the ISO quality characteristics to order attributes. The used metrics however focus on runtime aspects and are not architectural metrics.
* Silva2020: A framework for coninously monitoring privacy, but no specific description of architectural metrics.
* Toffetti2015: An approach for self-adapting microservices-based systems which aims to self-adapt in the sense that for example failed services are autonomically restarted, but not metrics described regarding the self-adaptation capabilites.
* Tsoumas2020: A metamodel to model cloud-native application architectures is presented, but no measures or metrics to describe these architectures are presented.
* Walter2017: An approach for facilitating working with performance modeling approaches, but no suitable measures or metrics are described.
* Weber2014: Same stream of research as Herbst2015
* Wei2021: Approach for managing the deployment of multi-cloud applications, but no useable architectural measures described.
* Wu2018: While resilience is quantified, the quantification is specific to their approach and not in general applicable to systems as considered by our approach.
* Wu2018a: A comprehensive framework for evaluating the quality of software architectures, but focusing on internal implementation of services and therefore not suitable for our approach.
* Zhao2017: Project- and Organization-focused metrics for cloud software, therefore not usable for our approach.
* Zheng2014: Model to describe Cloud service offerings by cloud providers, not cloud application architectures.
* Zhou2015: Presents an approach for performance monitoring and scaling where basic metrics are used, but no measures or metrics suitable to our approach.
* Zimmermann2016: A discussion of different architectural refactoring techniques with a special focus on cloud applications, but no measures or metrics to characterize the system before and after a refactoring are presented.
* Camargo2016: A novel approach for performing performance tests on microservices-based applications, but no suitable measures or metrics described.
* FreitasApolinario2020: Their approach also uses metrics which have already be presented in Bogner2017
* Detten2013: A comprehensive appoach for architectural refactorings of component-based software systems for which also some metrics are described, the focus however is on service internals and the presented metrics are therefore not useable for our approach.

In sum 77 papers were removed during this step.

##### Papers which describe useable metrics

* AbdelBaky2019: Metrics for a multi-cloud system; Although the focus is on application execution in the form of workloads consisting of a set of tasks which are distributed among available resources of the system, the metrics consider the possibility of a multi-cloud architecture and could therefore be included as runtime metrics
* Apel2019: Evaluates a microservices architecture by also defining architectural metrics.
* Becker2015: Runtime metrics for Scalability, Elasticity, and Efficiency
* Bento2021: Discusses quality of distributed tracing, measures that can be classified as runtime metrics are described, but also other quality aspects regarding distributed tracing are discussed.
* Bogner2017: Maintainability metrics for service-based systems
* Engel2018: Presents metrics for the architectures of microservices-based applications and performs an evaluation with a case study.
* Kuhlenkamp2019: Experimentation on the quality of FaaS platforms considering deployment and configuration changes. Metrics which can be regarded as runtime metrics are presented which measure the time it takes for a platform to apply changes to the deployment or configuration of an application.
* Li2020c: A quantitative analysis of elasticity of cloud applications using various runtime metrics.
* Ntentos2020a: Defined metrics to assess microservices architectures with a focus on coupling
* Ntentos2020: Defined metrics to assess microservices architectures with a focus on previously reported patterns for microservices architectures.
* Raj2018: Metrics for evaluating microservices-based architecture are described which however are a repetition of Zhang2009 and initially Rud2006
* Raj2021: Similar to Raj2018, the same metrics are used.
* Rosa2020: Metrics for evaluating microservices-based architectures.
* Slimani2020: Metrics for cloud based applications in general are presented with a focus on replication, which however consider the runtime
* Tiwari2014: Complexity metrics for component-based software systems in general
* Zdun2017: Presents metrics for evaluating the conformance of micrservices-based architectures to typical microservices patterns
* Zimmermann2015: An overview of architectural metrics which might be useful from a personal experience view

17 papers described useable metrics.

##### Papers which lead to the identification of additional papers presenting usable metrics

* BaniIsmail2018: A survey on service identification methods. Because it is a survey, other approaches are reported only on a higher level and details such as metrics are not presented in this paper.
* Bogner2020: An analysis of RESTful API descriptions using existing metrics.
* Brito2021: Presents an approach for service identification through topic modelling; relies on existing metrics for the evaluation of the own approach.
* Guerron2020: A comprehensive review of literature on cloud computing quality metrics.
* Lehmann2017: Qualitative evaluation of CI/CD strategies which uses some existing metrics.
* NikDaud2014: A review of metrics for cohesion, coupling and complexity of SOA-based systems which have previously been introduced.
* Oliveira2018: A review of SOA reuse which also considers the usage for metrics for measuring reurse. Only few papers were found which actually describe metrics.

7 papers were either reviews or used metrics from previous work. Therefore we checked their references to identify additional papers which present metrics.

##### Papers which were identified in addition recursively based on the previously mentioned papers

* Talwar2005 (found through Lehmann2017): Evaluates the quality of service deployment tactics and presents quantitative as well as qualitative metrics for evaluation.
* La2013 (found through Oliveira2018): Investiages Service reuasability and also defines suitable metrics partly based on previous work.
* Oh2011 (found through La2013): A previous investiation of Service reusability which defines metrics for measuring reusability of services.
* Jin2021 (found through Brito2021): Metrics to assess the quality of a microservices architecture to evaluate the output of a decomposition approach. As a follow-up and extension of Jin2018
* Jin2018 (found through Brito2021): Metrics to assess the quality of a microservices architecture to evaluate the output of a decomposition approach.
* Qian2006 (found through NikDaud2014): Metrics to evaluate the coupling of a service-based system based on statful/stateless characteristics and communication style.
* Wang2009 (found through NikDaud2014): Metrics to evaluate the coupling of a service-based system
* PhamThiQuynh2009 (found through NikDaud2014): Metrics to evaluate the coupling of a service-based system
* Karhikeyan2012 (found through NikDaud2014): Metrics to evaluate the coupling of a service-based system based on various aspects
* Kazemi2011 (found through NikDaud2014): Uses cohesion metrics to evaluate service-oriented architectures, but it reuses metrics which have already been defined in other papers
* Athanasopoulos2011 (found through NikDaud2014): presents formal definition of cohesion metrics which have also been defined by others in a similar way
* Athanasopoulos2015 (found through Bogner2020): A follow-up to Athanasopoulos2011 using the same metrics
* BASCI2009 (found through Bogner2020): Complexity metrics focusing on messages used in Web service (with the focus on XML web service)
* Haupt2017 (found through Bogner2020): Analysis of REST APIs and their complexity based on interface descriptions
* Hirzalla2009 (found through Bogner2017, Bogner2020 and NikDaud2014): A set of SOA metrics for evaluating the flexibility and complexity of a system
* Perepletchikov2007 (found through Bogner2017, Bogner2020 and NikDaud2014): A set of cohesion metrics for service-based software
* Perepletchikov2007a (found through Bogner2017 and NikDaud2014): A set of soupling metrics for service-based software
* Hofmeister2008 (found through Bogner2017 and NikDaud2014): A metrics suite for service-oriented architectures focusing on centralization/decentralization of a system
* Shim2008 (found through Bogner2017): A set of SOA-specific metrics to evaluate the quality of SOA-based systems
* Zhang2009 (found through Bogner2017 and NikDaud2014): A repetition of metrics defined by Rud2006 with a few additions
* Rud2006 (found through Bogner2017 and NikDaud2014): The initial definition of service-based metrics to evaluate complexity, reliability and performance aspects
* Kazemi2013 (found through BaniIsmail2018): Metrics for evaluting the decomposition of business functionalities into services, based on Ma2009
* Ma2009 (found through Kazemi2013): Metrics for evaluting the decomposition of business functionalities into services
* Baranwal2014 (found through Guerron2020): General runtime metrics for assessing the quality of a cloud service provider
* Baranwal2016 (found through Guerron2020): General runtime metrics for assessing the quality of a cloud service provider; follow-up to Baranwal2014
* Singh2015 (found through Guerron2020): Metrics for evaluating the quality of cloud services considering resources provisioning
* Rizvi2017 (found through Guerron2020): An approach for evaluating the QoS of cloud services
* Souza2016 (found through Guerron2020): Focusing on architectures of distributed database and how to ensure reliability and availability
* Taherizadeh2017 (found through Guerron2020): Metrics for monitoring cloud based applications
* Hu2016 (found through Guerron2020): An investigation of elasticity in IaaS-based cloud computing where elasticity is also evaluated with metrics
* Garg2013 (found through Guerron2020): A framework for ranking cloud services based on quality metrics
* Alam2016 (found through Guerron2020): An implementation of a cloud platform for video conferencing which is evaluated by metrics
* Manuel2013 (found through Guerron2020): A model to evaluate the trustworthiness of a cloud system based on metrics for availability, reliability and others
* Arumugam2017 (found through Guerron2020): An approach for selecting cloud resources based on metrics and its application for a healthcare use case
* Guerout2014 (found through Guerron2020): Quality of service metrics for cloud services with a specific focus on green cloud computing
* Vedam2012 (found through Guerron2020): Presents metrics for cloud benchmarking
* Xiong2015 (found through Guerron2020): A model for measuring cloud quality of service with a focus on resource allocation

The recursive search of the mentioned 7 papers led to the identifiation of 37 additional papers presenting useable metrics.

As a final set we therefore considered 61 papers leading to or containing measures or metrics suitable for the quality model.

## Repeated search on 2023-07-13

### Basics

We used the following two general search strings (which we transformed into library-specific forms as shown below) to capture both the topics of service-orientation for which microservices are the latest trend and cloud computing as being the foundation for cloud-nativeness:

Search string 1: (Abstract:(architecture)) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(service-oriented) OR Abstract:(microservices))

Search string 2: (Abstract:(cloud-native) OR Abstract:("cloud computing")) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(quality))

We did the literature search on all libraries on 2023-07-13.

### Searched libraries

#### [ACM](https://dl.acm.org/)

```
"query": { (Abstract:(architecture)) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(service\-oriented) OR Abstract:(microservices)) }
"filter": { E-Publication Date: (10/01/2021 TO 12/31/2023), ACM Content: DL }
```

This search returned 18 results.

```
"query": { (Abstract:("cloud\-native") OR Abstract:("cloud computing")) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(quality)) }
"filter": { Publication Date: (01/01/2022 TO 12/31/2023), ACM Content: DL }
```

This search returned 9 results.

#### [IEEE](https://ieeexplore.ieee.org/Xplore/)

```
(("Abstract":"architecture") AND ("Abstract":"measure" OR "Abstract":"metric") AND ("Abstract":"service-oriented" OR "Abstract":"microservices"))
2022-10 - 2023-07
```

This search returned 16 results.

```
(("Abstract":"cloud-native" OR "Abstract":"cloud computing") AND ("Abstract":"measure" OR "Abstract":"metric") AND ("Abstract":"quality"))
2022-10 - 2023-07
```

This search returned 24 results.

#### [Springer Link](https://link.springer.com)

Because Springer Link does not allow for searching the abstracts only, but instead searches full texts, the search keywords were adjusted to be even more specific.

```
("microservice architecture" OR "service-oriented architecture") AND ("metric" OR "measure") AND ("quality evaluation" OR "architecture evaluation" OR "architecture quality)
2022-10 - 2023-07
```

This search returned 111 results.

```
"cloud-native application" AND (measure OR metric) AND quality
2022-10 - 2023-07
```

This search returned 93 results.

### Merged results

It includes 124 results (after removing meta entries for collection items and duplicates).

### Filtering for suitable literature

#### 1. Filtering based on the title and other meta information

In this step we…:

* removed meta entries for conference proceedings
* removed abstracts for keynotes
* removed papers with unrelated topics based on the title, including hardware-focused topics and topics considering too specific contexts like cloud gaming, autonomous vehicles or smart cities

…which resulted in 89 papers being left.

#### 2. Filtering based on the abstract

In this step we…:

* removed papers which consider the data center level from a cloud provider perspective or very low-level measurements and approaches (operating system, runtime environments)
* removed papers which focus on the quality of services from an end-user perspective
* removed papers with measures which focus on internal component design (at the class or method level)
* removed papers with measures for which a calculation is not clearly described or for which a manual assessment for example by an expert is required
* removed papers with a too specific focus on a specific technology (like databases, big data analysis)

…which resulted in 32 papers being left.

#### 3. Filtering based on the full-text

In this step we...:

* reapplied the criteria mentioned in the previous steps, because the title and abstract sometimes do not contain all information needed for a correct judgement about the suitability of a paper.
* selected only those papers which contained measures or metrics on a suitable level of abstraction and described sufficiently enough to be included in the quality model

##### For each paper removed in this step, we provide a short reason why

*Mapping based on the Bibtex-Keys used in the mentioned files*

* Adewojo2023: A detailed description of a load balancing architecture for a web application. Metrics considered are runtime metrics of virtual machines for load balancing (CPU & memory utilisation) and therefore not suitable for the quality model
* Alonso2023: A structured literature review on the topic of "multi-cloud" applications which focuses on topics and challenges for research in this area, but without the inclusion of suitable metrics.
* BalcaoFilho2023: A framework for assessing the trust of cloud services which does also contain security aspects, but on a higher level than specific metrics and focusing on the services offered by cloud providers directly rather than within an application architecture.
* Basciftci2022: The full-text of the work was not accessible to us, despite several different attempts to retrieve it.
* Beltran2023: A case study on different deployment options for cloud applications using the SockShop application. The different deployment options are only broadly characterized and then compared based on cost and performance, but no detailed architectural evaluation using metrics has been done.
* BermonAngarita2023: From the general approach it seems a very related work, because the aim is to recommend types of software architectures based on desired non-functional requirements. However the "software architecture" is intended to describe the application as a whole and directly linked to high-level quality aspects which they are claimed to impact. To be suitable for our quality model, a more detailed consideration of the reasons why certain architectural characteristics have impacts on quality aspects would be needed.
* Erdei2023: A study on optimizing the resource requirements of components by running experiments and formulating different optimization calculations. While a general point is made, that resource provisioning should be adjusted to the actual requirements, no more detailed considerations on the architectural characteristics of an application are made.
* Ghazouani2022: An extension of WSDL to describe cloud computing aspects within WSDL descriptions. The considered extensions however cover general cloud aspects and no specific application architecture characeristics.
* Gruenewald2022: A framework to include privacy considerations in the development practice for cloud applications. The framework however operates on a higher level without considering detailed architectural characteristics and therefore provides no metrics suitable for our quality model.
* Gudenkauf2023: A comprehensive study on the ATAM method and the presentation of more extensive tooling support. The focus therefore is on the general method of evaluating software architectures according to architectural characteristics and quality aspects, but no focus on cloud computing.
* Huang2023: The paper presents a framework for enabling billing for streaming services from a cloud provider perspective. Therefore no metrics suitable for the quality model (which takes the cloud consumer perspective) are presented.
* Jiang2023: The study considers Log Analysis in a Microservices-based system and aims to locate root causes of failures. Therefore metrics are collected at runtime which for example describe the call graph of an application. However, the mentioned metrics consider the runtime and are only applicable in the mentioned scenario and therefore not suitable for the quality model.
* Klinaku2023: The study investigates Explainability for Autoscaling by discussing the topic with practitioners. Through this requirements are derived which an autoscaling system should fulfill in able to be explainable and configurable. Also some metrics are presented which can be used to evaluate if an autoscaler is explainable which are however very specific to different types of autoscalers and thus less suitable for the quality model.
* Kumara2022: The study considers quality assurance aspects for cloud applications at design time with a specific focus on Application topology models described with TOSCA. Not directly metrics, but instead anti-patterns are therefore defined for topology descriptions which can then be checked using tooling. The work is therefore related, but not directly useable for the architectural metrics in consideration for the quality model, because detailed characteristics of single components are in the focus.
* Lichtenthaeler2022: This is our own previous work.
* Mechouche2022: The work presents an approach for automated SLA checking and adherence by relying on automated adaptation strategies that are executed when SLA violations are detected to enable the system to meet SLAs again. SLAs are based on Performance, Cost, and Availability. However, the used metrics are focusing on runtime aspects and do not consider architectural details. Therefore, no metrics suitable for the quality model are included.
* Morais2021: An approach for modeling and analyzing microservices-based applications. The work presents an own approach to model microservices-based systems and an approach for analyzing modeled systems based on the similarity of services. Although the similarity is based on metrics, its aim is to identify similar services across different systems. The focus of our quality model is however on the evaluation of single systems and therefore the presented similarity metrics are not directly helpful.
* Mubarkoot2021: The work proposes an approach for checking non-functional properties of applications based on defined policies building on TOSCA deployment descriptions. Although therefore highly related to our work, the approach is described on a rather superficial level, meaning that no specific policies are described but rather how they could be integrated in the software development lifecycle. Therefore, no architectural metrics suitable for the quality model are included.
* Pulnil2022: The full-text of the work was not accessible to us, despite several different attempts to retrieve it.
* SerranoGutierrez2023: An approach for optimizing the configuration of individual functions in a FaaS-based application, mainly focusing on performance. Because each function is considered separately and no architectural metrics, considering the application architecture as a whole, are presented, no metrics suitable for the quality model could be found.
* Straesser2023: The work focuses on autoscaler configuration options and aims to provide guidance on how to configure autoscalers based on common anti-patterns and potential solutions for these. While in general very relevant, because in this way the quality of autoscaling configurations could be measured, the topic requires a lot more runtime information than currently considered by our quality model and we therefore decided not to include the presented metrics.
* Vale2022: Provides a general overview on the connections between architectural aspects and quality aspects and is therefore very related to our work. Thus, it can be helpful for comparing the mentioned impacts of product factors on quality aspects in the form of trade-offs, but there are no specific measures for measuring the existence of these patterns in an architecture, presented.
* Vitali2022: An approach for including energy and power consumption considerations into the development workflow of cloud applications. A formalization is proposed to include sustainability-oriented information in a model of an application. These information can then be used for the deployment of an application in order to reduce the emissions caused by an application. The approach however remains rather high-level and no specific metrics suitable for the quality model are presented.
* Volpert2023: A methodology for evaluating isolation capabilities of virtualization technologies is presented. The focus is on how virtualization technologies can be compared in a fair way, leading to a proposed experiment setup where parallel workloads are executed and measurements regarding the resource usage of these workloads are taken in order to determine to what extent the workloads influence each other. The lower the influence, the better the isolation. While the isolation can be seen as a quality aspect, the work focuses on the technologies as such, and not the applications in which they are used. Therefore no suitable metrics were found.
* Yilmaz2021: A quality model for microservices which focuses mostly on maintainability and therefore also includes metrics in this regard. However the metrics focus on internal aspects of services (Classes, Packages, Lines of Code) and not on the architecture of the whole system. Therefore the metrics are not suitable for our quality model.
* Zaragoza2022a: An approach for identifying potential microservices in a system (that means classes which should be part of the same service) to guide the migration of systems into microservices. Because of this focus on internal structures of services, the presented metrics are not suitable for the quality model.

In sum, 26 papers were removed during this step.

##### Papers which describe useable metrics

* Camilli2022: Presents a performance and reliability testing framework for microservices systems. The focus however is on runtime metrics rather than architectural considerations. The framework has been evaluated using the TrainTicket Benchmarking system.
* Henning2022: A comprehensive study of scalability benchmarking for cloud-native applications. It clearly separates scalability from elasticity and focuses on scalability by also providing suitable metrics to rate the scalability of a system.
* Moreira2022: An evolution-focus analysis approach which focuses on cohesion metrics.
* Peng2022: An analysis approach based on the traces found in a microservices-based system, therefore presenting metrics regarding the interaction chains between services.
* Straesser2023a: Very interesting, because quality aspects of container orchestration systems are considered. The metrics used are however mostly runtime metrics.
* Yussupov2022: A work presenting patterns for FaaS-based applications which therefore also includes aspects to consider for the quality model. Metrics however need to be distilled from these patterns.

6 papers described useable metrics.

#### 4. Additional Forward Search based on the previously considered papers

In addition to the described search process, we also applied a forward search to the previously considered 61 papers. To do so we looked up each paper at [SemanticScolar](https://www.semanticscholar.org/) and scanned the papers which have hitherto cited the paper in focus. Through this, we found the following relevant papers:

* Filippone2023 (cites Brito2021):
* Genfer2021 (cites Engel2018):
* Ntentos2022 (cites Zdun2017):
* Silva2023 (cites Perepletchikov2007):
* Zdun2023 (cites Engel2018, Zdun2017):
* Zhong2022 (cites Jin2021):

6 papers describing metrics were found through a forward search using the hitherto found literature.

The combined papers identified by the literature search update therefore amount 14 papers.

## Revised literature search on 2024-01-16

### Basics

Based on a reviewer's comment on a paper draft, we revised our search strings to accomodate singular and plural forms of search terms to avoid missing literature based on differing usage of singular and plural forms.

Thus, we used the following two general search strings (which we transformed into library-specific forms as shown below) to repeat our literature search for both time frames considered in the previous two searches:

Search string 1: (Abstract:(architecture)) AND (Abstract:(measure) OR Abstract:(measures) OR Abstract:(metric) OR Abstract:(metrics)) AND (Abstract:(service-oriented) OR Abstract:(microservices) OR Abstract:(microservice))

Search string 2: (Abstract:(cloud-native) OR Abstract:("cloud computing")) AND (Abstract:(measure) OR Abstract:(measures) OR Abstract:(metric) OR Abstract:(metrics)) AND (Abstract:(quality))

We did the literature search on all libraries on 2024-01-16.

### Searched libraries

#### [ACM](https://dl.acm.org/)

```
"query": { (Abstract:(architecture)) AND (Abstract:(measure) OR Abstract:(measures) OR Abstract:(metric) OR Abstract:(metrics)) AND (Abstract:(service\-oriented) OR Abstract:(microservice) OR Abstract:(microservices)) }
"filter": { E-Publication Date: (01/01/2014 TO 09/30/2021), ACM Content: DL }
```

This search returned 402 results.

```
"query": { (Abstract:(architecture)) AND (Abstract:(measure) OR Abstract:(measures) OR Abstract:(metric) OR Abstract:(metrics)) AND (Abstract:(service\-oriented) OR Abstract:(microservice) OR Abstract:(microservices)) }
"filter": { E-Publication Date: (10/01/2021 TO 12/31/2023), ACM Content: DL }
```

This search returned 151 results.

```
"query": { (Abstract:("cloud\-native") OR Abstract:("cloud computing")) AND (Abstract:(measure) OR Abstract:(measures) OR Abstract:(metric) OR Abstract:(metrics)) AND (Abstract:(quality)) }
"filter": { Publication Date: (01/01/2014 TO 09/30/2021), ACM Content: DL }
```

This search returned 366 results.

```
"query": { (Abstract:("cloud\-native") OR Abstract:("cloud computing")) AND (Abstract:(measure) OR Abstract:(measures) OR Abstract:(metric) OR Abstract:(metrics)) AND (Abstract:(quality)) }
"filter": { Publication Date: (10/01/2023 TO 12/31/2023), ACM Content: DL }
```

This search returned 132 results.

#### [IEEE](https://ieeexplore.ieee.org/Xplore/)

```
(("Abstract":"architecture") AND ("Abstract":"measure" OR "Abstract":"measures" OR "Abstract":"metric" OR "Abstract":"metrics") AND ("Abstract":"service-oriented" OR "Abstract":"microservice" OR "Abstract":"microservices"))
2014 - 2021
```

This search returned 151 results.

```
(("Abstract":"architecture") AND ("Abstract":"measure" OR "Abstract":"measures" OR "Abstract":"metric" OR "Abstract":"metrics") AND ("Abstract":"service-oriented" OR "Abstract":"microservice" OR "Abstract":"microservices"))
2022 - 2023
```

This search returned 70 results.

```
(("Abstract":"cloud-native" OR "Abstract":"cloud computing") AND ("Abstract":"measure" OR "Abstract":"measures" OR "Abstract":"metric" OR "Abstract":"metrics") AND ("Abstract":"quality"))
2014 - 2021
```

This search returned 248 results.

```
(("Abstract":"cloud-native" OR "Abstract":"cloud computing") AND ("Abstract":"measure" OR "Abstract":"measures" OR "Abstract":"metric" OR "Abstract":"metrics") AND ("Abstract":"quality"))
2022 - 2023
```

This search returned 79 results.

#### [Springer Link](https://link.springer.com)

Because Springer Link does not allow for searching the abstracts only, but instead searches full texts, the search keywords were adjusted to be even more specific.

Additionally, we filtered the results to only include "Conference Paper" and "Article" publications

```
("microservice architecture" OR "microservices architecture" OR "service-oriented architecture") AND ("measure" OR "measures" OR "metric" OR "metrics") AND ("quality evaluation" OR "architecture evaluation" OR "architecture quality")
2014 - 2021
```

This search returned 84 results.

```
("microservice architecture" OR "microservices architecture" OR "service-oriented architecture") AND ("measure" OR "measures" OR "metric" OR "metrics") AND ("quality evaluation" OR "architecture evaluation" OR "architecture quality")
2022 - 2023
```

This search returned 27 results.

```
("cloud-native application" OR "cloud-native applications") AND ("measure" OR "measures" OR "metric" OR "metrics") AND "quality"
2014 - 2021
```

This search returned 39 results.

```
("cloud-native application" OR "cloud-native applications") AND ("measure" OR "measures" OR "metric" OR "metrics") AND "quality"
2022 - 2023
```

This search returned 38 results.

### Merged results

All results merged lead to 1800 entries.

After removing meta entries for collection items and duplicates, 1709 entries remained.

It has to be noted that these also include the entries from the first two searches, therefore we removed all entries which had already been checked previously, leading to 972 new entries.

Based on this, we applied the same steps as for the previous searches.

### Filtering for suitable literature

#### 1. Filtering based on the title and other meta information

In this step we…:

* removed meta entries for conference proceedings
* removed abstracts for keynotes
* removed papers with unrelated topics based on the title, including hardware-focused topics and topics considering too specific contexts like cloud gaming, autonomous vehicles or smart cities

…which resulted in 110 papers being left.

#### 2. Filtering based on the abstract

In this step we…:

* removed papers which consider the data center level from a cloud provider perspective or very low-level measurements and approaches (operating system, runtime environments)
* removed papers which focus on the quality of services from an end-user perspective
* removed papers with measures which focus on internal component design (at the class or method level)
* removed papers with measures for which a calculation is not clearly described or for which a manual assessment for example by an expert is required
* removed papers with a too specific focus on a specific technology (like databases, big data analysis)

…which resulted in 49 papers being left.

#### 3. Filtering based on the full-text

In this step we...:

* reapplied the criteria mentioned in the previous steps, because the title and abstract sometimes do not contain all information needed for a correct judgement about the suitability of a paper.
* selected only those papers which contained measures or metrics on a suitable level of abstraction and described sufficiently enough to be included in the quality model

##### For each paper removed in this step, we provide a short reason why

*Mapping based on the Bibtex-Keys used in the mentioned files*

* Abdeladim2014: They present and discuss specific measures for scalability and elasticity. However, these metrics are only measurable at runtime and therefore not directly suitable for our quality model focusing on the design time.
* Abdelfattah2023: Specific coverage metrics for end-to-end-tests of microservices-based systems are presented. While in general these metrics would be applicable, in its current form of the quality model tests are not included as separate entities. Only then it would be possible to include these metrics.
* Althani2016: A conceptual framework ist presented aimed at guiding the process of adapting and modernizing applications for the cloud. However, it is a higher-level framework focusing on the process rather then specific metrics for architectural evaluations.
* Andrade2023: A literature study on the topic of DevOps and how it improves applications. While it provides an overview on DevOps best practices and how they can be linked to quality aspects, no specific measures are extracted or presented.
* Avritzer2020a: An extended abstract to a conference talk which is therefore short in text-form and not presenting any metrics or measures.
* Baarzi2021: Although an interesting approach to optimize autoscaling of microservices-based systems, it does so at the runtime level, utilizing runtime metrics. Therefore no metrics suitable for our quality model are presented.
* Bogner2018a: Although providing industry insights on how maintainability is managed in practice together with insight on used metrics, these metrics are not presented in detail. This has been done in previous work and therefore this work provides no new metrics with respect to our quality model.
* Camilli2023: An extensive formalized approach to test different architectural options for a microservices-based system focusing on scalability (that means how well they are scalable and how well they perform). Although different archictural options are discussed they are not characterized by architectural metrics which would have been relevant for our model.
* Chauvel2014: While the presented robustness indicators would in general be an interesting extension of the quality model, their calculation is based on a larger model which also requires the simulation of failures and failure sequences. The idea of measuring the robustness of components based on their number of dependencies might also be applicable in our context, but no metrics which could directly be included in our model are presented.
* Choochotkaew2021: A new scheduling and resource management system for microservices-based systems which however does not include explicit architectural metrics suitable for our model.
* Davatz2017: The work investigates the comparability and benchmarking of different cloud resource options for a given application. For the evaluation metrics for throughput and performance related to cost are used which are in general also interesting to our approach, but directed at the runtime.
* Duboc2022: A structured approach focusing on service composition which internally uses metrics to characterize services and make a decision which to choose, but these metrics consider the runtime rather than the design time.
* ElMalki2022: An approach explicitly focusing on rate limiting for making APIs more reliable. Although rate limiting is also considered in our model, it is not considered at the detailed level as in this work which aims to find suitable limit values depending on the expected workload.
* Frank2022: A simulation approach to assess the resilience of a microservices-based architecture. It also includes factors like circuit breaker or retries and whether these factors are present in a system is included in their simulation model. However, no metrics to assess their existence in an architecture are presented, because the focus is on runtime experiments (simulations) to assess how well the resilience is based on these factors.
* Guaman2018: The paper itself is written in spanish representing a obstacle to understand it. But it still seems not metrics suitable for our quality model are presented.
* Haoues2016: The work aims to related software architecture approaches at a very high level to quality aspects. Although certain relationships are presented they are based on architectural styles as a whole rather than more specific architectural characteristics. Therefore, also no suitable metrics are presented.
* Haupt2017a: An approach specifically focusing on REST APIs and while certain metrics are described they focus provide an initial overview on types of REST APIs, but without an explicit linking to quality attributes.
* Hecht2014: While in general very relevant to our model, because cloud patterns are linked with quality aspects in an experimental approach, the approach builds on the notion that a pattern is used or not used, but not how the existence of a pattern can identified based on an architecture. Therefore it is relevant to our work regarding relationships between architectural characteristics and quality aspects, but no specific architectural metrics are presented.
* Herbst2018: While the work provides an extensive review of usable metrics for aspects such as elasticity and scalability, these are targeted at the runtime and thus not suitable for our quality model.
* Jack2023: The fulltext could not be retrieved and therefore not evaluated in more detail.
* Klinaku2021: The work investigates impacts of different scaling policies and how the can be assessed in a structured way, but no architectural metrics useable in the sense of our quality model were presented.
* Laigner2021: The work extensively reviews the topic of data management in microservices architectures, discussing common practices, problems and potential solutions. However no explicit architectural metrics describing relationships between services and databaes are presented.
* Levin2020: The work discusses metrics measured at runtime which are helpful for microservices observability rather than an evaluation of microservices architectures.
* Luo2021a: Although dependecies between services in microservices-based systems are investigated extensively based on graph theory, no explicit metrics to describe these call graphs are presented which would have been applicable in the sense of our quality model.
* Papakonstantinou2020: Interesting study that compares different deployment options for a system regarding performance and cost, but the different deployment options are described using metrics which would have been suitable for our quality model.
* Peng2017: An approach to measure the reliability of a system, but for the approach a specilized and detailed formalization is needed which also collects data over time. Therefore, the used metrics are not integratable as architectural metrics.
* Pinciroli2023: An approach to measure performance impacts of design patterns. Although very related to our work, the used performance modeling formalization provides no architectural metrics suitable to our approach. 
* Pulparambil2018: Although the approach presents some metrics regarding service design, the goal is to check the suitability of SOA for a system. Therefore the metrics are not suitable for our model.
* Raharjo2022:  The fulltext could not be retrieved and therefore not evaluated in more detail.
* Ravanello2014: Although metrics are presented to measure the performance of a cloud application, they are on a lower level and focused at the runtime. Therfore the presented metrics are not suitable for our model.
* Santos2021: An approach to decompose a system into microservices. Metrics are also used, but the focus on service internals to suggest and analyze the decomposition.
* Selmadji2020: An approach to decompose a system into microservices. Metrics are used to guide the decomposition, but they also require internal service views and are therefor not suitable for our approach.
* Torkura2017: The work investigates cloud-native application characteristics and how to implement cloud-native systems. But no metrics are presented which enable a quantification of the existence of such characteristics.
* Valdivia2019: A literature review of microservices patterns and their impacts on quality aspects. Although very related to our work, the patterns are not described via metrics which would have been helpful for our approach.
* Wang2017a: Although very related, the goal is to detect anti-patterns in Web service implementations based on metrics considering the source code. Therefore the presented metrics are not suitable for our approach.
* Willnecker2018: An approach to find optimal deployment topologies for applications. While as such very related, the approach is based on dedicated performance models which also require data collected at runtime. Therefore no metrics suitable for our quality model are presented.
* Yuan2019: Insights on how microservices are implemented in practice and how quality aspects are addressed. Although very related, no specific metrics suitable to our model are presented.
* Zhou2015a: A quality model for web services is presented. Also metrics are included to measure quality aspects, but they are all focusing on the runtime

In sum, 38 papers were removed during this step.

##### Papers which describe useable metrics

* AlDebagy2020: Focusing on Microservices, several metrics are presented in detail for the evaluation of microservices architectures. The focus is on cohesion, granularity and functional scope
* Asik2017: Metrics are presented focusing on single services but also the interplay between services to identify especially problematic parts, such as Endpoints offered by services, but not used by other services.
* Daniel2023: Metrics are presented which can be calculated at an architectural level to detect whether common microservices patterns are used. These metrics are therefore also applicable to our model.
* Filippone2023 (was also found through forward search in the second search): An approach to transform a monolithic system into a microservices-based system based on metrics. These metrics are partly also suitable for our quality model.
* Gamage2021: Metrics to detect problematic aspects of how services in a system depend on each other are presented.
* Ntentos2021: Architectural measures are used to identify accordance to microservices design decisions or microservices patterns
* Perera2018/Perera2018a: An approach to generate systems from requirements. For an evaluation, also architectural metrics are used.
* Zdun2023 (was also found through forward search in the second search): Architectural metrics to evaluate security-related aspects of microservices-based systems are presented.
* Zdun2023a: Architectural metrics to detect the usage of security-related approaches (or the decision to use them) based on metrics.

10 papers described useable metrics.

##### Papers which lead to the identification of additional papers presenting usable metrics

* Abgaz2023: An extensive literature review on approaches for migrating from monoliths to microservices. For the evaluation of such a migration, also metrics are listed from the different approaches. Specifically cohesion and coupling metrics are listed, although presented in the referenced literature.

1 paper was a review. Therefore we checked its references to identify additional papers which present metrics.

##### Papers which were identified in addition recursively based on the previously mentioned papers

* Assuncao2021 (found through Abgaz2023): Focusing on the decomposition of a system into microservices, metrics are presented to evaluate the quality of decomposition options
* Desai2021 (found through Abgaz2023): Also focusing on the decomposition of a system into microservices, metrics are presented to evaluate the quality of decomposition options

The recursive search of the mentioned 1 paper led to the identifiation of 2 additional papers presenting useable metrics.

### Merged results of the third revising search

Therfore, from the third revising search 13 additional papers were identified.

## Current literature including metrics relevant for the quality model

| Identifier          | Author                                                                                                                                               | Title                                                                                                                          | Journal / Booktitle                                                                                                                                                                                                                       | Volume | Number | Pages         | Year | URL                                               | Publisher                                                         | Comment                                              |
|---------------------|------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------|--------|---------------|------|---------------------------------------------------|-------------------------------------------------------------------|------------------------------------------------------|
| AbdelBaky2019       | AbdelBaky, Moustafa; Parashar, Manish                                                                                                                | A General Performance and QoS Model for Distributed Software-Defined Environments                                              | IEEE Transactions on Services Computing                                                                                                                                                                                                   |        |        | 1-1           | 2019 | [https://doi.org/10.1109/TSC.2019.2928300](https://doi.org/10.1109/TSC.2019.2928300)          |                                                                   |                                                      |
| Alam2016            | Alam, Ahmad F. B.; Soltanian, Abbas; Yangui, Sami; Salahuddin, Mohammad A.; Glitho, Roch; Elbiaze, Halima                                            | A Cloud Platform-as-a-Service for multimedia conferencing service provisioning                                                 | Symposium on Computers and Communication (ISCC)                                                                                                                                                                                           |        |        |               | 2016 | [https://doi.org/10.1109/iscc.2016.7543756](https://doi.org/10.1109/iscc.2016.7543756)         | IEEE                                                            | found through Guerron2020                            |
| Apel2019            | Apel, Sebastian; Hertrampf, Florian; Späthe, Steffen                                                                                                 | Towards a Metrics-Based Software Quality Rating for a Microservice Architecture                                                | Innovations for Community Services                                                                                                                                                                                                        |        |        | 205--220      | 2019 | [https://doi.org/10.1007%2F978-3-030-22482-0_15](https://doi.org/10.1007%2F978-3-030-22482-0_15)    | Springer International Publishing                                 |                                                      |
| Arumugam2017        | Arumugam, K.; Sumathi, P.                                                                                                                            | Secure and QoS guaranteed selection resource for storing health care information of cloud users                                | International Conference on Computing Methodologies and Communication (ICCMC)                                                                                                                                                             |        |        |               | 2017 | [https://doi.org/10.1109/iccmc.2017.8282657](https://doi.org/10.1109/iccmc.2017.8282657)        | IEEE                                                            | found through Guerron2020                            |
| Athanasopoulos2011  | Athanasopoulos, Dionysis; Zarras, Apostolos V.                                                                                                       | Fine-Grained Metrics of Cohesion Lack for Service Interfaces                                                                   | 2011 IEEE International Conference on Web Services                                                                                                                                                                                      |        |        |               | 2011 | [https://doi.org/10.1109/icws.2011.27](https://doi.org/10.1109/icws.2011.27)              | IEEE                                                            | found through NikDaud2014                            |
| Athanasopoulos2015  | Athanasopoulos, Dionysis; Zarras, Apostolos V.; Miskos, George; Issarny, Valerie; Vassiliadis, Panos                                                 | Cohesion-Driven Decomposition of Service Interfaces without Access to Source Code                                              | IEEE Transactions on Services Computing                                                                                                                                                                                                 | 8      | 4      | 550--562      | 2015 | [https://doi.org/10.1109/tsc.2014.2310195](https://doi.org/10.1109/tsc.2014.2310195)          | Institute of Electrical and Electronics Engineers (IEEE)        | found through Bogner2020                             |
| BaniIsmail2018      | Bani-Ismail, Basel; Baghdadi, Youcef                                                                                                                 | A Survey of Existing Evaluation Frameworks for Service Identification Methods: Towards a Comprehensive Evaluation Framework    | Communications in Computer and Information Science                                                                                                                                                                                        |        |        | 191--202      | 2018 | [https://doi.org/10.1007%2F978-3-319-95204-8_17](https://doi.org/10.1007%2F978-3-319-95204-8_17)    | Springer International Publishing                                 |                                                      |
| Baranwal2014        | Baranwal, Gaurav; Vidyarthi, Deo Prakash                                                                                                             | A framework for selection of best cloud service provider using ranked voting method                                            | International advance computing conference (IACC)                                                                                                                                                                                         |        |        |               | 2014 | [https://doi.org/10.1109/iadcc.2014.6779430](https://doi.org/10.1109/iadcc.2014.6779430)        | IEEE                                                            | found through Guerron2020                            |
| Baranwal2016        | Baranwal, Gaurav; Vidyarthi, Deo Prakash                                                                                                             | A cloud service selection model using improved ranked voting method                                                            | Concurrency and Computation: Practice and Experience                                                                                                                                                                                      | 28     | 13     | 3540--3567    | 2016 | [https://doi.org/10.1002/cpe.3740](https://doi.org/10.1002/cpe.3740)                  | Wiley                                                             | found through Guerron2020                            |
| BASCI2009           | BASCI, D.; MISRA, S.                                                                                                                                 | Data Complexity Metrics for XML Web Services                                                                                   | Advances in Electrical and Computer Engineering                                                                                                                                                                                           | 9      | 2      | 9--15         | 2009 | [https://doi.org/10.4316/aece.2009.02002](https://doi.org/10.4316/aece.2009.02002)           | Universitatea Stefan cel Mare din Suceava                         | found through Bogner2020                             |
| Becker2015          | Becker, Matthias; Lehrig, Sebastian; Becker, Steffen                                                                                                 | Systematically Deriving Quality Metrics for Cloud Computing Systems                                                            | Proceedings of the 6th ACM/SPEC International Conference on Performance Engineering                                                                                                                                                       |        |        | 169–174       | 2015 | [https://doi.org/10.1145/2668930.2688043](https://doi.org/10.1145/2668930.2688043)           | Association for Computing Machinery                               |                                                      |
| Bento2021           | Bento, Andre; Correia, Jaime; Filipe, Ricardo; Araujo, Filipe; Cardoso, Jorge                                                                        | Automated Analysis of Distributed Tracing: Challenges and Research Directions                                                  | Journal of Grid Computing                                                                                                                                                                                                                 | 19     | 1      |               | 2021 | [https://doi.org/10.1007/s10723-021-09551-5](https://doi.org/10.1007/s10723-021-09551-5)        | Springer Science and Business Media LLC                         |                                                      |
| Bogner2020          | Bogner, Justus; Wagner, Stefan; Zimmermann, Alfred                                                                                                   | Collecting Service-Based Maintainability Metrics from RESTful API Descriptions: Static Analysis and Threshold Derivation       | Communications in Computer and Information Science                                                                                                                                                                                        |        |        | 215--227      | 2020 | [https://doi.org/10.1007%2F978-3-030-59155-7_16](https://doi.org/10.1007%2F978-3-030-59155-7_16)    | Springer International Publishing                                 |                                                      |
| Bogner2017          | Bogner, Justus; Wagner, Stefan; Zimmermann, Alfred                                                                                                   | Automatically Measuring the Maintainability of Service- and Microservice-Based Systems: A Literature Review                    | Proceedings of the 27th International Workshop on Software Measurement and 12th International Conference on Software Process and Product Measurement                                                                                      |        |        | 107–115       | 2017 | [https://doi.org/10.1145/3143434.3143443](https://doi.org/10.1145/3143434.3143443)           | Association for Computing Machinery                               |                                                      |
| Brito2021           | Brito, Miguel; Cunha, J\'acome; Saraiva, Jo\~ao                                                                                                  | Identification of Microservices from Monolithic Applications through Topic Modelling                                           | Proceedings of the 36th Annual ACM Symposium on Applied Computing                                                                                                                                                                         |        |        | 1409–1418     | 2021 | [https://doi.org/10.1145/3412841.3442016](https://doi.org/10.1145/3412841.3442016)           | Association for Computing Machinery                               |                                                      |
| Souza2016           | de Souza, Ramon Hugo; Flores, Paulo Arion; Dantas, Mario Antonio Ribeiro; Siqueira, Frank                                                            | Architectural recovering model for Distributed Databases: A reliability, availability and serviceability approach              | Symposium on Computers and Communication (ISCC)                                                                                                                                                                                           |        |        |               | 2016 | [https://doi.org/10.1109/iscc.2016.7543799](https://doi.org/10.1109/iscc.2016.7543799)         | IEEE                                                            | found through Guerron2020                            |
| Engel2018           | Engel, Thomas; Langermeier, Melanie; Bauer, Bernhard; Hofmann, Alexander                                                                             | Evaluation of Microservice Architectures: A Metric and Tool-Based Approach                                                     | Lecture Notes in Business Information Processing                                                                                                                                                                                          |        |        | 74--89        | 2018 | [https://doi.org/10.1007%2F978-3-319-92901-9_8](https://doi.org/10.1007%2F978-3-319-92901-9_8)     | Springer International Publishing                                 |                                                      |
| Garg2013            | Garg, Saurabh Kumar; Versteeg, Steve; Buyya, Rajkumar                                                                                                | A framework for ranking of cloud computing services                                                                            | Future Generation Computer Systems                                                                                                                                                                                                        | 29     | 4      | 1012--1023    | 2013 | [https://doi.org/10.1016/j.future.2012.06.006](https://doi.org/10.1016/j.future.2012.06.006)      | Elsevier BV                                                     | found through Guerron2020                            |
| Guerout2014         | Gu\'erout, Tom; Medjiah, Samir; Costa, Georges Da; Monteil, Thierry                                                                              | Quality of service modeling for green scheduling in Clouds                                                                     | Sustainable Computing: Informatics and Systems                                                                                                                                                                                            | 4      | 4      | 225--240      | 2014 | [https://doi.org/10.1016/j.suscom.2014.08.006](https://doi.org/10.1016/j.suscom.2014.08.006)      | Elsevier BV                                                     | found through Guerron2020                            |
| Guerron2020         | Guerron, Ximena; Abrahão, Silvia; Insfran, Emilio; Fernández-Diego, Marta; González-Ladrón-De-Guevara, Fernando                                      | A Taxonomy of Quality Metrics for Cloud Services                                                                               | IEEE Access                                                                                                                                                                                                                               | 8      |        | 131461-131498 | 2020 | [https://doi.org/10.1109/ACCESS.2020.3009079](https://doi.org/10.1109/ACCESS.2020.3009079)       |                                                                   |                                                      |
| Haupt2017           | Haupt, Florian; Leymann, Frank; Scherer, Anton; Vukojevic-Haupt, Karolina                                                                            | A Framework for the Structural Analysis of REST APIs                                                                           | 2017 IEEE International Conference on Software Architecture (ICSA)                                                                                                                                                                    |        |        |               | 2017 | [https://doi.org/10.1109/icsa.2017.40](https://doi.org/10.1109/icsa.2017.40)              | IEEE                                                            | found through Bogner2020                             |
| Hirzalla2009        | Hirzalla, Mamoun; Cleland-Huang, Jane; Arsanjani, Ali                                                                                                | A Metrics Suite for Evaluating Flexibility and Complexity in Service Oriented Architectures                                    | Service-Oriented Computing \textendash ICSOC 2008 Workshops                                                                                                                                                                           |        |        | 41--52        | 2009 | [https://doi.org/10.1007/978-3-642-01247-1_5](https://doi.org/10.1007/978-3-642-01247-1_5)       | Springer Berlin Heidelberg                                        | found through Bogner2017, Bogner2020 and NikDaud2014 |
| Hofmeister2008      | Hofmeister, Helge; Wirtz, Guido                                                                                                                      | Supporting Service-Oriented Design with Metrics                                                                                | 2008 12th International IEEE Enterprise Distributed Object Computing Conference                                                                                                                                                         |        |        |               | 2008 | [https://doi.org/10.1109/edoc.2008.13](https://doi.org/10.1109/edoc.2008.13)              | IEEE                                                            | found through Bogner2017 and NikDaud2014             |
| Hu2016              | Hu, Yazhou; Deng, Bo; Yang, Yu; Wang, Dongxia                                                                                                        | Elasticity Evaluation of IaaS Cloud Based on Mixed Workloads                                                                   | 15th International Symposium on Parallel and Distributed Computing (ISPDC)                                                                                                                                                                |        |        |               | 2016 | [https://doi.org/10.1109/ispdc.2016.28](https://doi.org/10.1109/ispdc.2016.28)             | IEEE                                                            |                                                      |
| Jin2021             | Jin, Wuxia; Liu, Ting; Cai, Yuanfang; Kazman, Rick; Mo, Ran; Zheng, Qinghua                                                                          | Service Candidate Identification from Monolithic Systems Based on Execution Traces                                             | IEEE Transactions on Software Engineering                                                                                                                                                                                               | 47     | 5      | 987--1007     | 2021 | [https://doi.org/10.1109/tse.2019.2910531](https://doi.org/10.1109/tse.2019.2910531)          | Institute of Electrical and Electronics Engineers (IEEE)        | found through Brito2021                              |
| Jin2018             | Jin, Wuxia; Liu, Ting; Zheng, Qinghua; Cui, Di; Cai, Yuanfang                                                                                        | Functionality-Oriented Microservice Extraction Based on Execution Trace Clustering                                             | International Conference on Web Services (ICWS)                                                                                                                                                                                           |        |        |               | 2018 | [https://doi.org/10.1109/icws.2018.00034](https://doi.org/10.1109/icws.2018.00034)           | IEEE                                                            | found through Brito2021                              |
| Karhikeyan2012      | Karhikeyan, T.; Geetha, J.                                                                                                                           | A metrics suite and fuzzy model for measuring coupling in Service Oriented Architecture                                        | 2012 International Conference on Recent Advances in Computing and Software Systems                                                                                                                                                        |        |        |               | 2012 | [https://doi.org/10.1109/racss.2012.6212677](https://doi.org/10.1109/racss.2012.6212677)        | IEEE                                                            | found through NikDaud2014                            |
| Kazemi2011          | Kazemi, Ali; Rostampour, Ali; Zamiri, Amin; Jamshidi, Pooyan; Haghighi, Hassan; Shams, Fereidoon                                                     | An Information Retrieval Based Approach for Measuring Service Conceptual Cohesion                                              | 2011 11th International Conference on Quality Software                                                                                                                                                                                    |        |        |               | 2011 | [https://doi.org/10.1109/qsic.2011.24](https://doi.org/10.1109/qsic.2011.24)              | IEEE                                                            | found through NikDaud2014                            |
| KAZEMI2013          | KAZEMI, A. L. I.; HAGHIGHI, H. A. S. S. A. N.; SHAMS, F. E. R. E. I. D. O. O. N.                                                                     | ABSIM: AN AUTOMATED BUSINESS SERVICE IDENTIFICATION METHOD                                                                     | International Journal of Software Engineering and Knowledge Engineering                                                                                                                                                                   | 23     | 09     | 1303--1342    | 2013 | [https://doi.org/10.1142/s0218194013500411](https://doi.org/10.1142/s0218194013500411)         | World Scientific Pub Co Pte Lt                                    | found through BaniIsmail2018                         |
| Kuhlenkamp2019      | Kuhlenkamp, Jörn; Werner, Sebastian; Borges, Maria C.; El Tal, Karim; Tai, Stefan                                                                    | An Evaluation of FaaS Platforms as a Foundation for Serverless Big Data Processing                                             | Proceedings of the 12th IEEE/ACM International Conference on Utility and Cloud Computing                                                                                                                                                  |        |        | 1–9           | 2019 | [https://doi.org/10.1145/3344341.3368796](https://doi.org/10.1145/3344341.3368796)           | Association for Computing Machinery                               |                                                      |
| La2013              | La, Hyun Jung; Her, Jin Sun; Kim, Soo Dong                                                                                                           | Framework for evaluating reusability of Component-as-a-Service (CaaS)                                                          | 2013 5th International Workshop on Principles of Engineering Service-Oriented Systems (PESOS)                                                                                                                                           |        |        |               | 2013 | [https://doi.org/10.1109/pesos.2013.6635976](https://doi.org/10.1109/pesos.2013.6635976)        | IEEE                                                            | found through Oliveira2018                           |
| Lehmann2017         | Lehmann, Martin; Sandnes, Frode Eika                                                                                                                 | A Framework for Evaluating Continuous Microservice Delivery Strategies                                                         | Proceedings of the Second International Conference on Internet of Things, Data and Cloud Computing                                                                                                                                        |        |        |               | 2017 | [https://doi.org/10.1145/3018896.3018961](https://doi.org/10.1145/3018896.3018961)           | Association for Computing Machinery                               |                                                      |
| Li2020              | Li, Keqin                                                                                                                                            | Quantitative Modeling and Analytical Calculation of Elasticity in Cloud Computing                                              | IEEE Transactions on Cloud Computing                                                                                                                                                                                                      | 8      | 4      | 1135-1148     | 2020 | [https://doi.org/10.1109/TCC.2017.2665549](https://doi.org/10.1109/TCC.2017.2665549)          |                                                                   |                                                      |
| Ma2009              | Ma, Qian; Zhou, Nianjun; Zhu, Yanfeng; Wang, Hao                                                                                                     | Evaluating Service Identification with Design Metrics on Business Process Decomposition                                        | International Conference on Services Computing                                                                                                                                                                                            |        |        |               | 2009 | [https://doi.org/10.1109/scc.2009.44](https://doi.org/10.1109/scc.2009.44)               | IEEE                                                            | found through Kazemi2013                             |
| Manuel2013          | Manuel, Paul                                                                                                                                         | A trust model of cloud computing based on Quality of Service                                                                   | Annals of Operations Research                                                                                                                                                                                                             | 233    | 1      | 281--292      | 2013 | [https://doi.org/10.1007/s10479-013-1380-x](https://doi.org/10.1007/s10479-013-1380-x)         | Springer Science and Business Media LLC                         | found through Guerron2020                            |
| NikDaud2014         | Nik Daud, Nik Marsyahariani; Wan Kadir, Wan M. N.                                                                                                    | Static and dynamic classifications for SOA structural attributes metrics                                                       | 2014 8th. Malaysian Software Engineering Conference (MySEC)                                                                                                                                                                               |        |        | 130-135       | 2014 | [https://doi.org/10.1109/MySec.2014.6986002](https://doi.org/10.1109/MySec.2014.6986002)        |                                                                   |                                                      |
| Ntentos2020a        | Ntentos, Evangelos; Zdun, Uwe; Plakidas, Konstantinos; Meixner, Sebastian; Geiger, Sebastian                                                         | Assessing Architecture Conformance to Coupling-Related Patterns and Practices in Microservices                                 | Software Architecture                                                                                                                                                                                                                     |        |        | 3--20         | 2020 | [https://doi.org/10.1007%2F978-3-030-58923-3_1](https://doi.org/10.1007%2F978-3-030-58923-3_1)     | Springer International Publishing                                 |                                                      |
| Ntentos2020         | Ntentos, Evangelos; Zdun, Uwe; Plakidas, Konstantinos; Meixner, Sebastian; Geiger, Sebastian                                                         | Metrics for Assessing Architecture Conformance to Microservice Architecture Patterns and Practices                             | International Conference on Service-Oriented Computing                                                                                                                                                                                    |        |        | 580--596      | 2020 | [https://doi.org/10.1007/978-3-030-65310-1_42](https://doi.org/10.1007/978-3-030-65310-1_42)      |                                                                   |                                                      |
| Oh2011              | Oh, Sang Hun; La, Hyun Jung; Kim, Soo Dong                                                                                                           | A Reusability Evaluation Suite for Cloud Services                                                                              | 2011 IEEE 8th International Conference on e-Business Engineering                                                                                                                                                                        |        |        |               | 2011 | [https://doi.org/10.1109/icebe.2011.27](https://doi.org/10.1109/icebe.2011.27)             | IEEE                                                            | found through La2013                                 |
| Oliveira2018        | Oliveira, Joyce Aline; Vargas, Matheus; Rodrigues, Roni                                                                                              | SOA Reuse: Systematic Literature Review Updating and Research Directions                                                       | Proceedings of the XIV Brazilian Symposium on Information Systems                                                                                                                                                                         |        |        |               | 2018 | [https://doi.org/10.1145/3229345.3229419](https://doi.org/10.1145/3229345.3229419)           | Association for Computing Machinery                               |                                                      |
| Perepletchikov2007  | Perepletchikov, Mikhail; Ryan, Caspar; Frampton, Keith                                                                                               | Cohesion Metrics for Predicting Maintainability of Service-Oriented Software                                                   | Seventh International Conference on Quality Software (QSIC 2007)                                                                                                                                                                        |        |        |               | 2007 | [https://doi.org/10.1109/qsic.2007.4385516](https://doi.org/10.1109/qsic.2007.4385516)         | IEEE                                                            | found through Bogner2017, Bogner2020 and NikDaud2014 |
| Perepletchikov2007a | Perepletchikov, Mikhail; Ryan, Caspar; Frampton, Keith; Tari, Zahir                                                                                  | Coupling Metrics for Predicting Maintainability in Service-Oriented Designs                                                    | 2007 Australian Software Engineering Conference (ASWEC\textquotesingle07)                                                                                                                                                             |        |        |               | 2007 | [https://doi.org/10.1109/aswec.2007.17](https://doi.org/10.1109/aswec.2007.17)             | IEEE                                                            | found through Bogner2017 and NikDaud2014             |
| PTQ2009             | Pham Thi Quynh; Thang, Huynh Quyet                                                                                                                   | Dynamic Coupling Metrics For Service – Oriented Software                                                                       | International Journal of Computer Science and Engineering                                                                                                                                                                                 |        |        |               | 2009 | [https://doi.org/10.5281/ZENODO.1058263](https://doi.org/10.5281/ZENODO.1058263)            | Zenodo                                                            | found through NikDaud2014                            |
| Qian2006            | Qian, Kai; Liu, Jigang; Tsui, F.                                                                                                                     | Decoupling Metrics for Services Composition                                                                                    | 5th IEEE/ACIS International Conference on Computer and Information Science and 1st IEEE/ACIS International Workshop on Component-Based Software Engineering,Software Architecture and Reuse (ICIS-COMSAR\textquotesingle06) |        |        |               | 2006 | [https://doi.org/10.1109/icis-comsar.2006.30](https://doi.org/10.1109/icis-comsar.2006.30)       | IEEE                                                            | found through NikDaud2014                            |
| Raj2018             | Raj, Vinay; Ravichandra, S.                                                                                                                          | Microservices: A perfect SOA based solution for Enterprise Applications compared to Web Services                               | 2018 3rd IEEE International Conference on Recent Trends in Electronics, Information Communication Technology (RTEICT)                                                                                                                     |        |        | 1531-1536     | 2018 | [https://doi.org/10.1109/RTEICT42901.2018.9012140](https://doi.org/10.1109/RTEICT42901.2018.9012140)  |                                                                   |                                                      |
| Raj2021             | Raj, Vinay; Sadam, Ravichandra                                                                                                                       | Evaluation of SOA-Based Web Services and Microservices Architecture Using Complexity Metrics                                   | SN Computer Science                                                                                                                                                                                                                     | 2      | 5      |               | 2021 | [https://doi.org/10.1007%2Fs42979-021-00767-6](https://doi.org/10.1007%2Fs42979-021-00767-6)      | Springer Science and Business Media LLC                         |                                                      |
| Rizvi2017           | Rizvi, Syed; Roddy, Hannah; Gualdoni, Joseph; Myzyri, Ilva                                                                                           | Three-Step Approach to QoS Maintenance in Cloud Computing Using a Third-Party Auditor                                          | Procedia computer science                                                                                                                                                                                                                 | 114    |        | 83--92        | 2017 | [https://doi.org/10.1016/j.procs.2017.09.014](https://doi.org/10.1016/j.procs.2017.09.014)       | Elsevier BV                                                     |                                                      |
| Rosa2020            | Rosa, Thatiane de Oliveira; Goldman, Alfredo; Guerra, Eduardo Martins                                                                                | How ‘micro’ are your services?                                                                                                 | 2020 IEEE International Conference on Software Architecture Companion (ICSA-C)                                                                                                                                                            |        |        | 75-78         | 2020 | [https://doi.org/10.1109/ICSA-C50368.2020.00023](https://doi.org/10.1109/ICSA-C50368.2020.00023)    |                                                                   |                                                      |
| Rud2006             | Rud, Dmytro; Schmietendorf, Andreas; Dumke, Reiner R.                                                                                                | Product Metrics for Service-Oriented Infrastructures                                                                           | IWSM/MetriKon                                                                                                                                                                                                                             |        |        |               | 2006 |                                                   |                                                                   | found through Bogner2017 and NikDaud2014             |
| Shim2008            | Shim, Bingu; Choue, Siho; Kim, Suntae; Park, Sooyong                                                                                                 | A Design Quality Model for Service-Oriented Architecture                                                                       | 2008 15th Asia-Pacific Software Engineering Conference                                                                                                                                                                                    |        |        |               | 2008 | [https://doi.org/10.1109/apsec.2008.32](https://doi.org/10.1109/apsec.2008.32)             | IEEE                                                            | found through Bogner2017                             |
| Singh2015           | Singh, Sukhpal; Chana, Inderveer                                                                                                                     | Q-aware: Quality of service based cloud resource provisioning                                                                  | Computers & Electrical Engineering                                                                                                                                                                                                        | 47     |        | 138--160      | 2015 | [https://doi.org/10.1016/j.compeleceng.2015.02.003](https://doi.org/10.1016/j.compeleceng.2015.02.003) | Elsevier BV                                                     |                                                      |
| Slimani2020         | Slimani, Sarra; Hamrouni, Tarek; Charrada, Faouzi Ben                                                                                                | Service-oriented replication strategies for improving quality-of-service in cloud computing: a survey                          | Cluster Computing                                                                                                                                                                                                                         | 24     | 1      | 361--392      | 2020 | [https://doi.org/10.1007/s10586-020-03108-z](https://doi.org/10.1007/s10586-020-03108-z)        | Springer Science and Business Media LLC                         |                                                      |
| Taherizadeh2017     | Taherizadeh, Salman; Stankovski, Vlado                                                                                                               | Incremental Learning from Multi-level Monitoring Data and Its Application to Component Based Software Engineering              | 41st Annual Computer Software and Applications Conference (COMPSAC)                                                                                                                                                                       |        |        |               | 2017 | [https://doi.org/10.1109/compsac.2017.148](https://doi.org/10.1109/compsac.2017.148)          | IEEE                                                            | found through Guerron2020                            |
| Talwar2005          | Talwar, V.; Wu, Qinyi; Pu, C.; Yan, Wenchang; Jung, Gueyoung; Milojicic, D.                                                                          | Comparison of Approaches to Service Deployment                                                                                 | 25th IEEE International Conference on Distributed Computing Systems (ICDCS\textquotesingle05)                                                                                                                                       |        |        |               | 2005 | [https://doi.org/10.1109/icdcs.2005.18](https://doi.org/10.1109/icdcs.2005.18)             | IEEE                                                            | found through Lehmann2017                            |
| Tiwari2014          | Tiwari, Umesh; Kumar, Santosh                                                                                                                        | In-out Interaction Complexity Metrics for Component-Based Software                                                             | SIGSOFT Softw. Eng. Notes                                                                                                                                                                                                                 | 39     | 5      | 1–4           | 2014 | [https://doi.org/10.1145/2659118.2659135](https://doi.org/10.1145/2659118.2659135)           | Association for Computing Machinery                               |                                                      |
| Vedam2012           | Vedam, Venu; Vemulapati, Jayanti                                                                                                                     | Demystifying Cloud Benchmarking Paradigm - An in Depth View                                                                    | 36th Annual Computer Software and Applications Conference                                                                                                                                                                                 |        |        |               | 2012 | [https://doi.org/10.1109/compsac.2012.61](https://doi.org/10.1109/compsac.2012.61)           | IEEE                                                            | found through Guerron2020                            |
| Wang2009            | Wang, Xiao-jun                                                                                                                                       | Metrics for Evaluating Coupling and Service Granularity in Service Oriented Architecture                                       | 2009 International Conference on Information Engineering and Computer Science                                                                                                                                                             |        |        |               | 2009 | [https://doi.org/10.1109/iciecs.2009.5362767](https://doi.org/10.1109/iciecs.2009.5362767)       | IEEE                                                            | found through NikDaud2014                            |
| Xiong2015           | Xiong, Kaiqi; Chen, Xiao                                                                                                                             | Ensuring Cloud Service Guarantees via Service Level Agreement (SLA)-Based Resource Allocation                                  | 35th International Conference on Distributed Computing Systems Workshops                                                                                                                                                                  |        |        |               | 2015 | [https://doi.org/10.1109/icdcsw.2015.18](https://doi.org/10.1109/icdcsw.2015.18)            | IEEE                                                            | found through Guerron2020                            |
| Zdun2017            | Zdun, Uwe; Navarro, Elena; Leymann, Frank                                                                                                            | Ensuring and Assessing Architecture Conformance to Microservice Decomposition Patterns                                         | Service-Oriented Computing                                                                                                                                                                                                                |        |        | 411--429      | 2017 | [https://doi.org/10.1007%2F978-3-319-69035-3_29](https://doi.org/10.1007%2F978-3-319-69035-3_29)    | Springer International Publishing                                 |                                                      |
| Zhang2009           | Zhang, Qingqing; Xinke, Li                                                                                                                           | Complexity Metrics for Service-Oriented Systems                                                                                | 2009 Second International Symposium on Knowledge Acquisition and Modeling                                                                                                                                                                 |        |        |               | 2009 | [https://doi.org/10.1109/kam.2009.90](https://doi.org/10.1109/kam.2009.90)               | IEEE                                                            | found through Bogner2017 and NikDaud2014             |
| Zimmermann2015      | Zimmermann, Olaf                                                                                                                                     | Metrics for Architectural Synthesis and Evaluation: Requirements and Compilation by Viewpoint: An Industrial Experience Report | Proceedings of the Second International Workshop on Software Architecture and Metrics                                                                                                                                                     |        |        | 8–14          | 2015 |                                                   | IEEE Press                                                        |                                                      |
| Camilli2022         | Camilli, Matteo; Guerriero, Antonio; Janes, Andrea; Russo, Barbara; Russo, Stefano                                                                   | Microservices Integrated Performance and Reliability Testing                                                                   | Proceedings of the 3rd ACM/IEEE International Conference on Automation of Software Test                                                                                                                                                   |        |        | 29–39         | 2022 | [https://doi.org/10.1145/3524481.3527233](https://doi.org/10.1145/3524481.3527233)           | Association for Computing Machinery                               |                                                      |
| Filippone2023       | Filippone, Gianluca; Mehmood, Nadeem Qaisar; Autili, Marco; Rossi, Fabrizio; Tivoli, Massimo                                                         | From monolithic to microservice architecture: an automated approach based on graph clustering and combinatorial optimization   | 2023 IEEE 20th International Conference on Software Architecture (ICSA)                                                                                                                                                               |        |        |               | 2023 | [https://doi.org/10.1109/icsa56044.2023.00013](https://doi.org/10.1109/icsa56044.2023.00013)      | IEEE                                                            | cites Brito2021                                      |
| Genfer2021          | Genfer, Patric; Zdun, Uwe                                                                                                                            | Identifying Domain-Based Cyclic Dependencies in Microservice APIs Using Source Code Detectors                                  | Software Architecture                                                                                                                                                                                                                     |        |        | 207--222      | 2021 | [https://doi.org/10.1007/978-3-030-86044-8_15](https://doi.org/10.1007/978-3-030-86044-8_15)      | Springer International Publishing                                 | cites Engel2018                                      |
| Henning2022         | Henning, Sören; Hasselbring, Wilhelm                                                                                                                 | A configurable method for benchmarking scalability of cloud-native applications                                                | Empirical Software Engineering                                                                                                                                                                                                            | 27     | 6      |               | 2022 | [https://doi.org/10.1007/s10664-022-10162-1](https://doi.org/10.1007/s10664-022-10162-1)        | Springer Science and Business Media LLC                         |                                                      |
| Moreira2022         | Moreira, Mateus Gabi; De Fran\cca, Breno Bernard Nicolau                                                                                           | Analysis of Microservice Evolution Using Cohesion Metrics                                                                      | Proceedings of the 16th Brazilian Symposium on Software Components, Architectures, and Reuse                                                                                                                                              |        |        | 40–49         | 2022 | [https://doi.org/10.1145/3559712.3559716](https://doi.org/10.1145/3559712.3559716)           | Association for Computing Machinery                               |                                                      |
| Ntentos2022         | Ntentos, Evangelos; Zdun, Uwe; Falazi, Ghareeb; Breitenbucher, Uwe; Leymann, Frank                                                                   | Assessing Architecture Conformance to Security-Related Practices in Infrastructure as Code Based Deployments                   | 2022 IEEE International Conference on Services Computing (SCC)                                                                                                                                                                        |        |        |               | 2022 | [https://doi.org/10.1109/scc55611.2022.00029](https://doi.org/10.1109/scc55611.2022.00029)       | IEEE                                                            | cites Zdun2017                                       |
| Peng2022            | Peng, Xin; Zhang, Chenxi; Zhao, Zhongyuan; Isami, Akasaka; Guo, Xiaofeng; Cui, Yunna                                                                 | Trace Analysis Based Microservice Architecture Measurement                                                                     | Proceedings of the 30th ACM Joint European Software Engineering Conference and Symposium on the Foundations of Software Engineering                                                                                                       |        |        | 1589–1599     | 2022 | [https://doi.org/10.1145/3540250.3558951](https://doi.org/10.1145/3540250.3558951)           | Association for Computing Machinery                               |                                                      |
| Silva2023           | Silva, Samira; Tuyishime, Adiel; Santilli, Tiziano; Pelliccione, Patrizio; Iovino, Ludovico                                                          | Quality Metrics in Software Architecture                                                                                       | 2023 IEEE 20th International Conference on Software Architecture (ICSA)                                                                                                                                                               |        |        |               | 2023 | [https://doi.org/10.1109/icsa56044.2023.00014](https://doi.org/10.1109/icsa56044.2023.00014)      | IEEE                                                            | cites Perepletchikov2007                             |
| Straesser2023       | Straesser, Martin; Mathiasch, Jonas; Bauer, Andr\'e; Kounev, Samuel                                                                                | A Systematic Approach for Benchmarking of Container Orchestration Frameworks                                                   | Proceedings of the 2023 ACM/SPEC International Conference on Performance Engineering                                                                                                                                                      |        |        | 187–198       | 2023 | [https://doi.org/10.1145/3578244.3583726](https://doi.org/10.1145/3578244.3583726)           | Association for Computing Machinery                               |                                                      |
| Yussupov2022        | Yussupov, Vladimir; Breitenbücher, Uwe; Brogi, Antonio; Harzenetter, Lukas; Leymann, Frank; Soldani, Jacopo                                          | Serverless or~Serverful? A~Pattern-Based Approach for~Exploring Hosting Alternatives                                           | Service-Oriented Computing                                                                                                                                                                                                                |        |        | 45--67        | 2022 | [https://doi.org/10.1007/978-3-031-18304-1_3](https://doi.org/10.1007/978-3-031-18304-1_3)       | Springer International Publishing                                 |                                                      |
| Zdun2023            | Zdun, Uwe; Queval, Pierre-Jean; Simhandl, Georg; Scandariato, Riccardo; Chakravarty, Somik; Jelic, Marjan; Jovanovic, Aleksandar                     | Microservice Security Metrics for Secure Communication, Identity Management, and Observability                                 | ACM Transactions on Software Engineering and Methodology                                                                                                                                                                                | 32     | 1      | 1--34         | 2023 | [https://doi.org/10.1145/3532183](https://doi.org/10.1145/3532183)                   | Association for Computing Machinery (ACM)                       | cites Engel2018, Zdun2017                            |
| Venkitachalam2017   | Venkitachalam, Hariharan; Powale, Kalkin Anand; Granrath, Christian; Richenhagen, Johannes                                                           | Automated Continuous Evaluation of AUTOSAR Software Architecture for Complex Powertrain Systems                                |                                                                                                                                                                                                                                           |        |        |               | 2017 | [https://doi.org/10.18420/IN2017_156](https://doi.org/10.18420/IN2017_156)               | Gesellschaft für Informatik, Bonn                                 |                                                      |
| AlDebagy2020        | Al-Debagy, O.; Martinek, P.                                                                                                                          | A Metrics Framework for Evaluating Microservices Architecture Designs                                                          | Journal of Web Engineering                                                                                                                                                                                                                | 19     | 3–4    | 341-370       | 2020 | [https://doi.org/10.13052/jwe1540-9589.19341](https://doi.org/10.13052/jwe1540-9589.19341)       |                                                                   |                                                      |
| Perera2018          | Perera, K. J. P. G.; Perera, I.                                                                                                                      | TheArchitect: A Serverless-Microservices Based High-level Architecture Generation Tool                                         | 2018 IEEE/ACIS 17th International Conference on Computer and Information Science (ICIS)                                                                                                                                                   |        |        | 204-210       | 2018 | [https://doi.org/10.1109/ICIS.2018.8466390](https://doi.org/10.1109/ICIS.2018.8466390)         |                                                                   |                                                      |
| Perera2018a         | Perera, K. J. P. G.; Perera, I.                                                                                                                      | A Rule-based System for Automated Generation of Serverless-Microservices Architecture                                          | 2018 IEEE International Systems Engineering Symposium (ISSE)                                                                                                                                                                              |        |        | 1-8           | 2018 | [https://doi.org/10.1109/SysEng.2018.8544423](https://doi.org/10.1109/SysEng.2018.8544423)       |                                                                   |                                                      |
| Asik2017            | Asik, Tugrul; Selcuk, Yunus Emre                                                                                                                     | Policy enforcement upon software based on microservice architecture                                                            | 2017 IEEE 15th International Conference on Software Engineering Research, Management and Applications (SERA)                                                                                                                              |        |        | 283-287       | 2017 | [https://doi.org/10.1109/SERA.2017.7965739](https://doi.org/10.1109/SERA.2017.7965739)         |                                                                   |                                                      |
| Gamage2021          | Gamage, Isuru Udara Piyadigama; Perera, Indika                                                                                                       | Using dependency graph and graph theory concepts to identify anti-patterns in a microservices system: A tool-based approach    | 2021 Moratuwa Engineering Research Conference (MERCon)                                                                                                                                                                                    |        |        | 699-704       | 2021 | [https://doi.org/10.1109/MERCon52712.2021.9525743](https://doi.org/10.1109/MERCon52712.2021.9525743)  |                                                                   |                                                      |
| Abgaz2023           | Abgaz, Yalemisew; McCarren, Andrew; Elger, Peter; Solan, David; Lapuz, Neil; Bivol, Marin; Jackson, Glenn; Yilmaz, Murat; Buckley, Jim; Clarke, Paul | Decomposition of Monolith Applications Into Microservices Architectures: A Systematic Review                                   | IEEE Transactions on Software Engineering                                                                                                                                                                                                 | 49     | 8      | 4213-4242     | 2023 | [https://doi.org/10.1109/TSE.2023.3287297](https://doi.org/10.1109/TSE.2023.3287297)          |                                                                   |                                                      |
| Zdun2023a           | Zdun, Uwe; Queval, Pierre-Jean; Simhandl, Georg; Scandariato, Riccardo; Chakravarty, Somik; Jelić, Marjan; Jovanović, Aleksandar                     | Detection Strategies for Microservice Security Tactics                                                                         | IEEE Transactions on Dependable and Secure Computing                                                                                                                                                                                      |        |        | 1-17          | 2023 | [https://doi.org/10.1109/TDSC.2023.3276487](https://doi.org/10.1109/TDSC.2023.3276487)         |                                                                   |                                                      |
| Daniel2023          | Daniel, João; Guerra, Eduardo; Rosa, Thatiane; Goldman, Alfredo                                                                                      | Towards the Detection of Microservice Patterns Based on Metrics                                                                | 2023 49th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)                                                                                                                                                   |        |        | 132-139       | 2023 | [https://doi.org/10.1109/SEAA60479.2023.00029](https://doi.org/10.1109/SEAA60479.2023.00029)      |                                                                   |                                                      |
| Ntentos2021         | Ntentos, Evangelos; Zdun, Uwe; Plakidas, Konstantinos; Geiger, Sebastian                                                                             | Evaluating and Improving Microservice Architecture Conformance to Architectural Design Decisions                               | Lecture Notes in Computer Science                                                                                                                                                                                                         |        |        | 188–203       | 2021 | [https://dx.doi.org/10.1007/978-3-030-91431-8_12](https://dx.doi.org/10.1007/978-3-030-91431-8_12)   | Springer International Publishing                                 |                                                      |
| Assuncao2021        | Assuncao, Wesley K. G.; Colanzi, Thelma Elita; Carvalho, Luiz; Pereira, Juliana Alves; Garcia, Alessandro; de Lima, Maria Julia; Lucena, Carlos      | A Multi-Criteria Strategy for Redesigning Legacy Features as Microservices: An Industrial Case Study                           | 2021 IEEE International Conference on Software Analysis, Evolution and Reengineering (SANER)                                                                                                                                              |        |        |               | 2021 | [https://doi.org/10.1109/saner50967.2021.00042](https://doi.org/10.1109/saner50967.2021.00042)     | IEEE                                                              | found through Abgaz2023                              |
| Desai2021           | Desai, Utkarsh; Bandyopadhyay, Sambaran; Tamilselvam, Srikanth                                                                                       | Graph Neural Network to Dilute Outliers for Refactoring Monolith Application                                                   | Proceedings of the AAAI Conference on Artificial Intelligence                                                                                                                                                                             | 35     | 1      | 72--80        | 2021 | [https://doi.org/10.1609/aaai.v35i1.16079](https://doi.org/10.1609/aaai.v35i1.16079)          | Association for the Advancement of Artificial Intelligence (AAAI) | found through Abgaz2023                              |