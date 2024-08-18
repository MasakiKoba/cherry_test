# このメロディ(文字列)を変更するKaraokeMachineというクラスを作ります。
# このクラスはインスタンス作成時にメロディを受け取ります。
# transposeというメソッドに変化させたいキーの量を渡すと、その分だけキーを上げたり下げたりしたメロディが返却されます。


class KaraokeMachine
  def initialize(melody)
    @melody = melody
  end

  SCALE = ['C', 'C#', 'D', 'D#', 'E', 'F', 'F#', 'G', 'G#', 'A', 'A#', 'B']

  def transpose(num)
    diveded_melody = @melody.scan(/\w#?| |[|]/) #音階ごとに分割してarrayに入れる。空白と|も一要素して扱う
    new_diveded_melody = diveded_melody.map do |e|
      if SCALE.include?(e) #音階とそれ以外で場合分け
        SCALE[(SCALE.index(e)+num)%12]
      else
        e
      end
    end
    p new_diveded_melody.join
  end
end