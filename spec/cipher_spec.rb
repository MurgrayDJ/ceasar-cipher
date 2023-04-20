require './cipher.rb'

describe "#cipher" do
  it "shifts numbers over by 1" do
    cipher = Cipher.new
    expect(cipher.cipher("hello", 1)[0]).to eql("ifmmp")
  end
end