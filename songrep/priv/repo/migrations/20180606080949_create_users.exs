defmodule Songrep.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :age, :string
      add :address, :string

      timestamps()
    end

  end
end
