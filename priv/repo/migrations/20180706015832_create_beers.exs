defmodule BeerMe.Repo.Migrations.CreateBeers do
  use Ecto.Migration

  def change do
    create table(:beers) do
      add :name, :string
      add :style, :string
      add :abv, :string
      add :ibu, :string
      add :brewer_id, references(:brewers, on_delete: :nothing)

      timestamps()
    end

    create index(:beers, [:brewer_id])
  end
end
