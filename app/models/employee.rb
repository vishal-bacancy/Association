class Employee < ApplicationRecord

	validates :Name, :Mobile, :email, :password, :password_confirmation, presence: true
	validates :Name, format: {with: /\A[a-zA-Z]+\z/, message: 'only alphabets are permitted'}
	validates :Mobile, numericality: true
	validates :Name, length: {minimum: 5, maximum: 25, message: 'Name must be of 5 to 25 characters'}
	validates :password, confirmation: true

end
