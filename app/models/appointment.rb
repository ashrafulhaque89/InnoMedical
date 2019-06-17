class Appointment < ApplicationRecord
    
has_many :doctors, :through => :schedule

      
end
