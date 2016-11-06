module Bloggable
  class Article < ApplicationRecord

    include Gallerify
    include AASM

    belongs_to :bloggable, polymorphic: true, touch: true, optional: true
    belongs_to :author, class_name: "User", optional: true

    has_many :comments, dependent: :destroy

    default_scope { order("created_at desc") }

    aasm do
      state :draft, :initial => true
      state :published
      state :archived

      event :publish do
        transitions :from => :draft, :to => :published
      end

      event :archive do
        transitions :from => [:draft, :published], :to => :archived
      end
    end

    def set_transition_timestamp(given_status, time=Time.now)
      timestamp_field = "#{given_status}_at".to_sym
      self[timestamp_field] = time
    end
  end
end
