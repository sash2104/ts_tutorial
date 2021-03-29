typescriptのsetup  
https://qiita.com/ochiochi/items/efdaa0ae7d8c972c8103 をほぼそのままやってるだけ

## 環境構築
```
$ ./setup.sh
$ cat package.json
{
  "name": "ts_tutorial",
  "version": "1.0.0",
  "description": "typescriptのsetup",
  "main": "index.js",
  "scripts": {
    "build": "webpack --mode=development",
    "start": "webpack-cli serve --mode development",
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC",
  "devDependencies": {
    "ts-loader": "^8.1.0",
    "typescript": "^4.2.3",
    "webpack": "^5.28.0",
    "webpack-cli": "^4.6.0",
    "webpack-dev-server": "^3.11.2"
  }
}
$ npm start

> ts_tutorial@1.0.0 start
> webpack-cli serve --mode development

ℹ ｢wds｣: Project is running at http://localhost:8080/
ℹ ｢wds｣: webpack output is served from /
ℹ ｢wds｣: Content not from webpack is served from /Users/xxx/codes/ts_tutorial/dist
ℹ ｢wdm｣: asset bundle.js 367 KiB [emitted] (name: bundle)
runtime modules 432 bytes 3 modules
modules by path ./node_modules/ 336 KiB
  modules by path ./node_modules/webpack-dev-server/client/ 20.9 KiB 10 modules
  modules by path ./node_modules/html-entities/lib/*.js 61 KiB 5 modules
  modules by path ./node_modules/webpack/hot/ 1.58 KiB 3 modules
  modules by path ./node_modules/url/ 37.4 KiB 3 modules
  modules by path ./node_modules/querystring/*.js 4.51 KiB
    ./node_modules/querystring/index.js 127 bytes [built] [code generated]
    ./node_modules/querystring/decode.js 2.34 KiB [built] [code generated]
    ./node_modules/querystring/encode.js 2.04 KiB [built] [code generated]
modules by path ./src/*.ts 715 bytes
  ./src/app.ts 236 bytes [built] [code generated]
  ./src/item.ts 479 bytes [built] [code generated]
webpack 5.28.0 compiled successfully in 1940 ms
ℹ ｢wdm｣: Compiled successfully.

```

## 備考
- scripts/startがwebpackのバージョン違いで動作しなかったのでもとの記事から修正
- https://community.sonarsource.com/t/no-tsconfig-json-file-found-analysis-will-be-stopped/35824 のエラー出たら、tsconfig.jsonのあるディレクトリで`code .`し直す
- 外部ライブラリを利用したくなったら下記を参考にする
  - [TypeScriptチュートリアル② -外部ライブラリの利用-](https://qiita.com/ochiochi/items/ab234853704cc53af325)
  - [TypeScriptチュートリアル②外伝 -チャンク-](https://qiita.com/ochiochi/items/cc825671f8179126fa70)

