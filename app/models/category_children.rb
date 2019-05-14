class CategoryChildren < Category
  self.data = [
    {id: 0, name: '---'},
    {id: 1, name: 'Tシャツ/カットソー(半袖/袖なし)', category_id: 1,parent_category_id: 1},
    {id: 2, name: 'シャツ/ブラウス(七分/長袖)', category_id: 1,parent_category_id: 1},
    {id: 3, name: 'チュニック', category_id: 1,parent_category_id: 1},
    {id: 4, name: 'Tシャツ/カットソー(七分/長袖)', category_id: 1,parent_category_id: 1},
    {id: 5, name: 'シャツ/ブラウス(半袖/袖なし)', category_id: 1,parent_category_id: 1},
    {id: 6, name: 'カーディガン/ボレロ', category_id: 1,parent_category_id: 1},
    {id: 7, name: 'トレーナー/スウェット', category_id: 1,parent_category_id: 1},
    {id: 8, name: 'ニット/セーター', category_id: 1,parent_category_id: 1},
    {id: 9, name: 'キャミソール', category_id: 1,parent_category_id: 1},
    {id: 10, name: 'ミリタリージャケット', category_id: 2,parent_category_id: 1},
    {id: 11, name: 'ライダーズジャケット', category_id: 2,parent_category_id: 1},
    {id: 12, name: 'ジャンパー/ブルゾン', category_id: 2,parent_category_id: 1},
    {id: 13, name: 'ノーカラージャケット', category_id: 2,parent_category_id: 1},
    {id: 14, name: 'テーラージャケット', category_id: 2,parent_category_id: 1},
    {id: 15, name: 'モッズコート', category_id: 2,parent_category_id: 1},
    {id: 16, name: 'トレンチコート', category_id: 2,parent_category_id: 1},
    {id: 17, name: 'Gジャン/デニムジャケット', category_id: 2,parent_category_id: 1},
    {id: 18, name: 'チェスターコート', category_id: 2,parent_category_id: 1},
    {id: 19, name: 'カジュアルパンツ', category_id: 3,parent_category_id: 1},
    {id: 20, name: 'ガウチョパンツ', category_id: 3,parent_category_id: 1},
    {id: 21, name: 'オールインワン', category_id: 3,parent_category_id: 1},
    {id: 22, name: 'ショートパンツ', category_id: 3,parent_category_id: 1},
    {id: 23, name: 'デニム/ジーンズ', category_id: 3,parent_category_id: 1},
    {id: 24, name: 'サロペット/オーバーオール', category_id: 3,parent_category_id: 1},
    {id: 25, name: 'チノパン', category_id: 3,parent_category_id: 1},
    {id: 26, name: 'ハーフパンツ', category_id: 3,parent_category_id: 1},
    {id: 27, name: 'ロングスカート', category_id: 3,parent_category_id: 1},
    {id: 28, name: 'ひざ丈スカート', category_id: 4,parent_category_id: 1},
    {id: 29, name: 'ミニスカート', category_id: 4,parent_category_id: 1},
    {id: 30, name: 'キュロット', category_id: 4,parent_category_id: 1},
    {id: 31, name: 'その他', category_id: 4,parent_category_id: 1},
    {id: 32, name: 'ミニワンピース', category_id: 5,parent_category_id: 1},
    {id: 33, name: 'ひざ丈ワンピース', category_id: 5,parent_category_id: 1},
    {id: 34, name: 'ロングワンピース', category_id: 5,parent_category_id: 1},
    {id: 35, name: 'その他', category_id: 5,parent_category_id: 1},
    {id: 36, name: 'ハイヒール', category_id: 6,parent_category_id: 1},
    {id: 37, name: 'サンダル', category_id: 6,parent_category_id: 1},
    {id: 38, name: 'スニーカー', category_id: 6,parent_category_id: 1},
    {id: 39, name: 'ミュール', category_id: 6,parent_category_id: 1},
    {id: 40, name: 'モカシン', category_id: 6,parent_category_id: 1},
    {id: 41, name: 'ローファー/革靴', category_id: 6,parent_category_id: 1},
    {id: 42, name: 'フラットシューズ/バレエシューズ', category_id: 6,parent_category_id: 1},
    {id: 43, name: '長靴/レインシューズ', category_id: 6,parent_category_id: 1},
    {id: 44, name: 'その他', category_id: 6,parent_category_id: 1},
    {id: 45, name: 'パジャマ', category_id: 7,parent_category_id: 1},
    {id: 46, name: 'ルームウェア', category_id: 7,parent_category_id: 1},
    {id: 47, name: 'ソックス', category_id: 8,parent_category_id: 1},
    {id: 48, name: 'スパッツ/レギンス', category_id: 8,parent_category_id: 1},
    {id: 49, name: 'ストッキング/タイツ', category_id: 8,parent_category_id: 1},
    {id: 50, name: 'レッグウォーマー', category_id: 8,parent_category_id: 1},
    {id: 51, name: 'その他', category_id: 8,parent_category_id: 1},
    {id: 52, name: 'ニットキャップ', category_id: 9,parent_category_id: 1},
    {id: 53, name: 'ハット', category_id: 9,parent_category_id: 1},
    {id: 54, name: 'ハンチング/ベレー帽', category_id: 9,parent_category_id: 1},
    {id: 55, name: 'キャップ', category_id: 9,parent_category_id: 1},
    {id: 56, name: 'キャスケット', category_id: 9,parent_category_id: 1},
    {id: 57, name: '麦わら帽子', category_id: 9,parent_category_id: 1},
    {id: 58, name: 'ハンドバッグ', category_id: 10,parent_category_id: 1},
    {id: 59, name: 'トートバッグ', category_id: 10,parent_category_id: 1},
    {id: 60, name: 'エコバッグ', category_id: 10,parent_category_id: 1},
    {id: 61, name: 'リュック・バックパック', category_id: 10,parent_category_id: 1},
    {id: 62, name: 'ボストンバッグ', category_id: 10,parent_category_id: 1},
    {id: 63, name: 'スポーツバッグ', category_id: 10,parent_category_id: 1},
    {id: 64, name: 'ショルダーバッグ', category_id: 10,parent_category_id: 1},
    {id: 65, name: 'クラッチバッグ', category_id: 10,parent_category_id: 1},
    {id: 66, name: 'ポーチ/バニティ', category_id: 10,parent_category_id: 1},
    {id: 67, name: 'ボディバッグ/ウェストバッグ', category_id: 10,parent_category_id: 1},
    {id: 68, name: 'マザーズバッグ', category_id: 10,parent_category_id: 1},
    {id: 69, name: 'メッセンジャーバッグ', category_id: 10,parent_category_id: 1},
    {id: 70, name: 'ビジネスバッグ', category_id: 10,parent_category_id: 1},
    {id: 71, name: '旅行用バッグ/キャリーバッグ', category_id: 10,parent_category_id: 1},
    {id: 72, name: 'ネックレス', category_id: 11,parent_category_id: 1},
    {id: 73, name: 'ブレスレッド', category_id: 11,parent_category_id: 1},
    {id: 74, name: 'バングル/リストバンド', category_id: 11,parent_category_id: 1},
    {id: 75, name: 'リング', category_id: 11,parent_category_id: 1},
    {id: 76, name: 'ピアス(片耳用)', category_id: 11,parent_category_id: 1},
    {id: 77, name: 'ピアス(両耳用)', category_id: 11,parent_category_id: 1},
    {id: 78, name: 'イヤリング', category_id: 11,parent_category_id: 1},
    {id: 79, name: 'アンクレット', category_id: 11,parent_category_id: 1},
    {id: 80, name: 'ブローチ/コサージュ', category_id: 11,parent_category_id: 1},
    {id: 81, name: 'チャーム', category_id: 11,parent_category_id: 1},
    {id: 82, name: 'その他', category_id: 11,parent_category_id: 1},
    {id: 83, name: 'ヘアゴム/シュシュ', category_id: 12,parent_category_id: 1},
    {id: 84, name: 'ヘアゴム/カチューシャ', category_id: 12,parent_category_id: 1},
    {id: 85, name: 'ヘアピン', category_id: 12,parent_category_id: 1},
    {id: 86, name: 'その他', category_id: 12,parent_category_id: 1},
    {id: 87, name: '長財布', category_id: 13,parent_category_id: 1},
    {id: 88, name: '腕時計(アナログ)', category_id: 14,parent_category_id: 1},
    {id: 89, name: 'Tシャツ', category_id: 16,parent_category_id: 2},
    {id: 90, name: 'テーラージャケット', category_id: 17,parent_category_id: 2},
    {id: 91, name: 'デニム', category_id: 18,parent_category_id: 2},
    {id: 92, name: 'スニーカー', category_id: 19,parent_category_id: 2},
    {id: 93, name: 'ショルダーバッグ', category_id: 20,parent_category_id: 2},
    {id: 94, name: 'キャップ', category_id: 21,parent_category_id: 2},
    {id: 95, name: 'ネックレス', category_id: 22,parent_category_id: 2},
    {id: 96, name: '長財布', category_id: 23,parent_category_id: 2},
    {id: 97, name: '腕時計(アナログ)', category_id: 24,parent_category_id: 2},
    {id: 98, name: '一般水着', category_id: 25,parent_category_id: 2},
    {id: 99, name: 'ソックス', category_id: 26,parent_category_id: 2},
    {id: 100, name: 'トランクス', category_id: 27,parent_category_id: 2},
]
  def self.find(id)
    self.data[id]
  end

  def self.category_children(category_id)
    self.data.select{|category_children| category_children[:category_id] == category_id}
  end

  def self.category(category_children_id)
    category_id = self.find(category_children_id)[:category_id]
    Category.find(category_id)
  end

  def self.parent_category(category_children_id)
    parent_category_id = self.find(category_children_id)[:parent_category_id]
    ParentCategory.find(parent_category_id)
  end

  def self.categories_name(parent_category_id)
    self.categories(parent_category_id).map{|category| category[:name]}
  end

end
