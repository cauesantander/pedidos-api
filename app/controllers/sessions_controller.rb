class SessionsController < ApplicationController
  skip_before_action :authenticate_request
  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])

      token = JsonWebToken.encode(
        user_id: user.id
      )

      render json: {
        token: token,
        user: {
          id: user.id,
          name: user.name,
          email: user.email
        }
      }

    else

      render json: {
        error: "Email ou senha inválidos"
      }, status: :unauthorized

    end
  end
end
