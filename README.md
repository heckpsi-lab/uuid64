# uuid64
This is a library generating unique id in short pattern.

1. Generate a 64-bit encoded uuid in Ruby with length of 22.
2. Generate a 16-bit encoded BSON object_id.
3. Generate a 64-bit encoded BSON object_id with length of 16.

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

### How To Use
```ruby
require 'uuid64'
puts SecureRandom.uuid64 # "Ymu4xVZrRP29PPnixxwoPg"
puts SecureRandom.mongo_id # "57320baec9de9a14d2000000"
puts SecureRandom.mongo_id64 # "VzILtMnemhTSAAAD"
```

## Known Issues
- object_id and object_id64 may conflict when running on same process, multiple threads.
