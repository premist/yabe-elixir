defmodule Yabe.PostView do
  use Yabe.Web, :view

  def render("index.json", %{posts: posts}) do
    %{data: render_many(posts, Yabe.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{data: render_one(post, Yabe.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      content: post.content}
  end
end
