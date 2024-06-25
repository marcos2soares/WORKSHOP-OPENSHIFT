
#
# oc login
# oc whoami -t

. .env

# Defina o endereço do servidor da API e o token de autenticação

curl -X GET $APISERVER/api/v1/namespaces/$PROJETO/pods \
     -H "Authorization: Bearer $TOKEN" \
     -H "Accept: application/json" \
      --insecure
