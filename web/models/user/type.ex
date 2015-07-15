defmodule VidoxerBackend.UserType do
  use Ecto.Model
  schema "user_types" do
    has_many :permissions, through UserPermissionThrough
    field :name, :string
    field :description, :text
  end
end
