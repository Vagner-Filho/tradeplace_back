class UsersController < ApplicationController
    # Criação de usuário
    def create
      user = User.new(user_params)
  
      if user.save
        render json: { success: true, message: "Usuário criado com sucesso!", user: user }, status: :created
      else
        render json: { success: false, message: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    # Edição de usuário
    def update
      user = User.find_by(id: params[:id])
  
      if user.update(user_params)
        render json: { success: true, message: "Usuário atualizado com sucesso!", user: user }
      else
        render json: { success: false, message: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    private
  
    # Permitir apenas os parâmetros necessários para evitar problemas de segurança
    def user_params
      params.require(:user).permit(:name, :email, :password, :phone, :address_id, :user_type)
    end
  end
  