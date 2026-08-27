class ApplicationController < ActionController::API
  before_action :authenticate_request

  private

  def authenticate_request
    token = request.headers["Authorization"]&.split(" ")&.last

    if token.blank?
      render json: {
        error: "Token não informado"
      }, status: :unauthorized

      return
    end

    begin
      decoded_token = JsonWebToken.decode(token)

      @current_user = User.find(decoded_token[0]["user_id"])

    rescue JWT::DecodeError
      render json: {
        error: "Token inválido"
      }, status: :unauthorized

    rescue ActiveRecord::RecordNotFound
      render json: {
        error: "Usuário não encontrado"
      }, status: :unauthorized
    end
  end
end
