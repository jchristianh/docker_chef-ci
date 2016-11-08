##################################
# The Zen Garden :: Chef CI      #
#     Build Tag: 161108-1547     #
##################################
FROM docker.thezengarden.net/alpine-base
MAINTAINER Chris Hammer <chris@thezengarden.net>


# Update base and install required deps:
########################################
RUN apk update
RUN apk add alpine-sdk bash tar gzip curl ruby ruby-dev ruby-rake ruby-rdoc libxml2 zlib-dev zlib


# Install Ruby 2.1.8, Rubocop, and Foodcritic:
##############################################
RUN /bin/bash -l -c "gem install foodcritic --no-document \
                     && gem install rubocop --no-document \
                     && mkdir -p /opt/builds"
