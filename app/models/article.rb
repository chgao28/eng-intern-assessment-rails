class Article < ApplicationRecord
	validates :title, presence: true
	validates :content, presence: true

	def self.search(query)
		where("title LIKE ? or content LIKE ?", "%" + query + "%", "%" + query + "%")
	end
end