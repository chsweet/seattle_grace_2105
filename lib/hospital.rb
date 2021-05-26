class Hospital
  attr_reader :name, :chief_of_surgery, :doctors

  def initialize(name, chief_of_surgery, doctors)
    @name = name
    @chief_of_surgery = chief_of_surgery
    @doctors = doctors
  end

  def total_salary
    @doctors.sum do |doctor|
      doctor.salary
    end
  end

#i am getting all the information for "Alex Karev" but can't figure out how to get it to just show his name
  def lowest_paid_doctor
    @doctors.min_by do |doctor|
      doctor.salary
    end
  end

#this is not passing
  def specialties
    @doctors.find_all do |doctor|
      doctor.specialty
    end
  end
end
