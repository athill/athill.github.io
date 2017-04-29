FROM jekyll/jekyll:pages
RUN gem install redcarpet pygments.rb
# RUN apk update
# RUN apk add  python
# RUN apk search -v '*python*' 