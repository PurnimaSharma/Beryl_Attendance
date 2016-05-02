class Attendance < ActiveRecord::Base
	validates :Attendance, uniqueness: {scope: [:month, :year, :date]}
end
