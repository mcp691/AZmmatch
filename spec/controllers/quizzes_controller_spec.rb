require 'rails_helper'

RSpec.describe QuizzesController, type: :controller do

  context 'GET #new' do
    it 'renders the new quiz template' do
      get :new
      expect(response).to be_ok
      expect(response).to render_template(:new)
    end
  end

end
