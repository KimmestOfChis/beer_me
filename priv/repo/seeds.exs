# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# It is also run when you use the command `mix ecto.setup`
#

users = [
  %{first_name: "Jane", last_name: "Doe", email: "jane.doe@example.com", password: "password"},
  %{first_name: "John", last_name: "Smith", email: "john.smith@example.org", password: "password"}
]

for user <- users do
  {:ok, _} = BeerMe.Accounts.create_user(user)
end
