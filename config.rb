# ========================================================================
# Hello Jason
# http://hellojason.net
# ========================================================================

# ========================================================================
# Site settings
# ========================================================================
# Set asset directories
config[:css_dir]    = 'assets/javascripts'
config[:js_dir]     = 'assets/stylesheets'
config[:images_dir] = 'assets/images'
config[:fonts_dir]  = 'assets/fonts'

# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

# Slim template engine
require "slim"

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Layouts
# https://middlemanapp.com/basics/layouts/

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# ========================================================================
# Weblog extension
# Documentatin: http://middlemanapp.com/basics/blogging/
# ========================================================================
Time.zone = "America/Chicago"
activate :blog do |blog|
  blog.default_extension    = ".md"
  blog.permalink            = "{title}"
  blog.prefix               = "blog"
  blog.layout               = "layout-article"
  # Custom template when running `middleman article "Article name"`
  blog.new_article_template = "source/layouts/article.tt"
end

# Pretty URLs
# This must be activated AFTER the blog extension
# activate :directory_indexes





# With alternative layout
# page '/path/to/file.html', layout: 'other_layout'

# Proxy pages
# https://middlemanapp.com/advanced/dynamic-pages/

# proxy(
#   '/this-page-has-no-template.html',
#   '/template-file.html',
#   locals: {
#     which_fake_page: 'Rendering a fake page with a local variable'
#   },
# )

# Helpers
# Methods defined in the helpers block are available in templates
# https://middlemanapp.com/basics/helper-methods/

# helpers do
#   def some_helper
#     'Helping'
#   end
# end

# Build-specific configuration
# https://middlemanapp.com/advanced/configuration/#environment-specific-settings

# configure :build do
#   activate :minify_css
#   activate :minify_javascript
# end
