require "./spec_helper"

describe Firecrystal do
  # TODO: Write tests

  it "should raise on http" do
    expect_raises(ArgumentError, "Base URI must be valid https uri") do
      Firecrystal::Client.new("http://test.firebaseio.com")
    end
  end
end
