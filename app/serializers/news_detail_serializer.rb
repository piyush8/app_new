class NewsDetailSerializer
    include FastJsonapi::ObjectSerializer

	attribute :id do |news_detail|
		news_detail.id
	end
  	attribute :source_id do |news_detail|
		news_detail.source_id
	end
	attribute :source_name do |news_detail|
		news_detail.source_name
	end

	attribute :author do |news_detail|
		news_detail.author
	end

	attribute :title do |news_detail|
		news_detail.title
	end

	attribute :description do |news_detail|
		news_detail.description
	end

	attribute :url do |news_detail|
		news_detail.url
	end
	attribute :image_url do |news_detail|
		news_detail.image_url
	end

	attribute :publish_at do |news_detail|
		news_detail.publish_at
	end

	attribute :content do |news_detail|
		news_detail.content
	end
 
end
