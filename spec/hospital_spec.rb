require 'rspec'
require './lib/doctor'
require './lib/hospital'

RSpec.describe Hospital do

  before :each do
    @meredith = Doctor.new({name: "Meredith Grey", specialty: "General Surgery", education: "Harvard University", salary: 100_000})
    @alex = Doctor.new({name: "Alex Karev", specialty: "Pediatric Surgery", education: "Johns Hopkins University", salary: 90_000})
    @seattle_grace = Hospital.new("Seattle Grace", "Richard Webber", [@meredith, @alex])
  end

  it "exsits" do
    expect(@seattle_grace).to be_an_instance_of(Hospital)
  end

  it "has a name" do
    expect(@seattle_grace.name).to eq("Seattle Grace")
  end

  it "has a chief_of_surgery" do
    expect(@seattle_grace.chief_of_surgery).to eq("Richard Webber")
  end

  it "has doctors" do
    expect(@seattle_grace.doctors).to eq([@meredith, @alex])
  end

  it "gives the total doctor salary" do
    expect(@seattle_grace.total_salary).to eq(190000)
  end

  it "gives the doctor with the lowest salary" do
    expect(@seattle_grace.lowest_paid_doctor).to eq("Alex Karev")
  end

  it "gives all doctors specialties" do
    expect(@seattle_grace.specialties).to eq(["General Surgery", "Pediatric Surgery"])
  end
end
