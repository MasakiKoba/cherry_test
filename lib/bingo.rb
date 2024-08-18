#1から75までの数字をランダムに配置して、ビンゴカードを作成するプログラミング問題です。

class Bingo
  
  BINGO = " B| I| N| G| O\n"
  
  def self.generate_card
    card_arr = [[],[],[],[],[]]
    b = (1..15).to_a.shuffle
    i = (16..30).to_a.shuffle
    n = (31..45).to_a.shuffle
    g = (46..60).to_a.shuffle
    o = (61..75).to_a.shuffle

    5.times do |j|
      card_arr[j].push(b[j],i[j],n[j],g[j],o[j])
    end

    card_arr[2][2] = '  '

    card = card_arr.map {|arr| arr.join('|').rjust(14)}.join("\n")

    puts BINGO + card

  end
end