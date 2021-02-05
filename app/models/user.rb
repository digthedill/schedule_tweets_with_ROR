# email:string
# password:string
# password_confirmation:virtual string

class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, format: {
                                                 with: /\A[A-Za-z0-9+_.-]+@[A-Za-z0-9.-]+\z/, 
                                                 message: "Must be a valid email address" 
                                                }
end
