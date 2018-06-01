require 'rspec'
require 'gplay_api_wrapper/endpoints/apps'

RSpec.describe GplayApiWrapper::Apps do
  describe '.get' do
    subject { described_class.get(query_string) }
    let(:query_string) { {limit: 1} }
    it 'should return 200+' do
      expect(subject.code.to_i/100).to eq(2)
    end
  end
  describe '.get_app' do
    subject { described_class.get_app(app_id, query_string) }
    let(:app_id) { 6 }
    let(:query_string) { {limit: 1} }
    it 'should return 200+' do
      expect(subject.code.to_i/100).to eq(2)
    end
  end
  describe '.get_app_version' do
    subject { described_class.get_app_versions(app_id, query_string) }
    let(:app_id) { 6 }
    let(:query_string) { {limit: 1} }
    it 'should return 400+' do
      expect(subject.code.to_i/100).to eq(4)
    end
  end
end