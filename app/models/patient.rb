class Patient < ApplicationRecord
    
    # The code below is the search method functionality for the patient database
    def self.search(search)
        if search
            where(["last_name LIKE ?","%#{search}%"])
        else
             return all
        end
    end

    belongs_to :user
    has_many :doctor_notes
    
#form validation is required
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :address, presence: true
    #validates :date_birth, presence: true
    validates :phone, presence: true
    validates :infection, presence: true
    validates :injury, presence: true
    validates :observation, presence: true
end
