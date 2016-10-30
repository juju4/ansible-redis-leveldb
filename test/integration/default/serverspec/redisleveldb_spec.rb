require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins
#require 'yarjuf'
#RSpec.configure do |c|
#    c.formatter = 'JUnit'
#end


describe file('/usr/local/bin/redis-leveldb') do
  it { should be_executable }
end

describe command('/usr/local/bin/redis-leveldb -h') do
  its(:stdout) { should match /Usage:/ }
  its(:exit_status) { should eq 0 }
end

