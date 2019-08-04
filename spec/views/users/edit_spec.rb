require 'rails_helper'

RSpec.describe "users/edit.html.erb", type: :view do
	it "render partial" do
		@user  = User.create(first_name: 'First', last_name: 'Last', email: 'sample@example.com', password: 'Password')
		render
		expect(response).to render_template(partial: "_form")
	end
	it "has link" do
  	render
  	expect(rendered).to include ("Show")
  end
end