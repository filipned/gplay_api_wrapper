require 'rspec'
require 'gplay_api_wrapper/endpoints/articles'

RSpec.describe GplayApiWrapper::Articles do
  describe '.get -> when called articles endpoint' do
    subject { described_class.get(query_string = {}) }
    it 'should return 200+' do
      expect(subject.code.to_i/100).to eq(2)
    end
  end
end