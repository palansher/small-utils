# small-utils

This is small Alpine Docker image that contains some often used utilities, like htpasswd.

The simple goal of this image - to use small utilities without authentication in a private registry, but use public one :) 

The list of utilities:
* htpasswd

## How to Use

### htpasswd basic auth generate

```
echo "enter basic auth password for user 'username':"
read -es PASSWORD	
docker run --rm palansher/utils htpasswd -Bbn username $$PASSWORD > somedir/somefile
```

also see 'Makefile.example', for more comfortable password generating


### Alternative: https://github.com/demyxsh/utilities