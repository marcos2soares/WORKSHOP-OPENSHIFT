
oc new-build -l  app=appvt121170  --name appvt121170v1 --binary --strategy=docker  --to="appvt121170:1.0"

oc start-build appvt121170v1 --from-dir="." --follow


oc get all

oc describe imagestream.image.openshift.io/appvt121170

