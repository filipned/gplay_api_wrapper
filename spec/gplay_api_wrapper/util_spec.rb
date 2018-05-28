RSpec.describe GplayApiWrapper::Util do

  describe '.to_query' do
    subject { described_class.to_query(qs) }
    let(:qs) do
      { key: 'value', field: 'value' }
    end

    it { is_expected.to eq('key=value&field=value') }

    context 'when key is -1' do
      let(:qs) do
        { key: -1, field: 'value' }
      end
      it 'is removed from the QS' do
        is_expected.to eq('field=value')
      end
    end
  end

end
