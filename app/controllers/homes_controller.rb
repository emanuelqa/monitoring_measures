class HomesController < ApplicationController
  
  def index
    @resource ||= User.new
    @devise_mapping ||= Devise.mappings[:user]
  end

end
