class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         has_one :doctor
         has_one :patient_profile
         has_many :patient_histories, :through => :patient_profiles
         has_many :prescriptions, :through => :patient_profiles
         has_many :prescriptions, :through => :doctor


         enum role: [ :doctor , :patient, :admin ]
         after_initialize :set_default_role, :if => :new_record?
         
         def full_name
         [firstname, lastname].select(&:present?).join(' ').titleize
         end
         
         def set_default_role
          self.role ||= :doctor
         end
         
         def is?(requested_role)
          self.role=requested_role.to_s
         end
end
