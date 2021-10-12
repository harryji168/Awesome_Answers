class User < ApplicationRecord
    has_secure_password

    # it requires a column named password_digest and the gem bcrypt
    # it will add a presence validation ro the password field
    # it will add two attribute accessor for `passowrd` and `password_confirmation`
    has_many :answers, dependent: :nullify
    has_many :questions, dependent: :nullify
end
