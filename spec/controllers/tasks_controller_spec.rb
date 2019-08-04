require 'rails_helper'

RSpec.describe TasksController, type: :controller do
  
  describe "#index" do
	  render_views #підключення візуалізацію шаблонів 
	  it "gets all tasks" do
  	    get  :index
  	    expect(response).to have_http_status(:success)
  	  end
    end

  describe '#new' do
  	it "gets a new template" do
      get :new 
      expect(response).to have_http_status(:success)
      expect(assigns(:task).id).to eq(task.id)
      expect(session[:previous_page]).to eq("task/new")
    end
  end 

  describe '#show' do
     render_views
    it "gets a show templete" do
      task = Task.create!
      get :show, id: task.id
      expect(response).to have_http_status(:success)
      expect(assigns(:task).id).to eq(task.id)
      expect(session[:previous_page]).to eq("task/show")
    end
  end
 
  describe '#create' do
  	render_views
    it "gets a create template" do
      task = Task.create!
      post :create, id: task.id
      expect(response).to have_http_status(:success)
      expect(assigns(:task).id).to eq(task.id)
      expect(session[:previous_page]).to eq("task/create")
    end
  end
  
  describe '#update' do
    it "gets a update template" do
      patch :update, :id => @task.id, :task => @task.attributes = { :title => "new title", :description => "new description",
    	:priority => "new priority", :due_date => "new due date"}
      response.should be_successful
    end
  end

  describe '#delete' do
    it "deletes a task" do
      delete :destroy
      expect( @user.tasks.count ).to eq(0)
    end
  end
end


