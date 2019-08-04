require 'rails_helper'

RSpec.describe "users/new.html.erb", type: :view do

	it "renders new" do
		@user  = User.new(first_name: 'First', last_name: 'Last', email: 'sample@example.com', email: 'Password')
		render
		expect(response).to render_template(partial: "details")
	end
  end