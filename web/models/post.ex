defmodule Yabe.Post do
  use Yabe.Web, :model

  schema "posts" do
    field :title, :string
    field :content, :string

    timestamps
  end

  @required_fields ~w(title content)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
    |> validate_length(:title, max: 40)
    |> validate_length(:content, min: 10)
  end
end
