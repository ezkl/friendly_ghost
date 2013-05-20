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
        let(:arguments) { 'test spec/support/json_1.js' }

        it 'should return the status' do
          response['status'].should be_true
        end

        it 'should return some (yet to be determined) hash' do
          response['key'].should eq 'value'
        end
      end

      context 'failure' do
        let(:arguments) { 'test spec/support/json_2.js' }

        it 'should return the status' do
          response['status'].should be_false
        end

        it 'should return an error message' do
          response['error'].should eq 'Failed!'
        end
      end

      context 'failure without JSON' do
        let(:arguments) { 'test spec/support/no_json.js' }

        it 'should fail miserably' do
          expect { response }.to raise_error
        end
      end
    end

    describe '#raw_output' do
      it 'should return the raw log output' do
        runner.command('test spec/support/json_1.js')
        runner.raw_output.split(/\n/).size.should >= 2
      end
    end
  end
end
