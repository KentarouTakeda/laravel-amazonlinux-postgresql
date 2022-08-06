# laravel-amazonlinux-postgresql

## 接続（VSCode）

* [Remote - Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) をインストール
* このリポジトリをワークスペースとして開く
* コマンドパレットより *Remote-Containers: Reopen in Container* を実行

## セットアップ（初回のみ）

> \# *URL* には対象プロジェクトのリポジトリURLを指定  
> *container $* git clone *URL* **./**  
> *container $* npm install  
> *container $* composer install  


## ER図の出力（セットアップ後実行可能）

> *host $* docker compose -f docker-compose.yml -f docker-compose.schemaspy.yml run --rm schemaspy

* *schema/* ディレクトリ配下にER図が出力される

## URL

|アプリケーション|URL|備考|
|-|-|-|
|Laravel|http://localhost:8000/|-|
|MailHog|http://localhost:8025/|-|
|phpPgAdmin|http://localhost:8432/| `postgres` / *（入力不要）*|

## .env によるカスタマイズ（任意）

|環境変数|意味|デフォルト|
|-|-|-|
|APP_DEBUG|Laravel設定|true|
|PORT_WEB_APP|公開ポート / Laravel|8000|
|PORT_PGSQL|公開ポート / PostgreSQL|5432|
|PORT_WEB_PHPPGADMIN|公開ポート / phpPgAdmin|8432|
|PORT_WEB_MAIL|公開ポート / MailHog|8025|
|PORT_BROWSERSYNC|公開ポート / Browsersync|3000|

