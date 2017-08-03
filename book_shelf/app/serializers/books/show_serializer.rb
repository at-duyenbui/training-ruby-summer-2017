module Books
  class ShowSerializer < ActiveModel::Serializer
    attributes :id, :name, :author, :isn, :image
  end
end
