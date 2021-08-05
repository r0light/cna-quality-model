# Cloud-Native applications

[available online](https://tanzu.vmware.com/de/cloud-native) - last accessed 2020-07-21

## What are Cloud-Native Applications?

Cloud-native is an approach to building and running applications that exploits the advantages of the cloud computing model. The cloud has redefined the competitive landscape across virtually all industries by eliminating the focus on capital investment and staff to run an enterprise data center, replacing it with limitless computing power on-demand and pay-as-you-go. Reduced IT spend means a lower barrier to entry with competitive advantage becoming a function of the speed teams can bring new ideas to market, which is why software is eating the world and startups are using cloud-native approaches to disrupt traditional industries.

Yet organizations require a platform for building and operating cloud-native applications and services that automates and integrates the concepts of DevOps, continuous delivery, microservices, and containers:

**DevOps** is the collaboration between software developers and IT operations with the goal of automating the process of software delivery and infrastructure changes. It creates a culture and environment where building, testing and releasing software can happen rapidly, frequently, and more reliably.

**Continuous Delivery** makes an individual application change ready for release as soon as it is ready, without waiting for bundling with other changes into a release or an event such as a maintenance window. Continuous delivery makes the act of releasing dull and reliable, so organizations can deliver frequently, at less risk, and get feedback faster from end users until deployment becomes an integral part of the business process and enterprise competitiveness.

**Microservices** is an architectural approach to developing an application as a collection of small services; each service implements business capabilities, runs in its own process and communicates via an HTTP API. Each microservice can be deployed, upgraded, scaled, and restarted independent of other services in the application, typically as part of an automated system, enabling frequent updates to live applications without impacting end customers.

**Containers** offer both efficiency and speed compared with standard virtual machines (VMs). Using operating system (OS)-level virtualization, a single OS instance is dynamically divided among one or more isolated containers, each with a unique writable file system and resource quota. The low overhead of creating and destroying containers combined with the high packing density in a single VM makes containers the perfect compute vehicle for deploying individual microservices.

## Why Cloud-Native Applications Matter

Cloud-native applications are purpose built for the cloud model. These applications—built and deployed in a rapid cadence by small, dedicated feature teams to a platform that offers easy scale-out and hardware decoupling—offer organizations greater agility, resilience, and portability across clouds.

### Cloud is a competitive advantage

Cloud-native means switching up cloud goals from IT cost savings to the engine of business growth. In the age of software, businesses that can quickly build and deliver applications in response to customer needs will dominate their industries. Once delivered, applications must run as always-on, elastic-scale services.

### Flexibility

Enterprises can build applications that will run on any cloud without modification. Teams can retain the ability to migrate or distribute applications across multiple cloud vendors and a private cloud to match their own business priorities and to optimize cloud pricing.

### Lets developers do their best work

Teams embracing cloud-native applications insulate their developers from the overhead of writing code to run and scale across a range of diverse cloud infrastructures and let them focus on writing code that delivers customer value. Twelve-factor apps on standardized developer stacks, calling on a standard set of services, provide a standard developer ‘contract’ to ensure their applications take full advantage of the underlying cloud-native platform.

### Align operations with the business

By automating IT operations, enterprises can transform into a lean, focused team aligned with driving business priorities. They can eliminate the risk of failure due to human error as staff focus on process improvement in place of routine, mundane admin tasks. With automated live patching and upgrades at all levels of the stack, they eliminate downtime and the need for ops experts with ‘hand-me-down’ expertise.

## Cloud-Native applications versus traditional Enterprise Applications

**Predictable**. Cloud-native applications conform to a framework or “contract” designed to maximize resilience through predictable behaviors. The highly automated, container-driven infrastructure used in cloud platforms drives the way software is written. A good example of such a “contract” is illustrated by the 12 principles first documented as the twelve factor app.

**OS abstraction**. Cloud-native application architecture requires developers to use a platform as a means for abstracting away from underlying infrastructure dependencies to enable simple migration and scaling of the application. The most efficient means of abstraction is a formalized platform, for example, VMware Tanzu which is ideal for operating on cloud-based infrastructure such as Google Cloud Platform (GCP), Microsoft Azure, or Amazon Web Services (AWS).

**Right-sized capacity**. A cloud-native application platform automates infrastructure provisioning and configuration, dynamically allocating and reallocating resources at deploy time based on the ongoing needs of the application. Building on a cloud-native runtime optimizes application lifecycle management, including scaling to meet demand, resource utilization, orchestration across available resources, and recovery from failures to minimize downtime.

**Collaborative**. Cloud-native facilitates DevOps, a combination of people, process, and tools, resulting in a close collaboration between development and operations functions to speed and smooth the transfer of finished application code into production.

**Continuous delivery**. IT teams make individual software updates available for release as soon as they are ready. Organizations that release software rapidly get a tighter feedback loop and can respond more effectively to customer needs. Continuous delivery works best with other related approaches including test-driven development and continuous integration.

**Independent**. Microservices architecture decomposes applications into small, loosely coupled independently operating services. These services map to smaller, independent development teams and make possible frequent, independent updates, scaling, and failover/restart without impacting other services.

**Automated scalability**. Infrastructure automation at scale eliminates downtime due to human error. Computer automation faces no such challenge, consistently applying the same set of rules across any size of deployment. Cloud-native also goes beyond the ad-hoc automation built on top of traditional virtualization-oriented orchestration. A fully cloud-native architecture includes automation and orchestration that works for teams instead of requiring them to write automations as custom recipes. In other words, the automation makes it easy to build and run applications that can be easily managed.

**Rapid recovery**. The container runtime and orchestrator provides a dynamic, high-density virtualization overlay on top of a VM, ideally matched to hosting microservices. Orchestration dynamically manages placement of containers across a cluster of VMs to provide elastic scaling and recovery/restart in the event of failure.

## Considering Cloud-Native Applications? Here’s What to Keep in Mind.

### Operations will be transformed in a cloud-native world.

Your operations team will graduate from keepers of the status quo to champions of process improvement and automation, delivering value direct to the business. A cloud-native platform takes care of day 1 release and day 2 operations of applications, automatically monitoring and remediating issues that previously needed manual intervention.

### Your workloads will need to be prioritized.

Not every workload should be converted to cloud-native. Business and IT professionals need to work together to prioritize legacy and greenfield workloads to determine the technical feasibility, strategic importance, and hence the ROI on a cloud-native direction in each case. In addition to greenfield development, a variety of replatforming patterns are available to help with this assessment.

### Developers will need to code to a contract.

To reap the benefits of a cloud-native platform, developers will likely require more discipline to follow the 12-factor principles and standardized platform and services. This may be a change from the carte blanche they previously coded against, but any resistance should be mitigated with the benefits provided by the cloud-native platform.

### You will need a platform; build or buy?

Many teams explore building their own platform from a combination of open-source automation and container technologies. However, they soon discover they need more components than they thought—all of which weren’t designed to work together and their effort will delay starting the real work of building applications. Add to this to the fact that once teams have a working platform, they have to maintain it. Compare this experience to using a proven, integrated platform like VMware Tanzu. From day 1, teams can focus on building applications that drive business, confident in the platform’s ability to take care of ops and infrastructure.

### You don’t have to go it alone.

Learning through immersion, for example, by working with Pivotal Labs, can thoroughly soak a team in Agile product development practices such as continuous delivery, and reinforce new development habits. There’s a wealth of information out there about this model: consume it and try it out. It’s a chance for teams to try something new if they’re in that 75 percent that feel like their organizations are not agile enough.