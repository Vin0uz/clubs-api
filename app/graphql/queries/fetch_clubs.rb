module Queries
  class FetchClubs < Queries::BaseQuery

    type [Types::ClubType], null: false
    argument :name, String, required: true

    def resolve(name:)
      Club.search_by_name(name)
    end
  end
end