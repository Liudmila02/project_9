require 'rails_helper'

RSpec.describe "tasks/index.html.erb", type: :view do
  it 'can render' do
  	@task = Task.create( title: "title", description: "description", priority: 1,
  	 due_date: "2019-08-01", completed: "completed"  )
  	@tasks = Array.new(2, @task)
  	render
  	expect(rendered).to include("title")
  	expect(rendered).to include("description")
  	expect(rendered).to include("priority")
  	expect(rendered).to include("due_date")
  	expect(rendered).to include("completed")
  end

end