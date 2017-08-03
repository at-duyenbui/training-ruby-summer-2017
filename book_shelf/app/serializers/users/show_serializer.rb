module Users
  class ShowSerializer < ActiveModel::Serializer
    attributes :id, :user_name, :email, :role, :birthday, :provider, :uid

    has_many :carts
  end
end
