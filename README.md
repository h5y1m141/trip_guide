## 事前準備

- MySQLが動作する環境をローカルにつくってください
- rbenvなどの環境を利用して、Ruby2.2.0が動作する環境を作ってください。その上で以下コマンドで必要なgemのインストールします

```sh
bundle install --path vendor/bundle
```

### DBの準備

- config/database.yml.sampleという雛形を作ってあるので、ユーザー名とパスワードをご自身の環境のものに変更
- 変更したら、config/database.ymlとして保存してください
- インストールが完了したらmigrateionを以下要領にて実施してください

```sh
./bin/rake db:create
./bin/rake db:create RAILS_ENV=test
./bin/rake db:migrate
./bin/rake db:migrate RAILS_ENV=test
```


### RSpecの確認

RSpecが動作するように環境設定済です。

またroutingとViewの描画についての最低限のspec作成済なので、以下にて動作確認をしてみてください

```sh
bundle exec rspec
```

実行結果がこのようになるかと思います。

```sh

RestaurantsController
  #show
    showテンプレートを描画する

RestaurantsController
  Routing
    should route GET /restaurants/near to #near
    should route GET /restaurants/1 to #show

SpotsController
  Routing
    should route GET /spots/near to #near

Finished in 0.13954 seconds (files took 3.04 seconds to load)
4 examples, 0 failures
```
