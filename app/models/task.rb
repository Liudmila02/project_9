class Task < ApplicationRecord
	belongs_to :user, -> { where active: true },
                        dependent: :destroy
	
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
