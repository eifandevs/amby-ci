rm -rf ./keys
mkdir -p keys/web keys/worker
 
ssh-keygen -t rsa -f ./keys/web/tsa_host_key -N ''
ssh-keygen -t rsa -f ./keys/web/session_signing_key -N ''
 
ssh-keygen -t rsa -f ./keys/worker/worker_key -N ''
ssh-keygen -t rsa -f ./keys/worker/darwin_worker_key -N ''
 
cat ./keys/worker/worker_key.pub >> ./keys/web/authorized_worker_keys
cat ./keys/worker/darwin_worker_key.pub >> ./keys/web/authorized_worker_keys
 
cp ./keys/web/tsa_host_key.pub ./keys/worker
