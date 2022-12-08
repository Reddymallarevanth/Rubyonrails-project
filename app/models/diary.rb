# == Schema Information
#
# Table name: diaries
#
#  id          :bigint           not null, primary key
#  deadline    :datetime
#  description :string
#  image       :string
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_diaries_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Diary < ApplicationRecord
    has_one_attached :figure_image

    belongs_to(
        :creator,
        class_name:  'User',
        foreign_key: 'user_id',
        inverse_of:  :diaries
      )

      def self.search_by(search_term)
        where("LOWER(name) LIKE :search_term OR LOWER(description) LIKE :search_term", search_term: "%#{search_term.downcase}%")
    end

end
