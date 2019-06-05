class PatientHistory < ApplicationRecord
    mount_uploader :picture, ImageUploader
    belongs_to :patient_profile, :foreign_key => 'patient_profile_id' 
end
