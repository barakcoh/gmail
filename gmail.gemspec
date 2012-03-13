# -*- ruby -*-

$:.unshift(File.expand_path('../lib', __FILE__))
require 'gmail/version'

begin
  Gem::Specification.new do |gem|
    gem.authors       = ["Chris Kowalik"]
    gem.email         = ["hris@nu7hat.ch"]
    gem.description   = %q{A Rubyesque interface to Gmail, with all the tools you will need.
      Search, read and send multipart emails; archive, mark as read/unread,
      delete emails; and manage labels.
    }
    gem.summary       = %q{A Rubyesque interface to Gmail, with all the tools you will need.}
    gem.homepage      = "http://github.com/nu7hatch/gmail"

    gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
    gem.files         = `git ls-files`.split("\n")
    gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
    gem.name          = "gmail"
    gem.require_paths = ["lib"]
    gem.version       = Gmail::VERSION
    gem.add_dependency('mime', '>= 0.1')
    gem.add_dependency('mail', '>= 2.2.1')
    gem.add_dependency('gmail_xoauth', '>= 0.3.0')
    gem.add_development_dependency('rspec', '~> 2.0')
    gem.add_development_dependency('mocha', '>= 0.9')
  end
end
