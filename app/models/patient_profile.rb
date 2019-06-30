class PatientProfile < ApplicationRecord
    belongs_to :user, :foreign_key => 'user_id' 
    has_many :patient_histories
    has_many :prescriptions
    has_many :diagnoses
     has_many :appointments
     has_many :schedules
    enum gender: [ :male , :female ]
    
    def is?(requested_gender)
          self.gender=requested_gender.to_s
    end
    
    def self.search(term)
        if term
         where('firstname LIKE ? or lastname LIKE ?', "%#{term}%","%#{term}%")
        else
         all
        end
    end
    
end
