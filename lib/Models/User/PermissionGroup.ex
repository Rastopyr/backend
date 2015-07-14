defmodule VidoxerBackend.UserPermissionThrough do
  use Ecto.Model
  schema "user_permissions_group" do
    belongs_to :typeId, UserType
    belongs_to :permissionId, UserPermission
  end
end
