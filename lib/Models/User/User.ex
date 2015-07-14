defmodule VidoxerBackend.User do
  use Ecto.Model
  schema "users" do
    belongs_to :status, UserStatus
    belongs_to :type, UserType
    field :email, :string, unique: true
    field :password, :string, null: false
    field :username, :string, null: false
    field :description, :text, null: false
    field :online, :boolean, default false
    field :created_at, Ecto.Date.Time, default Ecto.Date.Time.local
  end
end
