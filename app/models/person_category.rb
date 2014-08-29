class Person_Category < ActiveRecord::Base
	belongs_to :Person
	belongs_to :Category
end