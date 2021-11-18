defmodule KrakenApi.Device do
  use Ecto.Schema
  import Ecto.Changeset

  @required_fields [:brand, :codename, :model, :release_year]

  schema "devices" do
    field :brand, :string
    field :codename, :string
    field :model, :string
    field :release_year, :string

    timestamps()
  end

  def changeset(device, attrs) do
    device
    |> cast(attrs, @required_fields)
    |> validate_required(@required_fields)
  end
end
