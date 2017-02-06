class User < ApplicationRecord
    validates_presence_of :name, :email, :password, :password_confirmation
    validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i

    has_secure_password
end
