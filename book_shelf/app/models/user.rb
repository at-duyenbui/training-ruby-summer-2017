# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  user_name  :string(255)
#  password   :string(255)
#  email      :string(255)
#  name       :string(255)
#  gender     :integer
#  birthday   :datetime
#  role       :integer
#  avatar     :string(255)
#  provider   :string(255)
#  uid        :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
	mount_uploader :image, ImageUploader
	
	enum gender: %w(male female other)
	enum role: %w(member mod admin)

	validates :user_name, :password , presence: true
	validates :user_name, :email, uniqueness: true
	validates :email, presence:true, if: :provider?
	def provider?
		provider == "email"
	end
	validates :name, length: { in: 6 .. 30 }, allow_blank: true
	validate :birth?
	def birth?
		self.errors.add(:birthday, "Errors birthday") if birthday.present? && Time.now - 17.years <= birthday
	end
	validate :avatar_size
		def avatar_size
			if avatar.size > 5.megabytes
				self.errors.add(:avatar, "Avatar's size have to less than 5Mb")
			end
		end

	validates_uniqueness_of :provider, scope: :uid
	# validates :uid, uniqueness: { scope: :provider}

	has_many :carts
	has_many :comments
end
