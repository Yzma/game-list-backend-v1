module Types
  module Post
    class PostType < Types::BaseObject
      field :id, ID, null: false
      field :text, String, null: true
      field :user_id, String, null: true
      field :user_picture, String, null: true
      field :username, String, null: true

      field :liked_users, [Types::User::UserType], null: false
      field :likes_count, Integer, null: false

      field :created_at, GraphQL::Types::ISO8601DateTime, null: false
      field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

      def username
        ::User.find(object.user_id).username
      end

      def user_id
        ::User.find(object.user_id).id
      end

      def user_picture
        ::User.find(object.user_id).user_picture
      end

      def likes_count
        object.likes.count
      end

      def liked_users
        object.likes.map(&:user)
      end
    end
  end
end