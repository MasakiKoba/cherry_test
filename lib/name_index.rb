class NameIndex

  ORDER = ['ア', 'カ', 'サ', 'タ', 'ナ', 'ハ', 'マ', 'ヤ', 'ラ', 'ワ', 'ン']

  def self.create_index(input)
    if input.empty? #これではinputが' 'やnilでエラーが出てしまうため、unless input.present?を使いたい
      p []

    else
        
      index = {}
      sort_input = input.sort

      sort_input.each do |name|
        for i in 1..10 do
          if ORDER[i-1] <= name && name < ORDER[i] #ア行は'ア'<=name<'カ'で表される。無駄な処理が多いためいい感じにしたい
            if index[ORDER[i-1]].nil?
              index[ORDER[i-1]] = [name]
            else
              index[ORDER[i-1]] << name
            end
          end
        end
      end

      p index.to_a
    end
  end

end