class Task < ApplicationRecord
	belongs_to :user, :foreign_key=>'user_id'
	
	PRIORITIES = [
    ['Later', 1],
    ['Next', 2],
    ['Now', 3]
	]

	def complete!
		self.completed = true
		save
	end
end
