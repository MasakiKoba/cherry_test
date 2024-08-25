#問題① Date クラスを使って、今月の１日と月末の日付と曜日を求め、次のような形式でカレンダーを表示させてください

require 'date' #Dateクラスをインポート

class Calender

  def self.generate_calender
    today = Date.today #今日の日付（Dateクラス）
    first_week_day = Date.new(today.year, today.month, 01).wday #今日の曜日
    last_date = Date.new(today.year, today.month+1, 01) -1 #今月の最終日（Dateクラス）
    last_day = last_date.day #最終日の日付
    last_week_day = last_date.wday #最終日の曜日(使っていない)

    month_year = [today.strftime('%B'), today.year] #月と年のarray
    week = ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'] #曜日は直接入力(array)

    days = (1..last_day).to_a #今月の日付を一つのarrayに
    str_days = days.map {|day| day.to_s.rjust(2)} #日付を文字列かつ2文字の右詰に
    first_week_day.times{str_days.unshift('  ')} #月初の空白を上記のarrayに追加
    seven_days = str_days.each_slice(7).to_a #上記のarrayを7要素ごとに分割、それぞれをarrayに

    arrs = [].push(month_year, week) + seven_days #上で作った3つのarrayを一つのarrayに。seven_daysの要素としてのarrayを残すために+を使う
    calender_rows = arrs.map{|arr| arr.join(' ').center(20)} #joinで要素を文字列に変換　月と年を中央揃えに（他の行には影響なし）

    p calender_rows.join("\n")
    
  end
end