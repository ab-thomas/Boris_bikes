require './lib/van'

describe Van do
    
  let(:van) { Van.new(:capacity => 25) }

  it "should allow setting default capacity on initialising" do
    expect(van.capacity).to eq(25)
  end
end




