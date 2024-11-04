---
layout: default
title: Leaderboards
nav_order: 60
has_children: true
---

# Leaderboards

This section describes the leaderboards we maintain with results from running benchmark suites of the [evaluators]({{site.baseurl}}/evaluators/evaluators) against various models and AI systems that use them. 

These leaderboards will include the leading open-source models to serve as evaluation targets and as evaluation judges. Initially, we are focusing on Meta’s [Llama family of models](https://www.llama.com){:target="llama"} and IBM’s [Granite family of models](https://www.ibm.com/granite){:target="granite"}, with others to follow.  

## Safety BAT Leaderboard

The [Safety BAT Leaderboard](https://huggingface.co/spaces/aialliance/safetybat){:target="bat-leaderboard"} on the [AI Alliance Hugging Face Community](https://huggingface.co/aialliance){:target="hf"} uses [BenchBench](https://github.com/IBM/benchbench){:target="bb"} to rate benchmarks according to their agreement with the defined _Aggregate Benchmark_, an enhanced representation of many benchmarks that are available.

BenchBench is a useful tool for users with the following needs:

* You have a new benchmark and you want to see if it agrees or disagrees with other known benchmarks.
* You are looking for a benchmark to run and use to ensure your trust in a system or model you want to use. BenchBench helps you find efficient alternatives that provide acceptable coverage, but may meet other needs, such as the ability to run the benchmark privately or with less overhead.

The leaderboard shows that agreements are best represented with the _BenchBench Score_, the relative agreement (Z Score) of each benchmark to the _Aggregate_ benchmark.

Read more about BenchBench in the paper [Benchmark Agreement Testing Done Right](https://arxiv.org/abs/2407.13696){:target="arxiv"} and the [BenchBench repo](https://github.com/IBM/benchbench){:target="bb"}. 

## Planned Leaderboards

As we fill in the evaluation [taxonomy]({{site.baseurl}}/taxonomy/taxonomy), we will stand up more leaderboards for specific areas of the taxonomy with wide interest, organized into benchmarks.

A benchmark catalog will be provided to find and reuse these sets of evaluators.

