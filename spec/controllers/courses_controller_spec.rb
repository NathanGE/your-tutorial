require 'rails_helper'

RSpec.describe CoursesController, type: :controller do
  describe 'courses#index action' do
    it "should successfully show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'courses#show action' do
    it "should successfully show the page if the course exists" do
      course = FactoryGirl.create(:course)
      get :show, id: course.id
      expect(response).to have_http_status(:success)
    end
  end
end