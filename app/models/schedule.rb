class Schedule < ApplicationRecord
    belongs_to :doctor
    
    def create
        @schedule = current_doctor.build_schedule(params[:id]) # why params[:id]?
        #it should just be
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
    
   
    
end
