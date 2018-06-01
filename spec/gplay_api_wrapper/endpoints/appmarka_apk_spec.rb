require 'rspec'
require 'gplay_api_wrapper/endpoints/appmarka_apk'

RSpec.describe GplayApiWrapper::AppmarkaApk do
  describe '.get -> when called appmarka_apk endpoint' do
    subject { described_class.get(query_string = {}) }
    it 'should return 200+' do
      expect(subject.code.to_i/100).to eq(2)
    end
  end
end