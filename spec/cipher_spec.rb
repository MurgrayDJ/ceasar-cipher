require './cipher.rb'

describe Cipher do
  subject{Cipher.new}
  
  describe "#cipher" do
    it "shifts numbers over by 1" do
      expect(subject.cipher("hello", 1)[0]).to eql("ifmmp")
    end
  end
end