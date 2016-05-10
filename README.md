# uuid64
This is a library generating unique id in short pattern.
1. Generate a 64-bit encoded uuid in Ruby with length of 22.
2. Generate a 16-bit encoded object_id like what it is in BSON.
3. Generate a 64-bit encoded object_id like what it is in BSON with length of 16.

## Status
[![Gem Version](https://badge.fury.io/rb/uuid64.svg)](https://badge.fury.io/rb/uuid64)

## Get Started

### Install
```bash
gem install uuid64
```

### Using Bundler
```ruby
gem 'uuid64'
```

### Generate
```ruby
require 'uuid64'
puts SecureRandom.uuid64
puts SecureRandom.mongo_id
puts SecureRandom.mongo_id64
```