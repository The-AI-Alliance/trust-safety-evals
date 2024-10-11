---
layout: default
title: Taxonomy
nav_order: 40
has_children: true
---

# Taxonomy

This section describes the [_Taxonomy_]({{site.baseurl}}/glossary/#taxonomy)  of [_Evaluations_]({{site.baseurl}}/glossary/#evaluation) of interest. 

Note that [_Evaluators_]({{site.baseurl}}/glossary/#evaluator) implement parts of the evaluations taxonomy. [_Benchmarks_]({{site.baseurl}}/glossary/#benchmark) aggregate one or more evaluators for particular concerns.

## What Are Evaluations?

Here is a quote from the [Glossary entry for evaluation]({{site.baseurl}}/glossary/#evaluation):

> Evaluations can cover functional and nonfunctional dimensions of models, and are applicable throughout the model development and deployment lifecycle. Functional evaluation dimensions include alignment to use cases, accuracy in responses, faithfulness to given context, robustness against perturbations and noise, and adherence to safety and social norms. Nonfunctional evaluation dimensions include latency, throughput, compute efficiency, cost to execute, carbon footprint and other sustainability concerns. Evaluations are applied as regression tests while models are trained and fine-tuned, as benchmarks while GenAI-powered applications are designed and developed, and as guardrails when these applications are deployed in production. They also have a role in compliance, both with specific industry regulations, and with emerging government policies. Lastly, there are numerous techniques used in implementing evaluations. Common techniques are rule-based automatic evaluation, evaluation with LLMs acting as judges, and human evaluation.

## Why Build a Taxonomy?

Today’s evaluation landscape poses multiple challenges for benchmark creators, model creators, and for application developers trying to assess models and the performance of their applications. As more and more novel evaluations are published, users struggle to understand which benchmarks are appropriate for their needs, and which are “best”, among the available options. Since there are no standard evaluation platforms or taxonomies, it is also difficult to set up a single production-grade evaluation environment.

Defining a comprehensive taxonomy of evaluations is the first step in helping users know which evaluations are most important for their needs.

To date, several initiatives by other organizations have worked on taxonomies for risks and harms, including the following:

* MLCommons [Taxonomy of Hazard](https://arxiv.org/html/2404.12241v1){:target="mlc-th"}
* IBM [AI Risk Atlas](https://www.ibm.com/docs/en/watsonx/saas?topic=ai-risk-atlas){:target="ibm-ai"}
* MIT [AI Risk Repository](https://airisk.mit.edu/){:target="mit-ai"}
* NIST [Risk Management Framework](https://airc.nist.gov/AI_RMF_Knowledge_Base/AI_RMF/Foundational_Information/3-sec-characteristics){:target="nist-rmf"}
* Stanford [CRFM HELM](https://crfm.stanford.edu/helm/){:target="helm"}
* ... others TBD ...

However, these important efforts don't extend to the larger landscape of possible evaluations, which are poorly cataloged and characterized. We are working on unifying the existing taxonomies and expanding to other areas of interest for evaluation, such as those mentioned above.

MORE - TODO

