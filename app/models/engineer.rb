class Engineer < ApplicationRecord
	has_many :subordinates, class_name: "Engineer", foreign_key: "senior_id"
	belongs_to :senior, class_name: "Engineer", required: false

end
