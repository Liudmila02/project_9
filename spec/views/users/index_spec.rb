require 'rails_helper'

RSpec.describe "users/index.html.erb", type: :view do
  it 'can render' do
  	@user = User.create(first_name: 'First', last_name: 'Last', email: 'sample@example.com', email: 'Password')
  	@users = Array.new(2, @user)
  	render
  	expect(rendered).to include("last name")
  	expect(rendered).to include("first_name")
  	expect(rendered).to include("email")
  	expect(rendered).to include("email")
  end

  it "has link" do
    render
    expect(rendered).to include ("Show")
    expect(rendered).to include ("Edit")
     expect(rendered).to include ("Destroy")
  end

end