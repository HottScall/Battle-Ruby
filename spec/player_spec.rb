require 'player'

describe Player do
  subject(:scott) { Player.new('Scott')}
  subject(:frankie) {Player.new('Frankie')}

  describe '#name' do
    it 'returns the players name' do
      expect(scott.name).to eq 'Scott'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(scott.hit_points).to eq described_class:: DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
    expect(frankie).to receive(:receive_damage)
    scott.attack(frankie)
    end
  end

  describe '#receive_damage' do
    it 'reduces the players hit points' do
      expect {frankie.receive_damage}.to change {frankie.hit_points}.by(-10)
    end
  end

end
