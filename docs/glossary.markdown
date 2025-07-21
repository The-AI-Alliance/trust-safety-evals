---
layout: default
title: Glossary of Terms
nav_order: 20
has_children: false
---

# Glossary of Terms

Let's define the common terms we use. Some of the terms defined here are industry standards, while others are not standard, but they are useful for our purposes.

Some definitions are adapted from the following sources, which are indicated below using the same numbers, i.e., [\[1\]](#mlc) and [\[2\]](#nist):

1. <a id="mlc">[_MLCommons AI Safety v0.5 Benchmark Proof of Concept Technical Glossary_](https://drive.google.com/file/d/1X9Sy8eRiYgbeBBVMMqNrDEq4KzHZynpF/view?usp=sharing){:target="mlc-glossary", :id="mlc-glossary"}
2. <a id="nist">[_NIST Artificial Intelligence Risk Management Framework (AI RMF 1.0)_](https://www.nist.gov/itl/ai-risk-management-framework){:target="nist-rmf", :id="nist-rmf"}


<details open markdown="block">
  <summary>
    Table of contents
  </summary>
  {: .text-delta }
1. TOC
{:toc}
</details>

## Accountability

An aspect of [_governance_](#governance), where we trace behaviors through [_AI systems_](#ai-system) to their causes. Related is the need for organizations to take responsibility for the behaviors of the [_AI systems_](#ai-system) they deploy.

## AI Actor

[\[2\]](#nist) An organization or individual building an [_AI system_](#ai-system).

## AI System

Umbrella term for an application or system with AI components, including [_datasets_](#dataset), [_models_](#model), [_evaluations_](#evaluation), and an [_evaluation framework_](#evaluation-framework) for safety detection and mitigation, etc., plus external services, databases for runtime queries, and other application logic that together provide functionality.

## Alignment

A general term for how well an [_AI system's_](#ai-system) outputs (e.g., replies to queries) and behaviors correspond to end-user and service provider objectives, including the quality and utility of results, as well as safety requirements. Quality implies factual correctness and utility implies the results are fit for purpose, e.g., a Q&A system should answer user questions concisely and directly, a Python code-generation system should output valid, bug-free, and secure Python code. EleutherAI [defines alignment this way](https://www.eleuther.ai/alignment){:target="eleuther"}, &ldquo;Ensuring that an artificial intelligence system behaves in a manner that is consistent with human values and goals.&rdquo; See also the [Alignment Forum](https://www.alignmentforum.org/){:target="alignment-forum"}.

## Annotation

[\[1\]](#mlc) External data that complements a [_dataset_](#dataset), such as labels that classify individual items.

## Benchmark

[\[1\]](#mlc) A methodology or function used for offline [_evaluation_](#evaluation) of a [_model_](#model) or [_AI system_](#ai-system) for a particular purpose and to interpret the results. Typically, a benchmark consists of:
* A set of [_evaluations_](#evaluation) with metrics.
* A summarization of the results.

## Dataset

(See also [\[1\]](#mlc)) A collection of data items used for training, evaluation, etc. Usually, a given dataset has a schema (which may be “this is unstructured text”) and some metadata about provenance, licenses for use, transformations and filters applied, etc. 

## Determinism

The output of a [_function_](#function) for a given input is always known precisely. This affords writing repeatable, predictable software and automated, reliable tests.

In contrast, _nondeterminism_ means components for which identical inputs yield different results, removing repeatability and complicating predictability, and the ability to write automated, reliable tests.

## Explainability

Can humans understand why the system behaves the way that it does in a particular scenario?

## Evaluation

The capability of measuring and quantifying how a [_model_](#model) or [_AI system_](#ai-system) that uses models responds to inputs. Much like other software, models and AI systems need to be trusted and useful to their users. Evaluation aims to provide the evidence needed to gain users’ confidence. 

Evaluations can cover functional and nonfunctional dimensions of models, and are applicable throughout the model development and deployment lifecycle. Functional evaluation dimensions include alignment to use cases, accuracy in responses, faithfulness to given context, robustness against perturbations and noise, and adherence to safety and social norms. Nonfunctional evaluation dimensions include latency, throughput, compute efficiency, cost to execute, carbon footprint and other sustainability concerns. Evaluations are applied as regression tests while models are trained and fine-tuned, as benchmarks while GenAI-powered applications are designed and developed, and as guardrails when these applications are deployed in production. They also have a role in compliance, both with specific industry regulations, and with emerging government policies. 

Evaluations can be implemented in many ways. A [_model_](#model) might be used to judge results or some executable code might be used for simpler cases. Often an evaluation includes a [_dataset_](#dataset), such as question-answer pairs that represent the desired behavior. Other techniques include rule-based systems, evaluation with LLMs acting as judges, and human evaluation.

For our purposes, an evaluation must be executable within an [_evaluation framework_](#evaluation-framework), such our [Evaluation Reference Stack](https://the-ai-alliance.github.io/eval-ref-stack/){:target="ers"}. 

See also [_evaluation framework_](#evaluation-framework).

## Evaluation Framework

An umbrella term for the software tools, runtime services, benchmark systems, etc. used to run [_evaluations_](#evaluation) to measure [_AI systems_](#ai-system) behaviors for trust and safety risks and mitigations, and other kinds of measurements.

## Fairness

Does the [_AI system's_](#ai-system) behaviors exhibit social biases, preferential treatment, or other forms of non-objectivity?

## Function

Used here as an umbrella term for any unit of execution, including actual functions, methods, code blocks, etc. Many functions are free of [_side effects_](#side-effect), meaning they don't read or write state external to the function and shared by other functions. These functions are always [_deterministic_](#determinism); for a given input(s) they always return the same output.

Other functions that read and possibly write external state or usually [_nondeterministic_](#determinism). For example, functions that retrieve data, like a database record, functions to generate UUIDs, functions that call other processes or systems.

## Generative AI Model

A combination of data and code, usually trained on a [_dataset_](#dataset), to support [_inference_](#inference) of some kind. See also [_large language model_](#large-language-model) and [_multimodal model_](#multimodal-models).

For convenience, in the text, we use the term _model_ to refer to the generative AI component that has [_nondeterministic_](#determinism) behavior, whether it is a model invoked directly through an API in the same application or invoked by calling another service (e.g., ChatGPT). The goal of this project is to better understand how developers can test _models_.

## Governance

End-to-end control of assets, especially [_datasets_](#dataset) and [_models_](#model), with lineage traceability and access controls for protecting the security and integrity of assets.

## Hallucination

When a [_model_](#model) generates text that seems plausible, but is not factually accurate. Lying is not the right term, because there is no malice intended by the model, which only knows how to generate a sequence of [_tokens_](#token) that are plausible, i.e., probabilistically likely.

## Inference

Sending information to a [_model_](#model) or [_AI system_](#ai-system) to have it return an analysis of some kind, summarization of the input, or newly generated information, such as text. The term _query_ is typically used when working with [_LLMs_](#large-language-model). The term _inference_ comes from traditional statistical analysis, including model building, that is used to _infer_ information from data.

## Large Language Model

Abbreviated _LLM_, a state of the art [_model_](#model), often with billions of parameters, that has the ability to summarize, classify, and even generate text in one or more spoken and programming languages. See also [_multimodal model_](#multimodal-models).

## Model

A combination of data and code, usually trained on a [_dataset_](#dataset), to support [_inference_](#inference) of some kind. See also [_large language model_](#large-language-model) and [_multimodal model_](#multimodal-models).

## Multimodal Model

[_models_](#model) that extend the text-based capabilities of [_LLMs_](#large-language-model) with additional support for other media, such as video, audio, still images, or other kinds of data.

## Privacy

Protection of individuals’ sensitive data and preservation of their rights.

## Probability and Statistics

Two interrelated branches of mathematics, where statistics concerns such tasks as collecting, analyzing, and interpreting data, while probability concerns events, in particular the percentage likelihood that certain values will be measured when events occur. 

Both disciplines emerged together to solve practical problems in science, industry, sociology, etc. It is common for researchers to build a _model_ of the system being studied, in part to compare actual results with model predictions, confirming or rejecting the underlying theories about the system upon which the model was built. Also, if the model is accurate, it provides predictive capabilities for possible and likely future events.

Contrast with [_determinism_](#determinism).

## Question Answering

In many, if not most applications, models and the applications that use them should be good at providing focused, useful answers to user questions, rather than generating text that might be related to the topic, but not useful to the user.

## Responsible AI

(See also [\[2\]](#nist)) An umbrella term about comprehensive approaches to safety, accountability, and equitability. It covers an organization’s professional responsibility to address concerns. It can encompass tools, models, people, processes, integrated systems, and data.

## Risk

[\[2\]](#nist) The composite measure of an event’s probability of occurring and the magnitude or degree of the consequences of the corresponding event. Risk is a function of the negative impact if the event occurs and the likelihood of occurrence.

## Robustness

How well does the [_AI system_](#ai-system) continue to perform within acceptable limits or degrade &ldquo;gracefully&rdquo; when stressed in some way? For example, how well does a [_model_](#model) respond to prompts that deviate from its training data?

## Scalability

A general concern for large-scale systems; how easily, efficiently, and reliably can you scale up their service capacity in response to load. When the load decreases, can you scale the system back down to conserve resources that aren't needed? 

## Security

This is the classic &ldquo;cybersecurity&rdquo; set of concerns about preventing undesirable system and data access, etc., with new concerns raised by the unique properties of [_large language models_](#large-language-model). Evaluations can be written for security concerns, in addition to traditional detection and mitigation tools.

## Side Effect

Reading and/or writing state shared outside a [_function_](#function) with other functions. See also [_determinism_](#determinism).

## Social Responsibility

[\[2\]](#nist) An organization’s responsibility for the impacts of its decisions and activities on society and the environment through transparent and ethical behavior. 

## Sustainability

(See also [\[2\]](#nist)) Taking into account the environmental impact of [_AI systems_](#ai-system), such as carbon footprint and water usage for cooling, both now and for the future.

## Taxonomy

In this context, _taxonomy_ is used to refer to how categories are defined for known risks, other safety concerns, and other areas where detection or measurement is desirable.

## Token

For language [_models_](#model), the training texts and query prompts are split into tokens, usually whole words or fractions according to a vocabulary of tens of thousands of tokens that can include common single characters, several characters, and &ldquo;control&rdquo; tokens (like &ldquo;end of input&rdquo;). The rule of thumb is a corpus will have roughly 1.5 times the number of tokens as it will have words.

## Training

In our context, training is the processes used to teach a model, such as a [_generative AI models_](#generative-ai-model) how to do its intended job. 

In the generative AI case, we often speak of _pretraining_, the training process that uses a massive data corpus to teach the model facts about the world, how to speak and understand human language, and do some skills. However, the resulting model often does poorly on specialized tasks and even basic skills like following a user's instructions, conforming to social norms (e.g., avoiding hate speech), etc. 

That's where a second [_tuning_](#tuning) phase comes in, a suite of processes used to improve the models performance on many general or specific skills.

## Tuning

Tuning refers to one or more processes used to transform a [_pretrained_](#training) model into one that exhibits much better desired behaviors (like instruction following) or specialized domain knowledge. Tuning may involve continued training cycles or different techniques.
