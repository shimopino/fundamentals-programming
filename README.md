# プログラミングの基礎

[プログラミングの基礎](https://www.amazon.co.jp/dp/4781911609/)

![](https://images-na.ssl-images-amazon.com/images/I/51FBsJHo4EL._SX353_BO1,204,203,200_.jpg)

本書では OCaml によるサンプルコードが用意されているが、本リポジトリでは OCaml に加えて TypeScript と Rust によるサンプルコードも併記することを目指す。

## 実行環境

VSCode の場合は **Remote Container** 機能を活用する。

各チャプターごとに実行ファイルを作成し、コマンドベースで実行する。

| 環境       | 実行コマンド                 |
| :--------- | :--------------------------- |
| OCaml      | `ocaml <file.ml>`            |
| TypeScript | `ts-node <file.ts>`          |
| Rust       | `cargo single run <file.rs>` |

## OCaml 環境を VSCode で設定する

```bash
# OCamlのインストロールを行う
# 指示に従って環境変数などを編集する
brew install opam

# LSP環境を作成する
opam pin add ocaml-lsp-server https://github.com/ocaml/ocaml-lsp.git
opam install ocaml-lsp-server

```

## 参考リンク

- [本書のサポートページ](http://pllab.is.ocha.ac.jp/~asai/book/Top.html)
- [min-caml](https://github.com/esumii/min-caml)
- [OCaml の補完とフォーマットを VSCode 上で実現するための試行錯誤](https://blog.ojisan.io/ocaml-lsp-vscode/#ocamllsp-%E3%81%8C-vscode-%E4%B8%8A%E3%81%8B%E3%82%89%E3%81%A0%E3%81%91%E8%A6%8B%E3%81%88%E3%81%AA%E3%81%84)
