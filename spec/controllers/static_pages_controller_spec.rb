require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  context 'GET #index' do
    it 'renders the landing page layout template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template(:index)
    end
  end

end
