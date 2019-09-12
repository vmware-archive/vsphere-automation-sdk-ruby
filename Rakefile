# frozen_string_literal: true

# Components are in this order due to the order they need to be installed.
# Runtime must be installed before CIS and CIS must be installed before the
# other components.
COMPONENTS = %w[runtime cis appliance content vapi vcenter].freeze

namespace(:test) do
  COMPONENTS.each do |component|
    desc("Run all tests for #{component} component")
    task(component) do
      dir = File.expand_path(component, __dir__)
      Bundler.with_clean_env do
        exit(1) unless system('bundle', 'exec', 'rake', 'spec', chdir: dir)
      end
    end
  end

  desc('Run all tests for all components')
  task(all: COMPONENTS.map(&:to_sym))
end

task(default: ['test:all'])
