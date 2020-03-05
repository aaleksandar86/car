RSpec.describe Car::MyCar do
    volvo = Car::MyCar.new('volvo','blue',2018)
    it "creates an instance of MyCar" do
        volvo = Car::MyCar.new('volvo','blue',2018)
        expect(volvo).to be_instance_of(Car::MyCar)
    end

    it "has initial speed 0" do
        expect(volvo.car_speed).to eq(0)
    end

    it "doesn't have negative value for speed" do
        expect(volvo.car_speed).to be >= 0
    end

    it "has a speed up rate of 10" do
        volvo.speed_up #call function once
        expect(volvo.car_speed).to be >= 10
    end
end