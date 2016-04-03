defmodule Yabe.PostTest do
  use Yabe.ModelCase

  alias Yabe.Post

  @valid_attrs %{
    title: "Hello World!",
    content: "This is a sample post for testing."
  }
  @empty_attrs %{}
  @long_title_attrs %{
    title: "This title exceeds the maximum character allowed for post title",
    content: "This post should not be saved"
  }
  @short_content_attrs %{
    title: "Short Content Post",
    content: "Too Short"
  }

  test "changeset with valid attributes" do
    changeset = Post.changeset(%Post{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Post.changeset(%Post{}, @empty_attrs)
    refute changeset.valid?
  end

  test "changeset with attributes including long title" do
    changeset = Post.changeset(%Post{}, @long_title_attrs)
    refute changeset.valid?
  end

  test "changeset with attributes including short content" do
    changeset = Post.changeset(%Post{}, @short_content_attrs)
    refute changeset.valid?
  end
end
