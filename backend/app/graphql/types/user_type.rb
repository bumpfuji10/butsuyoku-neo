# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    description 'ユーザー'
    field :id, ID, null: false
    field :name, String, null: false
    field :email, String, null: false
  end
end
