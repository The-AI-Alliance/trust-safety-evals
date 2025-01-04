---
layout: default
title: Evaluators and Benchmarks
nav_order: 50
has_children: true
---

# Evaluators and Benchmarks

This section describes the evaluators that implement the evaluations identified in the [taxonomy]({{site.baseurl}}/taxonomy/taxonomy). Evaluations include some combination of code and data.

Benchmarks that aggregate evaluators for larger goals, e.g., domain-specific scenarios, are also cataloged here.

For now, see the [`unitxt` catalog](https://www.unitxt.ai/en/latest/catalog/catalog.__dir__.html){:target="unitxt-catalog"} for a set of evaluators implemented using [`unitxt`](https://www.unitxt.ai){:target="unitxt"}.

## Evaluators and Benchmarks to Explore

A list of possible candidates to incorporate in our catalog.

_More Coming Soon_

> **Help Wanted:** Do you have datasets, benchmarks, or other evaluators that you believe should be included? See our [Contributing]({{site.baseurl}}/contributing) page!

### NeurIPS 2024 Datasets Benchmarks

The NeurIPS 2024 [Datasets Benchmarks](https://neurips.cc/virtual/2024/events/datasets-benchmarks-2024){:target="neurips2024"} is a list of recently-created datasets of interest for evaluation.

### `do-not-answer`

Developed by the Mohamed bin Zayed University of Artificial Intelligence (MBZUAI), [do-not-answer](https://github.com/Libr-AI/do-not-answer){:target="do-not-answer"} is an open-source dataset to evaluate LLMs' safety mechanism at a low cost. The dataset is curated and filtered to consist only of prompts to which responsible language models do not answer. Besides human annotations, Do not answer also implements model-based evaluation, where a 600M fine-tuned BERT-like evaluator achieves comparable results with human and GPT-4. 

### Human-Centric Face Representations

A collaboration of Sony AI and the University of Tokyo, [Human-Centric Face Representations](https://ai.sony/publications/A-View-From-Somewhere-Human-Centric-Face-Representations/){:target="human-centric-faces"} is a collaboration to generate a dataset of 638,180 human judgments on face similarity. Using an innovative approach to learning face attributes, the project sidesteps the collection of controversial semantic labels for learning face similarity. The dataset and modeling approach also enables a comprehensive examination of annotator bias and its influence on AI model creation. 

Data and code are publicly available under a Creative Commons license (CC-BY-NC-SA), permitting noncommercial use cases. See the [GitHub repo](https://github.com/SonyAI/a_view_from_somewhere){:target="human-centric-faces-github"}.

### Social Stigma Q&A

TODO - description

[Arxiv:2312.07492](http://arxiv.org/abs/2312.07492){:target="social-stigma"}

### Kepler

[Kepler](https://github.com/sustainable-computing-io/kepler){:target="kepler"} ([paper](https://dl.acm.org/doi/10.1145/3604930.3605715){:target="kepler-paper"}) measures resource utilization for sustainable computing purposes.
