
echo -n 'admin' | base64 > ./username.txt
echo -n '1f2d1e2e67df' | base64 > ./password.txt
echo -n '1f2d1e2e67df' | base64 > ./password_root.txt

kubectl create secret generic db-user-pass --from-file=./username.txt --from-file=./password.txt --from-file=./password_root.txt

