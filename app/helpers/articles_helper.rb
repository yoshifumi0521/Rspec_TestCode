module ArticlesHelper

  def posted_on(article)
    time = article.created_at
    "#{time.year}/#{time.month}/#{time.day}"

  end

end
