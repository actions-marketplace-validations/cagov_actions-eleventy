# GitHub Action for Eleventy

Use this action to build your static website with [Eleventy](https://www.11ty.io/). If you want the basic 11ty build use the repo this was forked from: [TartanLlama/actions-eleventy](https://github.com/TartanLlama/actions-eleventy)

This expects an npm build script, then will run the 11ty build step

To use it, create a `.github/workflows/eleventy_build.yml` file which [uses this repository](https://help.github.com/en/articles/workflow-syntax-for-github-actions#jobsjob_idsteps) as an action.

Here's an example which builds the site with this action, then deploys to GitHub Pages with [peaceiris/actions-gh-pages](https://github.com/peaceiris/actions-gh-pages):

```yaml
name: Test Build
on: [push]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@master
      - name: Build 11ty
        uses: cagov/actions-eleventy@3.0	
        with:	
          args: build:staging && eleventy --formats=html,njk --input ./pages --output ./docs	
      - name: Deploy
        uses: peaceiris/actions-gh-pages@v1.1.0
        env:
          PUBLISH_DIR: _site 
          PUBLISH_BRANCH: gh-pages
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}

```

You can pass additional arguments to `eleventy` through the `args` option:


<img src="https://cwds.dev/docs/4.3/assets/img/bear-logo.png">