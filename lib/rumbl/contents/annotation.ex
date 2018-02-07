defmodule Rumbl.Contents.Annotation do
  use Ecto.Schema
  import Ecto.Changeset
  alias Rumbl.Contents.Annotation


  schema "annotations" do
    field :at, :integer
    field :body, :string
    field :user_id, :id
    field :video_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Annotation{} = annotation, attrs) do
    annotation
    |> cast(attrs, [:body, :at])
    |> validate_required([:body, :at])
  end
end
