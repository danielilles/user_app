class User < ApplicationRecord
    has_many :email_addresses, :foreign_key =>'user_name',
                                                :primary_key => 'name'
    accepts_nested_attributes_for :email_addresses
end
