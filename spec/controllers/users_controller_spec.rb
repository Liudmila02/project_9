require 'rails_helper'

RSpec.describe UsersController, type: :controller do

	describe "#index" do
    render_views #підключаю візуалізацію шаблонів 
    it "gets all users" do
  	  get  :index
  	  expect(response).to have_http_status(:success)
  	end
	end
 
  describe '#new' do
    render_views #підключаю візуалізацію шаблонів 
  	it "gets a new template" do
  	  get  :new
  	  expect(response).to have_http_status(:success)
		end
	end
  
  describe '#create' do
    render_views #підключаю візуалізацію шаблонів 
    it "gets a create template" do
      post  :create, params: { id: user.to_param }
      expect(response).to have_http_status(:success)
      expect(assigns(:user).id).to eq(user.id)
      expect(session[:previous_page]).to eq("user/create")
    end
  end

  describe "#update" do
    it "updates the user" do
      patch :update, {:id => user.to_param}, valid_session
      assigns(:user).should eq(user)
    end
  end
  
   describe '#delete' do
    it "deletes the user" do
      expect{ 
        delete :destroy, :id => @user }.to change(User, :count).by(-1)
    end
  end
end
