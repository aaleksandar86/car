require "car/version"

module Car
  class MyCar
    attr_accessor :color, :car_speed
    attr_reader :year

    def initialize(model, year, color)
      @model = model
      @year = year
      @color = color
      @car_speed = 0
    end
  end
end

