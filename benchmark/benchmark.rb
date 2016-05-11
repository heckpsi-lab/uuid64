require 'benchmark'
require File.expand_path '../lib/uuid64.rb'

N = 1_000_000 # + 16_777_215

Benchmark.bm do |x|
  x.report('n uuid64') { for i in 1..N; SecureRandom.uuid64 end }
  x.report('n mongo_id') { for i in 1..N; SecureRandom.mongo_id end }
  x.report('n mongo_id64') { for i in 1..N; SecureRandom.mongo_id64 end }
end