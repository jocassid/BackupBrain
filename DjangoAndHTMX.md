[README.md](README.md)

# Django and HTMX

There is a django-htmx package.  The documents are located at 
https://django-htmx.readthedocs.io/en/latest/tips.html.  However so far I've 
gotten things to work by adding the hx-headers tag as described in the 
package's documentation and shown here:

`<body hx-headers='{"X-CSRFToken": "{{ csrf_token }}"}'>`

