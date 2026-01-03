# frozen_string_literal: true

require_relative 'lib/version'

Gem::Specification.new do |spec|
  spec.name = 'expressions'
  spec.version = Expressions::VERSION
  spec.authors = ['maedi']
  spec.email = ['maediprichard@gmail.com']

  spec.summary = 'Expressions evaluate into useful objects'
  spec.description = 'Expressions evaluate into useful objects via a query builder like interface'
  spec.homepage = 'https://github.com/maedi/expressions'
  spec.required_ruby_version = '>= 3.3.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/maedi/expressions/src/branch/main'

  # Specify which files should be added to the gem when it is released.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir.glob('lib/**/*')
  end

  spec.require_paths = ['lib']
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
end
