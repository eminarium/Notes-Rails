class Note < ApplicationRecord

    extend FriendlyId
    friendly_id :title, use: :slugged

    # DB Columns
    # title: string
    # content: text


    # Associations
    belongs_to :user
end
