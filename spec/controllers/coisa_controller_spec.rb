require 'rails_helper'

RSpec.describe CoisasController, type: :controller do
  describe "GET #index" do
    it "abrir a pagina index corretamente" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    it "carregar todas as coisas na tela" do
      coisa = FactoryGirl.create(:coisa)
      get :index

      expect(assigns(:coisas)).to match_array([coisa])
    end
    it "renderizar tags" do
      pending "renderizar tags no index"
    end
  end
end
