require 'rails_helper'

RSpec.describe "tasks/show.html.erb", type: :view do

	it "renders details when @task has  details" do
		@task  = Task.create(:title => "title", :description => "description", :priority => 1, 
			:due_date => '2019-08-01', :completed => 'Completed' )
		render
		expect(response).to render_template(partial: "details")
	end
  it "has link" do
  	render
  	expect(rendered).to include ("Edit")
  	expect(rendered).to include ("Create task")
  end

end