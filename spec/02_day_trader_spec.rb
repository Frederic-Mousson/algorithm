require_relative '../lib/02_day_trader'

describe "the method to know when it's better to buy and sell" do

  it "test the best day to sell compare with the first one" do
    expect(day_trader([3, 6, 9, 15])).to eq([0,3])
  end

  it "test the best day to sell compare with the first one" do
    expect(day_trader([3, 6, 9, 15, 8, 6, 1, 10])).to eq([0,3])
  end

  it "test the best day to sell compare with the first one" do
    expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([1,4])
  end
  
end
