## 認証キーの作成
./create-key.sh

## 環境設定ファイルの作成

touch .env

```
CONCOURSE_BASIC_AUTH_USERNAME=concourse
CONCOURSE_BASIC_AUTH_PASSWORD=password
CONCOURSE_POSTGRES_USER=concourse
CONCOURSE_POSTGRES_PASSWORD=password
```
## コンテナ起動
docker-compose up

## Concourseコマンドのインストール

```
sudo mkdir /usr/local/concourse
sudo chown (ユーザー名):(ユーザーグループ) /usr/local/concourse
 
cd /usr/local/concourse
 
curl -L -O https://github.com/concourse/concourse/releases/download/v3.3.1/concourse_darwin_amd64
ln -s ../concourse/concourse_darwin_amd64 /usr/local/bin/concourse
 
curl -L -O https://github.com/concourse/concourse/releases/download/v3.3.1/fly_darwin_amd64
ln -s ../concourse/fly_darwin_amd64 /usr/local/bin/fly
```

## workerの起動
./worker-up.sh

## アクセス
http://127.0.0.1:8080/