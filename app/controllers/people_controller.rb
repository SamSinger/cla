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
		#binding.pry
		@person = Person.new(person_params)
		#@person.creator = current_user	

		if @person.save
			flash[:notice] = "The Person was created."
			redirect_to people_path
		else
			render 'new'
		end	
	end

	def edit
		@person = Person.find(params[:id])
	end

	def update
	   
		@person = Person.find(params[:id])
		if @person.update_attributes(person_params)
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