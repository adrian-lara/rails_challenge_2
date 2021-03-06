require 'rails_helper'

describe Book do
  describe "#avg_rating" do
    it "returns the average rating of its reviews" do
      book = Book.create(title: "Book 1")
      user_1 = User.create(name: "User 1")
      user_2 = User.create(name: "User 2")
      review_1 = Review.create(book: book, user: user_1, rating: 5, body: "This was a great book!")
      review_2 = Review.create(book: book, user: user_2, rating: 1, body: "Was bad.")

      expect(book.avg_rating).to eq(3)
    end
  end

  describe "#max_rating" do
    it "returns the average rating of its reviews" do
      book = Book.create(title: "Book 1")
      user_1 = User.create(name: "User 1")
      user_2 = User.create(name: "User 2")
      review_1 = Review.create(book: book, user: user_1, rating: 5, body: "This was a great book!")
      review_2 = Review.create(book: book, user: user_2, rating: 1, body: "Was bad.")

      expect(book.max_rating).to eq(5)
    end
  end
end
