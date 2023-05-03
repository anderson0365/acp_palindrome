# frozen_string_literal: true

require_relative "lib/acp_palindrome/version"

Gem::Specification.new do |spec|
  spec.name = "acp_palindrome"
  spec.version = AcpPalindrome::VERSION
  spec.authors = ["Anderson Cáceres"]
  spec.email = ["caceresqnderson036@gmail.com"]

  spec.summary = "Palindrome detector"
  spec.description = "Lear Enough Ruby palindrome detector"
  spec.homepage = "https://github.com/mhartl/mhartl_palindrome"
  spec.license       = "MIT"
# Prevent pushing this gem to RubyGems.org. To allow pushes either set the
  # 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to
  # any host.
  if spec.respond_to? (:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org/"
   else
     raise "RubyGems 2.0 or newer is required to protect against " \
       "public gem pushes."
   end

   # Specify which files should be added to the gem when it is released.
   # The `git ls-files -z` loads the files in the RubyGem
   # that have been added into git.
   spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject do
      |f| f.match(%r{^(test|spec|features)/})
    end
   end
   spec.bindir        = "exe"
   spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
   spec.require_paths = ["lib"]

   spec.add_development_dependency "bundler", "~> 2.4"
   spec.add_development_dependency "rake", "~> 10.0"
   spec.add_development_dependency "minitest", "~> 5.0"
end
