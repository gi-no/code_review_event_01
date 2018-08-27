# Usage

## 集計する
以下のコマンドを実行すると、  https://paiza.jp/challenges/ranks/X/infoにアクセスし `result.yaml`に、必要な情報を出力します。
```
ruby aggregate_challenges_infos.rb
```

## 表示する
以下のコマンドを実行すると、平均解答時間順にpaizaの問題の情報を出力します。

```
ruby show_challenges_info.rb sort_by=average_answer_time
```

`sort_by=xxxx` に指定できるオプションは、以下のとおりです。

- expect_time_for_answer
- correct_answer_rate
- average_answer_time
- average_score

