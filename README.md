## 認証キーの作成
./create-key.sh

## 環境設定ファイルの作成

touch .env

```
CONCOURSE_BASIC_AUTH_USERNAME=concourse
CONCOURSE_BASIC_AUTH_PASSWORD=password
CONCOURSE_EXTERNAL_URL=http://192.168.33.10:8080
CONCOURSE_POSTGRES_USER=concourse
CONCOURSE_POSTGRES_PASSWORD=password
```

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