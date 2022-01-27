# Properties listed by Gannon 2017

Gannon, D.; Barga, R. & Sundaresan, N.
Cloud-Native Applications 
IEEE Cloud Computing, Institute of Electrical and Electronics Engineers (IEEE), 2017, 4, 16-21

*   Cloud-native applications often operate at global scale. While an ordinary website can be accessed anywhere that the Internet is unblocked, true global scale implies much more. It implies that the application’s data and services are replicated in local data centers so that interaction latencies are minimized. It implies that the consistency models used are robust enough to give the user confidence in the integrity of the application.
*   Cloud-native applications must scale well with thousands of concurrent users. This is another dimension of parallelism that is orthogonal to the horizontal scaling of data required for global-scale distribution and it requires careful attention to synchronization and consistency in distributed systems.
*   They are built on the assumption that infrastructure is fluid and failure is constant. This concept is the foundation for the original design of the Internet protocols, but applications that were built for execution on a single PC, mainframe, or supercomputer assume the underlying OS and hardware are rock solid. Consequently, when these applications are ported to the cloud, they fail with the first hiccup in the datacenter or network. Even when the failure rate for hardware or networks is extremely small, the law of large numbers guarantees that when you attempt global scale something is always broken or about to break.
*   Cloud-native applications are designed so that upgrade and test occur seamlessly without disrupting production. While not every cloud-native application is intended for use by a million concurrent users spread over the planet, most are designed for continuous operation. Monitoring critical instruments which must not be left unattended is one example. But all applications need to be upgraded, without interrupting normal operations, and the upgrades then need to be tested, so the architecture of the application must allow this.
*   Security is not an afterthought. As we shall see, many cloud-native applications are built from many small component and these components must not hold sensitive credentials. Firewalls are not sufficient because access controls need to be managed at multiple levels in the application. Security must be part of the underlying application architecture.