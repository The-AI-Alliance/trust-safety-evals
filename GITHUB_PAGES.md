# Editing and Publishing the GitHub Pages Website

The [published website](https://the-ai-alliance.github.io/trust-safety-evals/).

The documentation for this repo is published using [GitHub Pages](https://pages.github.com/). We welcome contributions as PRs. See the AI Alliance [CONTRIBUTING](https://github.com/The-AI-Alliance/community/blob/main/CONTRIBUTING.md) instructions. Also, you'll need to agree with the AI Alliance [Code of Conduct](https://github.com/The-AI-Alliance/community/blob/main/CODE_OF_CONDUCT.md) and all contributions will be covered by the [LICENSE](https://github.com/The-AI-Alliance/community/blob/main/LICENSE) (which is also in [this repo](LICENSE)).

> [!NOTE]
> The documentation in this repo is licensed under Creative Commons Attribution 4.0 International. To view a copy of this license, see [LICENSE.CC-BY-4.0](LICENSE.CC-BY-4.0) or visit https://creativecommons.org/licenses/by/4.0/legalcode. All code uses the [Apache 2.0](LICENSE.Apache-2.0) license. All data uses the [CDLA 2.0](LICENSE.CDLA-2.0) license.


## Quick Setup

We use [GitHub Pages](https://pages.github.com/) so edits can be made in Markdown, updates can be managed using pull requests, and the results can be published automatically by GitHub.

In fact, each page has _Edit this page on GitHub_ links, making it easy to view a page, then go straight to the source to edit it and submit a PR! This is the best way to help us fix typos and make similar small edits.

However, this easy approach only supports correcting content on a single page. for more significant changes, like adding new pages, you may want the ability to preview the changes locally. 

Local previewing allows you to see how any changes, even on a single page, will _really_ look when rendered with stylesheets, etc. While GitHub renders Markdown well, there are extensions we use that are supported by Jekyll that won't be rendered correctly in GitHub's default Markdown file viewer. 

> [!NOTE]
> If you don't want to setup `jekyll` for previewing or if you have trouble setting it up, don't let that stop you from contributing content! Submit a PR with your changes and we'll review them in a running environment ourselves. We'll provide feedback as needed.

So, to view the website locally and to make more extensive changes, you'll need to have a recent version of [Ruby](https://www.ruby-lang.org/en/) installed, along with the [`gem`](https://docs.ruby-lang.org/en/master/Gem.html) library management tool, and [`jekyll`](https://jekyllrb.com/) which is the webserver and rendering engine.

We discuss these steps in more depth [below](#setup-jekyll), but the following steps may _just work_ for you.

Install a recent version of Ruby 3. Note that on MacOS, the default Ruby installation is old, version 2.6.10. Installing Ruby will also install the `gem` dependency tool.

This repo's `Makefile` will attempt to install the remaining dependencies, including `jekyll`, when you run `make all` or `make view-local`.

> [!WARNING]
> The automatic setup of `jekyll` in the `Makefile` has only been tested on MacOS and it most likely doesn't work on Windows, unless you use the Linux subsystem. If you encounter problems on other platforms, please [post an issue](https://github.com/The-AI-Alliance/trust-safety-evals/issues) to get help, or if you can fix the issue, a [pull request](https://github.com/The-AI-Alliance/trust-safety-evals/pulls) (PR) is always welcome :nerd_face:. (More details on PRs below.)

So, try `make view-local` and see if Jekyll is installed successfully and the website is rendered.

The command will finish with a message like this:

```
...
Server address: http://127.0.0.1:4000/
Server running... press ctrl-c to stop.
```

Open the URL in a browser. 

> [!TIP]
> 
> 1. On MacOS, use &#8984;-click on the URL to open it in a browser.
> 2. Run `make help` for a list of the main commands defined.
> 3. Run `JEKYLL_PORT=4444 make view-local` to use port `4444` instead of `4000`.
> 4. `view-local` will always check the Ruby and Jekyll installation. To skip this, use `make run-jekyll` instead.

## Contributing New or Improved Content

> **Note:** We require commits to be both signed and singed-off. See the [community contributing guide](https://github.com/The-AI-Alliance/community/blob/main/CONTRIBUTING.md) for details on these requirements and all other aspects of contributing code and documentation to Alliance projects.

What gets displayed by GitHub Pages is the customized Markdown files in the `docs` directory. If you need to create a new page, copy an existing page to get the correct "header" information, then edit as needed.

Here are some things you should know.

### Using the Correct Branch

As for most Git repos, issue PRs to the `main` branch. However, the repo is actually configured to publish the docs from the `latest` branch, so we can accept PRs quickly, then decide when to publish a new version. (We will also tag `latest` for each release with a version number, for historical tracking.)

> [!NOTE]
> If you are curious, the details of how this publication branch is configured are discussed [below](#configuring-github-pages-in-the-repo-settings).


## Editing Conventions and Tips

### Links

For internal cross-references, use the conventional `[title]({{site.baseurl}}/relative_URL)` Markdown syntax. 

> [!WARNING]
> the `{{site.baseurl}}/` prefix is _essential_, because this _prefix_ will be different for local execution vs. published serving.

For external links (those that start with `http` or `https`), we use the [`jekyll-target-blank` plugin](https://github.com/keithmifsud/jekyll-target-blank) to automatically open them in a new browser tab or window. _Relative_ links within the site are opened in the same tab. 

This plugin effectively adds `target="_blank"` to every anchor tag, i.e., `<a href="" target="_blank">...</a>`. However, this means that if users click on a lot of external links to see all of them, they will be "stacked" in the history of one browser tab. Therefore, you may consider adding explicit targets yourself. You can do this using the following syntax:

```markdown
[`jekyll-target-blank` plugin](https://github.com/keithmifsud/jekyll-target-blank){:target="arbitrary_name"}
```

Furthermore, as a visual clue to the user, [our stylesheet](https://github.com/The-AI-Alliance/trust-safety-evals/blob/main/docs/_includes/css/custom.scss.liquid) is configured to put little up-and-to-the-right arrows after every external link. This provides a visual clue that a new tab will be opened.

### Emojis

In the pages, you can use emojis, e.g., `:+1:` yields :+1:, `:smirk:` yields :smirk:, `:nerd_face:` yields :nerd_face:, etc. The `jemoji` Ruby gem adds this capability. [Here is a list of available emojis](https://www.webfx.com/tools/emoji-cheat-sheet/).

## Previewing Your Work Locally

We provided a basic set of instructions above for setting up Jekyll locally. Here is a more detailed set of instructions, if you need them.

### Setup Jekyll

First, you'll need a reasonably recent version of Ruby installed. The one that comes with MacOS is _not new enough_. See [Use Homebrew to Install Ruby on MacOS](#use-homebrew-to-install-ruby-on-macos) to install [Homebrew](https://brew.sh) and then Ruby using the `brew` command.

Afterwards, the commands shown next should produce similar output that shown from Dean's machine, circa June 2024:

```shell
$ which ruby
/usr/local/Cellar/ruby/3.3.0/bin/ruby
$ ruby --version
ruby 3.3.0 (2023-12-25 revision 5124f9ac75) [x86_64-darwin23]
```

> [!WARNING]
> In 2022, when we used these tools, building the website was not working with Ruby 3.2, you may still need to use 3.3 or 3.1.

For MacOS, make sure the `ruby` path shown is not `/usr/bin/ruby`, which is the old, built-in 2.6 version. Try `which -a ruby`, which will hopefully show the `Cellar` version second. If so, edit the `PATH` definition in your `~/.zshrc` file to put the newer `/usr/local/Cellar/ruby/3.X.Y/bin` directory before `/usr/bin/`.

Now, it _should_ be sufficient to run the following command:

```shell
make setup-jekyll
```

If this fails, then see the [Tips and Known Issues](#tips-and-known-issues) below.

### View the Pages Locally

Once Jekyll is set up, you can serve the pages locally for previewing and editing by running one of the following commands, then open [localhost:4000](http://localhost:4000) (default port...) in a browser:

```shell
make view-local   # Install all Jekyll dependencies, then make "run-jekyll"
make run-jekyll   # Run the jekyll server. Avoids dependency setup every time!
JEKYLL_PORT=4444 make view-local   # Use a different port, 4444 instead of 4000
JEKYLL_PORT=4444 make run-jekyll
```

If an error is thrown, see the [Tips and Known Issues](#tips-and-known-issues) below.

> [!TIP]
> 
> 1. On MacOS, use &#8984;-click on the URL to open it in a browser.
> 2. Run `make help` for a list of the main commands defined.

The `run-jekyll` target runs the following command:

```shell
cd docs && bundle exec jekyll serve --port ${JEKYLL_PORT} --baseurl '' --incremental
```

* `JEKYLL_PORT` for the `--port` flag defaults to `4000`
* The `--baseurl` flag effectively supports the simple URL, `localhost:$JEKYLL_PORT`. (Without it, the URL would be `localhost:$JEKYLL_PORT/The-AI-Alliance/trust-safety-evals/`.) 
* The `--incremental` flag lets you edit the pages and refresh the browser tab to see the updates immediately. 

> [!NOTE]
> Well, more or less immediately. It can take several seconds for new pages to be generated and sometimes you'll get weird behaviors if you change URL paths, etc. So, occasionally it is useful to _control-c_ in the terminal and rerun the `make` command.

> [!TIP]
> `make view-pages` opens the _published_ GitHub Pages in a browser tab.

### Now Edit!

You can now edit the pages, save them, then refresh your browser to see the updates.

## Tips and Known Issues

### Use Homebrew to Install Ruby on MacOS (Recommended)

You really can't use the Ruby that comes with your Mac, because:
1. It's too old, 2.6.X, instead of 3.X, which we need.
2. You don't have permissions to install Gems into `/Library/...`

So, install [Homebrew](https://brew.sh), if you haven't already. Then use it to install a local, recent version of Ruby:

```shell
brew install ruby@3.3
which -a ruby
```

If the last command shows `/usr/bin/ruby` before a path like `/usr/local/Cellar/ruby/3.3.0/bin/ruby`, then you will have to edit your `~/.zshrc` file and make sure the `/usr/local/Cellar/ruby/...` path comes before `/usr/bin`. For example, the following line will just put this Ruby first. (this is a hack):

```shell
PATH="/usr/local/opt/ruby/3.3.0/bin:$PATH"
```

(Use the exact version number you have!)

Then in your terminal, either open a new window/tab or run the command `source ~/.zshrc` to load the changed `PATH`. Now `which ruby` should return a path in `/usr/local/Cellar/...` and `ruby --version` should return the correct 3.X version.

### The Jekyll Installation Instructions Failed

Suppose you run the following command and it fails:

```shell
make setup-jekyll  # also executed when making `view-local`
```

First, make sure you are using a valid version of `ruby`. A symptom you didn't do that; you'll see this error message:

```
You don't have write permissions for the /Library/Ruby/Gems/2.6.0 directory.
```

The commands run by `make setup-jekyll` include the following (a few details omitted for simplification):

```shell
gem install bundler jekyll jemoji
bundle install
bundle update html-pipeline
```

Finally, if you are still stuck, please [post an issue](https://github.com/The-AI-Alliance/trust-safety-evals/issues) to get help.

> **Help Needed:**
>
> If you find missing steps that `make setup-jekyll` should run but doesn't, or you find and fix problems that only occur on non-MacOS platforms, **please** submit a PR with fixes! Thank you. 

### The "make view-local" Command Fails

What if `make view-local` command fails with this error message?

```shell
jekyll 3.9.2 | Error: No such file or directory @ rb_check_realpath_internal
```

First, that's an old Jekyll version. It should be 4.3.3 or later. Try these commands:

```shell
gem uninstall jekyll
gem install jekyll
gem list | grep jekyll
```

### Configuring GitHub Pages in the Repo Settings

This section documents the one-time settings changes we did to [configure publication of our GitHub Pages](https://docs.github.com/en/enterprise-server@3.1/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site). We changed the desired branch to use, `latest`, rather than the default `main` branch, and we specified the directory for the website pages, `docs`. This only needs to be done if and when the branch or directory location is changed.

In the repo's [_Settings > Pages_ section](https://github.com/The-AI-Alliance/trust-safety-evals/settings/pages), set the branch to be `latest` and the folder to be `/docs`. The reason for using `latest` rather than `main`, is to allow small change PRs to be made without affecting what is published until we decide to publish an update.
