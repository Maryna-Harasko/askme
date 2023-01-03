class SessionsController < ApplicationController
  def new
  end

  def create
    user_params = params.require(:session)

    user = User.find_by(email: user_params[:email])

    if user.present?
      session[:user_id] = user.id

      redirect_to root_path, notice: "Ви війшли на сайт"
    else
      flash.now[:alert] = 'Пароль або email введені неправильно'

      render :new
    end
  end
end
