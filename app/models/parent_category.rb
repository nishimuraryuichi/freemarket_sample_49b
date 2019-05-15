class ParentCategory < ActiveHash::Base

  self.data = [
      {id: 0, name: '---'},
      {id: 1, name: 'レディース'},
      {id: 2, name: 'メンズ'},
      {id: 3, name: 'ベビー・キッズ'},
      {id: 4, name: 'インテリア・住まい・小物'},
      {id: 5, name: '本・音楽・ゲーム'},
      {id: 6, name: 'おもちゃ・ホビーグッズ'},
      {id: 7, name: 'コスメ・香水・美容'},
      {id: 8, name: '家電・スマホ・カメラ'},
      {id: 9, name: 'スポーツ・レジャー'},
      {id: 10, name: 'ハンドメイド'},
      {id: 11, name: 'チケット'},
      {id: 12, name: '自動車・オートバイ'},
      {id: 13, name: 'その他'}
  ]

  def self.find(id)
    self.data[id]
  end

   def self.categories(parent_category_id)
     self.find(parent_category_id)[:category]
   end


end
