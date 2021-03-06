require 'rspec'
require 'gplay_api_wrapper/endpoints/age_restrictions'


RSpec.describe GplayApiWrapper::AgeRestrictions do
  describe 'age_restrictions endpoint' do
    subject { described_class.get(query_string = {}) }

    context 'when called' do
      it 'should return status: 200' do
        is_expected.to be_a_kind_of(Net::HTTPOK)
      end
    end
  end
end