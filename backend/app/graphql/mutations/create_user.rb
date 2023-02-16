module Mutations
  class CreateUser < BaseMutation
    argument :name, String, required: true
    argument :email, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: false

    def resolve(**arg)
      user = User.new(
        name: arg[:name],
        email: arg[:email],
        password: arg[:password]
      )

      raise GraphQL::ExecutionError, user.errors.full_messages.join(', ') unless user.save

      {
        user:
      }
    end
  end
end
