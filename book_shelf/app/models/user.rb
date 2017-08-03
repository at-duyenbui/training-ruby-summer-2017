# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  user_name              :string(255)
#  password_digest        :string(255)
#  email                  :string(255)
#  name                   :string(255)
#  gender                 :integer
#  birthday               :datetime
#  role                   :integer          default("member")
#  avatar                 :string(255)
#  provider               :string(255)
#  uid                    :string(255)
#  confirm_token          :string(255)
#  confirm_send_at        :datetime
#  confirm_at             :datetime
#  reset_password_token   :string(255)
#  reset_password_send_at :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class User < ApplicationRecord
  has_secure_password
  # mount_uploader :image, ImageUploader
  # attr_accessor :password

  has_many :carts
  has_many :comments

  enum gender: %w[male female other]
  enum role: %w[member mod admin]

  validates :user_name, :password, presence: true, unless: :skip_password_validation
  validates :user_name, :email, uniqueness: true
  validates :email, presence: true, if: :provider?
  validates :name, length: { in: 6..30 }, allow_blank: true
  validate :birth?
  validate :avatar_size
  validates_uniqueness_of :provider, scope: :uid
  # validates :uid, uniqueness: { scope: :provider}

  validates_confirmation_of :password

  attr_accessor :skip_password_validation

  def provider?
    provider == 'email'
  end

  def birth?
    errors.add(:birthday, 'Errors birthday') if birthday.present? && Time.now - 17.years <= birthday
  end

  def avatar_size
    errors.add(:avatar, 'Size of avatar have to less than 5Mb') if avatar.present? && avatar.size > 5.megabytes
  end
end
