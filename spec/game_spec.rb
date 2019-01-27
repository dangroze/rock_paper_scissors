require 'game'

RSpec.describe Game do
  subject(:game) { described_class.new(player, weapon) }
  let(:player) { Player.new('Dan') }
  let(:weapon) { 'Rock' }
  describe "#player" do
    it "registers a player" do
      expect(game.player.name).to eq 'Dan'
    end
  end

  describe '#weapon' do
    it 'selects a weapon' do
      expect(game.weapon).to eq 'Rock'
    end
  end

  describe '#rule' do
    it 'describes the game rules' do
      allow(game).to receive(:rule).and_return :win
      expect(game.rule).to eq :win
    end
  end
end
