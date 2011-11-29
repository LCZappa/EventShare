class SiteController < ApplicationController
  before_filter :valida_usuario
    
  def index
  end

  def novo_usuario
  end

  def login
    session[:id_usuario] = 1
    redirect_to root_url
  end

  def logout
    reset_session
    redirect_to root_url
  end
  
  def foo
  end
  
  protected
  def valida_usuario
    if session[:id_usuario]
      @usuario = Usuario.find(session[:id_usuario])
    else
      @usuario = nil
    end
  end

end
