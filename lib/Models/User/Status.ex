defmodule VidoxerBackend.UserStatus do
  use Ecto.Model
  schema "user_statuses" do
    field :name, :string
    field :code, :integer
  end
end
