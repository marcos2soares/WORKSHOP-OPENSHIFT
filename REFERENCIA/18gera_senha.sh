echo "Senha Normal"
echo ""

MYSQL_DATABASE=exampledb
MYSQL_USER=exampleuser
MYSQL_PASSWORD=examplepass
MYSQL_RANDOM_ROOT_PASSWORD=1

echo -n "MYSQL_DATABASE: "
echo  $MYSQL_DATABASE 
echo -n "MYSQL_USER: "
echo  $MYSQL_USER 
echo -n "MYSQL_PASSWORD: "
echo  $MYSQL_PASSWORD
echo -n "MYSQL_RANDOM_ROOT_PASSWORD: "
echo  $MYSQL_RANDOM_ROOT_PASSWORD

echo ""
echo "Senha BASE64"
echo ""

echo -n "MYSQL_DATABASE: "
MYSQL_DATABASE_BASE64=$(echo -n $MYSQL_DATABASE | base64)
echo  $MYSQL_DATABASE_BASE64 

echo -n  "MYSQL_USER: "
MYSQL_USER_BASE64=$(echo -n $MYSQL_USER | base64)
echo  $MYSQL_USER_BASE64 

echo -n "MYSQL_PASSWORD: "
MYSQL_PASSWORD_BASE64=$(echo -n $MYSQL_PASSWORD | base64)
echo  $MYSQL_PASSWORD_BASE64 

echo -n "MYSQL_RANDOM_ROOT_PASSWORD: "
MYSQL_RANDOM_ROOT_PASSWORD_BASE64=$(echo -n $MYSQL_RANDOM_ROOT_PASSWORD | base64)
echo  $MYSQL_RANDOM_ROOT_PASSWORD_BASE64



echo ""
echo "YAML Secret das Senhas"
echo ""

echo "
---
apiVersion: v1
kind: Secret
metadata:
  name: mysql-pass
  namespace: vt121170prj
type: Opaque
data:
  mysql-database: '$MYSQL_DATABASE_BASE64'
  mysql-user: '$MYSQL_USER_BASE64'
  mysql-password: '$MYSQL_PASSWORD_BASE64'
  mysql-random-root-password: '$MYSQL_RANDOM_ROOT_PASSWORD_BASE64'
" | tee  19secret.yaml
