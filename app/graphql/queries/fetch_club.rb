module Queries
  class FetchClub < Queries::BaseQuery
    type Types::ClubType, null: false
    argument :name, String, required: true

    def resolve(name:)
      Club.find_by(name: name)
    rescue ActiveRecord::RecordNotFound => _e
      GraphQL::ExecutionError.new('Club does not exist.')
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid attributes for #{e.record.class}:"\
        " #{e.record.errors.full_messages.join(', ')}")
    end
  end
end