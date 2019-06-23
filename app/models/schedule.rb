class Schedule < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient_profile
    
    def create
        @schedule = current_doctor.build_schedule(params[:id]) 
        @schedule = current_doctor.build_schedule()
        @doctor = Doctor.find(params[:doctor_id])
    end
    
    def self.search(term)
        if term
         where('start LIKE ? or end LIKE ?', "%#{term}%","%#{term}%")
        else
         all
        end
    end
    
    def start_and_end_date
        [start].select(&:present?).join(' ').titleize
    end
    
   
    
end
