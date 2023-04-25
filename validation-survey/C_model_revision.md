# Update after survey

## Changes

* *Health and Readiness Checks* directly impacts *Automated Restarts* and *Automated Monitoring* does not impact *Automated Restarts* anymore
* Removed impact from *Automated infrastructure* on *Modifiability*
* Removed impact from *Automated infrastructure* on *Automated restarts* and instead added impact on *Recoverability*
* Removed impact from *Dynamic Scheduling* on *Automated infrastructure*
* Removed impact from *Infrastructure Abstraction* on *Automated infrastructure*
* Added impact from *Built-in autoscaling* on *Availability*
* Removed *Cost variability*
* Removed impact from *Service independence* on *Co-existence*
* Removed impact from *Configuration Management* on *Seamless upgrades*
* Removed impact from *Secrets Management* on *Seamless upgrades*
* Removed impact from *Separation by gateways* on *Reusability*
* Removed impact from *Separation by gateways* on *Access restriction*
* Removed impact from *Addressing abstraction* on *Communication indirection*
* Added impact from *Addressing abstraction* on *Replaceability*
* Added impact from *Addressing abstraction* on *Modifiability*
* Removed impact from *Persistent communication* on *Loose coupling*
* Removed impact from *Persistent communication* on *Recoverability*
* Added impact from *Persistent communication* on *Fault tolerance*
* Added impact from *Cloud vendor abstraction* on *Reusability*
* Added impact from *Command Query Responsibility Segregation* on *Simplicity*
* Added impact from *Centralized consistent logging* on *Accountability*
* Removed impact from *Contract-based links* on *API-based communication*
* Added impact from *Contract-based links* on *Adaptability*
* Added impact from *Infrastructure abstraction* on *Simplicity*
* Removed impact from *Usage of existing solutions for non-core capabilities* on *Standardization* and instead added impact on *Simplicity*
* Added impact from *Vertical data replication* on *Analyzability*
* Added impact from *Vertical data replication* on *Availability*
* Added impact from *Use infrastructure as Code* on *Reusability*
* Added impact from *Mostly stateless services* on *Testability*
* Changed *Resource limits* and *Resource predictability* to *Enforcement of appropriate resource boundaries*
* Removed *Communication indirection*
* Renamed *Mediated communication* to *Consistently mediated communication* and adjusted impacts based on survey and additional consideration of literature
* Kept *Communication partner abstraction*, but set it to directly impact quality aspects, because "Communication indirection" was removed

## Reasons for changes to factors that showed unclear results

* *Managed Infrastructure* vs *Automated Infrastructure*
  * impacts on similar quality aspects: similar things covered by these factors?
  * Focus of *Managed Infrastructure* on outsourcing aspect, which means delegating the operational effort

* *API-based communication*
  * impact on *Replaceability*, but considering which components?
  * impacts on many aspects of Maintainability: split or use multiple aspects?

* *Automated restarts*
  * impacts on all sub-aspects of Reliability: select one?
  * Main impact on recoverability, eventually also Availability, but not Fault tolerance, because it does not tolerate a fault, but instead directly tries to resolve it

* *Mostly stateless services*
  * impacts on different sub-aspects of Maintainability: select one. Especially Testability is interesting
  * Move impacts from *Isolated State* to *Mostly stateless services* 

* *Dynamic Scheduling*
  * impacts on different sub-aspects of *Performance efficiency*: select one?

* *Resource Limits* -> *Resource Utilization*
  * Unclear impact

* *Automated Infrastructure*
  * impacts on many quality aspects: split into separate factors?
  * Split into *Automated infrastructure provisioning* and *Automated infrastructure maintenance*

* *Use infrastructure as code*
  * impacts on many quality aspects: split into separate factors?
  * kept as such, but clearer through refinement of *Automated infrastructure*

* *Built-in Autoscaling*
  * impacts on many quality aspects, especially of Performance efficiency: split into separate factors?
  * leave as such, most important impact is on Elasticity which covers the main aspects here

* *Infrastructure abstraction*
  * uncertain impacts on different quality aspects: reconsider
  * only an impact on *Adaptability*

* *Communication indirection*, *Mediated communication*, and *Communication partner abstraction*
  * no interpretable results; unclear impacts of sub-factors