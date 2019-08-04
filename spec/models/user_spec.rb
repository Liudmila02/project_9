require 'rails_helper'

RSpec.describe User, type: :model do
  context 'validation attributes' do
    it 'ensures first name presence' do
	  user = User.new(last_name: 'Last', email: 'sample@example.com', password: 'Password').save
	  expect(user).to eq(false)
    end

    it 'ensures last name presence' do
		user = User.new(first_name: 'First', email: 'sample@example.com', password: 'Password').save
		expect(user).to eq(false)
    end

    it 'ensures email presence' do
		user = User.new(first_name: 'First', last_name: 'Last', password: 'Password').save
		expect(user).to eq(false)
    end

    it 'ensures password presence' do
		user = User.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com').save
		expect(user).to eq(false)
    end

    it 'should save succesfully' do
    	user = User.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com', 
            password: 'Password').save
    	expect(user).to eq(true)
    end
  end

end

