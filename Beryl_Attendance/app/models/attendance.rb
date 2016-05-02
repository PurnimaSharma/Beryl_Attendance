class Attendance < ActiveRecord::Base
	validates :date, uniqueness: {scope: [:month, :year]}
end
