require 'spec_helper'
require 'pdk/cli'

describe 'Running `pdk module`' do
  subject { PDK::CLI.instance_variable_get(:@module_cmd) }

  context 'when no arguments or options are provided' do
    it do
      expect do
        PDK::CLI.run(['module'])
      end.to output(%r{^USAGE\s+pdk module}m).to_stdout
    end
  end
end
