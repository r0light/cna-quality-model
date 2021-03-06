# Literature search for scientific literature proposing measures for the quality of cloud-native application architectures

The search process we used to find scientific literature presenting measures suitable for our quality model is detailed in the following:

## Basics

We used the following two general search strings (which we transformed into library-specific forms as shown below) to capture both the topics of service-orientation for which microservices are the latest trend and cloud computing as being the foundation for cloud-nativeness:

Search string 1: (Abstract:(architecture)) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(service-oriented) OR Abstract:(microservices))

Search string 2: (Abstract:(cloud-native) OR Abstract:("cloud computing")) AND (Abstract:(measure) OR Abstract:(metric)) AND (Abstract:(quality))

We did the literature search on all libraries on 2021-10-04.

## Searched libraries

### [ACM](https://dl.acm.org/)

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

### [IEEE](https://ieeexplore.ieee.org/Xplore/)

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

### [Springer Link](link.springer.com??)

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

### Merged results

All results merged are given in: [00-raw-measures-literature.bib](00-raw-measures-literature.bib)

It includes 749 results (after removing duplicates).

## Filtering for suitable literature

### 1. Filtering based on the title and other meta information

In this step we...:

* removed meta entries for conference proceedings
* removed books (which were included in the SpringerLink search)
* removed abstracts for keynotes
* removed papers with unrelated topics based on the title, including hardware-focused topics and topics considering too specific contexts like cloud gaming, autonomous vehicles or smart cities

...which resulted in 193 papers being left.
see: [01-title-fits-measures-literature.bib](01-title-fits-measures-literature.bib)

### 2. Filtering based on the abstract

In this step we...:

* removed papers which consider the data center level from a cloud provider perspective or very low-level measurements and approaches (operating system, runtime environments)
* removed papers which foucs on the quality of services from an end-user perspective
* removed papers with measures which focus on internal component design (at the class or method level)
* removed papers with measures for which a calculation is not clearly described or for which a manual assessment for example by an expert is required
* removed papers with a too specific focus on a specific technology (like databases, big data analysis)

...which resulted in 101 papers being left.
see: [02-abstract-fits-measures-literature.bib](02-abstract-fits-measures-literature.bib)

### 3. Scanned papers based on the full-text

In this step we...:

* reapplied the criteria mentioned in the previous steps, because the title and abstract sometimes do not contain all information needed for a correct judgement about the suitability of a paper.
* selected only those papers which contained measures or metrics on a suitable level of abstraction and described sufficiently enough to be included in the quality model

#### For each paper removed in this step, we provide a short reason why

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

#### Papers which describe useable metrics

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
see: [03-fulltext-fits-measures-literature.bib](03-fulltext-fits-measures-literature.bib)

#### Papers which lead to the identification of additional papers presenting usable metrics

* BaniIsmail2018: A survey on service identification methods. Because it is a survey, other approaches are reported only on a higher level and details such as metrics are not presented in this paper.
* Bogner2020: An analysis of RESTful API descriptions using existing metrics.
* Brito2021: Presents an approach for service identification through topic modelling; relies on existing metrics for the evaluation of the own approach.
* Guerron2020: A comprehensive review of literature on cloud computing quality metrics.
* Lehmann2017: Qualitative evaluation of CI/CD strategies which uses some existing metrics.
* NikDaud2014: A review of metrics for cohesion, coupling and complexity of SOA-based systems which have previously been introduced.
* Oliveira2018: A review of SOA reuse which also considers the usage for metrics for measuring reurse. Only few papers were found which actually describe metrics.

7 papers were either reviews or used metrics from previous work. Therefore we checked their references to identify additional papers which present metrics.
see: [03-fulltext-fits-measures-literature.bib](03-fulltext-fits-measures-literature.bib)

#### Papers which were identified in addition recursively based on the previously mentioned papers

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
see: [04-recursively-found-literature.bib](04-recursively-found-literature.bib)

As a final set we therefore considered 61 papers leading to or containing measures or metrics suitable for the quality model.
see: [05-final-set-of-literature.bib](05-final-set-of-literature.bib)
