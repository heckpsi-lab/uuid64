require 'securerandom'
require 'socket'
require 'digest'

module SecureRandomDeprecated
  def self.uuid64
    [[SecureRandom.uuid.delete('-')].pack('H*')].pack('m').delete('=').chomp
  end

  def self.mongo_id
    if @mongo_init.nil?
      @mongo_init = true.freeze
      @mongo_host = Digest::SHA2.hexdigest(Socket.gethostname)[0..5].freeze
      @mongo_pid = Process.pid.to_s(16)[0..3].rjust(4, '0').freeze
      @mongo_inc = 0
    else
      @mongo_inc += 1
      @mongo_inc = 0 if @mongo_inc > 16777215
    end

    Time.now.to_i.to_s(16)[0..15].rjust(8, '0')[0..7] +
      @mongo_host +
      @mongo_pid +
      @mongo_inc.to_s(16).rjust(6, '0')[0..5]
  end

  def self.mongo_id64
    [[SecureRandom.mongo_id].pack('H*')].pack('m').chomp
  end
end