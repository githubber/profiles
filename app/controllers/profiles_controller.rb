class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :redirect_without_id!, :only => :show
  load_and_authorize_resource # sets @profile

  respond_to :html

  def show
  end

  def new
  end

  def create
    if @profile.update_attributes_with_user(params[:profile], params[:user])
      flash[:success] = t('profile.edit_form.save_success')
    end
    respond_with(@profile)
  end

  def edit
  end

  def update
    if @profile.update_attributes_with_user(params[:profile], params[:user])
      flash[:success] = t('profile.edit_form.save_success')
    end
    respond_with(@profile)
  end

  private

  def redirect_without_id!
    if params[:id].to_s.blank?
      if current_user.profile
        redirect_to current_user.profile
      else
        flash[:warning] = t('registration.create_profile_message')
        redirect_to new_profile_path
      end
      false
    end
  end
end
