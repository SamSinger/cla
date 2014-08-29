class DepartmentsController < ApplicationController

	def index
		@departments = Department.all
	end

	def show
		@departments = Department.all
	end

end