
oc import-image nginxdokcker --from=docker.io/library/nginx  --confirm

oc label is nginxdokcker  app=nginx-prod

# dockerImageRepository: image-registry.openshift-image-registry.svc:5000/vt121170prj/nginxdokcker
#  publicDockerImageRepository: default-route-openshift-image-registry.apps.ocplab.vtal.intra/vt121170prj/nginxdokcker

