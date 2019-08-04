require 'rails_helper'

RSpec.describe "users/show.html.erb", type: :view do

	it "renders details when @user has  details" do
		@user  = User.create(first_name: 'First', last_name: 'Last', email: 'sample@example.com', email: 'Password')
		render
		expect(response).to render_template(partial: "details")
	end
  it "has link" do
  	render
  	expect(rendered).to include ("Edit")
  	expect(rendered).to include ("Create user")
  end

end