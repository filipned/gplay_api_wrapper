require 'rspec'
require 'gplay_api_wrapper/request_resolver'

RSpec.describe GplayApiWrapper::RequestResolver do

  describe '.get' do
    subject { described_class.get(uri)}

    context 'without query params' do
      let(:uri) { URI('https://api-stage.gplay.io/api/v1/apps') }
      it 'should must return status: 200' do
        is_expected.to be_a_kind_of(Net::HTTPOK)
      end
    end

    context 'with query params' do
      let(:uri) { URI('https://api-stage.gplay.io/api/v1/apps?limit=1&term=Pixel Wars') }
      it 'should must return status: 200' do
        is_expected.to be_a_kind_of(Net::HTTPOK)
      end
    end
  end
end