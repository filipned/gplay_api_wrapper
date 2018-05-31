require 'rspec'
require 'gplay_api_wrapper/request_builder'

RSpec.describe GplayApiWrapper::RequestBuilder do

  describe '.build_request' do
    subject { described_class.build_request(path, query_string) }
    let(:path) { 'apps' }
    let(:query_string) { { key: 'val' } }

    it 'does something successfully' do

    end

    context 'when something changed' do
      it 'does or does not do something' do

      end
    end

    context 'get' do
      let(:path) { 'apps' }
      let(:query_string) { { key: 'val' } }
      it 'with path and query params should must return URI' do
        expect(subject).to be_an_kind_of URI::HTTPS
      end
      let(:path) { '' }
      let(:query_string) { {} }
      it 'with path and query params should must return URI' do
        expect(subject).to be_an_kind_of URI::HTTPS
      end
    end
  end
end