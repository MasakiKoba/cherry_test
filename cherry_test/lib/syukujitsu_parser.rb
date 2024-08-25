require 'csv'
require 'date'

class SyukujitsuParser
  # 本問題のファイルは現在では入手不可なため解答からダウンロードし、　resouceフォルダに格納
  CSV_PATH = File.expand_path('../../resource/syukujitsu.csv',__FILE__)

  class << self
    def parse
      holidays = {}
      syukujitsu_csv = CSV.read(CSV_PATH, encoding: 'Shift_JIS:UTF-8') #文字コードを指定しないとエラー
      
      #csvの不要な行を削除
      2.times do
        syukujitsu_csv.delete_at(0)
        syukujitsu_csv.delete_at(-1)
      end

      syukujitsu_csv.each do |row|
        range = 0...row.size
        range.step(2) do |i| #csvは祝日、年月日、祝日、年月日、、、と繰り返しているので、step(2)で繰り返す
          if holidays.key?(Date.parse(row[i+1]).year)
            holidays[Date.parse(row[i+1]).year][Date.parse(row[i+1])] = row[i]
          else #holidayハッシュに年を表すキーがない場合にキーを作成
            holidays[Date.parse(row[i+1]).year] = {Date.parse(row[i+1]) => row[i]}
          end
         
        end
      
      end
      p holidays
    end
  end
end