class Appointment < ApplicationRecord
  belongs_to :patient
  belongs_to :doctor
  belongs_to :schedule

  after_save do
    booked = schedule
    booked.available = false
    booked.save
  end
end
