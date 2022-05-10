class User < ApplicationRecord

    after_initialize :ensure_session_token

    validates :email , presence: true, uniqueness: true
    validates :password_digest, presence:{message: "Password cannot be blank!"}

    attr_reader :password
    validates :password, length: {minimum:6, allow_nil: true}

    #spire self.find , pasword =(), ispassword, resetcred ensure credientails

    def self.find_by_credentials(username,password)
        @user = User.find_by(username: username)
        if @user && @user.is_password?(password)
            return @user
        else
            return nil
        end
    end


    def password=(password)
        @password=password
        self.password_digest=BCrypt::Password.create(password)

    end

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end

    def reset_session_token!
        self.session_token = SecureRandom.urlsafe_base64
        self.save!
        return self.session_token
    end

    def ensure_session_token
        self.session_token ||= SecureRandom.urlsafe_base64

    end

    # do we really need this ? 
    def generate_session_token
        self.session_token = SecureRandom.urlsafe_base64
        return self.session_token
    end





end
