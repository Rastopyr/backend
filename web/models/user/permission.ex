defmodule VidoxerBackend.UserPermission do
  use Ecto.Model
  schema "user_permissions" do
    field :name, :string
    field :url, :string
    field :allow, :boolean
    field :method, :string
  end
end
