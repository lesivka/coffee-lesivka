assert = require('assert')
itParam = require('mocha-param')

lesivka = require('../dist/lesivka.node.js')

data = [
  ['akula', 'акула'],
  ['babak', 'бабак'],
  ['vovk', 'вовк'],
  ['halka', 'галка'],
  ['gava', 'ґава'],
  ['dub', 'дуб'],
  ['emu', 'ему'],
  ['jenot', 'єнот'],
  ['majbutńe', 'майбутнє'],
  ['žaba', 'жаба'],
  ['zubr', 'зубр'],
  ['kalina', 'калина'],
  ['inšij', 'інший'],
  ['last́ivka', 'ластівка'],
  ['jižak', 'їжак'],
  ['jorž', 'йорж'],
  ['kačka', 'качка'],
  ['leleka', 'лелека'],
  ['muxa', 'муха'],
  ['netopir', 'нетопир'],
  ['orel', 'орел'],
  ['pavič', 'павич'],
  ['ravlik', 'равлик'],
  ['sobaka', 'собака'],
  ['tihr', 'тигр'],
  ['udav', 'удав'],
  ['fretka', 'фретка'],
  ['xovrax', 'ховрах'],
  ['cesarka', 'цесарка'],
  ['čajka', 'чайка'],
  ['špak', 'шпак'],
  ['ščur', 'щур'],
  ['oleń', 'олень'],
  ['junak', 'юнак'],
  ['had́uka', 'гадюка'],
  ['jabluko', 'яблуко'],
  ['d́atel', 'дятел'],
  ['đḿiĺ', 'джміль'],
  ['geƶ́', 'ґедзь'],
  ['hajivka', 'гаївка'],
  ['objizd', "об'їзд"],
  ['praistota', 'праістота'],
  ['znaju', 'знаю'],
  ['śimja', "сім'я"],
  ['bđ́ilka', 'бджілка'],
  ['ƶvonik', 'дзвоник'],
  ['ṕidživiti', 'підживити'],
  ['v́idznačiti', 'відзначити'],
  ['c\u030caj', 'чай'],
  ['paṕir', 'папір'],
  ['Nad-Ja', 'Над-Я'],
  ['MakKuin', 'МакКуін'],
  ['Mjač', "М'яч"],
  ['vjo', 'вйо'],
]

describe 'decode', ->
  itParam '"${value[0]}" should be converted to "${value[1]}"', data, (value) ->
    assert.equal lesivka.decode(value[0]), value[1]
