# PAH
[![Build Status][travis_badge]][travis]
[![RubyGems][gem_version_badge]][ruby_gems]
[![Code Climate][code_climate_badge]][code_climate]
[![Gemnasium][gemnasium_badge]][gemnasium]
[![RubyGems][gem_downloads_badge]][ruby_gems]

A Rails application template which was born from [Startup DEV][startupdev] and now is used to start most projects at [HE:labs][helabs].

## Dependencies

* Heroku Toolbelt - https://toolbelt.heroku.com/
* phantomjs - http://phantomjs.org/download.html

## Instalation

Install PAH from rubygems with the command:

```bash
$ gem install pah
```

or install from source with:

```bash
$ git clone https://github.com/Helabs/pah
cd ./pah
bundle install
bundle exec ./bin/pah ~/path/to/project
```

## Usage

Run:

```bash
$ pah projectname
```

This will create a Rails 5.0.0 app with Ruby 2.3.1. This script creates a new git repository in the folder `projectname`.

:warning: PAH is not meant to be used against an existing repo.

### RVM

If you're using [RVM see those tips](https://github.com/Helabs/pah/wiki/Using-Pah-with-RVM).

PAH automatically create the .ruby-version and .ruby-gemset files.

## Versioning

PAH follows the [Semantic Versioning](http://semver.org/) standard.

## Issues

If you have problems, please create a [Github Issue](https://github.com/Helabs/pah/issues).

## Contributing

Please see [CONTRIBUTING.md](https://github.com/Helabs/pah/blob/master/CONTRIBUTING.md) for details.

## Maintainers

- [Mauro George](https://github.com/maurogeorge)
- [Thiago Belem](https://github.com/TiuTalk)

## Release

Follow this steps to release a new version of the gem.

1. Test if everything is running ok;
2. Change version of the gem on `VERSION` constant;
3. Add the release date on the `CHANGELOG`;
4. Do a commit "Bump version x.x.x", follow the semantic version;
5. Run `$ rake release`, this will send the gem to the rubygems;
6. Check if the gem is on the rubygems and the tags are correct on the github;

## Made with love by HE:labs

![HE:labs](http://helabs.com.br/images/logo.png)

This gem was created and is maintained by [HE:labs](https://github.com/Helabs).

[startupdev]: http://startupdev.com.br
[helabs]: http://helabs.com.br
[gem_version_badge]: http://img.shields.io/gem/v/pah.svg?style=flat
[gem_downloads_badge]: http://img.shields.io/gem/dt/pah.svg?style=flat
[ruby_gems]: http://rubygems.org/gems/pah
[code_climate]: https://codeclimate.com/github/Helabs/pah
[code_climate_badge]: http://img.shields.io/codeclimate/github/Helabs/pah.svg?style=flat
[gemnasium]: https://gemnasium.com/Helabs/pah
[gemnasium_badge]: http://img.shields.io/gemnasium/Helabs/pah.svg?style=flat
[travis]: https://travis-ci.org/Helabs/pah
[travis_badge]: http://img.shields.io/travis/Helabs/pah/master.svg?style=flat
