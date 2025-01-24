class User < ApplicationRecord
    # A associação com o endereço
    belongs_to :address, optional: true  # Um usuário pode ou não ter um endereço associado
  
    # Segurança de senha
    has_secure_password  # Isso faz com que a senha seja armazenada de forma segura no campo password_digest
  
    # Validações
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :phone, presence: true
    validates :password, length: { minimum: 6 }, allow_nil: true  # A senha deve ter pelo menos 6 caracteres, ou pode ser omitida na atualização
  
    # Atributo para user_type
    validates :user_type, inclusion: { in: ['admin', 'user'], message: "%{value} não é um tipo válido" }
  end
  