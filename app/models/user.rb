class User < ApplicationRecord
  mount_uploader :photo, FileUploaderUploader
  validates :name, presence: true, length: {minimum: 3}
  has_one :role
end