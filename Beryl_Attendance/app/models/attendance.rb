class Attendance < ActiveRecord::Base
	belongs_to :employee
	validates :date, uniqueness: {scope: [:month, :year]}
end
