class PeopleController < ApplicationController

	def index

		@people = Person.all
		
	end

	def show
		@person = Person.new
	end

	def new
		@person = Person.new
	end

	def create
		@person = Person.new(person_params)
		#@person.creator = current_user	

		if @person.save
			flash[:notice] = "The Person was created."
			redirect_to people_path
		else
			render 'new'
		end	
	end

	def edit; end

	def update
		if @person.update(person_params)
			flash[:notice] = "Your person profile was updated."
			redirect_to people_path
		else
			render 'edit'
		end
	end

	private
		def person_params
			params.require(:person).permit!
		end
end