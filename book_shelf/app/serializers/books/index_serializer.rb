module Books
  class IndexSerializer < ActiveModel::Serializer
    attributes :id, :name, :author

    has_many :orders
  end
end
