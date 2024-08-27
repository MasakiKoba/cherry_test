class SortWordCount
  class << self

    #熟語にダブルクオーテーションが残っているためsortがうまくいっていない

    def sort_count(article)
      regexp = '\b[A-Z][\/\w’]+(?:\s[A-Z(?:of)][\/\w’]+)*\s[A-Z][\/\w’]+\b|“.+?”'
      idioms = article.scan(/#{regexp}/) #配列としてマッチした熟語を受け取る
      words = article.gsub(/#{regexp}/, '').scan(/\b[\/\w’]+\b/) #熟語を削除し、単語を配列で受け取る

      idiom_count = {}
      word_count = {}
      total_count = 0
      output1 = ""
      output2 = ""

      idioms.each do |idiom| 
        if !idiom_count.key?(idiom)
          idiom_count[idiom]=0 #熟語をkeyとして、カウントをvalueとする
        end
        idiom_count[idiom]+= 1
      end

      words.each do |word|
        if !word_count.key?(word) #単語をkeyとして、カウントをvalueとする
          word_count[word]=0
        end
        word_count[word]+= 1
        total_count += 1 #単語の総数をカウントする
      end

      idiom_count.to_a.sort_by{|val| [-val[1], val[0].downcase]}.each do |arr| #カウント順に並べる
        output1 += "#{arr[1]} #{arr[0]}\n"
      end

      word_count.to_a.sort_by{|val| [-val[1], val[0].downcase]}.each do |arr|
        output2 += "#{arr[1]} #{arr[0]}\n"
      end

      p 
      "単語数（熟語以外）：#{total_count}\n
      英熟語？------------------------------------------------------------------\n

      #{output1}\n
      英単語------------------------------------------------------------------\n
      #{output2}"
    end

  end
end