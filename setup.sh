npm init --y
npm install typescript ts-loader webpack webpack-cli webpack-dev-server --save-dev

# scriptsにbuildとstartを追加
patch package.json < package.json.patch

tsc --init