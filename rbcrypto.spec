Gem::Specification.new do |s|
  s.name        = 'rbcrypto'
  s.version     = '0.0.0'
  s.date        = '2018-08-08'
  s.summary     = "The test of doan hung!"
  s.description = "My first test"
  s.authors     = ["Tran Hung"]
  s.email       = 'doanhungb1@gmail.com'
  s.files       = ["lib/rbcrypto.rb"]
  s.license     = 'WAKUMOVN'
  s.add_dependency 'bitcoin-ruby'
  s.add_dependency 'eth'
  s.executables << 'rbcrypto'
end
