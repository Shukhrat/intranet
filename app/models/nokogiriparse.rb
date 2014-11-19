class Nokogiriparse

  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :region, type: String
  field :kuzov, type: String
  field :engine, type: Integer
  field :kpp, type: String
  field :probeg, type: String
  field :state, type: String
  field :rule, type: String
  field :privod, type: String
  field :color, type: String
  field :rastamozhen, type: Boolean, default: true


  def parse(html)
    container = html.css(".description-body dl")
    pair = []
    titles = container.css("dt")
    values = container.css("dd")
    (0..titles.count).each { |i| pair << [titles[i] && titles[i].text, values[i] && values[i].text] }

    identify_column(pair)
  end

  def identify_text
    
  end

  def identify_image
    
  end
  
  def identify_column(pair)
    map = {
      :region => "Регион",
      :kuzov => "Кузов",
      :engine => "Двигатель"
    }

    pair.each do |i|
      title = i.first
      value = i.last

      #res = map.select do |k, v|
       # v == title
      #end
    
      self[res.key(title)] = value
    end

    self.save!

    raise
  end
  def parse_text(text)
    
  end
end