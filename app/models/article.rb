class Article < ApplicationRecord
	validates :title, presence: true
	validates :content, presence: true

	def self.search(query)
		# selects all articles that have the title or the content includes the query as a substring.
		where("title LIKE ? or content LIKE ?", "%" + query + "%", "%" + query + "%")
	end
end