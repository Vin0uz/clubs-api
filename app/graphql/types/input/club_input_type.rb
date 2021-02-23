module Types
  module Input
    class ClubInputType < Types::BaseInputObject
      argument :name, String, required: true
    end
  end
end