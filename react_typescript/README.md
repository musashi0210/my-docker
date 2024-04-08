devcontainer.jsonの仕様
https://containers.dev/implementors/json_reference/

command: sleep infinityとtty: trueは、どちらもコンテナをフォアグラウンドで稼働させ続けるための手段ですが、そのアプローチには違いがあります。
sleep infinityは実際にコマンドを実行し続けることでコンテナを開いた状態に保ちますが、tty: trueは仮想ターミナルを割り当てることで同じ結果を達成します。
どちらの方法を選択するかは、使用するシナリオや個人の好みによりますが、両方とも特定の状況下で非常に便利です。

```json
{
  "name": "VSCode上で表示される名前",
  "dockerComposeFile": "docker-composeファイルへのパス",
  "service": "docker-composeのサービスを指定(例: app、mysql)",
  "workspaceFolder": "今ローカルで開いているワークスペースをコンテナ内のどのパスに配置するかを指定",
  
  "forwardPorts": ["コンテナからホストに転送するポートリスト"],
  "shutdownAction": "stopCompose",
  "remoteUser": "root",
  // https://github.com/devcontainers/features/tree/main/src
  // https://github.com/microsoft/vscode-dev-containers/blob/main/script-library/docs/git-from-src.md
  "features": {},

  // VSCodeの設定等
  "customizations": {
    "vscode": {
      // vsCodeの設定
      "settings": {
        "workbench.colorTheme": "Default Dark Modern"
      },
      // 拡張機能リスト(拡張機能IDを指定)
      "extensions": [
        "MS-CEINTL.vscode-language-pack-ja",
        "dbaeumer.vscode-eslint",
        "esbenp.prettier-vscode",
        "mhutchie.git-graph",
        "eamodio.gitlens"
      ]
    }
  }
}
```
