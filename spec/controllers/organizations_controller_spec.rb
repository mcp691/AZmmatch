require 'rails_helper'

RSpec.describe OrganizationsController, type: :controller do

  context 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template(:index)
    end
  end

  context 'GET #new' do
    it 'renders the new chat room form page' do
      get :new
      expect(response).to be_ok
      expect(response).to render_template(:new)
    end
  end

end
