class Activity < ActiveRecord::Base
  validates :title, :description, :start_time, :end_time, :location, :organizer, :related_link, presence: true
end
