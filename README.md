Code for Masatoshi Katabuchi's website [mattocci27.github.io](https://mattocci27.github.io/).

Modified from [t413.com/SinglePaged](https://github.com/t413/SinglePaged).


## Requirements
- Ruby
- Bundler
- gem packages in Gemfile

```shell
% gem install bundler
% bundle install
```

## Usage

```rake publish``` will generate and publish website to gh-pages. I need this step because the [default Github pages workflow](https://help.github.com/articles/using-jekyll-as-a-static-site-generator-with-github-pages/) does not allow most of the plugins to run for security reasons.

## to do
- markdown for software page
