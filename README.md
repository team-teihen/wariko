# wariko

- ここに何か素晴らしいことを書く

## 開発環境

### 必要なもの

- Docker
- docker-compose

### セットアップ

```sh
$ make prepare
```

### アプリの起動・停止・終了

http://localhost:3000 で確認してね。

```sh
# 起動
$ make up

# 停止
$ make stop

# 終了
$ make down
```

### Rails系のコマンド実行

```sh
$ make be command='...'

# e.g. controller
$ make be command='rails g controller ...'

# e.g. model
$ make be command='rails g model ...'

# e.g. routes
$ make be command='rails routes'

# Rspec (テスト)
$ make be command='rspec'
```
