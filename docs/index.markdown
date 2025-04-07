---
layout: default
title: Home
nav_order: 10
has_children: false
---

# Trust and Safety Evaluations Initiative (TSEI)

| **Authors** | [The AI Alliance Trust and Safety Work Group](https://thealliance.ai/focus-areas/trust-and-safety){:target="ai-alliance-tns"} (see [About Us]({{site.baseurl}}/about)) |
| **Last Update**  | V0.4.3, 2025-04-07 |

Welcome to the **The AI Alliance** initiative for **Trust and Safety Evaluations**.

Unlike traditional software systems that rely on prescribed specifications and application code, [_AI systems_]({{site.baseurl}}/glossary/#ai-system) based on machine learning [_models_]({{site.baseurl}}/glossary/#model) depend on training data to map inputs to outputs. Consequently, these systems are inherently non-deterministic and may produce errors due to variability in the training data or the probabilistic nature of the underlying algorithms. To [_evaluate_]({{site.baseurl}}/glossary/#evaluation) such systems, [_benchmarks_]({{site.baseurl}}/glossary/#benchmark) are commonly used to address user concerns, such as accuracy and bias. However, since benchmarks can be manipulated over time to achieve favorable results, it is essential to establish a flexible evaluation framework that supports rapid updates to evaluation criteria and benchmark selection. Given the critical role of testing and evaluation in deploying AI systems, there is a pressing need for a consistent methodology and robust tool support for these activities.

| See this short [presentation]({{site.baseurl}}/files/TSEI-Overview.pdf) (PDF) about the Trust and Safety Evaluations Initiative. |

In the context of generative AI, evaluation serves to provide evidence that fosters user trust in models and systems. Specifically, it involves measuring and quantifying how a model or system responds to inputs. Are the responses within acceptable bounds—free from hate speech, [_hallucinations_]({{site.baseurl}}/glossary/#hallucination), or other harmful outputs? Are they useful, cost-effective, and reliable?

Within the AI Alliance's [**Trust and Safety Focus Area**](https://thealliance.ai/focus-areas/trust-and-safety){:target="aia-tands"}, a primary objective is to promote an industry-accepted taxonomy and an evaluation framework that meet the needs of both the research community, which drives innovation, and AI solution developers, who create AI-powered systems.

The **Trust and Safety Evaluation Initiative** (TSEI) aims to establish a hub connecting creators and consumers of evaluations, starting with safety, in a sustainable value-chain. Its mission is to incentivize collaboration across these distinct communities and to foster emerging standards and open technologies for creating, evaluating, and deploying evaluations.

This initiative is anchored around the following key functional capabilities, which **we are developing as separate projects. Please [join us]({{site.baseurl}}/contributing)!**

1. **Shared, industry-wide taxonomy**: many organizations have worked on [_taxonomies_]({{site.baseurl}}/glossary/#taxonomy) of evaluation, usually focused on specific areas of interest. TSEI seeks to gather these taxonomies, expand them where appropriate, and create a unified taxonomy across the spectrum of evaluation concerns, for example covering risk, safety, performance, security, etc. Ideally, the unified taxonomy will be embraced by the community as the standard definition, which will help unify disparate R&D efforts, for both builders of models and evaluations/evaluators, as well as users of them. ([current activity](https://github.com/orgs/The-AI-Alliance/projects/23/views/1?filterQuery=label%3Ataxonomy){:target="issues"})

2. **Open-source reference evaluation stack**: while there are numerous general-purpose evaluation frameworks in the open-source community, most new evaluations are implemented in proprietary, POC-level code. TSEI will identify and endorse evaluation frameworks and libraries that are already emerging as industry standards, and that address the needs of both creators and consumers of evaluations, and will work to enhance it with supporting tools, to reduce both the effort to implement new evaluations, and the effort to use them in real-world production environments. It should establish a common “programming model” for quickly and efficiently creating evaluations in an open, scalable, flexible, and reusable manner. ([current activity](https://github.com/orgs/The-AI-Alliance/projects/23/views/1?filterQuery=label%3A%22reference+stack%22){:target="issues"})

3. **Curated catalog of evaluations**: finding the right evaluation or benchmark for a given task is not trivial. Most evaluations are published as academic or industrial papers, with datasets and implementation spread across repositories such as HuggingFace or GitHub. TSEI aims to create a curated catalog of production-ready evaluations in an AI-augmented process. The catalog will include mapping of evaluations to the common taxonomy, as well as various functional and non-functional metrics to help consumers make the best choice for their needs. ([current activity](https://github.com/orgs/The-AI-Alliance/projects/23/views/1?filterQuery=label%3Aevaluators){:target="issues"})

4. **Operational Hub**: a cloud-based, running environment hosting the evaluation stack, with one or more [_leaderboards_]({{site.baseurl}}/glossary/#leaderboard) showing various benchmarks, and a UI for browsing and filtering the evaluation catalog, providing consumers with convenient ways to download packaged, deployable content, compatible with major cloud and on-prem architectures. ([current activity](https://github.com/orgs/The-AI-Alliance/projects/23/views/1?filterQuery=label%3Aleaderboards){:target="issues"})

This website provides the documentation for this initiative, with links to other resources, including code and leaderboards, as they become available.

Are you interested in contributing? If so, please see the [contributing]({{site.baseurl}}/contributing) page for information on how you can get involved.

---

This site is organized into the following sections:

* [Glossary of Terms]({{site.baseurl}}/glossary)
* [User Personae and Their Needs]({{site.baseurl}}/user-personae/user-personae)
* [Taxonomy]({{site.baseurl}}/taxonomy/taxonomy)
* [Evaluators]({{site.baseurl}}/evaluators/evaluators)
* [Leaderboards]({{site.baseurl}}/leaderboards/leaderboards)
* [Evaluation Platform Reference Stack]({{site.baseurl}}/ref-stack/ref-stack)

Additional links:

* [Contributing]({{site.baseurl}}/contributing): We welcome your contributions! Here's how you can contribute.
* [About Us]({{site.baseurl}}/about): More about the AI Alliance and this initiative.
* [GitHub Repo](https://github.com/The-AI-Alliance/trust-safety-evals){:target="repo"}
* [The AI Alliance](https://thealliance.ai){:target="ai-alliance"}: The AI Alliance website.

### Version History

| Version  | Date       |
| :------- | :--------- |
| V0.4.3   | 2025-04-07 |
| V0.4.2   | 2025-03-07 |
| V0.4.1   | 2025-01-30 |
| V0.4.0   | 2025-01-18 |
| V0.3.1   | 2024-12-12 |
| V0.3.0   | 2024-12-05 |
| V0.2.0   | 2024-11-15 |
| V0.1.0   | 2024-10-12 |
