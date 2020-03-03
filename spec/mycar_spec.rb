RSpec.describe Car::MyCar do
    volvo = Car::MyCar.new('volvo','blue',2018)
    it "creates an instance of MyCar" do
        volvo = Car::MyCar.new('volvo','blue',2018)
        expect(volvo).to be_instance_of(Car::MyCar)
    end

    it"has initial speed 0" do
        expect(volvo.car_speed).to eq(0)
    end
end