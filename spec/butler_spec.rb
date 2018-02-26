require 'butler'

RSpec.describe "Butler" do
  describe '#list' do
    it 'returns a list of available commands' do
      expect(Butler.new.list).to eq ['command1', 'command2', 'command3']
    end

    it 'can execute a predefined command' do
      expect(Butler.new.execute 'command1' ).to eq(200)
    end

    it 'returns 404 if a predefined command is not built in' do
     expect(Butler.new.execute 'command_not_found').to eq(404)
    end 
  end
end

