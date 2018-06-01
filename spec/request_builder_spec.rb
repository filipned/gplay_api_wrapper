require 'rspec'
require 'gplay_api_wrapper/request_builder'

RSpec.describe GplayApiWrapper::RequestBuilder do

  describe '.build_get_request' do
    subject { described_class.build_request(path, query_string) }
    let(:path) { 'apps' }
    let(:query_string) { { key: 'val' } }

    context 'with path and query params' do
      it 'should return valid URI' do
        is_expected.to be_a_kind_of(URI::HTTPS)
        # is_expected.to be_a_kind_of(URI::InvalidURIError)
      end
    end
    context 'without path and query params' do
      let(:path) { '' }
      let(:query_string) { {} }
      it 'should return valid URI' do
        is_expected.to be_a_kind_of(URI::HTTPS)
      end
    end

    context 'when bad path is provided' do
      let(:path) { 'a a a' }
      it 'should throw URI::InvalidURIError exception' do
        is_expected.to be_a_kind_of(URI::InvalidURIError)
      end
    end
  end
end