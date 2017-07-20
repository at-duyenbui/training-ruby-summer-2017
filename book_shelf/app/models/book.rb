# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  author     :string(255)
#  title      :string(255)
#  isn        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Book < ApplicationRecord
	validates :name, presence: true

	has_many :orders
	has_many :carts, :through => :orders
	has_many :comments

	scope :search_book_by_author , lambda{|author, users_id| 
		joins(:carts).where("books.author like :author_name and carts.user_id = :users_id", author_name: author, users_id: users_id)
	}
end
