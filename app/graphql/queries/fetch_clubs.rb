module Queries
  class FetchClubs < Queries::BaseQuery

    type [Types::ClubType], null: false

    def resolve
      Club.all.order(created_at: :desc)
    end
  end
end