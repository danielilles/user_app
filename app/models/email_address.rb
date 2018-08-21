class EmailAddress < ApplicationRecord
    belongs_to :user, :foreign_key =>'user_name',
                                :primary_key => 'name'
    validates_presence_of :user
end
