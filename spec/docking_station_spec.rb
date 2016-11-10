
require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do
  it "shows if bike is working" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.release_bike).to be_working
  end
  it 'tests for repsonse to "return_bike" method' do
    expect(subject).to respond_to :dock_bike
  end
  it 'tests if bike is docked' do
    expect(subject).to respond_to(:dock_bike).with(1).argument
  end
  it 'tests for respsonse calling station.bike' do
    expect(subject).to respond_to :bike
  end
  it 'tests to see if bike has been docked' do
    bike = Bike.new
    expect(subject.dock_bike(bike)).to eq true
  end
  it 'raises error when trying to release bikes when none are available' do
    expect {subject.release_bike}.to raise_error("No bikes available")
  end
  it 'raises error when capacity is full' do
    20.times {subject.dock_bike Bike.new}
    bike = Bike.new
    expect {subject.dock_bike(bike)}.to raise_error("Capacity is full")
  end
end
