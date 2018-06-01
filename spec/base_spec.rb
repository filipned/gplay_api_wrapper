require 'rspec'
require 'gplay_api_wrapper/base'


RSpec.describe GplayApiWrapper::Base do

  describe '.build_and_send_request' do
    BASE = 'apps'
    subject { described_class.build_and_send_request(specific_path, query_string) }
    let(:specific_path) { '' }
    let(:query_string) { {limit:1} }
    it 'should return 200' do
      is_expected.to be_a_kind_of(Net::HTTPOK)
      a = %q([{"id":6,"background_color":null,"package_name":"com.datcroft.cubematrix.gplay","name":"Pixel Wars","version_number":"1.1.105","file_size":35213004,"text_short":null,"price":0,"price_in_currency":0,"price_in_marks":0,"currency_code":"USD","thumbnail":"https://api-stage.gplay.io/system/app_versions/thumbnails/000/000/016/55dc645cf8a1e82a5e42bc589e1968edf8e8609e-mobile.png","avg_rating":"3.8","numberOfLikes":3,"numberOfDislikes":1,"organization_name":"Iv_dc","is_promoted":false,"tags":[]}])
      expect(subject.body).to eq(a)
    end
  end
end