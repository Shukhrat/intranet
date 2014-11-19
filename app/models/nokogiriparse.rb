class Nokogiriparse

  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :region, type: String
  field :kuzov, type: String
  field :engine, type: String
  field :kpp, type: String
  field :probeg, type: String
  field :state, type: String
  field :rule, type: String
  field :privod, type: String
  field :color, type: String
  field :rastamozhen, type: Boolean, default: true
  field :description, type: String
  field :image, type: String 
  field :allcards, type: Array, default: []


  def parse(html)
    container = html.css(".description-body dl")
    pair = []
    titles = container.css("dt")
    values = container.css("dd")
    (0..titles.count).each { |i| pair << [titles[i] && titles[i].text, values[i] && values[i].text] }

    block = html.css(".configuration-name").text

    imgurl = html.css(".photo a img").attr("src")


    counter = html.css(".photo .small-thumb").count

    allimages = html.css(".photo .clearfix a.photo")

    photo = []

    (0..allimages.count-1).each { |i| photo << allimages[i].attr("href")}




    identify_text(block)

    identify_column(pair)

    identify_image(imgurl)

    identify_images(photo)

  end


  def identify_images(allimages)
    self.allcards = allimages
    self.save!
  end
  def identify_text(text)
    self.description = text
    self.save!
  end

  def identify_image(imgurl)
    self.image = imgurl
    self.save!
  end

  def identify_column(pair)
    map = {
      :region => "Регион",
      :kuzov => "Кузов",
      :engine => "Двигатель",
      :kpp => "КПП",
      :probeg => "Пробег",
      :state => "Состояние",
      :rule => "Руль",
      :privod => "Привод",
      :color => "Цвет",
      :rastomozhen => "Растаможен в Казахстане?"
    }

    pair.each do |i|
      title = i.first
      value = i.last

      res = map.select do |k, v|
       v == title
      end
    
      self[res.key(title)] = value
    end

    self.save!

  end
  def parse_text(text)
    
  end
end