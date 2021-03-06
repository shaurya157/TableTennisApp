class Api::SessionController < ApplicationController
  def create
    @user = User.find_by_credentials(session_params[:email], session_params[:password])

    if @user
      login!(@user)
      render 'api/users/show'
    else
      render json: ['Invalid credentials'], status: 401
    end
  end

  def destroy
    if current_user
      logout!
      render json: {}
    else
      render json: ['No current user'], status: 404
    end
  end

  private

  def session_params
    params.require(:user).permit([:email, :password])
  end
end
