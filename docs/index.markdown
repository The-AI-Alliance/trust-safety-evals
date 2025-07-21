---
layout: default
title: Home
nav_order: 10
has_children: false
---

# Evaluation Is for Everyone

_Part of the AI Alliance [**Trust and Safety Evaluation Initiative**](https://thealliance.ai/core-projects/trust-and-safety-evaluations){:target="tsei"} (TSEI), our goal is to ensure the widespread adoption of AI trust and safety technologies, both educating application developers about these concepts and making it as easy as possible for state-of-the-art tools to be used to support them. Welcome to the **Evaluation Is for Everyone** project._

> **Tip:** The links for _italicized terms_ go to [this glossary]({{site.glossaryurl}}).

Unlike traditional software systems that rely on prescribed specifications and mostly-[_deterministic_]({{site.glossaryurl}}/#determinism) application code, [_AI systems_]({{site.glossaryurl}}/#ai-system) based on [_generative AI models_]({{site.glossaryurl}}/#generative-ai-model) depend on training data to map inputs to [_probabilistic_]({{site.glossaryurl}}/#probability-and-statistics) outputs. A consequence is these systems are inherently non-deterministic and may even generate erroneous or undesirable output. To [_evaluate_]({{site.glossaryurl}}/#evaluation) such systems, [_benchmarks_]({{site.glossaryurl}}/#benchmark) are commonly used to measure how models behave in these areas of concern. 

It is essential to establish a flexible evaluation framework that supports rapid updates to evaluation criteria and benchmark selection, in part because benchmark data often becomes part of the training data corpus, so models become better at existing benchmarks, whether or not they are actively engineered to do so. Given the critical role of testing and evaluation in deploying AI systems _with confidence_, there is a pressing need for a consistent methodology and robust tool support for these activities.

<!--
> See this short [presentation]({{site.baseurl}}/files/TSEI-Overview.pdf) (PDF) about the Trust and Safety Evaluations Initiative. 
-->

Within the AI Alliance's [**Trust and Safety**](https://thealliance.ai/focus-areas/trust-and-safety){:target="aia-tands"} work group, the projects under the [**Trust and Safety Evaluation Initiative**](https://thealliance.ai/core-projects/trust-and-safety-evaluations){:target="tsei"} umbrella are designed to promote the best-of-breed tools for running evaluations, existing evaluation suites for common purposes, and ensuring these tools can be adopted and adapted efficiently and effectively for evolving uses. 

* **Evaluation Is for Everyone** (this project) has two goals:
	* Educate application developers about the importance of building AI trustworthiness and safety into their AI-enabled applications from the beginning, just as we have needed to build [_cybersecurity_]({{site.glossaryurl}}/#security) into our apps for decades.
	* Make it easy to find and adopt the appropriate set of evaluations for particular application requirements.
*  [**Achieving Confidence in Enterprise AI Applications**](https://the-ai-alliance.github.io/ai-application-testing/){:target="acea"} addresses the problem that AI application developers struggle to test that their applications meet the requirements and perform the use cases they were designed for. Enterprise developers are accustomed to writing repeatable tests for software that is (mostly) [_deterministic_]({{site.glossaryurl}}/#determinism), but the inherent [_probabilistic_]({{site.glossaryurl}}#probability-and-statistics) nature of the underlying [_generative AI models_]({{site.glossaryurl}}/#generative-ai-model) defeats these techniques. This project is adapting evaluation techniques for these testing purposes and teaching developers how to use them.
* [**Evaluation Reference Stack**](https://the-ai-alliance.github.io/eval-ref-stack/){:target="ers"} is documenting the industry's best tools for running evaluations and making them easy to adopt and manage.

Related projects include [**Ranking AI Safety Priorities by Domain**](https://the-ai-alliance.github.io/ranking-safety-priorities/){:target="_blank"} and our [**AI Trust and Safety User Guide**](https://the-ai-alliance.github.io/trust-safety-user-guide/){:target="_blank"}.

## Activities in This Project

There are several work streams in this project that serve our goals.

### Understand and Grow Existing Evaluation Taxonomies

Many organizations have worked on [_taxonomies_]({{site.glossaryurl}}/#taxonomy) or &ldquo;suites&rdquo; of evaluations, usually focused on specific areas of interest, such as categories of harmful speech. Other possible areas of interest are under-served, such as common concerns in particular domains, for example evaluating how well legal applications understand established case law and provide responses consistent with it. 

Since this project wants to make it easy for developers to adopt evaluation for trust and safety, as well as other uses, we have a long-running work stream to identify existing evaluation suites users might use, and where gaps exist we can help fill.

This work stream will also explore how to make it easy to run a suite of evaluations on the [evaluation reference stack](https://the-ai-alliance.github.io/eval-ref-stack/){:target="ers"}.

Current activities: [`evaluations`](https://github.com/orgs/The-AI-Alliance/projects/23/views/1?filterQuery=label%3Aevaluations){:target="evaluations"} and [`taxonomy`](https://github.com/orgs/The-AI-Alliance/projects/23/views/1?filterQuery=label%3Ataxonomy){:target="taxonomy"}

### Provide Useful Leaderboards

[_Leaderboards_]({{site.glossaryurl}}/#leaderboard) are a user-friendly tool that help users find suites of useful evaluations and data about how well particular models perform against them. 

In addition to the [current leaderboards we support]({{site.baseurl}}/leaderboards/leaderboards), we plan to build out graphically-based tools allowing users to browse and search for evaluations that support their needs, then download them in a packaged for that is easy to deploy in different environments using the [reference stack](https://the-ai-alliance.github.io/eval-ref-stack/){:target="ers"}.

Current activities: [`leaderboards`](https://github.com/orgs/The-AI-Alliance/projects/23/views/1?filterQuery=label%3Aleaderboards){:target="issues"}

### Educate Developers about Using Evaluations

Besides our [**AI Trust and Safety User Guide**](https://the-ai-alliance.github.io/trust-safety-user-guide/){:target="_blank"}, which provides general guidance, this project will build examples of finding and using appropriate evaluations for particular categories of needs. The companion projects mentioned above will also build examples for their needs, but this project should provide clear adoption guidance for the most important taxonomies of trust and safety.

Current activities: [`documentation`](https://github.com/orgs/The-AI-Alliance/projects/23/views/1?filterQuery=label%3Adocumentation){:target="issues"}

---

## Overview of This Website

The rest of this website is organized into the following sections:

* [Glossary of Terms]({{site.glossaryurl}})
* [User Personae and Their Needs]({{site.baseurl}}/user-personae/user-personae)
* [Evaluations and Benchmarks]({{site.baseurl}}/evaluations/evaluations)
* [Taxonomies of Evaluations]({{site.baseurl}}/taxonomy/taxonomy)
* [Leaderboards]({{site.baseurl}}/leaderboards/leaderboards)

## Getting Involved

Are you interested in contributing? If so, please see the [Contributing]({{site.baseurl}}/contributing) page for information on how you can get involved. See the [About Us]({{site.baseurl}}/about) page for more details about this project and the AI Alliance.

## Additional Links

* This project's [GitHub Repo](https://github.com/The-AI-Alliance/trust-safety-evals){:target="repo"}
* Companion projects: 
	* <a href="https://the-ai-alliance.github.io/ai-application-testing/" target="acea">Achieving Confidence in Enterprise AI Applications</a>
	* <a href="https://the-ai-alliance.github.io/eval-ref-stack/" target="ers">Evaluation Reference Stack</a>
* The AI Alliance: 
	* [Website](https://thealliance.ai){:target="ai-alliance"}
	* [The Trust and Safety Work Group](https://thealliance.ai/focus-areas/trust-and-safety){:target="ai-alliance-tns"} 
	* [Trust and Safety Evaluation Initiative](https://thealliance.ai/core-projects/trust-and-safety-evaluations){:target="tsei"}

| **Authors** | [The AI Alliance Trust and Safety Work Group](https://thealliance.ai/focus-areas/trust-and-safety){:target="ai-alliance-tns"} (see [About Us]({{site.baseurl}}/about)) |
| **Last Update** | V0.5.0, 2025-07-21 |
