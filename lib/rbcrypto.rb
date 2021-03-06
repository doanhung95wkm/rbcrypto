require "Bitcoin"
require "eth"

class Rbcrypto
  def self.validate(address, coin = "--btc", network = :testnet)
    validator = Validate.new(address, coin, network)
    validator.validate
  end
  def self.method_missing(m, *args, &block)
    puts "There's no method called #{m} here -- please try again."
  end
end

class Rbcrypto::Validate
  def initialize(address, coin, net = :testnet)
    @address = address
    @coin = coin
    @net = net
  end

  def validate
    case @coin
    when "--btc"
      Bitcoin::network = @net
      Bitcoin.valid_address?(@address)
    when "--eth"
      Eth::Utils.valid_address?(@address)
    else
      "Coin not valid now"
    end
  end
end
