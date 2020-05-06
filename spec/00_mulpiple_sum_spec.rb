require_relative '../lib/00_multiple_sum'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    # je te laisse écrire ces tests-là
  	expect(is_multiple_of_3_or_5?(8)).to eq(false)
    expect(is_multiple_of_3_or_5?(32)).to eq(false)
  end

end

describe "Return the sum of the multiple_of_3_or_5 between 1 and a number" do
  it "should return the right sym" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
    expect(sum_of_3_or_5_multiples(3)).to eq(0)
    expect(sum_of_3_or_5_multiples(-1)).to eq('Yo ! Je ne prends que les entiers naturels.')
    expect(sum_of_3_or_5_multiples(1.2)).to eq('Yo ! Je ne prends que les entiers naturels.')
    expect(sum_of_3_or_5_multiples("Bonjour")).to eq('Yo ! Je ne prends que les entiers naturels.')
  end

end