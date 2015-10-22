require 'httparty'
class Book < ActiveRecord::Base
  belongs_to :user
  has_one :lend, dependent: :destroy

  validates :title, presence: true, length: { maximum: 500, message: 'is too long (maximum is 500 characters)' }
  validates :author, presence: true
  validates :isbn, presence: true
  validates :description, presence: true


  def self.find_book_with_isbn(isbn)
    response = HTTParty.get("https://www.googleapis.com/books/v1/volumes?q=isbn:#{isbn}")
     title = response["items"][0]["volumeInfo"]["title"]
     author = response["items"][0]["volumeInfo"]["authors"][0]
     description = response["items"][0]["volumeInfo"]["description"]
     picture_url = nil

     unless response["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"].nil?
        picture_url = response["items"][0]["volumeInfo"]["imageLinks"]["thumbnail"]
     end

    if picture_url.nil?
      { title: title, author: author, description: description }
    else
      { title: title, author: author, description: description, picture_url: picture_url }
    end
  end

end