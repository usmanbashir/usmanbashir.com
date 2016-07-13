root_url = "http://usmanbashir.com"
feed_url = URI.join(root_url, current_page.path)

articles = blog.articles
page_url = URI.join(root_url, "#{blog.options.prefix.to_s}/")

xml.instruct!
xml.feed "xmlns" => "http://www.w3.org/2005/Atom" do
  xml.title "Usman Bashir's Blog"
  xml.subtitle "Your galactic alien friend!"
  xml.id page_url
  xml.link "href" => page_url, "rel" => "alternate"
  xml.link "href" => feed_url, "rel" => "self"
  xml.updateded(articles.first.date.to_time.iso8601) unless articles.empty?
  xml.author { xml.name "Usman Bashir" }

  articles[0..10].each do |article|
    article_url = URI.join(root_url, article.url)

    xml.entry do
      xml.title article.title
      xml.link "rel" => "alternate", "href" => article_url
      xml.id article_url
      xml.published article.date.to_time.iso8601
      xml.updated article.date.to_time.iso8601
      xml.author { xml.name "Usman Bashir" }
      xml.summary article.summary(250), type: "html"
      xml.content article.body, type: "html"
    end
  end
end
