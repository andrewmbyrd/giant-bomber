Gem::Specification.new do |s|
   s.name          = 'giant-bomber'
   s.version       = '0.0.1'
   s.date          = '2017-05-29'
   s.summary       = 'Giant Bomb API Client'
   s.description   = 'A client for the Giant Bomb API'
   s.authors       = ['Andrew Byrd']
   s.email         = 'andrewmbyrd@gmail.com'
   s.files         = ['lib/giant-bomber.rb']
   s.require_paths = ["lib"]
   s.homepage      =
     'http://rubygems.org/gems/giant-bomber'
   s.license       = 'MIT'
   s.add_runtime_dependency 'httparty', '~>0.13'
   s.add_runtime_dependency 'json'
 end
