class ProfilesController < ApplicationController
  def show
  end

  def new
    @profile = Profile.new
  end
  def create
    @profile = Profile.new(profile_params)
    if @profile.save!
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def pay_method
  end

  def log_out_page
  end

  private

  def profile_params
    params.require(:profile).permit(:name).merge(user_id: current_user.id)
  end
end
