class Appointment < ApplicationRecord
    
has_many :doctors, :through => :appointments

      
end
