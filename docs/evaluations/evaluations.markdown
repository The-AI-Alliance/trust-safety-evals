---
layout: default
title: Evaluations and Benchmarks
nav_order: 40
has_children: false
---

# Evaluations and Benchmarks

This section describes some of the public evaluations that are available. Not all fit the draft [taxonomy]({{site.baseurl}}/taxonomy/taxonomy). 

[_Benchmarks_]({{site.glossaryurl}}/#benchmark) that aggregate evaluations for larger goals, e.g., domain-specific scenarios, are also cataloged here.

{: .highlight}
> **Help Wanted:** Do you have datasets, benchmarks, or other evaluations that you believe should be included? See our [Contributing]({{site.baseurl}}/contributing) page!

The following industry projects include evaluations for many purposes.

* [`unitxt` catalog](https://www.unitxt.ai/en/latest/catalog/catalog.__dir__.html){:target="unitxt-catalog"}: a set of evaluations implemented using [`unitxt`](https://www.unitxt.ai){:target="unitxt"}.
* [`lm-evaluation-harness` tasks](https://github.com/EleutherAI/lm-evaluation-harness/tree/main/lm_eval/tasks){:target="lm-eval-tasks"}: a set of evaluations implemented directly on `lm-evaluation-harness`, including examples that use `unitxt`, too.
* [Llama Guard](https://ai.meta.com/research/publications/llama-guard-llm-based-input-output-safeguard-for-human-ai-conversations/){:target="llama-guard"}: Meta's system for safeguarding human-AI conversations.
* [Granite Guardian](https://www.ibm.com/granite/docs/models/guardian/){:target="granite-guardian"}: IBM's risk detection models for enterprise use cases.
* [MLCommons AILuminate](https://ailuminate.mlcommons.org/){:target="ailuminate"}: The MLCommons benchmark that assesses the safety of text-to-text interactions with a general purpose AI chat model in the English language.
* The AI Alliance [Open Trusted Data Initiative](https://the-ai-alliance.github.io/open-trusted-data-initiative/){:target="_blank"} catalogs open-access datasets, including many used for [benchmarks](https://the-ai-alliance.github.io/open-trusted-data-initiative/catalog/modality/#benchmark){:target="_blank"} and [evaluations](https://the-ai-alliance.github.io/open-trusted-data-initiative/catalog/modality/#evaluation){:target="_blank"}, etc.

## Other Evaluations and Benchmarks of Potential Interest

### NeurIPS 2024 Datasets Benchmarks

The NeurIPS 2024 [Datasets Benchmarks](https://neurips.cc/virtual/2024/events/datasets-benchmarks-2024){:target="neurips2024"} is a list of recently-created datasets of interest for evaluation.

### `do-not-answer`

Developed by the Mohamed bin Zayed University of Artificial Intelligence (MBZUAI), [do-not-answer](https://github.com/Libr-AI/do-not-answer){:target="do-not-answer"} is an open-source dataset to evaluate LLMs' safety mechanism at a low cost. The dataset is curated and filtered to consist only of prompts to which responsible language models do not answer. Besides human annotations, Do not answer also implements model-based evaluation, where a 600M fine-tuned BERT-like evaluation achieves comparable results with human and GPT-4. 

### Human-Centric Face Representations

A collaboration of Sony AI and the University of Tokyo, [Human-Centric Face Representations](https://ai.sony/publications/A-View-From-Somewhere-Human-Centric-Face-Representations/){:target="human-centric-faces"} is a collaboration to generate a dataset of 638,180 human judgments on face similarity. Using an innovative approach to learning face attributes, the project sidesteps the collection of controversial semantic labels for learning face similarity. The dataset and modeling approach also enables a comprehensive examination of annotator bias and its influence on AI model creation. 

Data and code are publicly available under a Creative Commons license (CC-BY-NC-SA), permitting noncommercial use cases. See the [GitHub repo](https://github.com/SonyAI/a_view_from_somewhere){:target="human-centric-faces-github"}.

### Social Stigma Q&A

Social Stigma Q&A is a dataset from IBM Research. From the [arXiv paper abract](http://arxiv.org/abs/2312.07492){:target="social-stigma"}:

> Current datasets for unwanted social bias auditing are limited to studying protected demographic features such as race and gender. In this work, we introduce a comprehensive benchmark that is meant to capture the amplification of social bias, via stigmas, in generative language models. Taking inspiration from social science research, we start with a documented list of 93 US-centric stigmas and curate a question-answering (QA) dataset which involves simple social situations. Our benchmark, SocialStigmaQA, contains roughly 10K prompts, with a variety of prompt styles, carefully constructed to systematically test for both social bias and model robustness. We present results for SocialStigmaQA with two open source generative language models and we find that the proportion of socially biased output ranges from 45% to 59% across a variety of decoding strategies and prompting styles. We demonstrate that the deliberate design of the templates in our benchmark (e.g., adding biasing text to the prompt or using different verbs that change the answer that indicates bias) impacts the model tendencies to generate socially biased output. Additionally, through manual evaluation, we discover problematic patterns in the generated chain-of-thought output that range from subtle bias to lack of reasoning. 

For more information, see [Arxiv:2312.07492](http://arxiv.org/abs/2312.07492){:target="social-stigma"}.

### Kepler

[Kepler](https://github.com/sustainable-computing-io/kepler){:target="kepler"} ([paper](https://dl.acm.org/doi/10.1145/3604930.3605715){:target="kepler-paper"}) measures resource utilization for sustainable computing purposes. From the repo:

>  Kepler (Kubernetes-based Efficient Power Level Exporter) uses eBPF to probe performance counters and other system stats, use ML models to estimate workload energy consumption based on these stats, and exports them as Prometheus metrics.
