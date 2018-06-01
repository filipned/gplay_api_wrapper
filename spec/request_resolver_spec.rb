require 'rspec'
require 'gplay_api_wrapper/request_resolver'

RSpec.describe GplayApiWrapper::RequestResolver do

  describe '.get' do
    subject { described_class.get(uri)}

    context 'without query params' do
      let(:uri) { URI('https://api-stage.gplay.io/api/v1/apps') }
      it 'should return status: 200' do
        is_expected.to be_a_kind_of(Net::HTTPOK)
      end
    end

    context 'with query params' do
      let(:uri) { URI('https://api-stage.gplay.io/api/v1/apps?limit=1&term=Pixel Wars') }
      it 'should return status: 200' do
        is_expected.to be_a_kind_of(Net::HTTPOK)
      end
    end

    context 'with bad query params' do
      let(:uri) { URI('https://api-stage.gplay.io/api/v1/apps?limit=$&term=Pixel Wars') }
      it 'should throw Net::HTTPBadRequest' do
        is_expected.to be_a_kind_of(Net::HTTPBadRequest)
      end
    end
  end
end