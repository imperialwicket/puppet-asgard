require 'spec_helper'

describe 'asgard' do
  let(:title) { 'asgard' }

  ['Debian', 'RedHat'].each do |osfamily|
    describe "asgard class without any parameters on #{osfamily}" do 
      let(:params) {{ }}
      let(:facts) { { :osfamily => osfamily } }

      it { should create_class('asgard') }
      it { should create_package('asgard') }
      it { should create_file('/etc/asgard.conf') }
      it {
        should create_file('/etc/asgard.conf')\
        .with_content(/^server pool.asgard.org$/)
      }
      if osfamily == 'RedHat' 
        it { should create_service('asgardd') }
      else
        it { should create_service('asgard') }
      end
    end
  end
end
