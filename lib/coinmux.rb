$:.unshift(File.expand_path("../..", __FILE__))

require 'swt'
require 'active_model'
require 'json'
require 'state_machine'
require 'hashie'
require 'freenet_hash'
require 'singleton'
require 'openssl'
require 'digest/sha2'
require 'swt'
require 'glimmer'
require 'base64'
require 'set'

Dir[File.join(File.dirname(__FILE__), 'jar', '*.jar')].each { |filename| require filename }

class Hash
  include Hashie::Extensions::KeyConversion

  def assert_required_keys!(*keys)
    raise "There are invalid keys #{self.keys}, expected #{keys}" if self.keys.sort != keys.sort
  end
end

module Coinmux
  module Message
  end
  module StateMachine
  end
end

require 'lib/coinmux/version'
require 'lib/coinmux/http'
require 'lib/coinmux/coin_join_uri'
require 'lib/coinmux/error'
require 'lib/coinmux/digest'
require 'lib/coinmux/cipher'
require 'lib/coinmux/pki'
require 'lib/coinmux/bitcoin_util'
require 'lib/coinmux/bitcoin_crypto'
require 'lib/coinmux/bitcoin_network'
require 'lib/coinmux/data_store'
require 'lib/coinmux/event'
require 'lib/coinmux/config'

require 'lib/coinmux/message/base'
require 'lib/coinmux/message/association'
require 'lib/coinmux/message/coin_join'
require 'lib/coinmux/message/status'
require 'lib/coinmux/message/input'
require 'lib/coinmux/message/message_verification'
require 'lib/coinmux/message/output'
require 'lib/coinmux/message/transaction'
require 'lib/coinmux/message/transaction_signature'

require 'lib/coinmux/state_machine/event'
require 'lib/coinmux/state_machine/director'
require 'lib/coinmux/state_machine/participant'

require 'app/models/coinmux/base'
require 'app/models/coinmux/transaction'
require 'app/models/coinmux/input'
require 'app/models/coinmux/output'
require 'app/models/coinmux/coin_join'

require 'app/views/coinmux/application'