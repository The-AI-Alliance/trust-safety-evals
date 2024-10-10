---
layout: default
title: Glossary of Terms
nav_order: 20
has_children: false
---

# Glossary of Terms

Let's define the common terms we use. Some of the terms defined here are industry standards, while others are not standard, but they are useful for our purposes.

Some definitions are adapted from the following sources, which are indicated below using the same numbers, i.e., [\[1\]](#mlc) and [\[2\]](#nist):

1. <a id="mlc">[MLCommons AI Safety v0.5 Benchmark Proof of Concept Technical Glossary](https://drive.google.com/file/d/1X9Sy8eRiYgbeBBVMMqNrDEq4KzHZynpF/view?usp=sharing){:target="mlc-glossary", :id="mlc-glossary"}
2. <a id="nist">[NIST Artificial Intelligence Risk Management Framework (AI RMF 1.0)](https://www.nist.gov/itl/ai-risk-management-framework){:target="nist-rmf", :id="nist-rmf"}


<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Accountability

An aspect of [Governance](#governance), where we trace behaviors through [AI Systems](#ai-system) to their causes. Related is the need for organizations to take responsibility for the behaviors of the [AI Systems](#ai-system) they deploy.

## AI Actor

[\[2\]](#nist) An organization or individual building an [AI System](#ai-system).

## AI System

Umbrella term for an application or system with AI components, including [Datasets](#dataset), [Models](#model), [Evaluation Framework](#evaluation-framework) and [Evaluators](#evaluator) for safety detection and mitigation, etc., plus external services, databases for runtime queries, and other application logic that together provide functionality.

## Alignment

A general term for how well an [AI System's](#ai-system) outputs (e.g., replies to queries) and behaviors correspond to end-user and service provider objectives, including the quality and utility of results, as well as safety requirements. Quality implies factual correctness and utility implies the results are fit for purpose, e.g., a Q&A system should answer user questions concisely and directly, a Python code-generation system should output valid, bug-free, and secure Python code. [EleutherAI defines alignment this way](https://www.eleuther.ai/alignment){:target="eleuther"}, &ldquo;Ensuring that an artificial intelligence system behaves in a manner that is consistent with human values and goals.&rdquo; See also the [Alignment Forum](https://www.alignmentforum.org/){:target="alignment-forum"}.

## Annotation

[\[1\]](#mlc) External data that complements a [Dataset](#dataset), such as labels that classify individual items.

## Benchmark

[\[1\]](#mlc) A methodology or function used for offline [Evaluation](#evaluation) of a [Model](#model) or [AI System](#ai-system) for a particular purpose and to interpret the results. It consists of:
* A set of tests with metrics.
* A summarization of the results.

## Dataset

(See also [\[1\]](#mlc)) A collection of data items used for training, evaluation, etc. Usually, a given dataset has a schema (which may be “this is unstructured text”) and some metadata about provenance, licenses for use, transformations and filters applied, etc. 

## Explainability

Can humans understand why the system behaves the way that it does in a particular scenario?

## Evaluation

The capability of measuring and quantifying how a [Model](#model) or [AI System](#ai-system) that uses models responds to inputs. Much like other software, models and AI systems need to be trusted and useful to their users. Evaluation aims to provide the evidence needed to gain users’ confidence. See also [Evaluation Framework](#evaluation-framework) and [Evaluator](#evaluator).

## Evaluation Framework

An umbrella term for the software tools, runtime services, benchmark systems, etc. used to perform [Evaluations](#evaluation) by running different [Evaluators](#evaluator) to measure [AI Systems](#ai-system) for trust and safety risks and mitigations, and other kinds of measurements.

## Evaluator

A classifier [Model](#model) or similar tool, possibly including a [Dataset](#dataset), that can quantify an [AI System's](#ai-system) inputs and outputs to detect the presence of risky content, such as hate speech, hallucinations, etc. For our purposes, an evaluator is API compatible for execution within an [Evaluation Framework](#evaluation-framework). In general, an evaluator could be targeted towards non-safety needs, such as measuring other aspects of [Alignment](#alignment), [Inference](#inference) model latency and throughput, carbon footprint, etc. Also, a given evaluator could be used at many points in the total AI life cycle, e.g., for a benchmark and an inference-time test.

## Fairness

Does the [AI System's](#ai-system) behaviors exhibit social biases, preferential treatment, or other forms of non-objectivity?

## Governance

End-to-end control of assets, especially [Datasets](#dataset) and [Models](#model), with lineage traceability and access controls for protecting the security and integrity of assets.

## Hallucination

When a [Model](#model) generates text that seems plausible, but is not factually accurate. Lying is not the right term, because there is no malice intended by the model, which only knows how to generate a sequence of [Tokens](#token) that are plausible, i.e., probabilistically likely.

## Inference

Sending information to a [Model](#model) or [AI System](#ai-system) to have it return an analysis of some kind, summarization of the input, or newly generated information, such as text. The term _query_ is typically used when working with [LLMs](#large-language-model). The term _inference_ comes from traditional statistical analysis, including model building, that is used to _infer_ information from data.

## Large Language Model

Abbreviated _LLM_, a state of the art [Model](#model), often with billions of parameters, that has the ability to summarize, classify, and even generate text in one or more spoken and programming languages. See also [Multimodal Model](#multimodal-models).

## Model

A combination of data and code, usually trained on a [Dataset](#dataset), to support [Inference](#inference) of some kind. See also [Large Language Model](#large-language-model) and [Multimodal Model](#multimodal-models).

## Multimodal Model

[Models](#model) that extend the text-based capabilities of [LLMs](#large-language-model) with additional support for other media, such as video, audio, still images, or other kinds of data.

## Privacy

Protection of individuals’ sensitive data and preservation of their rights.

## Responsible AI

(See also [\[2\]](#nist)) An umbrella term about comprehensive approaches to safety, accountability, and equitability. It covers an organization’s professional responsibility to address concerns. It can encompass tools, models, people, processes, integrated systems, and data.

## Risk

[\[2\]](#nist) The composite measure of an event’s probability of occurring and the magnitude or degree of the consequences of the corresponding event. Risk is a function of the negative impact if the event occurs and the likelihood of occurrence.

## Robustness

How well does the [AI System](#ai-system) continue to perform within acceptable limits or degrade &ldquo;gracefully&rdquo; when stressed in some way? For example, how well does a [Model](#model) respond to prompts that deviate from its training data?

## Social Responsibility

[\[2\]](#nist) An organization’s responsibility for the impacts of its decisions and activities on society and the environment through transparent and ethical behavior. 

## Sustainability

(See also [\[2\]](#nist)) Taking into account the environmental impact of [AI Systems](#ai-system), such as carbon footprint and water usage for cooling, both now and for the future.

## Token

For language [Models](#model), the training texts and query prompts are split into tokens, usually whole words or fractions according to a vocabulary of tens of thousands of tokens that can include common single characters, several characters, and &ldquo;control&rdquo; tokens (like &ldquo;end of input&rdquo;). The rule of thumb is a corpus will have roughly 1.5 times the number of tokens as it will have words.

Next, we [explore trust and safety concepts]({{site.baseurl}}/exploring/exploring) as expressed by various expert organizations.
