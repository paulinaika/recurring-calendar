class Booking < ApplicationRecord
  belongs_to :advisor, optional: true
  belongs_to :user, optional: true
end
