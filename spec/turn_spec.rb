require './lib/turn'


RSpec.describe Turn do

  before do
    @card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    @turn = Turn.new("Juneau", @card)
  end 
  
  it 'card exists' do
    expect(@card).to be_instance_of(Card)
  end
  
  it 'turn exists' do
    expect(@turn).to be_instance_of(Turn)
  end

  it 'is guess' do
    expect(@turn.guess).to eq("Juneau")
  end

  it 'correct?' do
    expect(@turn.correct?).to eq(true)
  end

  it 'feedback' do
    expect(@turn.feedback).to eq("Correct!")
  end
end