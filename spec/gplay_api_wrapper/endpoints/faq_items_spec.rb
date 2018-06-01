require 'rspec'
require 'gplay_api_wrapper/endpoints/faq_items'

RSpec.describe GplayApiWrapper::FaqItems do
  describe '.get -> when called faq_items endpoint' do
    subject { described_class.get(query_string = {}) }
    it 'should return 200+' do
      expect(subject.code.to_i/100).to eq(2)
    end
  end
end