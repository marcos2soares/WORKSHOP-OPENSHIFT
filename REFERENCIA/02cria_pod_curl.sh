
# Defina o endereço do servidor da API e o token de autenticação

. .env

# O JSON do pod que você deseja criar
POD_JSON=$(cat <<EOF
{
  "apiVersion": "v1",
  "kind": "Pod",
  "metadata": {
    "name": "nginx-pod1"
  },
  "spec": {
    "containers": [
      {
        "name": "nginx-cont1",
        "image": "nginxinc/nginx-unprivileged",
        "ports": [
          {
            "containerPort": 80
          }
        ]
      }
    ]
  }
}
EOF
)

# Faça a solicitação POST para criar o pod
curl -X POST $APISERVER/api/v1/namespaces/$PROJETO/pods \
     -H "Authorization: Bearer $TOKEN" \
     -H "Content-Type: application/json" \
     -d "$POD_JSON" \
     --insecure

