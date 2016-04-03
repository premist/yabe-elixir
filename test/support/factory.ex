defmodule Yabe.Factory do
  use ExMachina.Ecto, repo: Yabe.Repo

  alias Yabe.Post

  def factory(:post) do
    %Post{
      title: "Test Post",
      content: "Test post with some example contents"
    }
  end
end
