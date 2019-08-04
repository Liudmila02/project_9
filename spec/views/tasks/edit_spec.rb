require 'rails_helper'

RSpec.describe "tasks/edit.html.erb", type: :view do
	it "render partial" do
		@task  = Task.create(:title => "title", :description => "description", :priority => 1, 
			:due_date => '2019-08-01', :completed => 'Completed' )
		render
		expect(response).to render_template(partial: "_form")
	end
end
		

		