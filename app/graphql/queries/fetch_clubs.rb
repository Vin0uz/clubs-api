module Queries
  class FetchClubs < Queries::BaseQuery

    type [Types::ClubType], null: false
    argument :name, String, required: true

    def resolve(name:)
      #Club.all.order(created_at: :desc)
      Club.where("name LIKE ?", "%#{name}%")
    end
  end
end