require 'spec_helper'

module FriendlyGhost
  describe Runner do
    let(:runner) { Runner.new }

    describe 'setup' do
      it 'should locate casperjs binary' do
        runner.casper_path.should =~ /\/bin\/casperjs/
      end
    end

    describe '#buy' do
      let(:response) { runner.command arguments }

      context 'success' do
        let(:arguments) { 'test spec/support/json.js' }

        it 'should return the status' do
          response['status'].should be_true
        end

        it 'should return some (yet to be determined) hash' do
          response['key'].should eq 'value'
        end
      end

      context 'failure' do
        let(:arguments) { 'test spec/support/fail.js' }

        it 'should return the status' do
          response['status'].should be_false
        end

        it 'should return an error message' do
          response['error'].should eq 'Failed!'
        end
      end
    end
  end
end
