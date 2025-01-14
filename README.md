# README

[Published Documentation](https://the-ai-alliance.github.io/trust-safety-evals/)

This repo contains the code and documentation for the AI Alliance _Trust and Safety Evaluations Initiative_, which defines a reference stack for AI model and system evaluation, with evaluations, benchmarks, and leaderboards.

See the [website](https://the-ai-alliance.github.io/trust-safety-evals/) for a more detailed description of this initiative.

At this time, only the "skeleton" documentation is provided. We will be making initial commits of code, etc. soon.

## Getting Involved

We welcome contributions as PRs. Please see our [Alliance community repo](https://github.com/The-AI-Alliance/community/) for general information about contributing to any of our projects and initiatives. This section provides some specific details you need to know.

In particular, see the AI Alliance [CONTRIBUTING](https://github.com/The-AI-Alliance/community/blob/main/CONTRIBUTING.md) instructions. You will need to agree with the AI Alliance [Code of Conduct](https://github.com/The-AI-Alliance/community/blob/main/CODE_OF_CONDUCT.md).

All _code_ contributions are licensed under the [Apache 2.0 LICENSE](https://github.com/The-AI-Alliance/community/blob/main/LICENSE.Apache-2.0) (which is also in this repo, [LICENSE.Apache-2.0](LICENSE.Apache-2.0)).

All _documentation_ contributions are licensed under the [Creative Commons Attribution 4.0 International](https://github.com/The-AI-Alliance/community/blob/main/LICENSE.CC-BY-4.0) (which is also in this repo, [LICENSE.CC-BY-4.0](LICENSE.CC-BY-4.0)).

All _data_ contributions are licensed under the [Community Data License Agreement - Permissive - Version 2.0](https://github.com/The-AI-Alliance/community/blob/main/LICENSE.CDLA-2.0) (which is also in this repo, [LICENSE.CDLA-2.0](LICENSE.CDLA-2.0)).

### We use the "Developer Certificate of Origin" (DCO).

> [!WARNING]
> Before you make any git commits with changes, understand what's required for DCO.

See the Alliance contributing guide [section on DCO](https://github.com/The-AI-Alliance/community/blob/main/CONTRIBUTING.md#developer-certificate-of-origin) for details. In practical terms, supporting this requirement means you must use the `-s` flag with your `git commit` commands.

## About the Code

Some code for this initiative will be kept in this repo, but other code will be kept in separate repos. This section will provide links to the relevant locations as they are added.

### SafetyBAT Leaderboard

This leaderboard has a Hugging Face git repo that mirrors two other repos as follows.

* HF repo: https://huggingface.co/spaces/aialliance/safetybat
* Upstream IBM repo: https://huggingface.co/spaces/ibm/benchbench
* Fork of the IBM repo in the [AI Alliance GitHub org](https://github.com/The-AI-Alliance): https://github.com/The-AI-Alliance/tse-ibm-benchbench

To make updates to this code, use the following procedure.

Install support for [large files](https://git-lfs.com): 

```shell
git lfs install
```

Clone the tse-ibm-benchbench repo:

```shell
git clone git@github.com:The-AI-Alliance/tse-ibm-benchbench.git
cd tse-ibm-benchbench
```

Add the HF repo as an upstream repo. Note the use of the name `hf-upstream`:

```shell
git remote add hf-upstream git@hf.co:spaces/aialliance/safetybat
```

Fetch all the branches for both forks:
```shell
git fetch --all --prune
```

Now you can work locally and push changes upstream. Consider the scenario where you want to compare the two `main` branches to see what might be out of date and push changes upstream:

```shell
git checkout main    # make sure you are in the tse-* main branch.
git diff hf-upstream/main
```

To push the latest from `tse-ibm-benchbench` upstream to the Hugging Face repo fork, do the following:

```shell
git checkout hf-upstream/main
git merge origin/main
git commit -s -m 'description' .
git push --all  # push all branches that have changed.
```

(The `-s` flag is for _signoff_, required for DCO, discussed above.)

Similarly, after you make edits to `tse-ibm-benchbench` and want to push them upstream:

```shell
git checkout hf-upstream/main
git merge origin/main
git commit -s -m 'description' .
git push --all  # push all branches that have changed.
```

## About the Documentation

## About the GitHub Pages Website Published from this Repo

The website is published using [GitHub Pages](https://pages.github.com/), where the pages are written in Markdown and served using [Jekyll](https://github.com/jekyll/jekyll). We use the [Just the Docs](https://just-the-docs.github.io/just-the-docs/) Jekyll theme.

See [GITHUB_PAGES.md](GITHUB_PAGES.md) for more information.

> [!NOTE]
> As described above, all documentation is licensed under Creative Commons Attribution 4.0 International. See [LICENSE.CDLA-2.0](LICENSE.CDLA-2.0)).
