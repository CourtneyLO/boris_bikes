require_relative 'bike'

class DockingStation

  attr_reader :bike
  attr_reader :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = 20)
     @bikes = []
     @capacity = capacity
  end

  def release_bike
    raise "No bikes available" if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    raise "Capacity is full" if full? 
    @bikes << bike
    @bikes.any?
  end

  private

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count  >= DEFAULT_CAPACITY
  end

end
