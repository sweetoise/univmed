class AdminpanelController < ApplicationController
  before_action :authenticate_user!
  before_action :only_allow_admins
  before_action :set_user, only: [:profile_page, :input_details, :home]

  layout 'adminpanel_tables'
  def superadmin
  end

  def admin
  end

  def profile_page
  end

  def input_details
    if @user.update(user_params)
      render 'index'
    else
      redirect_to :controller => 'adminpanel', :action => 'profile_page', :id => @user.id
    end
  end

  private

  def only_allow_admins
    redirect_to root_path, :alert => 'Not authorized as an super administrator.' unless (current_user.has_role? :superadmin or current_user.has_role? :admin_user or current_user.has_role? :class_note_admin or current_user.has_role? :past_questions_admin or current_user.has_role? :library_admin or current_user.has_role? :voucher_admin)
  end

  def set_user
    @user = current_user
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:password, :password_confirmation)
  end

end
