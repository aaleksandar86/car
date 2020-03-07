RSpec.describe Car::MyCar do

  let(:volvo) { Car::MyCar.new('volvo', 'blue', 2018) }
  let(:failure) {failure = 'brake failure'}
  it 'creates an instance of MyCar' do
    expect(volvo).to be_instance_of(Car::MyCar)
  end

  it 'has initial speed 0' do
    expect(volvo.car_speed).to eq(0)
  end

  it 'can speed up' do
    volvo.speed_up # call function once
    expect(volvo.car_speed).to eq(Car::MyCar::SPEED_OFFSET)
  end

  it 'can speed up with arg' do
    volvo.speed_up(20) # call function once
    expect(volvo.car_speed).to eq(20)
  end

  it 'can slow down' do
    volvo.slow_down
    expect(volvo.car_speed).to eq(-Car::MyCar::SPEED_OFFSET)
  end

  it 'can slow down (with arg)' do
    volvo.slow_down(40)
    expect(volvo.car_speed).to eq(-40)
  end

  it 'should allow to spray paint' do
    volvo.spray_paint(:silver)
    expect(volvo.color).to eq(:silver)
  end

  it 'has no defects' do
    expect(volvo.defects).not_to include(failure)
  end

  it 'can add defects' do
    volvo.add_defect(failure)
    expect(volvo.defects).to include(failure)
  end

  it 'can give a list of all defects' do
    volvo.add_defect(failure)
    volvo.add_defect('oil leak')
    expect(volvo.service_info).to eq("Defects to be fixed: #{failure}, oil leak")
  end
end
