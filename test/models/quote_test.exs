defmodule Quotes.QuoteTest do
  use Quotes.ModelCase

  alias Quotes.Quote

  @valid_attrs %{author: "some content", quote: "some content", source: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Quote.changeset(%Quote{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Quote.changeset(%Quote{}, @invalid_attrs)
    refute changeset.valid?
  end
end
