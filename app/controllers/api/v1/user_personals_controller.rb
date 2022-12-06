class Api::V1::UserPersonalsController < ApplicationController
  skip_forgery_protection

  def create
    user_personal = UserPersonal.create(user_personal_params.merge!({user: User.create(name: "Jhon")}))

    render json: {status: :ok}
  end

  def update
    user = User.includes(:user_personal).where(gid_params).first
    user.user_personal.update(user_personal_params)

    render json: {status: :ok}
  end

  def gid_params
    params.permit(:gid)
  end

  def user_personal_params
    params.permit(:first_name, :last_name, :reading_first_name, :reading_last_name, :sex, :age, :birthday, :address)
  end
end
