FROM jekyll/jekyll:pages
RUN gem install pygments.rb
# RUN apk update
# RUN apk add  python
# RUN apk search -v '*python*' 