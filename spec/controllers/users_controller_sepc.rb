
require "rails_helper"

RSpec.describe UsersController, :type => :controller do
  let(:user) { create :user}
  let(:valid_attributes) do
    {
      :firstname => "Any Name",:lastname => "Any Name", :email_id => "Any@gmail.com", :contact_no => "938498", :dob=>"7/10/22" 
    }
  end
  describe "User#Create" do
    it 'successfully creates a new user' do
      @user = post :create, :params => { :user => valid_attributes}
      expect(response.status).to eq(302)
    end

    it 'unsuccessfully creates a new user' do
      post :create, :params => { :user => { :firstname => "",:lastname => "Any Name" } }
      expect(user.errors.empty?).should be false

    end
  end

  describe "User#update" do
    it 'successfully creates a new user' do
      patch :update, :params => { :user => valid_attributes, :id=>user.id}
      expect(response.status).to eq(302)
    end
  end

  describe "User#delete" do
    it 'successfully creates a new user' do
      delete :destroy, :params => { :id=>user.id}
      expect(response.status).to eq(302)
    end
  end

  describe "User#Index" do
    it 'successfully list all user' do
      get :index
      expect(response.status).to eq(200)
    end
  end

  describe "User#show" do
    it 'successfully show user' do
      get :show, :params => { :id=>user.id}
      expect(response.status).to eq(200)
    end

    it 'invalid show user' do
      get :show, :params => { :id=>0}
      expect(response.status).to eq(404)
    end
  end

  describe "User#new" do
    it 'successfully show new user' do
      get :new
      expect(response.status).to eq(200)
    end
  end

end
