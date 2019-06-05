class PatientProfile < ApplicationRecord
    belongs_to :user, :foreign_key => 'user_id' 
    has_many :patient_histories
    has_many :prescriptions
    enum gender: [ :male , :female ]
end
