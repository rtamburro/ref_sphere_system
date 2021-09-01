class RegistrationsController < Devise::RegistrationsController
  
  private
    
  def sign_up_params
    params.require(:user).permit(
      :email,
      :email_2,
      :password,
      :password_confirmation,
      :cell_phone,
      :work_phone,
      :home_phone,
      :grade,
      :role,
      :profile_picture,
      address: [:street_address, :city, :state, :zip])
  end

  def account_update_params
    params.require(:user).permit(
      :email,
      :email_2,
      :password,
      :password_confirmation,
      :current_password,
      :cell_phone,
      :work_phone,
      :home_phone,
      :grade,
      :role,
      :profile_picture,
      address: [:street_address, :city, :state, :zip])
  end
end

    