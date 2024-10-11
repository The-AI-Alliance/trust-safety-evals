---
layout: default
title: Leaderboards
nav_order: 60
has_children: true
---

# Leaderboards

This section describes the leaderboards we maintain with results from running benchmark suites of the [evaluators]({{site.baseurl}}/evaluators/evaluators) against various models and AI systems that use them. 

## Safety BAT Leaderboard

The [Safety BAT Leaderboard](https://huggingface.co/spaces/aialliance/safetybat){:target="bat-leaderboard"} on the [AI Alliance Hugging Face Community](https://huggingface.co/aialliance){:target="hf"} uses [BenchBench](https://github.com/IBM/benchbench){:target="bb"} to rate benchmarks according to their agreement with the defined _Aggregate Benchmark_, an enhanced representation of many benchmarks that are available.

BenchBench is a useful tool for users with the following needs:

* You have a new benchmark and you want to see if it it agrees or disagrees with other known benchmarks.
* You are looking for a benchmark to run and use to ensure your trust in a system or model you are using. BenchBench helps you find an efficient alternatives that provide acceptable coverage, but may meet other needs, such as the ability to run the benchmark privately.

The leaderboard shows that agreements are best represented with theBenchBench Score, the relative agreement (Z Score) of each benchmark to the Aggregate benchmark.

Read more about BenchBench in the paper [Benchmark Agreement Testing Done Right](https://arxiv.org/abs/2407.13696){:target="arxiv"} and the [BenchBench repo](https://github.com/IBM/benchbench){:target="bb"}. 


MORE - TODO
