# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[
  ["Bounty", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593617-e1436264400991.jpg?quality=90&strip=all&zoom=1&resize=540%2C216"],
  ["Ripple", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593565-e1436269768128.jpg?quality=90&strip=all&zoom=1&resize=540%2C206"],
  ["Yorkie", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593552.jpg?quality=90&strip=all&zoom=1&resize=540%2C360"],
  ["Cadbury Caramel", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593546-e1436269621701.jpg?quality=90&strip=all&zoom=1&resize=540%2C152"],
  ["Wispa Gold", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174648235-e1436269512291.jpg?quality=90&strip=all&zoom=1&resize=540%2C262"],
  ["Wispa", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593605-e1436269331188.jpg?quality=90&strip=all&zoom=1&resize=540%2C149"],
  ["Aero", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593586.jpg?quality=90&strip=all&zoom=1&resize=540%2C219"],
  ["Daily Milk", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593540-e1436269356114.jpg?quality=90&strip=all&zoom=1&resize=540%2C268"],
  ["Toblerone", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593607-e1436269068347.jpg?quality=90&strip=all&zoom=1&resize=540%2C178"],
  ["Lion Bar", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174654600.jpg?quality=90&strip=all&zoom=1&resize=540%2C163"],
  ["Turkish Delight", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593596.jpg?quality=90&strip=all&zoom=1&resize=540%2C426"],
  ["Crunchie", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593560-e1436268761357.jpg?quality=90&strip=all&zoom=1&resize=540%2C129"],
  ["Twirl", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593589.jpg?quality=90&strip=all&zoom=1&resize=540%2C185"],
  ["Flake", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593599.jpg?quality=90&strip=all&zoom=1&resize=540%2C160"],
  ["Twix", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174654597.jpg?quality=90&strip=all&zoom=1&resize=540%2C178"],
  ["Caramac", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593590-e1436267177645.jpg?quality=90&strip=all&zoom=1&resize=540%2C179"],
  ["Mars", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174654589.jpg?quality=90&strip=all&zoom=1&resize=540%2C287"],
  ["Curly Wurly", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593588.jpg?quality=90&strip=all&zoom=1&resize=540%2C157"],
  ["Double Decker", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174654590.jpg?quality=90&strip=all&zoom=1&resize=540%2C360"],
  ["Milky Way", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593585-e1436266284467.jpg?quality=90&strip=all&zoom=1&resize=540%2C176"],
  ["Daim", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593602.jpg?quality=90&strip=all&zoom=1&resize=540%2C403"],
  ["Snickers", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593542-e1436264521786.jpg?quality=90&strip=all&zoom=1&resize=540%2C405"],
  ["Bournville", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174593584.jpg?quality=90&strip=all&zoom=1&resize=540%2C360"],
  ["Green & Blacks", "https://assets.sainsburys-groceries.co.uk/gol/2577678/1/640x640.jpg"],
  ["M&S Salted Butterscotch & Maple Syrup", "https://cdn.shopify.com/s/files/1/1825/9209/products/M_S_Milk_Chocolate_with_Salted_Butterscotch_Bar_32_Cocoa_Solids_100g_400x.jpg?v=1551448812"],
  ["Tony's Chocolonely", "https://assets.sainsburys-groceries.co.uk/gol/7959916/1/300x300.jpg"],
  ["Topic", "https://metro.co.uk/wp-content/uploads/2015/07/topic.png?quality=90&strip=all&zoom=1&resize=540%2C168"],
  ["Rocky", "https://digitalcontent.api.tesco.com/v2/media/ghs/c4c6b40e-2351-4beb-a0d8-679b059f2d3c/snapshotimagehandler_1612777193.jpeg?h=225&w=225"],
  ["Dream", "https://i2-prod.mirror.co.uk/incoming/article21967471.ece/ALTERNATES/s1200d/0_Dream.jpg"],
  ["Mars (deep fried)", "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/DeepFriedMarsBar.jpg/1024px-DeepFriedMarsBar.jpg"],
  ["KitKat Chunky", "https://metro.co.uk/wp-content/uploads/2015/07/ad_174648237-e1436268659680.jpg?quality=90&strip=all&zoom=1&resize=540%2C156"],
  ["Cadbury Aztec", "https://www.doyouremember.co.uk/uploads/tlyoHIBMeee-595x417-resize.jpg"],
  ["Freddo", "https://assets.sainsburys-groceries.co.uk/gol/7716115/1/640x640.jpg"]



].each do |name, image_url|
  c = Chocolate.find_or_initialize_by(name: name)
  c.image_url = image_url
  c.save!
end
