require './lib/bike_container'

class ContainerHolder; include BikeContainer; end

describe BikeContainer do
  
  let(:bike) { Bike.new }
  let(:holder) { ContainerHolder.new }
    
  it "should accept a bike" do        
    # we expect the holder to have 0 bikes
    expect(holder.bike_count).to eq(0)
    # let's dock a bike into the holder
    holder.dock(bike)    
    # now we expect the holder to have 1 bike
    expect(holder.bike_count).to eq(1)
  end

  it "should not release a bike that's not there" do
    expect(holder.release(Bike.new)).to eq(nil)
    expect(holder.release(0)).to eq(nil)
  end

  it "should raise an error for empty argument" do
    expect{holder.release(!bike)}.to raise_error
  end

end