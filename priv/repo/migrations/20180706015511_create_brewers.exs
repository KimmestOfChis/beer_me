defmodule BeerMe.Repo.Migrations.CreateBrewers do
  use Ecto.Migration

  def change do
    create table(:brewers) do
      add :name, :string
      add :establishment_date, :date
      add :location_city, :string
      add :location_state, :string

      timestamps()
    end

  end
end
