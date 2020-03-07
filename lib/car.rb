require 'car/version'

module Car
  # creating a class car
  class MyCar
    SPEED_OFFSET = 15

    attr_accessor :color, :car_speed
    attr_reader :year, :defects

    def initialize(model, year, color)
      @model = model
      @year = year
      @color = color
      @car_speed = 0
      @defects = []
    end

    def speed_up(speed = SPEED_OFFSET)
      @car_speed += speed
    end

    def slow_down(decrease = SPEED_OFFSET)
      @car_speed -= decrease
    end

    def spray_paint(arg)
      @color = arg
    end

    def add_defect(defect)
      @defects.push(defect)
    end

    def service_info
      defects = @defects.join(', ')
      "Defects to be fixed: #{defects}"
    end
  end
end