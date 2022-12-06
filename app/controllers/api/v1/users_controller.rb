class Api::V1::UsersController < ApplicationController
  skip_forgery_protection

  USER_PERSONAL = %w!first_name last_name reading_first_name reading_last_name!

  def show
    user = User.includes(:user_personal).where(gid_params).first
    render json: {
      gid: user.gid,
      identification: user.identification,
      user_personal: user.user_personal.attributes.slice(*USER_PERSONAL)
    }
  end

  def gid_params
    params.permit(:gid)
  end
end
