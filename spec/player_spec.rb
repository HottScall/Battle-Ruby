require 'player'

describe Player do
  subject(:scott) { Player.new('Scott')}

  describe '#name' do
    it 'returns the players name' do
      expect(scott.name).to eq 'Scott'
    end
  end

end
