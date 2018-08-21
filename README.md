# code_review_event_01
学生向けコードレビューイベント用

## レビュー用のプルリクエストの作り方

### 1. forkする

#### 1.1. Github上でfork buttonをクリック。
URL：https://github.com/gi-no/code_review_event_01

![](https://raw.githubusercontent.com/yukimura1227/code_review_event_01/docs/readme/images/10.png)

#### 1.2. forkする先のアカウントを指定する
![](https://raw.githubusercontent.com/yukimura1227/code_review_event_01/docs/readme/images/20.png)

#### 1.3. forkが完了するまで待つ
![](https://raw.githubusercontent.com/yukimura1227/code_review_event_01/docs/readme/images/30.png)

### 2. プログラムを作る

#### 2.1. ローカルにチェックアウトする
![](https://raw.githubusercontent.com/yukimura1227/code_review_event_01/docs/readme/images/40.png)

#### 2.2. ブランチを切る
ローカルで適当にブランチを切る

```
## わかりやすいように、自身の名前でブランチを切ってください。
git checkout -b hiroyuki.takamura
```

#### 2.3. 開発作業をする
適宜プログラムを作成して、コミットする。なるべくこまめに意味のある単位でコミットしましょう。

### 3. プルリクエストを作る

#### 3.1. pushする
```
git push origin hiroyuki.takamura
```

#### 3.2. プルリクエストを作成する
Github上で、プルリクエストを作成する  

まずは、ブランチ一覧画面に行く  
![](https://raw.githubusercontent.com/yukimura1227/code_review_event_01/docs/readme/images/50.png)

次に、New create pull requestボタンを押す  
![](https://raw.githubusercontent.com/yukimura1227/code_review_event_01/docs/readme/images/60.png)

適宜、プルリクエストのコメントを記載して、Create pull requestボタンを押す  
![](https://raw.githubusercontent.com/yukimura1227/code_review_event_01/docs/readme/images/70.png)
