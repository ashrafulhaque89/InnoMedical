class Prescription < ApplicationRecord
      #belongs_to :patient_profile
      belongs_to :doctor, :foreign_key => 'doctor_id' 
      def patients
            User.includes(:patient_profile)
      end
end
