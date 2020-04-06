# InSpec test for recipe mongo::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

describe port(27017) do
  it { should be_listening }
end

describe package ('mongodb') do
  its('version') { should cmp '1:3.6.3-0ubuntu1' }
  # its('version') { should match /3\./ }
  end

  # THIS TEST FOR THE BASH COMMAND OF INSTALLING MongoDB
    # describe service 'mongod' do
      # it { should be_running }
      # it { should be_enabled }
    # end

    # describe package 'mongod' do
      # it { should be_installed }
      # its ('version'){should match /3\./ }
    # end

# unless os.windows?
#   # This is an example test, replace with your own test.
#   describe user('root'), :skip do
#     it { should exist }
#   end
# end

# # This is an example test, replace it with your own test.
# describe port(80), :skip do
#   it { should_not be_listening }
# end
