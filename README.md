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

## 参考リンク

- [本書のサポートページ](http://pllab.is.ocha.ac.jp/~asai/book/Top.html)
- [min-caml](https://github.com/esumii/min-caml)
