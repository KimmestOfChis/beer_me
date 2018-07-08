defmodule BeerMe.Beer do
  use Ecto.Schema
  import Ecto.Changeset


  schema "beers" do
    field :abv, :string
    field :ibu, :string
    field :name, :string
    field :style, :string
    field :brewer_id, :id

    timestamps()
  end

  @doc false
  def changeset(beer, attrs) do
    beer
    |> cast(attrs, [:name, :style, :abv, :ibu])
    |> validate_required([:name, :style, :abv, :ibu])
  end
end
