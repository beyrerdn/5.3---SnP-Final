class OldPost
  attr_accessor :id, :title, :body, :summary, :author, :created_at

  def initialize(hash)
    @id         = hash[:id]
    @title      = hash[:title]
    @body       = hash[:body]
    @summary    = hash[:summary]
    @author     = hash[:author]
    @created_at = hash[:created_at] || Time.now
  end

  def self.all
    unless defined?(@@posts)
      @@posts = [
          Post.new(
            :id         => 1,
            :title      => "Art is dangerous. It is one of the attractions: when it ceases to be dangerous you don't want it.",
            :body       => "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men. Blessed is he who, in the name of charity and good will, shepherds the weak through the valley of darkness, for he is truly his brother's keeper and the finder of lost children. And I will strike down upon thee with great vengeance and furious anger those who would attempt to poison and destroy My brothers. And you will know My name is the Lord when I lay My vengeance upon thee.
Well, the way they make shows is, they make one show. That show's called a pilot. Then they show that show to the people who make shows, and on the strength of that one show they decide if they're going to make more shows. Some pilots get picked and become television programs. Some don't, become nothing. She starred in one of the ones that became nothing.",
            :summary    => "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men.",
            :author     => Author.find("Burgess"),
            # Author.all[0].posts
            :created_at => (1..10).to_a.sample.months.ago
          ),
          Post.new(
            :id         => 2,
            :title      => "But it's the truth even if it didn't happen.",
            :body       => "Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.
Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini.
Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
            :summary    => "Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic",
            :author     => Author.find("Kesey"),
            # Author.all[1].posts
            :created_at => (1..10).to_a.sample.months.ago
          ),

#           Post.create(:title => "But it's the truth even if it didn't happen.", :body => "Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic.
# Gumbo beet greens corn soko endive gumbo gourd. Parsley shallot courgette tatsoi pea sprouts fava bean collard greens dandelion okra wakame tomato. Dandelion cucumber earthnut pea peanut soko zucchini.
# Turnip greens yarrow ricebean rutabaga endive cauliflower sea lettuce kohlrabi amaranth water spinach avocado daikon napa cabbage asparagus winter purslane kale. Celery potato scallion desert raisin horseradish spinach carrot soko. Lotus root water spinach fennel kombu maize bamboo shoot green bean swiss chard seakale pumpkin onion chickpea gram corn pea. Brussels sprout coriander water chestnut gourd swiss chard wakame kohlrabi beetroot carrot watercress. Corn amaranth salsify bunya nuts nori azuki bean chickweed potato bell pepper artichoke.",
# :summary => "Veggies es bonus vobis, proinde vos postulo essum magis kohlrabi welsh onion daikon amaranth tatsoi tomatillo melon azuki bean garlic" )

          Post.new(
            :id         => 3,
            :title      => "Everything was beautiful and nothing hurt.",
            :body       => "Cold-pressed Banksy pour-over plaid, blog chia butcher ethical sartorial mumblecore hella 8-bit. Fashion axe brunch Odd Future, heirloom post-ironic letterpress direct trade Wes Anderson next level squid tattooed. Mustache vegan biodiesel, disrupt distillery Helvetica try-hard brunch small batch Blue Bottle readymade stumptown. Banjo heirloom lumbersexual keytar. Meggings before they sold out bitters Banksy. Post-ironic before they sold out master cleanse Pinterest roof party Pitchfork fashion axe, umami Portland letterpress cardigan. Mumblecore lomo scenester, 90's cred 8-bit vinyl tattooed High Life.
Disrupt swag slow-carb, chia Tumblr Echo Park salvia viral mustache. Marfa 8-bit Brooklyn sustainable, cliche iPhone messenger bag paleo. Asymmetrical iPhone flexitarian try-hard Blue Bottle Neutra. Roof party flexitarian Pinterest flannel ethical meditation banjo fap, McSweeney's four loko tofu. Authentic raw denim Shoreditch chambray small batch lumbersexual +1 selfies before they sold out, Bushwick health goth. Post-ironic irony Truffaut sriracha authentic, Austin roof party seitan McSweeney's scenester. Wayfarers cold-pressed shabby chic, letterpress umami heirloom American Apparel whatever listicle hella asymmetrical vinyl readymade vegan gentrify.",
            :summary    => "Cold-pressed Banksy pour-over plaid, blog chia butcher ethical sartorial mumblecore hella 8-bit.",
            :author     => Author.find("Vonnegut"),
            # Author.all[2].posts
            :created_at => (1..10).to_a.sample.months.ago
          ),

#           Post.create(:title => "Everything was beautiful and nothing hurt.", :body => "Cold-pressed Banksy pour-over plaid, blog chia butcher ethical sartorial mumblecore hella 8-bit. Fashion axe brunch Odd Future, heirloom post-ironic letterpress direct trade Wes Anderson next level squid tattooed. Mustache vegan biodiesel, disrupt distillery Helvetica try-hard brunch small batch Blue Bottle readymade stumptown. Banjo heirloom lumbersexual keytar. Meggings before they sold out bitters Banksy. Post-ironic before they sold out master cleanse Pinterest roof party Pitchfork fashion axe, umami Portland letterpress cardigan. Mumblecore lomo scenester, 90's cred 8-bit vinyl tattooed High Life.
# Disrupt swag slow-carb, chia Tumblr Echo Park salvia viral mustache. Marfa 8-bit Brooklyn sustainable, cliche iPhone messenger bag paleo. Asymmetrical iPhone flexitarian try-hard Blue Bottle Neutra. Roof party flexitarian Pinterest flannel ethical meditation banjo fap, McSweeney's four loko tofu. Authentic raw denim Shoreditch chambray small batch lumbersexual +1 selfies before they sold out, Bushwick health goth. Post-ironic irony Truffaut sriracha authentic, Austin roof party seitan McSweeney's scenester. Wayfarers cold-pressed shabby chic, letterpress umami heirloom American Apparel whatever listicle hella asymmetrical vinyl readymade vegan gentrify.",
# :summary => "Cold-pressed Banksy pour-over plaid, blog chia butcher ethical sartorial mumblecore hella 8-bit.")

          Post.new(
            :id         => 4,
            :title      => "Life is trying things to see if they work.",
            :body       => "Cupcake ipsum dolor sit amet chocolate bar cookie pudding sweet roll. Carrot cake tiramisu marshmallow pudding topping. Chupa chups cupcake candy powder chocolate bar. Carrot cake sesame snaps wafer ice cream. Jelly-o donut tiramisu halvah chocolate cake pastry chocolate. Jujubes cookie jelly carrot cake gingerbread sweet roll bonbon chocolate cake cake.
Halvah chupa chups pastry. Icing cheesecake marshmallow apple pie carrot cake sweet chocolate gingerbread caramels. Cake lollipop marzipan cake carrot cake. Cotton candy cotton candy pudding halvah marshmallow. Brownie sesame snaps pudding dragée tootsie roll cotton candy muffin candy. Brownie sugar plum jelly beans cheesecake.",
            :summary    => "Cupcake ipsum dolor sit amet chocolate bar cookie pudding sweet roll.",
            :author     => Author.find("Bradbury"),
            # Author.all[3].posts
            :created_at => (1..10).to_a.sample.months.ago
          ),

#           Post.create(:title => "Life is trying things to see if they work.", :body => "Cupcake ipsum dolor sit amet chocolate bar cookie pudding sweet roll. Carrot cake tiramisu marshmallow pudding topping. Chupa chups cupcake candy powder chocolate bar. Carrot cake sesame snaps wafer ice cream. Jelly-o donut tiramisu halvah chocolate cake pastry chocolate. Jujubes cookie jelly carrot cake gingerbread sweet roll bonbon chocolate cake cake.
# Halvah chupa chups pastry. Icing cheesecake marshmallow apple pie carrot cake sweet chocolate gingerbread caramels. Cake lollipop marzipan cake carrot cake. Cotton candy cotton candy pudding halvah marshmallow. Brownie sesame snaps pudding dragée tootsie roll cotton candy muffin candy. Brownie sugar plum jelly beans cheesecake.",
# :summary => "Cupcake ipsum dolor sit amet chocolate bar cookie pudding sweet roll.")
#
          Post.new(
            :id         => 5,
            :title      => "Evil has to exist along with good, in order that moral choice may operate.",
            :body       => "Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb.
You see? It's curious. Ted did figure it out - time travel. And when we get back, we gonna tell everyone. How it's possible, how it's done, what the dangers are. But then why fifty years in the future when the spacecraft encounters a black hole does the computer call it an 'unknown entry event'? Why don't they know? If they don't know, that means we never told anyone. And if we never told anyone it means we never made it back. Hence we die down here. Just as a matter of deductive logic.",
            :summary    => "Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it?",
            :author     => Author.find("Burgess"),
            # Author.all[0].posts << Post.all[4]
            :created_at => (1..10).to_a.sample.months.ago
          ),

#           Post.create(:title => "Evil has to exist along with good, in order that moral choice may operate.", :body => "Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb.
# You see? It's curious. Ted did figure it out - time travel. And when we get back, we gonna tell everyone. How it's possible, how it's done, what the dangers are. But then why fifty years in the future when the spacecraft encounters a black hole does the computer call it an 'unknown entry event'? Why don't they know? If they don't know, that means we never told anyone. And if we never told anyone it means we never made it back. Hence we die down here. Just as a matter of deductive logic.",
# :summary => "Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it?")

          Post.new(
            :id         => 6,
            :title      => "Man, when you lose your laugh you lose your footing.",
            :body       => "Celery quandong swiss chard chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard greens nori. Grape wattle seed kombu beetroot horseradish carrot squash brussels sprout chard.
Pea horseradish azuki bean lettuce avocado asparagus okra. Kohlrabi radish okra azuki bean corn fava bean mustard tigernut jÃ­cama green bean celtuce collard greens avocado quandong fennel gumbo black-eyed pea. Grape silver beet watercress potato tigernut corn groundnut. Chickweed okra pea winter purslane coriander yarrow sweet pepper radish garlic brussels sprout groundnut summer purslane earthnut pea tomato spring onion azuki bean gourd. Gumbo kakadu plum komatsuna black-eyed pea green bean zucchini gourd winter purslane silver beet rock melon radish asparagus spinach.",
            :summary    => "Celery quandong swiss chard chicory earthnut pea potato.",
            :author     => Author.find("Kesey"),
            # Author.all[1].posts << Post.all[5]
            :created_at => (1..10).to_a.sample.months.ago
          ),

#           Post.create(:title => "Man, when you lose your laugh you lose your footing.", :body => "Celery quandong swiss chard chicory earthnut pea potato. Salsify taro catsear garlic gram celery bitterleaf wattle seed collard greens nori. Grape wattle seed kombu beetroot horseradish carrot squash brussels sprout chard.
# Pea horseradish azuki bean lettuce avocado asparagus okra. Kohlrabi radish okra azuki bean corn fava bean mustard tigernut jÃ­cama green bean celtuce collard greens avocado quandong fennel gumbo black-eyed pea. Grape silver beet watercress potato tigernut corn groundnut. Chickweed okra pea winter purslane coriander yarrow sweet pepper radish garlic brussels sprout groundnut summer purslane earthnut pea tomato spring onion azuki bean gourd. Gumbo kakadu plum komatsuna black-eyed pea green bean zucchini gourd winter purslane silver beet rock melon radish asparagus spinach.",
# :summary => "Celery quandong swiss chard chicory earthnut pea potato.")
#
          Post.new(
            :id         => 7,
            :title      => "Just because some of us can read and write and do a little math, that doesn't mean we deserve to conquer the Universe.",
            :body       => "Artisan bicycle rights meh gentrify leggings, biodiesel Austin vegan. Swag chambray health goth Godard dreamcatcher, wayfarers cornhole four dollar toast whatever Echo Park mlkshk kale chips narwhal stumptown. Banjo ethical sriracha heirloom, ennui fap tote bag slow-carb Echo Park gluten-free church-key Brooklyn kogi actually. Food truck mumblecore sartorial flannel farm-to-table chambray. Food truck before they sold out master cleanse deep v tattooed chambray gluten-free. Crucifix four dollar toast post-ironic YOLO, PBR&B photo booth Austin mumblecore before they sold out pug cray bespoke +1. Readymade fashion axe Tumblr, keffiyeh cray banh mi jean shorts pop-up.
Mlkshk 90's selfies stumptown. Umami biodiesel stumptown farm-to-table, narwhal blog typewriter. IPhone master cleanse Kickstarter, banjo try-hard sartorial disrupt single-origin coffee pour-over salvia tofu. Gastropub dreamcatcher sustainable, deep v Pinterest listicle literally Banksy you probably haven't heard of them biodiesel tilde put a bird on it occupy. Tumblr whatever actually ennui. Church-key Intelligentsia Banksy umami forage, Echo Park wayfarers keytar. IPhone gastropub street art, Truffaut cronut artisan flannel leggings distillery vinyl +1.",
            :summary    => "Artisan bicycle rights meh gentrify leggings, biodiesel Austin vegan.",
            :author     => Author.find("Vonnegut"),
            # Author.all[2].posts << Post.all[6]
            :created_at => (1..10).to_a.sample.months.ago
          ),

#           Post.create(:title => "Just because some of us can read and write and do a little math, that doesn't mean we deserve to conquer the Universe.", :body => "Artisan bicycle rights meh gentrify leggings, biodiesel Austin vegan. Swag chambray health goth Godard dreamcatcher, wayfarers cornhole four dollar toast whatever Echo Park mlkshk kale chips narwhal stumptown. Banjo ethical sriracha heirloom, ennui fap tote bag slow-carb Echo Park gluten-free church-key Brooklyn kogi actually. Food truck mumblecore sartorial flannel farm-to-table chambray. Food truck before they sold out master cleanse deep v tattooed chambray gluten-free. Crucifix four dollar toast post-ironic YOLO, PBR&B photo booth Austin mumblecore before they sold out pug cray bespoke +1. Readymade fashion axe Tumblr, keffiyeh cray banh mi jean shorts pop-up.
# Mlkshk 90's selfies stumptown. Umami biodiesel stumptown farm-to-table, narwhal blog typewriter. IPhone master cleanse Kickstarter, banjo try-hard sartorial disrupt single-origin coffee pour-over salvia tofu. Gastropub dreamcatcher sustainable, deep v Pinterest listicle literally Banksy you probably haven't heard of them biodiesel tilde put a bird on it occupy. Tumblr whatever actually ennui. Church-key Intelligentsia Banksy umami forage, Echo Park wayfarers keytar. IPhone gastropub street art, Truffaut cronut artisan flannel leggings distillery vinyl +1.",
# :summary => "Artisan bicycle rights meh gentrify leggings, biodiesel Austin vegan.")

          Post.new(
            :id         => 8,
            :title      => "Every morning I jump out of bed and step on a landmine. The landmine is me.",
            :body       => "Dessert chocolate pie. Powder candy canes cheesecake tiramisu chocolate powder gummi bears halvah. Sugar plum cake croissant sugar plum. Chocolate cake dessert tiramisu liquorice. Tart marshmallow cake cotton candy liquorice dragée. Jelly beans marshmallow lemon drops halvah sweet.
Halvah marzipan bonbon marshmallow powder sweet roll ice cream. Chupa chups candy fruitcake jelly chocolate. Pudding gummies cheesecake jelly-o cotton candy pie wafer pie caramels. Cake caramels marshmallow biscuit bonbon lollipop cheesecake cake jujubes. Fruitcake pie gingerbread tart lemon drops candy cupcake. Jelly apple pie candy donut apple pie pie cupcake sweet jelly beans. Icing cake muffin sweet bonbon. Candy icing macaroon.",
            :summary    => "Dessert chocolate pie. Powder candy canes cheesecake tiramisu chocolate powder gummi bears halvah.",
            :author     => Author.find("Bradbury"),
            # Author.all[3].posts << Post.all[7]
            :created_at => (1..10).to_a.sample.months.ago
          )
      ].sort_by{|post| post.created_at}.reverse!

#       Post.create(:title => "Every morning I jump out of bed and step on a landmine. The landmine is me.",:body => "Dessert chocolate pie. Powder candy canes cheesecake tiramisu chocolate powder gummi bears halvah. Sugar plum cake croissant sugar plum. Chocolate cake dessert tiramisu liquorice. Tart marshmallow cake cotton candy liquorice dragée. Jelly beans marshmallow lemon drops halvah sweet.
# Halvah marzipan bonbon marshmallow powder sweet roll ice cream. Chupa chups candy fruitcake jelly chocolate. Pudding gummies cheesecake jelly-o cotton candy pie wafer pie caramels. Cake caramels marshmallow biscuit bonbon lollipop cheesecake cake jujubes. Fruitcake pie gingerbread tart lemon drops candy cupcake. Jelly apple pie candy donut apple pie pie cupcake sweet jelly beans. Icing cake muffin sweet bonbon. Candy icing macaroon.",
# :summary => "Dessert chocolate pie. Powder candy canes cheesecake tiramisu chocolate powder gummi bears halvah.")

    end
    @@posts
  end

  def self.find(id)
    all.select{|post| post.id == id}.first
  end

  def self.posts_by_author(author_last_name)
    all.select{|post| post.author.last_name == author_last_name}.sort_by{|post| post.created_at}
  end

end

# @body = "Aenean quis vitae aliquet at sapien auctor nam molestie lacus vulputate ullamcorper fusce dis gravida taciti hac amet nascetur venenatis lobortis. Dictum mattis purus pulvinar cum cursus eros leo primis facilisi a suspendisse non pulvinar in parturient cubilia ad quis parturient nostra integer sem volutpat ligula justo turpis ut. Dolor ultricies suspendisse nisi phasellus consequat suspendisse iaculis ullamcorper lorem scelerisque facilisi dapibus bibendum dictum nunc curabitur mattis nostra parturient senectus inceptos adipiscing cubilia rhoncus.
#
# Natoque praesent a elit purus urna magnis consectetur per interdum molestie primis vehicula justo suspendisse eleifend a primis laoreet at. Lacus eros ipsum adipiscing ut taciti sodales elementum aenean in in velit non suscipit quam aliquet suspendisse adipiscing ullamcorper ad posuere purus litora a tortor lacus. Donec laoreet pharetra at et enim ullamcorper lacinia parturient condimentum vestibulum tincidunt condimentum dui vivamus aenean suscipit proin a leo vestibulum. Adipiscing ullamcorper eu fringilla amet vestibulum suspendisse mus in habitant dignissim curabitur imperdiet ut non ut sit parturient tristique porttitor ullamcorper sociis lectus volutpat vehicula id consectetur massa. Volutpat mattis hac scelerisque ac erat consectetur urna augue sagittis nunc senectus at semper ultricies suscipit vestibulum aliquam eros fusce nostra ultricies commodo eu placerat. Turpis consequat rutrum ut venenatis ut vestibulum id condimentum facilisis egestas egestas nibh maecenas metus nascetur parturient.
#
# Parturient habitant a molestie varius a a odio sagittis mi a mi nibh scelerisque lobortis suspendisse. Ultrices dignissim molestie dui vivamus suspendisse vestibulum convallis per a vestibulum gravida adipiscing ullamcorper tempus odio aliquam condimentum parturient quam condimentum ipsum cum scelerisque tincidunt. Scelerisque parturient leo mi netus suspendisse integer massa bibendum congue consectetur natoque pulvinar cum habitasse in dignissim proin tempor nisl dolor a condimentum ut auctor. Pharetra suscipit cubilia accumsan montes malesuada vulputate suscipit adipiscing nisl phasellus habitant scelerisque a ut nostra a nullam senectus a cursus blandit orci ac a ut hac donec hendrerit.
#
# Maecenas donec mi parturient vehicula lorem eu parturient a condimentum donec condimentum ac dui ante ridiculus facilisi suspendisse. Metus porttitor per tempor lobortis praesent ullamcorper cum nisi posuere condimentum porttitor diam laoreet parturient vestibulum dictum sem a sem leo aliquet. Ac consectetur ullamcorper ac semper parturient duis bibendum ultrices cras enim imperdiet praesent vestibulum nunc vulputate condimentum vestibulum scelerisque a sociosqu ut cras arcu sit sociis iaculis parturient. Class sed felis convallis dapibus blandit mauris parturient dignissim felis vestibulum vel ullamcorper parturient suscipit hendrerit habitasse a malesuada adipiscing nisi vestibulum magnis. At a iaculis vestibulum in justo sed sociosqu ad arcu duis adipiscing parturient a a vestibulum."
