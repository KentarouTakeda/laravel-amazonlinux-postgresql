# laravel-amazonlinux-postgresql

## 接続（VSCode）

* [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) をインストール
* このリポジトリをワークスペースとして開く
* コマンドパレットより *Remote-Containers: Reopen in Container* を実行

## インストール（既存のリポジトリをclone）

> \# */var/www/PROJECT* ではなく */var/www/* にプロジェクトをclone  
> *container $* git clone *URL* **./**

*URL* には対象プロジェクトのリポジトリURLを指定

## ER図の出力

> *host $* docker compose -f docker-compose.yml -f docker-compose.schemaspy.yml run --rm schemaspy

* Laravelのセットアップ（マイグレーションまで）を終えた後に実行可能
* *schema/* ディレクトリ配下にER図が出力される

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
