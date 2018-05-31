require 'gplay_api_wrapper/util'
RSpec.describe GplayApiWrapper::Util do

  describe '.to_query' do
    subject { described_class.to_query(query_string) }
    let(:query_string) do
      { key: 'value', field: 'value' }
    end

    it { is_expected.to eq('key=value&field=value') }

    context 'when key is -1' do
      let(:query_string) do
        { key: -1, field: 'value' }
      end
      it 'is removed from the QS' do
        is_expected.to eq('field=value')
      end
    end
  end
end
