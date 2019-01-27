require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new(player, weapon) }
  let(:player) { double :player }
  let(:weapon) { double :weapon }

  describe "#player" do
    it "registers a player" do
      expect(game.player).to eq player
    end
  end

  describe '#weapon' do
    it 'selects a weapon' do
      expect(game.weapon).to eq weapon
    end
  end

end
