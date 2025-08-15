---
layout: default
title: SafetyBAT
nav_order: 630
parent: Leaderboards
has_children: false
---

# SafetyBAT Leaderboard

The [Safety BAT Leaderboard](https://huggingface.co/spaces/aialliance/safetybat){:target="bat-leaderboard"} on the [AI Alliance Hugging Face Community](https://huggingface.co/aialliance){:target="aia-hf"} uses [BenchBench](https://github.com/IBM/benchbench){:target="ibm-bb"} to rate benchmarks according to their agreement with the defined _Aggregate Benchmark_, an enhanced representation of many benchmarks that are available.

BenchBench is a useful tool for users with the following needs:

* You have a new benchmark and you want to see if it agrees or disagrees with other known benchmarks.
* You are looking for benchmarks to run and use to ensure your trust in a system or model you want to use. BenchBench helps you find efficient alternatives that provide acceptable coverage, but may meet other needs, such as the ability to run the benchmark privately or with less overhead.
* Since benchmarks can be expensive to run yourself, it is useful when selecting a representative set of benchmarks that cover the areas of concern, but don't overlap with each other too much, thereby conserving resources. 

The leaderboard shows that agreements are best represented with the _BenchBench Score_, the relative agreement (Z Score) of each benchmark to the _Aggregate_ benchmark.

Read more about BenchBench in the paper [Benchmark Agreement Testing Done Right](https://arxiv.org/abs/2407.13696){:target="arxiv"} and the [BenchBench repo](https://github.com/IBM/benchbench){:target="bb"}. 

## Using SafetyBAT for Your Own Evaluations

If you are interested in cloning the source code for your own use or contributing to this leaderboard, see [this README](https://github.com/The-AI-Alliance/trust-safety-evals/blob/main/README.md#safetybat-leaderboard){:target="readme"}.
