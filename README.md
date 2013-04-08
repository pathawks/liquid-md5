# md5
## A Liquid filter that outputs an MD5 hash

```
{{ site.email | md5 }}
```

Can be useful for generating Gravatar URLs from email addresses.
```
http://gravatar.com/avatar/{{ site.email | md5 }}?s=144
```
