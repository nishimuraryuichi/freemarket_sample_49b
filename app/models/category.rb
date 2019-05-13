class Category < ParentCategory
  self.data = [
          {id: 0, name: '---'},
          {id: 1, name: 'トップス', parent_category_id: 1},
          {id: 2, name: 'ジャケット/アウター',parent_category_id: 1},
          {id: 3, name: 'パンツ',parent_category_id: 1},
          {id: 4, name: 'スカート',parent_category_id: 1},
          {id: 5, name: 'ワンピース',parent_category_id: 1},
          {id: 6, name: '靴',parent_category_id: 1},
          {id: 7, name: 'ルームウェア/パジャマ',parent_category_id: 1},
          {id: 8, name: 'レッグウェア',parent_category_id: 1},
          {id: 9, name: '帽子',parent_category_id: 1},
          {id: 10, name: 'バッグ',parent_category_id: 1},
          {id: 11, name: 'アクセサリー',parent_category_id: 1},
          {id: 12, name: 'ヘアアクセサリー',parent_category_id: 1},
          {id: 13, name: '小物',parent_category_id: 1},
          {id: 14, name: '時計',parent_category_id: 1},
          {id: 15, name: 'その他',parent_category_id: 1},
          {id: 16, name: 'トップス',parent_category_id: 2},
          {id: 17, name: 'ジャケット/アウター',parent_category_id: 2},
          {id: 18, name: 'パンツ',parent_category_id: 2},
          {id: 19, name: '靴',parent_category_id: 2},
          {id: 20, name: 'バッグ',parent_category_id: 2},
          {id: 21, name: '帽子',parent_category_id: 2},
          {id: 22, name: 'アクセサリー',parent_category_id: 2},
          {id: 23, name: '小物',parent_category_id: 2},
          {id: 24, name: '時計',parent_category_id: 2},
          {id: 25, name: '水着',parent_category_id: 2},
          {id: 26, name: 'レッグウェア',parent_category_id: 2},
          {id: 27, name: 'アンダーウェア',parent_category_id: 2},
          {id: 28, name: 'その他',parent_category_id: 2},
          {id: 29, name: 'ベビー服(女の子用)~95cm',parent_category_id: 3},
          {id: 30, name: 'ベビー服(男の子用)~95cm',parent_category_id: 3},
          {id: 31, name: 'ベビー服(男女兼用)~95cm',parent_category_id: 3},
          {id: 32, name: 'ベビー服(女の子用)100cm~',parent_category_id: 3},
          {id: 33, name: 'ベビー服(男の子用)100cm~',parent_category_id: 3},
          {id: 34, name: 'ベビー服(男女兼用)100cm~',parent_category_id: 3},
          {id: 35, name: 'キッズ履',parent_category_id: 3},
          {id: 36, name: '子ども用ファッション小物',parent_category_id: 3},
          {id: 37, name: 'オムツ/トイレ/バス',parent_category_id: 3},
          {id: 38, name: '外出/移動用品',parent_category_id: 3},
          {id: 39, name: '授乳/食事',parent_category_id: 3},
          {id: 40, name: 'ベビー家具/寝具/室内用品',parent_category_id: 3},
          {id: 41, name: 'おもちゃ',parent_category_id: 3},
          {id: 42, name: '行事/記念品',parent_category_id: 3},
          {id: 43, name: 'その他',parent_category_id: 3},
          {id: 44, name: 'キッチン/食器',parent_category_id: 4},
          {id: 45, name: 'ベッド/マットレス',parent_category_id: 4},
          {id: 46, name: 'ソファ/ソファベッド',parent_category_id: 4},
          {id: 47, name: '椅子/チェア',parent_category_id: 4},
          {id: 48, name: '机/テーブル',parent_category_id: 4},
          {id: 49, name: '収納家具',parent_category_id: 4},
          {id: 50, name: 'ラグ/カーペット/マット',parent_category_id: 4},
          {id: 51, name: 'カーテン/ブラインド',parent_category_id: 4},
          {id: 52, name: 'ライト/証明',parent_category_id: 4},
          {id: 53, name: '寝具',parent_category_id: 4},
          {id: 54, name: 'インテリア/小物',parent_category_id: 4},
          {id: 55, name: '季節/年中行事',parent_category_id: 4},
          {id: 56, name: 'その他',parent_category_id: 4},
          {id: 57, name: '本',parent_category_id: 5},
          {id: 58, name: '漫画',parent_category_id: 5},
          {id: 59, name: '雑誌',parent_category_id: 5},
          {id: 60, name: 'CD',parent_category_id: 5},
          {id: 61, name: 'DVD/ブルーレイ',parent_category_id: 5},
          {id: 62, name: 'レコード',parent_category_id: 5},
          {id: 63, name: 'テレビゲーム',parent_category_id: 5},
          {id: 64, name: 'おもちゃ',parent_category_id: 6},
          {id: 65, name: 'タレントグッズ',parent_category_id: 6},
          {id: 66, name: 'コミック/アニメグッズ',parent_category_id: 6},
          {id: 67, name: 'トレーディングカード',parent_category_id: 6},
          {id: 68, name: 'フィギュア',parent_category_id: 6},
          {id: 69, name: '楽器/器材',parent_category_id: 6},
          {id: 70, name: 'コレクション',parent_category_id: 6},
          {id: 71, name: 'ミリタリー',parent_category_id: 6},
          {id: 72, name: '美術品',parent_category_id: 6},
          {id: 73, name: 'アート用品',parent_category_id: 6},
          {id: 74, name: 'その他',parent_category_id: 6},
          {id: 75, name: 'ベースメイク',parent_category_id: 7},
          {id: 76, name: 'メイクアップ',parent_category_id: 7},
          {id: 77, name: 'ネイルケア',parent_category_id: 7},
          {id: 78, name: '香水',parent_category_id: 7},
          {id: 79, name: 'スキンケア',parent_category_id: 7},
          {id: 80, name: 'ヘアケア',parent_category_id: 7},
          {id: 81, name: 'ボディケア',parent_category_id: 7},
          {id: 82, name: 'オーラルケア',parent_category_id: 7},
          {id: 83, name: 'リラクゼーション',parent_category_id: 7},
          {id: 84, name: 'ダイエット',parent_category_id: 7},
          {id: 85, name: 'その他',parent_category_id: 7},
          {id: 86, name: 'スマートフォン/携帯電話',parent_category_id: 8},
          {id: 87, name: 'スマホアクセサリー',parent_category_id: 8},
          {id: 88, name: 'PC/タブレット',parent_category_id: 8},
          {id: 89, name: 'カメラ',parent_category_id: 8},
          {id: 90, name: 'テレビ/映像機器',parent_category_id: 8},
          {id: 91, name: 'オーディオ機器',parent_category_id: 8},
          {id: 92, name: '美容/健康',parent_category_id: 8},
          {id: 93, name: '冷暖房/空調',parent_category_id: 8},
          {id: 94, name: '生活家電',parent_category_id: 8},
          {id: 95, name: 'その他',parent_category_id: 8},
          {id: 96, name: 'ゴルフ',parent_category_id: 9},
          {id: 97, name: 'フィッシング',parent_category_id: 9},
          {id: 98, name: '自転車',parent_category_id: 9},
          {id: 99, name: 'トレーニング/エクササイズ',parent_category_id: 9},
          {id: 100, name: '野球',parent_category_id: 9},
          {id: 101, name: 'サッカー/フットサル',parent_category_id: 9},
          {id: 102, name: 'テニス',parent_category_id: 9},
          {id: 103, name: 'スノーボード',parent_category_id: 9},
          {id: 104, name: 'スキー',parent_category_id: 9},
          {id: 105, name: 'その他スポーツ',parent_category_id: 9},
          {id: 106, name: 'アウトドア',parent_category_id: 9},
          {id: 107, name: 'その他',parent_category_id: 9},
          {id: 108, name: 'アクセサリー(女性用)',parent_category_id: 10},
          {id: 109, name: 'ファッション(小物)',parent_category_id: 10},
          {id: 110, name: 'アクセサリー(時計)',parent_category_id: 10},
          {id: 111, name: '日用品/インテリア',parent_category_id: 10},
          {id: 112, name: '趣味/おもちゃ',parent_category_id: 10},
          {id: 113, name: 'キッズ・ベビー',parent_category_id: 10},
          {id: 114, name: '素材/材料',parent_category_id: 10},
          {id: 115, name: '二次創作物',parent_category_id: 10},
          {id: 116, name: 'その他',parent_category_id: 10},
          {id: 117, name: '音楽',parent_category_id: 11},
          {id: 118, name: 'スポーツ',parent_category_id: 11},
          {id: 119, name: '演劇/芸能',parent_category_id: 11},
          {id: 120, name: 'イベント',parent_category_id: 11},
          {id: 121, name: '映画',parent_category_id: 11},
          {id: 122, name: '施設利用券',parent_category_id: 11},
          {id: 123, name: '優待券/割引券',parent_category_id: 11},
          {id: 124, name: 'その他',parent_category_id: 11},
          {id: 125, name: '自動車本体',parent_category_id: 12},
          {id: 126, name: '自動車タイヤ/ホイール',parent_category_id: 12},
          {id: 127, name: '自動車パーツ',parent_category_id: 12},
          {id: 128, name: '自動車アクセサリー',parent_category_id: 12},
          {id: 129, name: 'オートバイ車体',parent_category_id: 12},
          {id: 130, name: 'オートバイパーツ',parent_category_id: 12},
          {id: 131, name: 'オートバイアクセサリー',parent_category_id: 12},
          {id: 132, name: '全て',parent_category_id: 13},
          {id: 133, name: 'まとめ売り',parent_category_id: 13},
          {id: 134, name: 'ペット用品',parent_category_id: 13},
          {id: 135, name: '食品',parent_category_id: 13},
          {id: 136, name: '飲料/酒',parent_category_id: 13},
          {id: 137, name: '日用品/生活雑貨/旅行',parent_category_id: 13},
          {id: 138, name: 'アンティーク/コレクション',parent_category_id: 13},
          {id: 139, name: '文房具/事務用品',parent_category_id: 13},
          {id: 140, name: '事務/店舗用品',parent_category_id: 13},
          {id: 141, name: 'その他',parent_category_id: 13},
          {id: 142, name: 'スーツ',parent_category_id: 2},
      ]

  def self.find(id)
    self.data[id]
  end

  def self.categories(parent_category_id)
    self.data.select{|category| category[:parent_category_id] == parent_category_id}
  end

  def self.categories_name(parent_category_id)
    self.categories(parent_category_id).map{|category| category[:name]}
  end

  

end