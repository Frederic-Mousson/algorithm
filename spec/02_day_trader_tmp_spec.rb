require_relative '../lib/02_day_trader'

describe "the method to know when it's better to SELL" do

  it "test the best day to sell compare with the first one" do
    expect(best_couple([3, 6, 9, 15],0)).to eq([0,3,12])
  end

  it "test the best day to sell compare with the first one" do
    expect(best_couple([3, 6, 9, 15, 8, 6, 1, 10],0)).to eq([0,3,12])
  end

  it "test the best day to sell compare with the first one" do
    expect(best_couple([17, 3, 6, 9, 15, 8, 6, 1, 10],0)).to eq([0,0,0])
  end

  it "test the best day to sell compare with the first one" do
    expect(best_couple([3, 6, 9, 15],1)).to eq([1,4,12])
  end

  it "test the best day to sell compare with the first one" do
    expect(best_couple([3, 6, 9, 15, 8, 6, 1, 10],1)).to eq([1,4,12])
  end

  it "test the best day to sell compare with the first one" do
    expect(best_couple([9, 15, 8, 6, 1, 10],3)).to eq([3,4,6])
  end

end

describe "the method to know when it's better to buy and sell" do

  it "test the best day to buy and sell" do
    expect(day_trader([7])).to eq("Le tableau de jours n'est pas valide")
  end

  it "test the best day to buy and sell" do
    expect(day_trader("Bonjour")).to eq("Le tableau de jours n'est pas valide")
  end

  it "test the best day to buy and sell" do
    expect(day_trader([3, 6, 9, 15])).to eq([0,3,12])
  end

  it "test the best day to buy and sell" do
    expect(day_trader([3, 6, 9, 15, 8, 6, 1, 10])).to eq([0,3,12])
  end

  it "test the best day to buy and sell" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4,12])
  end

end