require "car/version"

module Car
  class MyCar
    attr_accessor :color, :car_speed
    attr_reader :year
    SPEED_UP_RATE = 10

    def initialize(model, year, color)
      @model = model
      @year = year
      @color = color
      @car_speed = 0
    end

    def speed_up
      @car_speed += SPEED_UP_RATE
    end
  end
end

