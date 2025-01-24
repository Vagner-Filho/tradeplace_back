class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])

    if user&.authenticate(params[:password])  # Verifica se a senha está correta
      # Gera o token JWT
      token = JwtService.encode(user_id: user.id)

      # Envia o token junto com a resposta de sucesso
      render json: { success: true, message: "Login bem-sucedido", token: token, user: user }, status: :ok
    else
      render json: { success: false, message: "Credenciais inválidas" }, status: :unauthorized
    end
  end
end
