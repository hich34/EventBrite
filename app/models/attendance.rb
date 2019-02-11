class Attendance < ApplicationRecord
    after_create :new_attendance
    belongs_to :user
    belongs_to :event

    def new_attendance
        UserMailer.participate_event(self).deviver_now
    end
end
