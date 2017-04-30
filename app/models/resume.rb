class Resume < ApplicationRecord
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  # validates :attachment, presence: true # Make sure the owner's name is present.
  # validates :title, presence: true
  validates :description, presence: true
  belongs_to :job
  belongs_to :user

  scope :recent, -> { order('created_at DESC') }

end
