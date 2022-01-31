---
permalink: /creation-process
layout: page
title: Creation Process
---

We created this quality model by applying the following methodology:

![Methodology](assets/img/methodology.svg)

The quality model is based on the [Quamoco meta model](https://mediatum.ub.tum.de/doc/1110600/file.pdf) and we defined Quality aspects, product factors, entities, and measures as described by this excerpt from the Quamoco meta model:

![An excerpt of the Quamoco meta model](assets/img/quamoco.svg)

Referring to the methodology, in the following, details for the different steps (A,B,C,D,E) are presented.
For the visualizations of the diagrams we used: [https://app.diagrams.net/](https://app.diagrams.net/)

### Step A

In the first step we extracted separate statements from the following definitions for cloud-native applications:

* [CNCF2018](https://github.com/cncf/toc/blob/master/DEFINITION.md)
* [Fehling2014](https://doi.org/10.1007/978-3-7091-1568-8)
* [Gannon2017](https://doi.org/10.1109/MCC.2017.4250939)
* [Kratzke2017](https://doi.org/10.1016/j.jss.2017.01.001)
* [Pahl2018](https://doi.org/10.1145/3104028)
* [Pivotal2017](https://tanzu.vmware.com/de/cloud-native)
* [RedHat2018](https://www.redhat.com/en/topics/cloud-native-apps)
* [Toffetti2017](https://doi.org/10.1016/j.future.2016.09.002)
* [Wurster2020](https://doi.org/10.5220/0009571001710180)

### Step B

In the second step we mapped the statements to the quality aspects of the [ISO25010 standard](https://iso25000.com/index.php/en/iso-25000-standards/iso-25010).

### Step C

In the third step, we further differentiated the statements to derive quality aspects as required from the Quamoco meta model:

![The initial quality aspects for the quality model](assets/img/C_cna%20quality%20aspects.svg)

### Step D

In the forth step we defined more specific product factors which impact and realize the found quality aspects. Therefore we relied on the following practitioner books and mapped statements and chapters to the quality aspects:

| Title                                                                                                                    | Author(s)                                                                                          | Year | Publisher |   |
|--------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|------|-----------|---|
| [Cloud Native Infrastructure](https://www.oreilly.com/library/view/cloud-native-infrastructure/9781491984291/)           | Justin Garrison and Kris Nova                                                                      | 2017 | O'Reilly  |   |
| [Cloud Native Java](https://www.oreilly.com/library/view/cloud-native-java/9781449374631/)                               | Kenny Bastani and Josh Long                                                                        | 2017 | O'Reilly  |   |
| [Cloud Native Patterns](https://www.manning.com/books/cloud-native-patterns)                                             | Cornelia Davis                                                                                     | 2019 | Manning   |   |
| [Cloud Native](https://www.oreilly.com/library/view/cloud-native/9781492053811/)                                         | Boris Scholl, Trent Swanson, and Peter Jausovec                                                    | 2019 | O'Reilly  |   |
| [Microservices Patterns](https://www.manning.com/books/microservices-patterns)                                           | Chris Richardson                                                                                   | 2019 | Manning   |   |
| [Cloud Native Transformation](https://www.oreilly.com/library/view/cloud-native-transformation/9781492048893/)           | Pini Reznik, Jamie Dobson, and Michelle Gienow                                                     | 2019 | O'Reilly  |   |
| [Cloud Native DevOps with Kubernetes](https://www.oreilly.com/library/view/cloud-native-devops/9781492040750/)           | John Arundel and Justin Domingus                                                                   | 2019 | O'Reilly  |   |
| [Kubernetes Patterns](https://www.oreilly.com/library/view/kubernetes-patterns/9781492050278/)                           | Bilgin Ibryam and Roland Huß                                                                       | 2020 | O'Reilly  |   |
| [Building Secure and Reliable Systems](https://www.oreilly.com/library/view/building-secure-and/9781492083115/)          | Heather Adkins, Betsy Beyer, Paul Blankinship, Piotr Lewandowski, Ana Oprea, and Adam Stubblefield | 2020 | O'Reilly  |   |
| [Design Patterns for Cloud Native Applications](https://www.oreilly.com/library/view/design-patterns-for/9781492090700/) | Kasun Indrasiri and Sriskandarajah Suhothayan                                                      | 2021 | O'Reilly  |   |
| [Practical Process Automation](https://www.oreilly.com/library/view/practical-process-automation/9781492061441/)         | Bernd Rücker                                                                                       | 2021 | O'Reilly  |   |
| [Cloud Native Architecture and Design](https://link.springer.com/book/10.1007/978-1-4842-7226-8)                         | Shivakumar Goniwada                                                                                | 2021 | Apress    |   |

After the intial scanning of the practitioner books we had added the product factors as shown here:

![The initial product factors for the quality model](assets/img/D1_quality_aspects_refined.svg)

After having read all books, we iterated on the found statements and refined the factor hierarchy:

![The refined product factors for the quality model](assets/img/D2_product_factors.svg)

### Step E

In the final step we added measures to the product factors as currently available in the scientific literature. This therefore serves as an evaluation of the currently existing measures which suit our model showing for which product factors measures have already been presented and for which product factors it is necessary to propose additional measures in future work (We do not propose additional measures in this work to keep the model in its current state aligned to existing literature).

But because measures need to be based on entities which form the software architecture, suitable entities are needed. Therefore we propose the following entities which can describe the software architecture of a cloud-native application as suitable for our quality model:

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

To find suitable measures, we performed a literature search, as described in more detail in [Search Process](search-process).

We first collected all measures that we found and characterized them. Then we selected only those measures suitable for our quality model (that means a measure fits to a product factor of our quality model and is based on the same level of abstraction as defined by our proposed entities). The selected measures are list at [Measures](measures).

Next, we added these selected measures to our quality model:

![The quality model with measures added](assets/img/E3_measures.svg)

It is important to note that up to this point our quality model has a broad scope also including aspects such as the deployment process (and fitting product factors) and runtime measures (shown in purple in the previous visualization). We deliberately included these things in our quality model to gather as much information as possible. However, because the focus of our quality model should be on the design time of a software architecture, we iterated on the quality model once more to only include aspects that can be evaluated at design time (therefore excluding runtime measures) and can be evaluated based on the entities that we have proposed (therefore excluding for example aspects considering the deployment process). It might be possible to reconsider these things in future work, but for now we want to focus on the design time and elaborate our quality model to enable quantitative evaluations of software architectures.

Our final quality model with this specific scope:

![The final quality model focused on the architectural design](assets/img/E4_final_quality_model.svg)

However, this visualization is problematic, because the relations between factors are difficult to see and follow. We therefore chose to change the visualization to a "star" form where the top most quality aspects are shown with a black background at the edges and product factors impacting multiple quality aspects can therefore be but in the middle. This is also the visualization shown at [Overview](/):

![The final quality model focused on the architectural design visualized in a star form](assets/img/E4_final_quality_model_starform.svg)
