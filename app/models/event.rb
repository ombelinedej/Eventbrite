class Event < ApplicationRecord
	  belongs_to :user
	  has_many :attendances


	  validates :start_date, presence: true
	  validate :cannot_modify_a_past_event
      validates :duration, presence: true, numericality: {greater_than: 0}
      validate :duration_is_a_multiply_of_5
      validates :title, presence: true, length: { minimum: 5, maximum:140 }
      validates :description, presence: true, length: { minimum: 20, maximum: 1000 }
      validates :price, presence: true,  numericality: {greater_than: 1, less_than: 1000} 
  	  validates :location, presence: true
end


#######
private
#######

def cannot_modify_a_past_event
  return if start_date.blank?

  if Time.now > start_date
    errors.add(:start_date, "you cannot change a past event") 
  end 
end



def duration_is_a_multiply_of_5
	return if duration.blank?

  if  duration%5 != 0
    errors.add(:end_date, "please chose a 5 multiple") 
  end 
end