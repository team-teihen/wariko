# 環境構築
.PHONY: prepare
prepare: wariko.env env-build env-bundle-install config/webpacker.yml env-setup-db

# 環境変数の有効化
wariko.env:
	cp wariko.env.sample wariko.env

# 利用するコンテナの作成
.PHONY: env-build
env-build:
	docker-compose build

# 依存ライブラリのインストール
.PHONY: env-bundle-install
env-bundle-install:
	docker-compose run --rm devserver bundle install

# webpacker の初期インストール
config/webpacker.yml:
	docker-compose run --rm devserver bundle exec rails webpacker:install

# DBの作成・スキーマ適用および初期データ投入（あれば）
.PHONY: env-setup-db
env-setup-db:
	docker-compose run --rm wariko bundle exec rails db:setup

# アプリ起動
.PHONY: up
up:
	docker-compose up

# アプリ停止
.PHONY: stop
stop:
	docker-compose stop

# コンテナ削除
.PHONY: down
down:
	docker-compose down

# bundle exec ... のヘルパー
export command
.PHONY: be
be:
	docker-compose run --rm devserver bundle exec $(command)
