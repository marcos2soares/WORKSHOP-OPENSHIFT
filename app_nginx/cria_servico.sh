

#oc expose pod/nginx-prod-pod   --name nginx-service -l app=nginx-prod  --selector app=nginx-prod  --port='5000' --target-port='80'
oc expose deploy/nginx-deploy   --name nginx-service -l app=nginx-prod  --selector app=nginx-prod  --port='5000' --target-port='80'

oc create route edge nginx-route --service nginx-service --hostname='nginx-prod.apps.ocplab.vtal.intra'   --port='80' --insecure-policy Redirect

oc label route nginx-route app=nginx-prod
