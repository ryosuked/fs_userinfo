module Api
  module V1
    class UserPersonalsController < ApplicationController
      skip_forgery_protection

      def create
        UserPersonal.create(user_personal_params.merge!({ user: User.create(name: '') }))
        render json: { status: :ok }
      end

      def update
        user = User.includes(:user_personal).where(gid_params).first
        user.user_personal.update(user_personal_params)

        render json: { status: :ok }
      end

      def gid_params
        { gid: params[:gid] }
      end

      def user_personal_params
        params.require(:user_personal).permit(:first_name, :last_name, :reading_first_name,
                                              :reading_last_name, :sex, :age, :birthday, :address)
      end
    end
  end
end
