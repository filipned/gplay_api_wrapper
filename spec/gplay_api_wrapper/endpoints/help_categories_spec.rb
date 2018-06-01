require 'rspec'
require 'gplay_api_wrapper/endpoints/help_categories'

RSpec.describe GplayApiWrapper::HelpCategories do
  describe '.get -> when called help_categories endpoint' do
    subject { described_class.get(query_string = {}) }
    it 'should return 200+' do
      expect(subject.code.to_i/100).to eq(2)
    end
  end
end