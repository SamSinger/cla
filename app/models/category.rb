class Category < ActiveRecord::Base
	has_many :person_categories
	has_many :people, through: :person_categories
	has_and_belongs_to_many :people
end