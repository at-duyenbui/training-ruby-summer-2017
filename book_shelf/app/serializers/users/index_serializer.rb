module Users
  class IndexSerializer < ActiveModel::Serializer
    attributes :id, :user_name, :role
  end
end
