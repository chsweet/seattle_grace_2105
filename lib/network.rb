class Network
  attr_reader :name, :hospitals

  def initialize(name)
    @name = name
    @hospitals = []
  end

  def add_hospital(hospital)
    @hospitals.push(hospital)
  end

#this is not passing
  def highest_paid_doctor
    @hospitals.find_all do |doctors|
      doctors.max_by do |doctor|
        doctor.salary
      end
    end
  end

#this is not passing
  def doctors_by_hospital
    hash = Hash.new

    @hospitals.each do |hospital|
       hospital_name = hospital.name
       if hash[hospital_name]
        hash[hospital_name] << hospital.doctors
      else
        hash[hospital_name] = hospital.doctors
      end
   end
   hash
  end

end
