tilda-api
=========

  - [![Code Climate](https://codeclimate.com/github/Nitr/tilda-api/badges/gpa.svg)](https://codeclimate.com/github/Nitr/tilda-api)
  - [![Test Coverage](https://codeclimate.com/github/Nitr/tilda-api/badges/coverage.svg)](https://codeclimate.com/github/Nitr/tilda-api/coverage)
  - [![Dependency Status](https://gemnasium.com/Nitr/tilda-api.svg)](https://gemnasium.com/Nitr/tilda-api)
  - [![Gem Version](https://badge.fury.io/rb/tilda-api.svg)](http://badge.fury.io/rb/tilda-api)
  - [![Releases](http://img.shields.io/github/release/Nitr/tilda-api.svg?style=flat-square)](http://github.com/Nitr/tilda-api/releases)
  - [![Tags](http://img.shields.io/github/tag/Nitr/tilda-api.svg?style=flat-square)](http://github.com/Nitr/tilda-api/tags)
  - [![Downloads](http://img.shields.io/gem/dtv/tilda-api.svg?style=flat-square)](https://rubygems.org/gems/tilda-api)
  - [![security](https://hakiri.io/github/Nitr/tilda-api/master.svg)](https://hakiri.io/github/Nitr/tilda-api/master)
  - [![Build](http://img.shields.io/travis-ci/Nitr/tilda-api.svg?style=flat-square)](https://travis-ci.org/Nitr/tilda-api)
  - [![License](http://img.shields.io/badge/license-MIT-brightgreen.svg?style=flat-square)](http://opensource.org/licenses/MIT)
  - [![Version](http://img.shields.io/gem/v/tilda-api.svg?style=flat-square)](https://rubygems.org/gems/tilda-api)


# Tilda::Api

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'tilda-api'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tilda-api

## Usage

Configuration api:

```ruby
  Tilda::Api.configure do |config|
    config.public_key = "your-public-key"
    config.secret_key = "your-secret-key"
    config.api_version = "v1"
  end
```

```ruby
  tilda_api = Tilda::Api::Request.new 
  #tilda_api = Tilda::Api::Request.new(public_key: "your-public-key", secret_key: "your-secret-key")
  tilda_api.get_projects_list
  tilda_api.get_project(project_id)
  tilda_api.get_project_export(project_id)
  tilda_api.get_pages_list(project_id)
  tilda_api.get_page(page_id)
  tilda_api.get_page_full(page_id)
  tilda_api.get_page_export(page_id)
  tilda_api.get_page_full_export(page_id)
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/tilda-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
