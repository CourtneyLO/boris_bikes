require './lib/bike.rb'

class DockingStation
  attr_reader :docked_bikes

  def initialize
    @docked_bikes = []
  end

  def release_bike
  	raise "There are no more bikes!" if @docked_bikes.empty?
    @docked_bikes.pop
  end

  def dock(new_bike)
    raise "The docking station is full!" if @docked_bikes.count >= 1 
    @docked_bikes << new_bike
  end

  def any_bikes_docked?
    @docked_bikes.any?
  end
end
