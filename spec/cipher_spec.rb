require './cipher.rb'

describe Cipher do
  subject{Cipher.new}
  
  describe "#cipher" do
    it "shifts numbers over by 1" do
      expect(subject.cipher("hello", 1)[0]).to eql("ifmmp")
    end

    it "shifts numbers backwards by 3" do
      expect(subject.cipher("pretty", -3)[0]).to eql("mobqqv")
    end

    it "does nothing if string is empty" do
      expect(subject.cipher("", -3)[0]).to eql("")
    end
  end
end