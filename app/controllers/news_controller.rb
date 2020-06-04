class NewsController < ApplicationController

	def index
		@news = NewsDetail.all
	end

	def import
		news_data = JSON.parse(Net::HTTP.get(URI.parse("https://newsapi.org/v2/top-headlines?sources=google-news&apiKey=0a708bae59cd4f92b26a6bc4c114f1f0")))
		news_data["articles"].each do |news_data|
			NewsDetail.find_or_create_by(source_id: news_data["source"]["id"],
										source_name: news_data["source"]["name"],
										author: news_data['author'],
										title: news_data['title'],
										description: news_data['description'],
										url: news_data['url'],
										image_url: news_data['urlToImage'],
										publish_at: news_data['publishedAt'],
										content: news_data['publishedAt'])
		end
		redirect_to root_path
	end

	def get_news_data_api
	  	list_news = NewsDetail.all
	    news_serializer = NewsDetailSerializer.new(list_news)
	    render json: {
	          status: 200,
	          data: news_serializer.serializable_hash[:data].map{ |data| data[:attributes]}
	    }
	end

end
