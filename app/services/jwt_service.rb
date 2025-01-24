class JwtService
    SECRET_KEY = Rails.application.credentials.secret_key_base
  
    # Gera o JWT Token
    def self.encode(payload)
      JWT.encode(payload, SECRET_KEY)
    end
  
    # Decodifica o JWT Token
    def self.decode(token)
      decoded = JWT.decode(token, SECRET_KEY)[0]
      HashWithIndifferentAccess.new(decoded)
    rescue JWT::DecodeError
      nil
    end
  end
  