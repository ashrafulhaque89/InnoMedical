class DoctorApp < ApplicationRecord
  belongs_to :doctor
  belongs_to :appointment
  validates_uniqueness_of :appointment_id, :scope => [:doctor_id]  

end
