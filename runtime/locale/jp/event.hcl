locale {
    event {
        little_sister_slips = "ビッグダディの肩から、リトルシスターが滑り落ちた。「Mr Bubbles！！」"

        ehekatl = "…ぅっぅぅ…っぅぅっぅううううみみゃぁ！！！"

        guarded_by_lord = "気をつけろ！この階は${_1}の守護者、${basename(_2)}によって守られている。"
        reached_deepest_level = "どうやら最深層まで辿り着いたらしい…"

        seal_broken = "この階の封印が解けたようだ！"

        death_penalty_not_applied = "レベル6に達していないので能力値の減少はない。"
        you_lost_some_money = "金貨を幾らか失った…"

        pael = "パエル「おかあさんーー！！」"

        guest_lost_his_way = "ゲストは行方不明になった。"
        guest_already_left = "ゲストはすでに居なくなっていた。"

        my_eyes = "${name(_1)}「目が！目がー！！」"

        okaeri = [
            "「おかえり」",
            "「よう戻ったか」",
            "「無事で何よりです」",
            "「おかか♪」",
            "「待ってたよ」",
            "「おかえりなさい！」"
        ]

        bomb = " *ゴゴゴゴゴゴ* "

        ragnarok = "終末の日が訪れた。"

        alarm = "けたたましい警報が鳴り響いた！"

        blaggers = "強盗があなたに目をつけた！"

        popup {
            skip = "「${_1}」"
            title = "《 ${_1} 》"

            _15 {
                title = "殺人鬼"
                text = "街のどこかで悲鳴があがった。あなたはガードが慌しく走っていくのを目撃した。「人殺し、人殺しだ！！」"

                choices {
                    _0 = "なむ…"
                }

                scream = "${name(_1)}「ぎゃぁーー！」"
            }

            _14 {
                title = "謎のご馳走"
                text = "あなたは目の前にご馳走をみつけた。"

                choices {
                    _0 = "食べる"
                    _1 = "立ち去る"
                }
            }

            _13 {
                title = "ご馳走の匂い"
                text = "どこからともなく漂うご馳走の匂いで、あなたの胃は不満を叫び始めた。"

                choices {
                    _0 = "腹減った…"
                }
            }

            _1 {
                title = "不運の回避"
                text = "あなたは一瞬嫌な予感がしたが、それはやがて消えた。"

                choices {
                    _0 = "よし"
                }
            }

            _24 {
                title = "才能の開花"
                text = "突然あなたの才能は開花した！"

                choices {
                    _0 = "ワァオー"
                }
            }

            _18 {
                title = "信仰の深まり"
                text = "夢の中で、あなたは偉大なる者の穏やかな威光に触れた。"

                choices {
                    _0 = "神よ"
                }
            }

            _12 {
                title = "マテリアルの発見"
                text = "石ころにつまずいて転んだ拍子に、あなたは幾つかのマテリアルを見つけた。"

                choices {
                    _0 = "よし"
                }
            }

            _23 {
                title = "夢の中の収穫"
                text = "夢の中で、あなたはのんきにマテリアルを採取していた"

                choices {
                    _0 = "るん♪"
                }
            }

            _10 {
                title = "野営跡の発見"
                text = "あなたは何者かが野営した跡を見つけた。辺りには食べ残しやがらくたが散らばっている。もしかしたら、何か役に立つものがあるかもしれない。"

                choices {
                    _0 = "調べる"
                    _1 = "立ち去る"
                }
            }

            _4 {
                title = "不気味な夢"
                text = "あなたは不気味な夢をみた。陰気な幾つもの瞳があなたを凝視し、どこからともなく笑い声がこだました。「ケラケラケラ…ミツケタヨ…ケラケラ」あなたが二度寝返りをうった後、その夢は終わった。"

                choices {
                    _0 = "おかしな夢だ"
                }
            }

            _22 {
                title = "怪物の夢"
                text = "あなたは怪物と戦っていた。醜い化け物に斬りかかろうとした時、怪物は悲鳴をあげた。「オレハオマエダ！オマエハオレダ！」あなたは自分の呻き声に起こされた。"

                choices {
                    _0 = "ううぅん…"
                }
            }

            _19 {
                title = "宝を埋める夢"
                text = "あなたは夢の中で宝を埋めた。あなたはすぐに飛び起き、その場所を紙に書き留めた"

                choices {
                    _0 = "ワァオー"
                }
            }

            _20 {
                title = "幸運の日"
                text = "うみみゃぁ！"

                choices {
                    _0 = "ワァオー"
                }
            }

            _21 {
                title = "運命の気まぐれ"
                text = "うみみゃっ、見つけたね！"

                choices {
                    _0 = "ワァオー"
                }
            }

            _5 {
                title = "呪いのつぶやき"
                text = "どこからともなく聞こえる呪いのつぶやきが、あなたの眠りを妨げた。"

                choices {
                    _0 = "眠れない…"
                }

                no_effect = "あなたは祈祷を捧げ呪いのつぶやきを無効にした。"
            }

            _8 {
                title = "悪意ある手"
                text = "悪意のある手が忍び寄り、あなたが気付かない間に金貨を奪って逃げた。"

                choices {
                    _0 = "盗人め…"
                }

                you_lose = "金貨${_1}枚を失った。"
                no_effect = "損害はなかった。"
            }

            _11 {
                title = "冒険者の遺骸"
                text = "この場所で力尽きた冒険者の遺骸を見つけた。既に朽ちかけている骨と、身に着けていたと思われる幾つかの装備が散らばっている。"

                choices {
                    _0 = "あさる"
                    _1 = "埋葬する"
                }

                loot = "あなたは遺留品をあさった。"
                bury = "あなたは骨と遺留品を埋葬した。"
            }

            _2 {
                title = "魔法使いの夢"
                text = "夢の中であなたは赤い髪の魔術師に出会った。「誰じゃ、お主は？ふむ、間違った者の夢に現れてしまったようじゃ。すまぬな。お詫びといってはなんじゃが…」魔法使いは指をくるりと回した。あなたは軽い頭痛を覚えた。"

                choices {
                    _0 = "おかしな夢だ"
                }
            }

            _3 {
                title = "成長のきざし"
                text = "長年の鍛錬の成果が実ったようだ。なかなか眠りにつけず考えごとをしていたあなたは、ふと、自らの技術に関する新しいアイデアを思いついた。"

                choices {
                    _0 = "よし！"
                }
            }

            _6 {
                title = "自然治癒力の向上"
                text = "身体が妙に火照ってあなたは目を覚ました。気がつくと、腕にあった傷跡が完全に消えていた。"

                choices {
                    _0 = "よし"
                }
            }

            _7 {
                title = "瞑想力の向上"
                text = "あなたは、夢の中でも驚くほど理性を保っていた。まるで瞑想を行っている時のように、あなたは心の平和を感じた。"

                choices {
                    _0 = "よし"
                }
            }

            _9 {
                title = "路上に転がる幸運"
                text = "下を向いて歩いていると、幸運にもプラチナ硬貨を見つけた。"

                choices {
                    _0 = "ラッキー！"
                }
            }

            _16 {
                title = "発狂した金持ち"
                text = "発狂した金持ちが、何か叫びながら金貨をばらまいている…"

                choices {
                    _0 = "ラッキー！"
                }

                you_pick_up = "金貨${_1}枚を手に入れた。"
            }

            _17 {
                title = "辻プリースト"
                text = "突然、向かいからやって来た一人の神官が、すれ違いざまにあなたに魔法をかけた。「ノープロブレム」"

                choices {
                    _0 = "ありがとう"
                }
            }

            reunion_with_pet {
                title = "ペットとの再会"
                text = "あなたは懐かしい鳴き声に気付いて、ふと歩みを止めた。なんと、船が難破した時に居なくなったあなたのペットが、嬉しそうに走ってくる！あなたのペットは…"
                choices {
                    _0 = "犬だ！"
                    _1 = "猫だ！"
                    _2 = "クマだ！"
                    _3 = "少女だ！"
                }
            }

            marriage {
                title = "結婚"
                text = "長い交際の末、遂にあなたと${name(_1)}は固い絆で結ばれた。婚儀の後、あなたの元に幾つか祝儀品が届けられた。"

                choices {
                    _0 = "生涯をあなたに捧げる"
                }
            }
        }
    }
}
