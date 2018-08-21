# code_review_event_01
学生向けコードレビューイベント用

## レビュー用のプルリクエストの作り方

### 1. forkする

#### 1.1. Github上でfork buttonをクリック。
URL：https://github.com/gi-no/code_review_event_01

![](https://raw.githubusercontent.com/gi-no/code_review_event_01/master/images/10.png)

#### 1.2. forkする先のアカウントを指定する
![](https://raw.githubusercontent.com/gi-no/code_review_event_01/master/images/20.png)

#### 1.3. forkが完了するまで待つ
![](https://raw.githubusercontent.com/gi-no/code_review_event_01/master/images/30.png)

### 2. プログラムを作る

#### 2.1. ローカルにチェックアウトする
![](https://raw.githubusercontent.com/gi-no/code_review_event_01/master/images/40.png)

#### 2.2. ブランチを切る
ローカルで適当にブランチを切る

```
## わかりやすいように、自身の名前でブランチを切ってください。
git checkout -b hiroyuki.takamura
```

#### 2.3. 開発作業をする
適宜プログラムを作成して、コミットする。なるべくこまめに意味のある単位でコミットしましょう。  
Gitに慣れていない方は、以下が優しくまとめられていて参考になります

- 概念を知りたい
  * https://backlog.com/ja/git-tutorial/intro/intro1_1.html
  * https://backlog.com/ja/git-tutorial/intro/intro1_2.html
  * https://backlog.com/ja/git-tutorial/intro/intro1_3.html
  * https://backlog.com/ja/git-tutorial/intro/intro1_4.html
- 具体的なコミット方法などを知りたい
  * https://backlog.com/ja/git-tutorial/reference/

### 3. プルリクエストを作る

#### 3.1. pushする
```
git push origin hiroyuki.takamura
```

#### 3.2. プルリクエストを作成する
Github上で、プルリクエストを作成する  

まずは、ブランチ一覧画面に行く  
![](https://raw.githubusercontent.com/gi-no/code_review_event_01/master/images/50.png)

次に、New create pull requestボタンを押す  
![](https://raw.githubusercontent.com/gi-no/code_review_event_01/master/images/60.png)

適宜、プルリクエストのコメントを記載して、Create pull requestボタンを押す  
![](https://raw.githubusercontent.com/gi-no/code_review_event_01/master/images/70.png)


### 4. 課題内容

#### お題「paizaのスキルチェック並び替えツール」
#### 条件
- 以下のURLから情報を取る
    - https://paiza.jp/challenges/ranks/s
    - https://paiza.jp/challenges/ranks/a
    - https://paiza.jp/challenges/ranks/b
    - https://paiza.jp/challenges/ranks/c
    - https://paiza.jp/challenges/ranks/d
- Rubyを使って作る


#### 仕様
- 以下のすべての並び替え方法を実装してください
    - 正解率（降順）
    - 平均回答時間（昇順）
    - 平均スコア（降順）
    - 受験者数（降順）
    - 想定回答時間（昇順）
- 表示は1行に1問題の情報を出してください
