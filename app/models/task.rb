class Task < ApplicationRecord
	belongs_to :user, :foreign_key=>'user_id'

	validates :title, length: { maximum: 30 }, presence: true
	validates :description, length: { maximum: 50 }, presence: true
	          
	PRIORITIES = [
    ['Later', 1],
    ['Next', 2],
    ['Now', 3]
	]

	def complete!
		self.completed = true
		save
	end
    
	validate :check_due_date
	def check_due_date
		if due_date < Date.today
           errors.add(:due, "can only be today or later.")
        end
    end
    
end
