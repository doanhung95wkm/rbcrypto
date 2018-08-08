require_relative '../lib/rbcrypto'

describe Rbcrypto do

    it "should show True" do
      Rbcrypto.validate('mpXwg4jMtRhuSpVq4xS3HFHmCmWp9NyGKt','--btc').should eql true
    end

    it "should show False" do
      Rbcrypto.validate('mpXwg4jMtRhuSpVq4xS3HFHmCmWp9NyGKt','--eth').should eql false
    end

    it "should show False" do
      Rbcrypto.validate('0x4bc787699093f11316e819b5692be04a712c4e69','--eth').should eql true
    end
end
