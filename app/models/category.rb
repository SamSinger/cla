class Category < ActiveRecord::Base
	has_many :person_categories
	has_many :people, through: :person_categories
end