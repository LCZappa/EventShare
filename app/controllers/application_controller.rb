class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :autentica, :except => [:index, :login, :novo_usuario]
  
  protected
  def autentica
    if session[:id_usuario]
      return true
    else
      redirect_to root_url
      return false
    end
  end
end
