module Types
  class QueryType < Types::BaseObject
    field :user, UserType, 'ユーザーをIDで取得' do
      argument :id, ID
    end

    def user(id:)
      User.find(id)
    end

    field :users, [UserType], 'ユーザーを全件取得'

    def users
      User.all
    end
  end
end
