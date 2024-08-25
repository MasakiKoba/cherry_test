require 'minitest/autorun'
require_relative '../lib/karaoke'

class KaraokeTest < Minitest::Test
  def test_karaoke_nomelody
    melody = ""
    answer = melody
    assert_equal answer, KaraokeMachine.new(melody).transpose(0)
  end

  def test_karaoke_nochange
    melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    answer = melody
    assert_equal answer, KaraokeMachine.new(melody).transpose(0)
  end

  def test_karaoke_up2
    melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    answer = "D E F# G |F# E D   |F# G A B |A G F#   |D   D   |D   D   |DDEEF#F#GG|F# E D   "
    assert_equal answer, KaraokeMachine.new(melody).transpose(2)
  end

  def test_karaoke_down1
    melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    answer = "B C# D# E |D# C# B   |D# E F# G# |F# E D#   |B   B   |B   B   |BBC#C#D#D#EE|D# C# B   "
    assert_equal answer, KaraokeMachine.new(melody).transpose(-1)
  end

  def test_karaoke_up12
    melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    answer = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    assert_equal answer, KaraokeMachine.new(melody).transpose(12)
  end

  def test_karaoke_up14
    melody = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    answer = "D E F# G |F# E D   |F# G A B |A G F#   |D   D   |D   D   |DDEEF#F#GG|F# E D   "
    assert_equal answer, KaraokeMachine.new(melody).transpose(14)
  end

  def test_karaoke_up6_other_melody
    melody = "F# G# A# B |A# G# F#   |A# B C# D# |C# B A#   |F#   F#   |F#   F#   |F#F#G#G#A#A#BB|A# G# F#   "
    answer = "C D E F |E D C   |E F G A |G F E   |C   C   |C   C   |CCDDEEFF|E D C   "
    assert_equal answer, KaraokeMachine.new(melody).transpose(6)
  end

end