# (casper, the) friendly_ghost [![Build Status](https://travis-ci.org/ezkl/friendly_ghost.png)](https://travis-ci.org/ezkl/friendly_ghost)
## Overview
A simplistic, opinionated Ruby runner for [CasperJS](http://casperjs.org)
projects. Designed to hand JSON from the last line of STDOUT back to the user.
Maybe someone else will find it useful, but I doubt it.

## Installation
Using rubygems:
`gem install friendly_ghost`

OR using Bundler:
`gem 'friendly_ghost'`

OR using hub:
`git clone ezkl/friendly_ghost`

## Usage

```ruby
runner = FriendlyGhost::Runner.new
runner.casper_path #=> /usr/local/bin/casperjs

runner.command 'test spec/support/json.js'
runner.process.success? #=> true
runner.process.out #=> STDOUT
runner.process.err #=> STDERR
```

## Dependencies
* [posix-spawn](https://github.com/rtomayko/posix-spawn)
* [multi_json](https://github.com/intridea/multi_json)
