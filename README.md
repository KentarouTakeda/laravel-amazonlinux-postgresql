# laravel-amazonlinux-postgresql

## 接続（ターミナル）

> *host $* docker-compose up -d  
> *host $* docker-compose exec php bash  

## 接続（VSCode）

* このリポジトリをワークスペースとして開く
* コマンドパレットより *Remote-Containers: Reopen in Container* を実行

## インストール（Laravel初期状態）

> \# */var/www/PROJECT* ではなく */var/www/* にプロジェクトを作成  
> *container $* composer create-project laravel/laravel . --prefer-dist

## インストール（既存のリポジトリをclone）

> \# */var/www/PROJECT* ではなく */var/www/* にプロジェクトをclone  
> *container $* git clone *URL* .  

## 初期設定（パーミッション設定）

> *container $* chmod ugo+w -R storage bootstrap/cache

## データベースへの接続

> *container $* psql

or

> host $  docker-compose exec database psql

## .env

* APP_ENV  
    Laravel
* APP_DEBUG  
    Laravel
* PORT_WEB_APP  
    アプリ（Laravel）の公開ポート
* PORT_PGSQL  
    PostgreSQLの公開ポート
* PORT_WEB_PHPPGADMIN  
    phpPgAdminの公開ポート
* PORT_WEB_MAIL  
    MailHogの公開ポート

## URL

 Laravel : http://localhost:8000/ （デフォルト設定の場合）  
 MailHog : http://localhost:8025/ （デフォルト設定の場合）  
 phpPgAdmin : http://localhost:8432/  （デフォルト設定の場合）  
     ユーザー名 : `postgres` / パスワード : *（入力不要）*
