class User < ApplicationRecord
    has_one :admin_user
    has_one :executive_user
    has_one :requesting_user
    has_one :supervisor_user

end
