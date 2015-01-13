class Person < ActiveRecord::Base
	belongs_to :creator, foreign_key: 'user_id', class_name: 'User'
	belongs_to :department, foreign_key: 'department_id'
	has_and_belongs_to_many :categories
end