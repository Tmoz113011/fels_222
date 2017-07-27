class User < ApplicationRecord
  has_many :active_relationships, class_name: Relationship.name,
    foreign_key: "follower_id", dependent: :destroy
  has_many :passive_relationships, class_name: Relationship.name,
    foreign_key: "followed_id", dependent: :destroy
  has_many :following, through: :active_relationships, source: :followed
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :activities, dependent: :destroy
  has_many :lessons, dependent: :destroy
  has_many :results, dependent: :destroy
  has_many :words, through: :results
  has_many :answers, through: :results

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@(?:[A-Z0-9-]+\.)+[A-Z]+\z/i

  validates :name, presence: true,
    length: {maximum: Settings.validates.username.maxium}
  validates :emails, presence: true,
    length: {maximum: Settings.validates.emails.maxium},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  validates :password, presence: true,
    length: {minimum: Settings.validates.password.minium}

  has_secure_password

  before_save :email_downcase

  private

  def email_downcase
    self.emails = emails.downcase
  end
end
