# Certainty

Certainty provides __Boolean__, an object that represents truth in
Ruby.

The library posits three truth values: true, false, or unknown.

[![travis](https://secure.travis-ci.org/hakanensari/certainty.png)](http://travis-ci.org/hakanensari/certainty)

## Usage

Add to your Gemfile.

    gem 'certainty'

Require.

    require 'certainty'

Inquire.

    true.is_a? Boolean
    => true

Typecast.

    Boolean("false")
    => false
