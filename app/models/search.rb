# == Schema Information
#
# Table name: searches
#
#  id         :bigint           not null, primary key
#  age        :string
#  gender     :string
#  profession :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Search < ApplicationRecord


    def search_diary
        diary = User.all 

        
        diary = diary.where(['age LIKE ?', age]) if age.present?
        diary = diary.where(['gender LIKE ?', gender]) if gender.present?
        diary = diary.where(['profession LIKE ?', profession]) if profession.present?

        return diary
    end 
end
