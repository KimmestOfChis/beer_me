defmodule BeerMe.Brewer do
  use Ecto.Schema
  import Ecto.Changeset


  schema "brewers" do
    field :establishment_date, :date
    field :location_city, :string
    field :location_state, :string
    field :name, :string

    timestamps()
  end

  @doc false
  def changeset(brewer, attrs) do
    brewer
    |> cast(attrs, [:name, :establishment_date, :location_city, :location_state])
    |> validate_required([:name, :establishment_date, :location_city, :location_state])
  end
end
