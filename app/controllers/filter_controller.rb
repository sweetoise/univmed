class FilterController < ApplicationController
  before_action :check_user_role
  def index
  end

  private

  def check_user_role
    if current_user.has_role? :superadmin 
      redirect_to :controller =>'adminpanel', :action => 'superadmin'
    elsif (current_user.has_role? :admin_user)
      redirect_to :controller => 'adminpanel', :action => 'admin'
    else
      redirect_to :controller => 'userpage', :action => 'index'
    end
  end
end