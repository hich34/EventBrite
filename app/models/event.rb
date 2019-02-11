class Event < ApplicationRecord
    has_many :users
    belongs_to :admin, class_name: "User"
    validates :start_date, presence: true 
    validate :event_validation

    validates :duration, presence: true
    validate :duration_x5_positif
    validates :title, presence: true, length: { in: 5..140 }
    validates :description, presence: true, length: { in: 20..1000 }

    validates :price, presence: true, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 1000 }
    
    validates :location, presence: true

    def event_validation
       if start_date < DateTime.now
        errors.add(:start_date, "la date est dépassée")
       end
    end
    
    def duration_x5_positif
        if (duration % 5 != 0 || duration < 0)
        errors.add(:duration, "la durée doit être un multiple de 5 et positif ")
        end
    end
end
