class Doctor < ApplicationRecord
    belongs_to :user
    has_many :prescriptions
    
    def create
        @doctor = current_user.build_doctor(params[:id]) # why params[:id]?
        #it should just be
        @doctor = current_user.build_doctor()
        @user = User.find(params[:user_id])
    end

    def self.search(term)
        if term
         where('firstname LIKE ? or lastname LIKE ?', "%#{term}%","%#{term}%")
        else
         all
        end
    end
    
end
