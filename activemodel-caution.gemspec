lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'active_model/caution/version'

Gem::Specification.new do |spec|
  spec.name          = 'activemodel-caution'
  spec.version       = ActiveModel::Caution::VERSION
  spec.authors       = ['NCRS Development Team']
  spec.email         = []
  spec.description   = 'Adds cautioning to ActiveModel'
  spec.summary       = 'Warnings are non-enforced validations, and otherwise work in the same way.'
  spec.homepage      = ''

  gem_files          = %w[CHANGELOG.md CODE_OF_CONDUCT.md LICENSE.txt MIT-LICENSE README.md
                          app config db exe lib]
  spec.files         = `git ls-files -z`.split("\x0").
                       select { |f| gem_files.include?(f.split('/')[0]) }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.7'

  spec.add_dependency('actionpack',    ActiveModel::Caution::RAILS_VERSION)
  spec.add_dependency('activemodel',   ActiveModel::Caution::RAILS_VERSION)
  spec.add_dependency('activerecord',  ActiveModel::Caution::RAILS_VERSION)
  spec.add_dependency('activesupport', ActiveModel::Caution::RAILS_VERSION)
  spec.add_dependency('railties',      ActiveModel::Caution::RAILS_VERSION)

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'ndr_dev_support', '>= 6.0', '< 8.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'sqlite3', '~> 1.4', '>= 1.4.0'
end
