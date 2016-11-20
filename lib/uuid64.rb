# encoding: utf-8
require 'digest'
require 'socket'
require 'securerandom'
require 'base62'

module SecureRandom
  class << self
    def uuid64
      [[uuid.delete('-')].pack('H*')].pack('m').delete('=').chomp
    end

    def uuid62
      uuid.base62_encode
    end

    def mongo_id
      @mongo_host ||= Digest::SHA2.hexdigest(Socket.gethostname)[0..5].freeze
      @mongo_pid ||= Process.pid.to_s(16)[0..3].rjust(4, '0').freeze

      @mongo_inc ||= 0
      @mongo_inc += 1
      @mongo_inc = 0 if @mongo_inc > 16_777_215

      Time.now.to_i.to_s(16)[0..7].rjust(8, '0') +
        @mongo_host +
        @mongo_pid +
        @mongo_inc.to_s(16)[0..5].rjust(6, '0')
    end

    def mongo_id64
      [[mongo_id].pack('H*')].pack('m').chomp
    end

    def mongo_id62
      mongo_id.base62_encode
    end
  end
end