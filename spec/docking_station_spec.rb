
require 'docking_station.rb'
require 'bike.rb'

describe DockingStation do

  context "Dock and release tests" do

    it "shows if bike is working" do
      bike = double(:bike)
      subject.dock_bike(bike)
      expect(subject.release_bike).to be_working
    end
    it 'only releases bike if bike is working' do
      bike = double(:bike)
      subject.dock_bike(bike)
      bike1 = double(:bike, :condition => false)
      subject.dock_bike(bike1)
      expect(subject.release_bike).to eq bike
    end
    it 'tests for repsonse to "return_bike" method' do
      expect(subject).to respond_to :dock_bike
    end
    it 'tests if bike is docked' do
      expect(subject).to respond_to(:dock_bike).with(1).argument
    end
    it 'tests for respsonse calling station.bike' do
      expect(subject).to respond_to :bikes
    end
    it 'tests to see if bike has been docked' do
      bike = double(:bike)
      expect(subject.dock_bike(bike)).to eq [bike]
    end


  end

  context "Raise error tests" do

    it 'raises error when trying to release bikes when none are available' do
      expect {subject.release_bike}.to raise_error("No bikes available")
    end
    it 'raises error when capacity is full' do
      DockingStation::DEFAULT_CAPACITY.times {subject.dock_bike double(:bike)}
      bike = double(:bike)
      expect {subject.dock_bike(bike)}.to raise_error("Capacity is full")
    end
  end

  context 'Set capacity' do

    it 'Allows capacity to be set' do
      station = DockingStation.new(100)
    expect(station.capacity).to eq 100
  end

  it 'sets default capacity when no parameters passed to docking station' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
end
end
