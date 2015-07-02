###
# Compass
###

# Change Compass configuration
compass_config do |config|
  # Require any additional compass plugins here.
  config.add_import_path "#{root}/bower_components/foundation/scss"

  # Set this to the root of your project when deployed:
  config.http_path          = "/"
  config.css_dir            = "stylesheets"
  config.sass_dir           = "stylesheets"
  config.images_dir         = "images"
  config.javascripts_dir    = "javascripts"
end

Time.zone = "Asia/Riyadh"

activate :blog do |blog|
  blog.prefix               = "articles"
  blog.permalink            = "{title}.html"
  blog.layout               = "article_layout"
  blog.paginate             = true
  blog.default_extension    = ".md"
  blog.summary_separator    = /(READMORE)/
  blog.summary_length       = 250

  blog.tag_template         = "tag.html"
  blog.taglink              = "tags/{tag}.html"
end

# XML and RSS don't need a layout.
page "*.xml", layout: false
page "*.rss", layout: false


###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end

# Proxy pages (http://middlemanapp.com/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

# Reload the browser automatically whenever files change
configure :development do
  activate :livereload,
           :host => '192.168.1.123',
           :apply_js_live => true,
           :apply_css_live => true

  config[:file_watcher_ignore] += [ /^.gems\// ]
end

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

activate :directory_indexes

# Add bower's directory to sprockets asset path
after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end


set :build_dir, 'tmp'

set :css_dir, 'stylesheets'

set :js_dir, 'javascripts'

set :images_dir, 'images'


sprockets.import_asset 'modernizr/modernizr.js'


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
