# liquid-md5

[![Gem Version](https://img.shields.io/gem/v/liquid-md5.svg)](https://rubygems.org/gems/liquid-md5)
[![Build Status](https://img.shields.io/travis/pathawks/liquid-md5/master.svg)](https://travis-ci.org/pathawks/liquid-md5)
[![Dependency Status](https://img.shields.io/gemnasium/pathawks/liquid-md5.svg)](https://gemnasium.com/pathawks/liquid-md5)

*A Liquid filter that outputs an MD5 hash*

```
{{ site.email | md5 }}
```

Can be useful for generating Gravatar URLs from email addresses.
```
http://gravatar.com/avatar/{{ site.email | downcase | md5 }}?s=144
```
