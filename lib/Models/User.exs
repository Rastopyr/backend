
defmodule UserPermission do
  use Ecto.Model
  schema "user_permissions" do
    field :name, :string
    field :url, :string
    field :allow, :boolean
    field :method, :string
  end
end

defmodule UserPermissionThrough do
  use Ecto.Model
  schema "user_permissions_group" do
    belongs_to :typeId, UserType
    belongs_to :permissionId, UserPermission
  end
end

defmodule UserType do
  use Ecto.Model
  schema "user_types" do
    has_many :permissions, through UserPermissionThrough
    field :name, :string
    field :description, :text
  end
end

defmodule UserStatus do
  use Ecto.Model
  schema "user_statuses" do
    field :name, :string
    field :code, :integer
  end
end

defmodule User do
  use Ecto.Model
  schema "users" do
    belongs_to :status, UserStatus
    belongs_to :type, UserType
    field :email, :string
    field :password, :string
    field :username, :string
    field :description, :text
    field :online, :boolean
  end
end
