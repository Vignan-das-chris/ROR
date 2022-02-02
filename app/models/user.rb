class User < ApplicationRecord
    include Sluggable
    sluggable_column :last_name

    include Gravtastic
    gravtastic


    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

@@ -10,6 +16,10 @@ class User < ApplicationRecord

    # adds password fields
    has_secure_password

    has_one :resume
    has_one :gravatar


    has_one :profile, dependent: :destroy
end