pydio は 2.0.0 以上になると「jwilder/nginx-proxy」が使えなくなる

また、1.5.3 は一度コンテナ立ち上げ後、情報を入力し、灰色のローディング画面に入ったら「/cells/pydio.json」の defaults.url と defaults.urlInternal を書き換える必要がある

```
"defaults": {
  "database": "49ad17e1e8bcc973e76a196a87c25a932dddd664",
  "datasource": "pydiods1",
  "url": "http://pydio.home.bitachoco.mydns.jp:8000",
  "urlInternal": "http://0.0.0.0:8000"
},
```

```
"defaults": {
  "database": "49ad17e1e8bcc973e76a196a87c25a932dddd664",
  "datasource": "pydiods1",
  "url": "https://pydio.home.bitachoco.mydns.jp",
  "urlInternal": "https://pydio.home.bitachoco.mydns.jp:8000"
},
```