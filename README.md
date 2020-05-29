# laravel-amazonlinux-postgresql

## 接続（ターミナル）

> *host $* docker-composer up -d  
> *host $* docker-compose exec php  

## 接続（VSCode）

* このリポジトリをワークスペースとして開く
* コマンドパレットより *Remote-Containers: Reopen in Container* を実行

## インストール（Laravel初期状態）

> */var/www/PROJECT* ではなく */var/www/* にプロジェクトを作成  
> *container $* composer create-project laravel/laravel . --prefer-dist

## インストール（既存のリポジトリをclone）

> */var/www/PROJECT* ではなく */var/www/* にプロジェクトをclone  
> *container $* git clone *URL* .  

## 初期設定（パーミッション設定）

> *container $* chmod ugo+w -R storage bootstrap/cache

## データベースへの接続

> *container $* psql

