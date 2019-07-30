require 'rails_helper'

RSpec.describe OrganizationsController, type: :controller do

  before do
    @user = FactoryBot.create(:user_org)
  end

  context 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template(:index)
    end
  end

  context 'GET #new' do
    it 'renders the new organizations form page when user logged in' do
      sign_in @user
      get :new
      expect(response).to be_ok
      expect(response).to render_template(:new)
    end
  end

  context 'GET #new' do
    it 'redirects to login screen if user not logged in' do
      get :new
      expect(response).not_to be_ok
      expect(response).to redirect_to(new_user_org_session_path)
    end
  end



end
