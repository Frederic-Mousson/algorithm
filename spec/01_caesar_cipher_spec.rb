require_relative '../lib/01_caesar_cipher'

describe "the method shift the letter by 'n' position" do
  it "should return the new letter" do
    expect(shift_letter("A",3)).to eq("D")
    expect(shift_letter("A",0)).to eq("A")
    expect(shift_letter("A",26)).to eq("A")
    expect(shift_letter("!",3)).to eq("!")
    expect(shift_letter("2",3)).to eq("2")
    expect(shift_letter("m",3)).to eq("p")
  end

  it "should return the new word ciphered" do
  	expect(caesar_cipher("Hello!",3)).to eq("Khoor!")
    expect(caesar_cipher("123",4)).to eq("123")
    expect(caesar_cipher("1A2z3",4)).to eq("1E2d3")
    expect(caesar_cipher(23,4)).to eq("le message doit être une chaine de caractères !")
    expect(caesar_cipher(true,4)).to eq("le message doit être une chaine de caractères !")
  end
  
  it "should return the new message ciphered" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
    expect(caesar_cipher("What a 2 string!", 5)).to eq("Bmfy f 2 xywnsl!")
  end

end
