class Book < ActiveRecord::Base
  belongs_to :user
  has_many :lends
  has_many :requests
  has_many :reviews

  validates :title, presence: true, length: { maximum: 500, message: 'is too long (maximum is 500 characters)' }
  validates :author, presence: true
  validates :isbn, presence: true
  validates :description, presence: true


  # Finds details of a book based on user entered ISBN
  def self.find_book_with_isbn(isbn)
    book_details = {}
    response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=isbn:#{isbn}")
    title = response["items"][0]["volumeInfo"]["title"]
    author = response["items"][0]["volumeInfo"]["authors"][0]
    description = response["items"][0]["volumeInfo"]["description"]
    picture_url = nil

    unless response["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"].nil?
      picture_url = response["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
    end

    if picture_url.nil?
      book_details = { title: title, author: author, description: description }
    else
      book_details = { title: title, author: author, description: description, picture_url: picture_url }
    end
    return book_details
  end







end
