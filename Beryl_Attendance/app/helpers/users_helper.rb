module UsersHelper

	def employee_attendance(date,month)
		return Attendance.select(:status, :time).find_by month: month, date: date 
	end
end