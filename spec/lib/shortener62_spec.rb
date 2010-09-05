require 'spec_helper'

describe Shortener62 do
  describe "encoding and decoding" do
    it "should output the same value as the input for a round trip" do
      str = Shortener62::encode(20657575039453809)
      int = Shortener62::decode(str)
      int.should == 20657575039453809
    end
    it "should also work the other way around" do
      int = Shortener62::decode("Gr5yD74Hr6")
      str = Shortener62::encode(int)
      str.should == "Gr5yD74Hr6"    
    end
  end
end

