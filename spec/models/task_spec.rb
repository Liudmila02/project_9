require 'rails_helper'

RSpec.describe Task, type: :model do
	
      it 'ensures title presence' do
	    task = Task.new(description: 'Description', priority: 1, due_date: '2019-08-01', 
            completed: 'Completed').save
	    expect(task).to eq(false)
    end

    it 'ensures description presence' do
		task = Task.new(title: 'Title',  priority: 1, due_date: '2019-08-01', 
            completed: 'Completed').save
		expect(task).to eq(false)
    end
    
    it 'ensures priority presence' do
		task = Task.new(title: 'Title', description: 'Description', due_date: '2019-08-01',
            completed: 'Completed').save
		expect(task).to eq(false)
    end


    it 'ensures due date presence' do
    	task = Task.new(title: 'Title', description: 'Description', priority: 1, 
            completed: 'Completed').save
        expect(task).to eq(false)
	    
    end

    it 'ensures completed presence' do
    	task = Task.new(title: 'Title', description: 'Description', priority: 1, 
            due_date: '2019-08-01').save
		expect(task).to eq(false)
    end

    it 'should save succesfully' do
    	task = Task.new(title: 'Title', description: 'Description', priority: 1, 
            due_date: '2019-08-01', completed: 'Completed').save
    	expect(task).to eq(false)
    end
end
