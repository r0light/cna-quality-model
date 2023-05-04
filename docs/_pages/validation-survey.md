---
permalink: /survey
layout: page
title: Validation Survey
---

To validate and revise the quality model a questionnaire-based survey has been conducted.

This happened using the following process.

## A: Preparation of the factors for the survey

Because of the large scope of the initial quality model, we filtered the factors to consider in two ways from 76 to 45.

### Exclusion of intermediate factors serving as aggregators

We excluded intermediate factors merely serving as aggregators, that means factors which combine their subfactors to an aggregated factor.
This applied to the following factors:

* Secrets management
* Access restriction
* Service-orientation
* Limited functional scope
* Isolated state
* Loose coupling
* Standardization
* Automated monitoring
* Service independence
* Operation outsourcing
* Replication
* Resource predictability
* Configuration management
* Distribution
* Seamless upgrades
* Autonomous fault handling
* Communication indirection

### Exclusion of factors less specific to cloud computing

We excluded factors which are less specific to cloud computing, that means applying also to different kinds of applications.
This applied to the following factors:

* Data encryption in transit
* Isolated secrets
* Least-privileged access
* Limited endpoint scope
* Component similarity
* Low coupling
* Functional decentralization
* Sparsity
* Cost variability
* Isolated configuration
* Standardized self-contained deployment unit
* Guarded ingress
* Invocation timeouts

## B: Conducting the survey and results analysis

A more detailed report on the survey execution and results can be found in the repository [qmsurvey-results](https://github.com/r0light/qmsurvey-results)

## C: Updating the Quality Model based on the survey results

Finally, the results of the survey were incorporated into the model. The following changes were made:

* *Health and Readiness Checks* directly impacts *Automated Restarts* and *Automated Monitoring* does not impact *Automated Restarts* anymore
* Removed impact from *Automated infrastructure* on *Modifiability*
* Removed impact from *Automated infrastructure* on *Automated restarts* and instead added impact on *Recoverability*
* Removed impact from *Dynamic Scheduling* on *Automated infrastructure*
* Removed impact from *Infrastructure Abstraction* on *Automated infrastructure*
* Splitted *Automated Infrastructure* into *Automated infrastructure provisioning* and *Automated infrastructure maintenance*
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
* Removed impact from *Usage of existing solutions for non-core capabilities* on *Standardization* and instead added impact on *Simplicity*
* Added impact from *Vertical data replication* on *Analyzability*
* Added impact from *Vertical data replication* on *Availability*
* Added impact from *Use infrastructure as Code* on *Reusability*
* Added impact from *Mostly stateless services* on *Testability*
* Changed *Resource limits* and *Resource predictability* to *Enforcement of appropriate resource boundaries*
* Removed *Communication indirection*
* Renamed *Mediated communication* to *Consistently mediated communication* and adjusted impacts based on survey and additional consideration of literature
* Kept *Communication partner abstraction*, but set it to directly impact quality aspects, because "Communication indirection" was removed

The result of this revision of the quality model is the quality model as shown here:

![The revised quality model including the survey results](docs/assets/img/revised-quality-model.svg)