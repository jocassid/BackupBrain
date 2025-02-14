[README.md](README.md)

# Django REST Framework

## Testing

**WARNING!** "When using APIRequestFactory, the object that is returned is 
Django's standard HttpRequest, and not REST framework's Request object, which 
is only generated once the view is called"

```python
factory = APIRequestFactory()

# will result in WSGIRequest has not attribute data
request = factory.post('/', {'foo': 'bar'})
response = MyView().post(request)

# This will work
request = factory.post('/')
request.data = {'foo': 'bar'}
response = MyView().post(request)

# Or this (dispatch converts Django HttpRequest into DRF Request)
request = factory.post('/', {'foo': 'bar'}, format='json')
response = MyView().dispatch(request)

```