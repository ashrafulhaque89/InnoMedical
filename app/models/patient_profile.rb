class PatientProfile < ApplicationRecord
    belongs_to :user, :foreign_key => 'user_id' 
    has_many :patient_histories
    has_many :prescriptions
    enum gender: [ :male , :female ]
    
    def is?(requested_gender)
          self.gender=requested_gender.to_s
    end
end
