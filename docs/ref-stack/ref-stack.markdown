---
layout: default
title: Evaluation Platform Reference Stack
nav_order: 70
has_children: true
---

# Evaluation Platform Reference Stack

This section describes the reference stack that can be used to run the [evaluators]({{site.baseurl}}/evaluators/evaluators) and benchmarks aggregated from them.

It is important to note the separation between the stack that is agnostic about particular evaluations of interest, and the &ldquo;plug-in&rdquo; evaluators themselves. A set of evaluators in a given stack deployment may represent a defined benchmark for particular objectives.

The evaluation platform is based on [shared needs]({{site.baseurl}}/user-personae/user-personae/#shared-needs-for-all-users) of all users. A common theme is the need to run the evaluation platform for public collaborative tasks and leaderboards, as well private deployments for evaluating proprietary models and systems. Also, both _offline_ evaluation, such as for leaderboards and research investigations, and _online_ inference must be supported by the same stack, with appropriate scaling and hardening of the deployments, as required.

There is no industry-standard evaluation stack, but several tools have achieved wide adoption, such as EleutherAI’s [`lm-evaluation-harness`](https://www.eleuther.ai/projects/large-language-model-evaluation){:target="lm-site"} and IBM's [`unitxt`](https://www.unitxt.ai){:target="unitxt"}. Evaluations can be implemented using the `lm-evaluation-harness` or `unitxt` API. Evaluations implemented for `unitxt` can be executed on top of `lm-evaluation-harness` or separately by `unitxt`.

IBM's [`EvalAssist`](https://ibm.github.io/eval-assist/){:target="eval-assist"} is a relatively new tool that makes writing certain kinds of `unitxt`-based evaluations easier, as discussed below. IBM's [Risk Atlas Nexus]({{site.baseurl}}/leaderboards/risk-atlas-nexus/) and [SafetyBAT Leaderboard]({{site.baseurl}}/leaderboards/safetybat/) provide accessible tools for viewing how different models perform against user-specified criteria. They are not discussed further here; see [Leaderboards]({{site.baseurl}}/leaderboards/leaderboards/).

Infosys' [`Responsible AI Toolkit`](https://github.com/Infosys/Infosys-Responsible-AI-Toolkit){:target="irait"} is a suite of tools for various evaluation purposes.

Many other evaluation suites are written using less well-known or &ldquo;home-grown&rdquo; tools. Hence, today the AI engineer may need to support a heterogeneous runtime environment to run all the evaluations required, but hopefully the industry will mature and consolidate on a standard suite of tools soon.

## Architecture

Schematically, an evaluation deployment using the reference stack with example evaluators is shown in Figure 1:

![Reference Stack schematic diagram]({{site.baseurl}}/assets/images/ref-stack.png){:class="diagram-center"}
<center><b>Figure 1:</b> Schematic architecture of a deployment.</center>

Evaluations can be written and deployed using any combination of EvalAssist, `unitxt`, `lm-evaluation-harness`, or other tools. Runtime support is provided by one or more of Llama Stack, Infosys Responsible AI Toolkit,  `lm-evaluation-harness`, or other tools.

Not shown are other production support tools like those for observability, security, horizontal scaling, etc. Tools like [Arize Phoenix](https://phoenix.arize.com/){:target="phoenix"} provide AI-centric observability and metrics collection (discussed below). Some deployments will use [Kubernetes](https://kubernetes.io){:target="_blank"}.

### Execution Framework

The execution framework provides mechanisms to run evaluations and benchmarks in a consistent manner, mechanisms to aggregate results, compute metrics, and report results, and logging and error recovery capabilities.

The open-source software (OSS) components in the reference stack include the following projects:

* EleutherAI’s [LM Evaluation Harness](https://www.eleuther.ai/projects/large-language-model-evaluation){:target="lm-site"} (a.k.a., `lm-evaluation-harness`. GitHub [repo](https://github.com/EleutherAI/lm-evaluation-harness){:target="lm-repo"}), a widely used, efficient evaluation platform for inference time (i.e., runtime) evaluation and for leaderboards.
* IBM’s [Unitxt](https://www.unitxt.ai){:target="unitxt"} library, a framework for individual evaluators, which has an interesting benefit that evaluators can be _declaratively_ defined and executed without the need to write and execute third-party, possibly-untrusted code. This model supports several of the [user needs]({{site.baseurl}}/user-personae/user-personae/#shared-needs-for-all-users) involving open collaboration in a pragmatic way, without the need for running third-party evaluation code.
* IBM's [EvalAssist](https://ibm.github.io/eval-assist/){:target="eval-assist"} is a relatively new tool that makes writing `unitxt`-based evaluations easier. Specifically, EvalAssist is an application that simplifies using LLMs as evaluators (LLM-as-a-Judge) of the output of other LLMs by supporting users in iteratively refining evaluation criteria in a web-based user experience, with other features designed for the incremental process of building evaluations.

The evaluation tools can be run on platforms that provide broader services for AI applications:

* Arize's [Phoenix](https://phoenix.arize.com/){:target="phoenix"} ([GitHub](https://github.com/Arize-ai/phoenix){:target="phoenix-gh"}) is an AI application-centric tool for observability and metrics collection. Real deployments of the reference stack need to provide these capabilities, but the stack needs to be agnostic about the specific tools used, as different deployments will use different tools.
* Infosys' [`Responsible AI Toolkit`](https://github.com/Infosys/Infosys-Responsible-AI-Toolkit){:target="irait"} can be used to deploy evaluation tools for various evaluation purposes.
* Meta's [Llama Stack](https://llama-stack.readthedocs.io/en/latest/){:target="_mls"} is a full-featured stack that provides built-in integrations for evaluation tools, agents, etc.

We are working on easy to use examples for all these components. For now, here is some information you can use now.

### Leaderboard Deployments

Components of the stack are used to implement leaderboards described in [Leaderboards]({{site.baseurl}}/leaderboards/leaderboards/) and hosted in the [AI Alliance Hugging Face Community](https://huggingface.co/aialliance){:target="hf"} or member communities.

## LM Evaluation Harness Installation

To install [LM Evaluation Harness](https://www.eleuther.ai/projects/large-language-model-evaluation){:target="lm-site"}, use the following command, from the  `lm-evaluation-harness` repo [README](https://github.com/EleutherAI/lm-evaluation-harness){:target="lm-repo"}:

```shell
git clone --depth 1 https://github.com/EleutherAI/lm-evaluation-harness
cd lm-evaluation-harness
pip install -e .
```

The [README](https://github.com/EleutherAI/lm-evaluation-harness){:target="lm-repo"} has examples and other ways to run evaluations in different deployment scenarios.

## Unitxt Examples

Several examples using [`unitxt`](https://www.unitxt.ai){:target="unitxt"} are available in the [IBM Granite Community](https://github.com/ibm-granite-community){:target="igc"}, in the [Granite &ldquo;Snack&ldquo; Cookbook](https://github.com/ibm-granite-community/granite-snack-cookbook){:target="igc-snack"} repo, under the [`recipes/Evaluation`](https://github.com/ibm-granite-community/granite-snack-cookbook/tree/main/recipes/Evaluation){:target="igc-snack-eval"} folder. These examples only require running [Jupyter](https://jupyter.org/){:target="jupyter"} locally, because all inference is done remotely by the community's back-end services:

* [`Unitxt_Quick_Start.ipynb`](https://github.com/ibm-granite-community/granite-snack-cookbook/tree/main/recipes/Evaluation/Unitxt_Quick_Start.ipynb){:target="igc-snack-eval1"} - A quick introduction to `unitxt`.
* [`Unitxt_Demo_Strategies.ipynb`](https://github.com/ibm-granite-community/granite-snack-cookbook/tree/main/recipes/Evaluation/Unitxt_Demo_Strategies.ipynb){:target="igc-snack-eval2"} - Various ways to use `unitxt`.
* [`Unitxt_Granite_as_Judge.ipynb`](https://github.com/ibm-granite-community/granite-snack-cookbook/tree/main/recipes/Evaluation/Unitxt_Granite_as_Judge.ipynb){:target="igc-snack-eval3"} - Using `unitxt` to drive the _LLM as a judge_ pattern.

## Using LM Evaluation Harness and Unitxt Together

Start on this [Unitxt page](https://www.unitxt.ai/en/latest/docs/lm_eval.html){:target="unitxt-lm-eval"}. Then look at the [`unitxt` tasks](https://github.com/EleutherAI/lm-evaluation-harness/tree/main/lm_eval/tasks/unitxt){:target="unitxt-lm-eval2"} in the [`lm-evaluation-harness`](https://github.com/EleutherAI/lm-evaluation-harness){:target="lm-eval"} repo.

Easy to use examples are under development for publication here.

## EvalAssist

One popular evaluation technique is _LLM as a judge_, which uses a smart &ldquo;teacher model&rdquo; to evaluate the quality of benchmark datasets and model responses, because having humans do this is expensive and not sufficiently scalable. (This is different from data synthesis with a teacher model.) [`EvalAssist`](https://ibm.github.io/eval-assist/){:target="eval-assist"} is designed to make writing these kinds of evaluations easier, including incremental development. It uses `unitxt` to implement evaluations.

## Observability with Arize Phoenix

[Arize Phoenix](https://phoenix.arize.com/){:target="phoenix"} ([GitHub](https://github.com/Arize-ai/phoenix){:target="phoenix-gh"}) is an open-source LLM tracing and evaluation platform designed to provide seamless support for evaluating, experimenting, and optimizing AI applications.

See the [home page](https://phoenix.arize.com/){:target="phoenix"} for details on installing and using Phoenix. We are working on an example deployment that demonstrates the integration with the rest of the reference stack discussed above.
