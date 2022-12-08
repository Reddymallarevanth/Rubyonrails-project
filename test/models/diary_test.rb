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
require "test_helper"

class DiaryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
