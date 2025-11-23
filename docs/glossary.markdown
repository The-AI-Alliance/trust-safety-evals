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

An aspect of [governance](#governance), where we trace behaviors through [AI systems](#ai-system) to their causes. Related is the need for organizations to take responsibility for the behaviors of the [AI systems](#ai-system) they deploy.

## AI Actor

[\[2\]](#nist) An organization or individual building an [AI system](#ai-system).

## AI System

Umbrella term for an application or system with AI components, including [Data Sets](#Data Set), [models](#model), [evaluations](#evaluation), and an [evaluation framework](#evaluation-framework) for safety detection and mitigation, etc., plus external services, databases for runtime queries, and other application logic that together provide functionality.

## Alignment

A general term for how well an [AI system's](#ai-system) outputs (e.g., replies to queries) and behaviors correspond to end-user and service provider objectives, including the quality and utility of results, as well as safety requirements. Quality implies factual correctness and utility implies the results are fit for purpose, e.g., a Q&A system should answer user questions concisely and directly, a Python code-generation system should output valid, bug-free, and secure Python code. EleutherAI [defines alignment this way](https://www.eleuther.ai/alignment){:target="eleuther"}, &ldquo;Ensuring that an artificial intelligence system behaves in a manner that is consistent with human values and goals.&rdquo; See also the [Alignment Forum](https://www.alignmentforum.org/){:target="alignment-forum"}.

## Annotation

[\[1\]](#mlc) External data that complements a [Data Set](#Data Set), such as labels that classify individual items.

## Benchmark

[\[1\]](#mlc) A methodology or function used for offline [evaluation](#evaluation) of a [model](#model) or [AI system](#ai-system) for a particular purpose and to interpret the results. Typically, a benchmark consists of:
* A set of [evaluations](#evaluation) with metrics.
* A summarization of the results.

## Data Set

(See also [\[1\]](#mlc)) A collection of data items used for training, evaluation, etc. Usually, a given Data Set has a schema (which may be “this is unstructured text”) and some metadata about provenance, licenses for use, transformations and filters applied, etc. 

## Determinism

The output of a [function](#function) for a given input is always known precisely. This affords writing repeatable, predictable software and automated, reliable tests.

In contrast, _nondeterminism_ means components for which identical inputs yield different results, removing repeatability and complicating predictability, and the ability to write automated, reliable tests.

## Explainability

Can humans understand why the system behaves the way that it does in a particular scenario?

## Evaluation

The capability of measuring and quantifying how a [model](#model) or [AI system](#ai-system) that uses models responds to inputs. Much like other software, models and AI systems need to be trusted and useful to their users. Evaluation aims to provide the evidence needed to gain users’ confidence. 

Evaluations can cover functional and nonfunctional dimensions of models, and are applicable throughout the model development and deployment lifecycle. Functional evaluation dimensions include alignment to use cases, accuracy in responses, faithfulness to given context, robustness against perturbations and noise, and adherence to safety and social norms. Nonfunctional evaluation dimensions include latency, throughput, compute efficiency, cost to execute, carbon footprint and other sustainability concerns. Evaluations are applied as regression tests while models are trained and fine-tuned, as benchmarks while GenAI-powered applications are designed and developed, and as guardrails when these applications are deployed in production. They also have a role in compliance, both with specific industry regulations, and with emerging government policies. 

Evaluations can be implemented in many ways. A [model](#model) might be used to judge results or some executable code might be used for simpler cases. Often an evaluation includes a [Data Set](#Data Set), such as question-answer pairs that represent the desired behavior. Other techniques include rule-based systems, evaluation with LLMs acting as judges, and human evaluation.

For our purposes, an evaluation must be executable within an [evaluation framework](#evaluation-framework), such our [Evaluation Reference Stack](https://the-ai-alliance.github.io/eval-ref-stack/){:target="ers"}. 

## Evaluation Framework

An umbrella term for the software tools, runtime services, benchmark systems, etc. used to run [evaluations](#evaluation) to measure [AI systems](#ai-system) behaviors for trust and safety risks and mitigations, and other kinds of measurements.

## Fairness

Does the [AI system's](#ai-system) behaviors exhibit social biases, preferential treatment, or other forms of non-objectivity?

## Function

Used here as an umbrella term for any unit of execution, including actual functions, methods, code blocks, etc. Many functions are free of [side effects](#side-effect), meaning they don't read or write state external to the function and shared by other functions. These functions are always [deterministic](#determinism); for a given input(s) they always return the same output.

Other functions that read and possibly write external state or usually [nondeterministic](#determinism). For example, functions that retrieve data, like a database record, functions to generate UUIDs, functions that call other processes or systems.

## Generative AI Model

A combination of data and code, usually trained on a [Data Set](#Data Set), to support [inference](#inference) of some kind. See also [large language model](#large-language-model) and [multimodal model](#multimodal-models).

For convenience, in the text, we use the term _model_ to refer to the generative AI component that has [nondeterministic](#determinism) behavior, whether it is a model invoked directly through an API in the same application or invoked by calling another service (e.g., ChatGPT). The goal of this project is to better understand how developers can test _models_.

## Governance

End-to-end control of assets, especially [Data Sets](#Data Set) and [models](#model), with lineage traceability and access controls for protecting the security and integrity of assets.

## Hallucination

When a [model](#model) generates text that seems plausible, but is not factually accurate. Lying is not the right term, because there is no malice intended by the model, which only knows how to generate a sequence of [tokens](#token) that are plausible, i.e., probabilistically likely.

## Inference

Sending information to a [model](#model) or [AI system](#ai-system) to have it return an analysis of some kind, summarization of the input, or newly generated information, such as text. The term _query_ is typically used when working with [LLMs](#large-language-model). The term _inference_ comes from traditional statistical analysis, including model building, that is used to _infer_ information from data.

## Large Language Model

Abbreviated _LLM_, a state of the art [model](#model), often with billions of parameters, that has the ability to summarize, classify, and even generate text in one or more spoken and programming languages. See also [multimodal model](#multimodal-models).

## Model

A combination of data and code, usually trained on a [Data Set](#Data Set), to support [inference](#inference) of some kind. See also [large language model](#large-language-model) and [multimodal model](#multimodal-models).

## Multimodal Model

[models](#model) that extend the text-based capabilities of [LLMs](#large-language-model) with additional support for other media, such as video, audio, still images, or other kinds of data.

## Privacy

Protection of individuals’ sensitive data and preservation of their rights.

## Probability and Statistics

Two interrelated branches of mathematics, where statistics concerns such tasks as collecting, analyzing, and interpreting data, while probability concerns events, in particular the percentage likelihood that certain values will be measured when events occur. 

Both disciplines emerged together to solve practical problems in science, industry, sociology, etc. It is common for researchers to build a _model_ of the system being studied, in part to compare actual results with model predictions, confirming or rejecting the underlying theories about the system upon which the model was built. Also, if the model is accurate, it provides predictive capabilities for possible and likely future events.

Contrast with [determinism](#determinism).

## Question Answering

In many, if not most applications, models and the applications that use them should be good at providing focused, useful answers to user questions, rather than generating text that might be related to the topic, but not useful to the user.

## Responsible AI

(See also [\[2\]](#nist)) An umbrella term about comprehensive approaches to safety, accountability, and equitability. It covers an organization’s professional responsibility to address concerns. It can encompass tools, models, people, processes, integrated systems, and data.

## Risk

[\[2\]](#nist) The composite measure of an event’s probability of occurring and the magnitude or degree of the consequences of the corresponding event. Risk is a function of the negative impact if the event occurs and the likelihood of occurrence.

## Robustness

How well does the [AI system](#ai-system) continue to perform within acceptable limits or degrade &ldquo;gracefully&rdquo; when stressed in some way? For example, how well does a [model](#model) respond to prompts that deviate from its training data?

## Scalability

A general concern for large-scale systems; how easily, efficiently, and reliably can you scale up their service capacity in response to load. When the load decreases, can you scale the system back down to conserve resources that aren't needed? 

## Security

This is the classic &ldquo;cybersecurity&rdquo; set of concerns about preventing undesirable system and data access, etc., with new concerns raised by the unique properties of [large language models](#large-language-model). Evaluations can be written for security concerns, in addition to traditional detection and mitigation tools.

## Side Effect

Reading and/or writing state shared outside a [function](#function) with other functions. See also [determinism](#determinism).

## Social Responsibility

[\[2\]](#nist) An organization’s responsibility for the impacts of its decisions and activities on society and the environment through transparent and ethical behavior. 

## Sustainability

(See also [\[2\]](#nist)) Taking into account the environmental impact of [AI systems](#ai-system), such as carbon footprint and water usage for cooling, both now and for the future.

## Taxonomy

In this context, _taxonomy_ is used to refer to how categories are defined for known risks, other safety concerns, and other areas where detection or measurement is desirable.

## Token

For language [models](#model), the training texts and query prompts are split into tokens, usually whole words or fractions according to a vocabulary of tens of thousands of tokens that can include common single characters, several characters, and &ldquo;control&rdquo; tokens (like &ldquo;end of input&rdquo;). The rule of thumb is a corpus will have roughly 1.5 times the number of tokens as it will have words.

## Training

In our context, training is the processes used to teach a model, such as a [generative AI models](#generative-ai-model) how to do its intended job. 

In the generative AI case, we often speak of _pretraining_, the training process that uses a massive data corpus to teach the model facts about the world, how to speak and understand human language, and do some skills. However, the resulting model often does poorly on specialized tasks and even basic skills like following a user's instructions, conforming to social norms (e.g., avoiding hate speech), etc. 

That's where a second [tuning](#tuning) phase comes in, a suite of processes used to improve the models performance on many general or specific skills.

## Tuning

Tuning refers to one or more processes used to transform a [pretrained](#training) model into one that exhibits much better desired behaviors (like instruction following) or specialized domain knowledge. Tuning may involve continued training cycles or different techniques.
