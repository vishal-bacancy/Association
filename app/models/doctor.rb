class Doctor < ApplicationRecord
	has_many :appointments
	has_many :patients, through: :appointments	
	validates :name, presence: true
	validates :name, format: {with: /\A[a-zA-Z]+\z/, message: 'only alphabets are permitted'}
	validates :name, length: {minimum: 5, maximum: 25, message: 'Name must be of 5 to 25 characters'}
	
end
