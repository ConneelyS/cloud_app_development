class DoctorNote < ApplicationRecord
    belongs_to :patient
    validates :content, length: { maximum: 120},
                        presence: true
end
