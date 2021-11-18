defmodule KrakenApi.DeviceCopy do
  use Ecto.Schema
  import Ecto.Changeset

  schema "devices" do
    field :brand, :string
    field :codename, :string
    field :model, :string
    field :release_year, :string

    timestamps()
  end

  @doc false
  def changeset(device, attrs) do
    device
    |> cast(attrs, [:brand, :codename, :model, :release_year])
    |> validate_required([:brand, :codename, :model, :release_year])
  end
end
