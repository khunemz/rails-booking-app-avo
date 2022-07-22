class RoomResource < Avo::BaseResource
  self.title = :id
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  field :name, as: :text
  field :description, as: :textarea
  field :photo, as: :file, is_image: true
  field :location, as: :belongs_to
  # add fields here
end
