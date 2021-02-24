module Queries
  class FetchClubs < Queries::BaseQuery

    type [Types::ClubType], null: false
    argument :name, String, required: true

    def resolve(name:)
      Club.where("similarity(name, ?) > 0.3", name).order(Arel.sql("similarity(name, '#{name}') DESC"))
    end
  end
end