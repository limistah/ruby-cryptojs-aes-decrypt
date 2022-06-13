
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require File.expand_path('lib/decrypt/version', __dir__)

Gem::Specification.new do |spec|
  spec.name          = 'cryptojs-aes-decrypt'
  spec.version       = Cryptojs::Aes::Decrypt::VERSION
  spec.authors       = ['Aleem Isiaka']
  spec.email         = ['aleemisiaka@gmail.com']

  spec.extra_rdoc_files = ['README.md']
  spec.summary       = 'Decrypt Cryptojs AES Ciphers'
  spec.description   = 'Decrypt Cryptojs AES Ciphers'
  spec.homepage      = 'https://github.com/limistah/ruby-cryptojs-aes-decrypt'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/limistah/ruby-cryptojs-aes-decrypt'
    spec.metadata['changelog_uri'] = 'https://github.com/limistah/ruby-cryptojs-aes-decrypt/CHANGELOG.MD'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
