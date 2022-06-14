require 'faker'


# table brands

brand_attributes = [{
                      title: 'Citizen', bytitle: 'citizen',
                      img: 'abt-2.jpg', description: Faker::Superhero.name
                    },
                    {
                      title: 'Casio', bytitle: 'casio', img: 'abt-1.jpg',
                      description: Faker::Superhero.name
                    },
                    {
                      title: 'Royal London', bytitle: 'royal-london',
                      img: 'abt-3.jpg', description: Faker::Superhero.name
                    }]

brand_attributes.each do |attr|
  Brand.create(attr) unless Brand.where(attr).first
end

# - - - - -

# table categories


women = Category.create(title: 'Women', bytitle: 'women', keywords: 'women', description: 'for women')
electronic2 = Category.create(title: 'Electronic', bytitle: 'electronic2', keywords: 'electronic', description: 'electronic', parent: women)
mechanical2 = Category.create(title: 'Mechanical', bytitle: 'mechanical2', keywords: 'mechanical', description: 'mechanical', parent: women)
casio = Category.create(title: 'Casio', bytitle: 'casio', keywords: 'casio', description: 'casio', parent: mechanical2)
citizen = Category.create(title: 'Citizen', bytitle: 'citizen', keywords: 'citizen', description: 'citizen', parent: electronic2)
royal = Category.create(title: 'Royal London', bytitle: 'royal-london', keywords: 'royal-london', description: 'royal-london', parent: electronic2)

men = Category.create(title: 'Men', bytitle: 'men', keywords: 'men', description: 'for men')
electronic1 = Category.create(title: 'Electronic', bytitle: 'electronic1', keywords: 'electronic', description: 'electronic', parent: men)
mechanical1 = Category.create(title: 'Mechanical', bytitle: 'mechanical1', keywords: 'mechanical', description: 'mechanical', parent: men)
casio = Category.create(title: 'Casio', bytitle: 'casio', keywords: 'casio', description: 'casio', parent: mechanical1)
citizen = Category.create(title: 'Citizen', bytitle: 'citizen', keywords: 'citizen', description: 'citizen', parent: electronic1)
royal = Category.create(title: 'Royal London', bytitle: 'royal-london', keywords: 'royal-london', description: 'royal-london', parent: electronic1)

kids = Category.create(title: 'Kids', bytitle: 'kids', keywords: 'kids', description: 'for kids')
electronic3 = Category.create(title: 'Electronic', bytitle: 'electronic3', keywords: 'electronic', description: 'electronic', parent: kids)
mechanical3 = Category.create(title: 'Mechanical', bytitle: 'mechanical3', keywords: 'mechanical', description: 'mechanical', parent: kids)
casio = Category.create(title: 'Casio', bytitle: 'casio', keywords: 'casio', description: 'casio', parent: mechanical3)
citizen = Category.create(title: 'Citizen', bytitle: 'citizen', keywords: 'citizen', description: 'citizen', parent: electronic3)
royal = Category.create(title: 'Royal London', bytitle: 'royal-london', keywords: 'royal-london', description: 'royal-london', parent: electronic3)
# - - - - - - - -

# table products
product_attributes = [
                      {
                        category_id: '4',
                        brand_id: '1',
                        title: 'Casio 1',
                        bytitle: 'casio-1',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-1.png',
                        hit: 1
                      },
                      {
                        category_id: '4',
                        brand_id: '1',
                        title: 'Casio 2',
                        bytitle: 'casio-2',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-2.png',
                        hit: 1
                      },
                      {
                        category_id: '4',
                        brand_id: '1',
                        title: 'Casio 3',
                        bytitle: 'casio-3',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-3.png',
                        hit: 1
                      },
                      {
                        category_id: '10',
                        brand_id: '1',
                        title: 'Casio 4',
                        bytitle: 'casio-4',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-4.png',
                        hit: 1
                      },
                      {
                        category_id: '10',
                        brand_id: '1',
                        title: 'Casio 5',
                        bytitle: 'casio-5',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-5.png',
                        hit: 1
                      },
                      {
                        category_id: '10',
                        brand_id: '1',
                        title: 'Casio 6',
                        bytitle: 'casio-6',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-6.png',
                        hit: 1
                      },
                      {
                        category_id: '16',
                        brand_id: '1',
                        title: 'Casio 7',
                        bytitle: 'casio-7',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-7.png',
                        hit: 1
                      },
                      {
                        category_id: '16',
                        brand_id: '1',
                        title: 'Casio 8',
                        bytitle: 'casio-8',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-8.png',
                        hit: 1
                      },
                      {
                        category_id: '16',
                        brand_id: '1',
                        title: 'Casio 9',
                        bytitle: 'casio-9',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-9.png',
                        hit: 1
                      },



                      {
                        category_id: '5',
                        brand_id: '2',
                        title: 'Citizen 1',
                        bytitle: 'citizen-1',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-10.png',
                        hit: 1
                      },
                      {
                        category_id: '5',
                        brand_id: '2',
                        title: 'Citizen 2',
                        bytitle: 'citizen-2',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-11.png',
                        hit: 1
                      },
                      {
                        category_id: '5',
                        brand_id: '2',
                        title: 'Citizen 3',
                        bytitle: 'citizen-3',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-12.png',
                        hit: 1
                      },
                      {
                        category_id: '11',
                        brand_id: '2',
                        title: 'Citizen 4',
                        bytitle: 'citizen-4',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-13.png',
                        hit: 1
                      },
                      {
                        category_id: '11',
                        brand_id: '2',
                        title: 'Citizen 5',
                        bytitle: 'citizen-5',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-1.png',
                        hit: 1
                      },
                      {
                        category_id: '11',
                        brand_id: '2',
                        title: 'Citizen 6',
                        bytitle: 'citizen-6',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-2.png',
                        hit: 1
                      },
                      {
                        category_id: '17',
                        brand_id: '2',
                        title: 'Citizen7',
                        bytitle: 'citizen-7',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-3.png',
                        hit: 1
                      },
                      {
                        category_id: '17',
                        brand_id: '2',
                        title: 'Citizen 8',
                        bytitle: 'citizen-8',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-4.png',
                        hit: 1
                      },
                      {
                        category_id: '17',
                        brand_id: '2',
                        title: 'Citizen 9',
                        bytitle: 'citizen-9',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-5.png',
                        hit: 1
                      },



                      {
                        category_id: '6',
                        brand_id: '4',
                        title: 'Royal London 1',
                        bytitle: 'royal-london-1',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-6.png',
                        hit: 1
                      },
                      {
                        category_id: '6',
                        brand_id: '4',
                        title: 'Royal London 2',
                        bytitle: 'royal-london-2',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-7.png',
                        hit: 1
                      },
                      {
                        category_id: '6',
                        brand_id: '4',
                        title: 'Royal London 3',
                        bytitle: 'royal-london-3',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-8.png',
                        hit: 1
                      },
                      {
                        category_id: '12',
                        brand_id: '4',
                        title: 'Royal London 4',
                        bytitle: 'royal-london-4',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-9.png',
                        hit: 1
                      },
                      {
                          category_id: '12',
                          brand_id: '4',
                          title: 'Royal London 5',
                          bytitle: 'royal-london-5',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-10.png',
                          hit: 1
                      },
                      {
                          category_id: '12',
                          brand_id: '4',
                          title: 'Royal London 6',
                          bytitle: 'royal-london-6',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-11.png',
                          hit: 1
                      },
                      {
                          category_id: '18',
                          brand_id: '4',
                          title: 'Royal London 7',
                          bytitle: 'royal-london-7',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-12.png',
                          hit: 1
                      },
                      {
                          category_id: '18',
                          brand_id: '4',
                          title: 'Royal London 8',
                          bytitle: 'royal-london-8',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-13.png',
                          hit: 1
                      },
                      {
                          category_id: '18',
                          brand_id: '4',
                          title: 'Royal London 9',
                          bytitle: 'royal-london-9',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-1.png',
                          hit: 1
                      },



                      {
                        category_id: '4',
                        brand_id: '1',
                        title: 'Casio 10',
                        bytitle: 'casio-10',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-1.png',
                        hit: 1
                      },
                      {
                        category_id: '4',
                        brand_id: '1',
                        title: 'Casio 11',
                        bytitle: 'casio-11',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-2.png',
                        hit: 1
                      },
                      {
                        category_id: '4',
                        brand_id: '1',
                        title: 'Casio 12',
                        bytitle: 'casio-12',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-3.png',
                        hit: 1
                      },
                      {
                        category_id: '10',
                        brand_id: '1',
                        title: 'Casio 13',
                        bytitle: 'casio-13',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-4.png',
                        hit: 1
                      },
                      {
                        category_id: '10',
                        brand_id: '1',
                        title: 'Casio 14',
                        bytitle: 'casio-14',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-5.png',
                        hit: 1
                      },
                      {
                        category_id: '10',
                        brand_id: '1',
                        title: 'Casio 15',
                        bytitle: 'casio-15',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-6.png',
                        hit: 1
                      },
                      
                      {
                        category_id: '16',
                        brand_id: '1',
                        title: 'Casio 16',
                        bytitle: 'casio-16',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-7.png',
                        hit: 1
                      },
                      {
                        category_id: '16',
                        brand_id: '1',
                        title: 'Casio 17',
                        bytitle: 'casio-17',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-8.png',
                        hit: 1
                      },
                      {
                        category_id: '16',
                        brand_id: '1',
                        title: 'Casio 18',
                        bytitle: 'casio-18',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-9.png',
                        hit: 1
                      },


                      {
                        category_id: '5',
                        brand_id: '2',
                        title: 'Citizen 10',
                        bytitle: 'citizen-10',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-10.png',
                        hit: 1
                      },
                      {
                        category_id: '5',
                        brand_id: '2',
                        title: 'Citizen 11',
                        bytitle: 'citizen-11',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-11.png',
                        hit: 1
                      },
                      {
                        category_id: '5',
                        brand_id: '2',
                        title: 'Citizen 12',
                        bytitle: 'citizen-12',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-12.png',
                        hit: 1
                      },
                      {
                        category_id: '11',
                        brand_id: '2',
                        title: 'Citizen 13',
                        bytitle: 'citizen-13',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-13.png',
                        hit: 1
                      },
                      {
                        category_id: '11',
                        brand_id: '2',
                        title: 'Citizen 14',
                        bytitle: 'citizen-14',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-1.png',
                        hit: 1
                      },
                      {
                        category_id: '11',
                        brand_id: '2',
                        title: 'Citizen 15',
                        bytitle: 'citizen-15',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-2.png',
                        hit: 1
                      },
                      {
                        category_id: '17',
                        brand_id: '2',
                        title: 'Citizen 16',
                        bytitle: 'citizen-16',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-3.png',
                        hit: 1
                      },
                      {
                        category_id: '17',
                        brand_id: '2',
                        title: 'Citizen 17',
                        bytitle: 'citizen-17',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-4.png',
                        hit: 1
                      },
                      {
                        category_id: '17',
                        brand_id: '2',
                        title: 'Citizen 18',
                        bytitle: 'citizen-18',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-5.png',
                        hit: 1
                      },



                      {
                        category_id: '6',
                        brand_id: '4',
                        title: 'Royal London 10',
                        bytitle: 'royal-london-10',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-6.png',
                        hit: 1
                      },
                      {
                        category_id: '6',
                        brand_id: '4',
                        title: 'Royal London 11',
                        bytitle: 'royal-london-11',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-7.png',
                        hit: 1
                      },
                      {
                        category_id: '6',
                        brand_id: '4',
                        title: 'Royal London 12',
                        bytitle: 'royal-london-12',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-8.png',
                        hit: 1
                      },
                      {
                        category_id: '12',
                        brand_id: '4',
                        title: 'Royal London 13',
                        bytitle: 'royal-london-13',
                        content: Faker::Lorem.sentence(word_count: 20),
                        price: Faker::Commerce.price,
                        old_price: Faker::Commerce.price,
                        status: 1,
                        keywords: 'keywords',
                        description: Faker::Lorem.sentence(word_count: 10),
                        img: 'p-9.png',
                        hit: 1
                      },
                      {
                          category_id: '12',
                          brand_id: '4',
                          title: 'Royal London 14',
                          bytitle: 'royal-london-14',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-10.png',
                          hit: 1
                      },
                      {
                          category_id: '12',
                          brand_id: '4',
                          title: 'Royal London 15',
                          bytitle: 'royal-london-15',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-11.png',
                          hit: 1
                      },
                      {
                          category_id: '18',
                          brand_id: '4',
                          title: 'Royal London 16',
                          bytitle: 'royal-london-16',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-12.png',
                          hit: 1
                      },
                      {
                          category_id: '18',
                          brand_id: '4',
                          title: 'Royal London 17',
                          bytitle: 'royal-london-17',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-13.png',
                          hit: 1
                      },
                      {
                          category_id: '18',
                          brand_id: '4',
                          title: 'Royal London 18',
                          bytitle: 'royal-london-18',
                          content: Faker::Lorem.sentence(word_count: 20),
                          price: Faker::Commerce.price,
                          old_price: Faker::Commerce.price,
                          status: 1,
                          keywords: 'keywords',
                          description: Faker::Lorem.sentence(word_count: 10),
                          img: 'p-1.png',
                          hit: 1
                      }
]

product_attributes.each do |attr|
  Product.create(attr) unless Product.where(attr).first
end

# - - - - -
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
