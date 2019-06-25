class Diagnosis < ApplicationRecord
          belongs_to :patient_profile
          belongs_to :doctor
end
