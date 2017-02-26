class Butler
  def list
    ['command1', 'command2', 'command3']
  end
end

RSpec.describe "Butler" do
  describe '#list' do
    it 'returns a list of available commands' do
      expect(Butler.new.list).to eq ['command1', 'command2', 'command3']
    end
  end
end

