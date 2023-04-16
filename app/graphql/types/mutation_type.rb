module Types
  class MutationType < Types::BaseObject
    # field :create_user, mutation: Mutations::Users::CreateUser
    # field :create_post, mutation: Mutations::Posts::CreatePost
    # field :login, mutation: Mutations::Users::Login
    # field :register, mutation: Mutations::Users::Registration

    # TODO: remove me
    field :register, mutation: Mutations::Users::RegisterUser
    field :update_user, mutation: Mutations::Users::UpdateUser

    field :add_user_games, mutation: Mutations::UserGames::AddUserGames
    field :delete_user_games, mutation: Mutations::UserGames::DeleteUserGames
  end
end
