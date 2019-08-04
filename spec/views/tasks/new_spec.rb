require 'rails_helper'

RSpec.describe "tasks/new.html.erb", type: :view do

	it "renders new" do
		@task  = Task.new(:title => "title", :description => "description", :priority => 1, 
			:due_date => '2019-08-01', :completed => 'Completed' )
		render
		expect(response).to render_template(partial: "details")
	end
  end