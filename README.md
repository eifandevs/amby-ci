## 起動
---------------------------
docker-compose up -d

## アクセス
---------------------------

### portainer
http://localhost/portainer/

### phpLDAPadmin
http://localhost/phpldapadmin/

### jenkins
http://localhost/jenkins/

### rocket.chat
http://localhost/rocketchat/

## LDAPオペレーション
---------------------------

### ou(所属)の追加
ldapadd -D cn=admin,dc=amby,dc=local -w password -f /ldif/ou-users.ldif

### cn(ユーザー)の追加
ldapadd -D cn=admin,dc=amby,dc=local -w password -f /ldif/cn-user_hoge.ldif

### ユーザーの削除
ldapdelete -D cn=admin,dc=amby,dc=local -w password
(対話)
cn=userhoge,ou=Users,dc=amby,dc=local
^D

## LDAP設定(rocket.chat)
---------------------------

### 設定箇所
管理->LDAP設定

### メイン
| 項目 | 設定値 |
|:-----------|:------------|
|有効にする|はい|
|ログインフォールバック|はい|
|ログイン後にユーザーを検索する|はい|
|ホスト|ldap|
|ポート|389|
|再接続します|いいえ|
|暗号化|なし|
|CA 証明書|なし|
|認証できなければ拒否する|はい|
|ベースDN|ou=Users,dc=amby,dc=local|
|内部ログレベル|無効|

### Authentication
| 項目 | 設定値 |
|:-----------|:------------|
|有効|はい|
|ユーザーDN|cn=admin,dc=amby,dc=local|
|パスワード|password|

### Sync / Import
| 項目 | 設定値 |
|:-----------|:------------|
|ユーザー名フィールド|cn|
|一意性を識別するフィールド|objectGUID,ibm-entryUUID,GUID,dominoUNID,nsuniqueId,uidNumber|
|既定ドメイン|(空)|
|既存のユーザーをマージする|いいえ|
|データを同期する|はい|
|ユーザーデータのフィールドマップ|{"displayName":"name", "mail":"email"}|
|ユーザーのアバターを同期する|はい|
|バックグラウンド同期|いいえ|

### User Search
| 項目 | 設定値 |
|:-----------|:------------|
|フィルター|(objectclass=*)|
|範囲|sub|
|検索フィールド|cn|
|検索ページサイズ|250|
|検索サイズ制限|1000|

## LDAP設定(jenkins)
---