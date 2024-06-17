
oc expose deployment <deployment name>

 oc expose deployment appvt121170-deploy

oc create route edge --service=appvt121170-deploy --insecure-policy=Redirect
