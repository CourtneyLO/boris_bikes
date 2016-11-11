require 'van'

 describe Van do

   it "should respond to a method called collect" do
     expect(subject).to respond_to (:collect)
   end

   it "should take broken bikes from docking station" do
    station = DockingStation.new
    broken_bikes = station.get_broken_bikes
    expect(subject.collect(broken_bikes)).to eq broken_bikes
  end

 end
