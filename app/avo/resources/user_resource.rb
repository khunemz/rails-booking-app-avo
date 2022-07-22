class UserResource < Avo::BaseResource
  self.title = :email
  self.includes = []
  # self.search_query = ->(params:) do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :id, as: :id
  # add fields here
  field :first_name, as: :text
  field :last_name, as: :text
  field :email, as: :text
  field :email, as: :gravatar
  field :created_at, as: :date_time
  field :updated_at, as: :date_time

end
