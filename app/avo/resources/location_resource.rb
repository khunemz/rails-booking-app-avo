class LocationResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.search_query = ->(params:) do
    scope.ransack(id_eq: params[:q],
      name_cont: params[:q],
      description_cont: params[:q],
      m: "or").result(distinct: false)
  end

  field :id, as: :id
  # add fields here
  field :name, as: :text
  field :description, as: :textarea, as_scription: true
  field :photo, as: :file, is_image: true, as_avatar: true
  field :rooms, as: :has_many
end
