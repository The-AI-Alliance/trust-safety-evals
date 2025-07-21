---
layout: default
title: User Personae and Their Needs
nav_order: 30
has_children: true
---

# User Personae and Their Needs

What are the _user personae_ (or _roles_) for evaluation? Here are the primary stakeholders who can benefit from this initiative.

## AI Application Developers

We sometimes call them _enterprise developers_. Builders of AI-enabled applications need to do the following:

* **Choose &ldquo;base&rdquo; models:** What models score best on benchmarks related to application requirements, including _functional_ requirements, like specific use-case behaviors, and _nonfunctional_ requirements, like general safety concerns, cost of ownership, etc.?
* **Evaluate proprietary models:** Some organizations [_tune]({{site.glossaryurl}}/#tuning)) existing base models or train custom models from scratch. They can only use public benchmarks and other evaluations if they can run them locally.
* **Evaluate application alignment:** How does the model in tandem with other system components behave? 

Cost of ownership is important. Larger models provide better overall performance, but at higher cost. Smaller models may be good enough, while also being cost-effective.

## Independent Software Vendors

Companies providing AI-as-a-Service have requirements similar to AI application developers. They may emphasize some more than others because of concerns about keeping customers satisfied with the service offerings, avoiding various liabilities, etc. They know that customers look to them for meeting the requirements the customers may not be capable of meeting themselves.

## Model Builders

Model builders share many of the same concerns as application developers, in part because they want their work to be widely adopted by the latter. They may also have research objectives, where novelty and innovation might outweigh the pragmatic concerns of application developers.

* **Model performance:** How highly models score on benchmarks for common tasks, like coding and solving math problems, is the primary source of competition between teams building models.
* **Alignment to safety concerns:** Does my model resist generating harmful content and hallucinations, etc.? Builders care about these criteria, because enterprise adopters of models care about them.
* **Model total cost of ownership:** Larger models are expensive to run, especially if you want relatively quick responsiveness. Smaller, more efficient models that still perform well see wider adoption.

## Evaluation Researchers

Many research teams study areas where evaluation is useful and build evaluations and benchmarks for their needs. There is now a rich and maturing industry focused on safety. See the AI Alliance's [**AI Trust and Safety User Guide**](https://the-ai-alliance.github.io/trust-safety-user-guide/){:target="_blank"} for an overview of many of the organizations and their work.

These researchers will want to know what evaluation suites, benchmarks, and tools already exist, so they don't reinvent the wheel. They will also want tools they can reuse for their purposes, like an evaluation stack.


## Requirements for All Roles

Collectively, these users would benefit from the following capabilities:

* The ability to easily share results from benchmark runs, in order to compare the results with other benchmarks available or runs of the same benchmarks with different models and applications. 
* Easy location of useful evaluations.
* Easy, flexible execution options for useful evaluations.
* Easy to build custom evaluations, e.g., for domain-specific or application-specific benchmarks.
* The ability to share evaluation artifacts, like datasets, in a reusable manner.
* Straightforward publication of evaluation results to target leaderboards.
* Standardize on a reference stack of tools that facilitates the above capabilities.
