class Author
  attr_accessor :first_name, :last_name, :bio

  def initialize(hash)
    @first_name = hash[:first_name]
    @last_name  = hash[:last_name]
    @bio        = hash[:bio]
  end

  def self.all
    unless defined?(@@authors)
      @@authors = [
          Author.new(
            :first_name     => "Anthony",
            :last_name      => "Burgess",
            :bio            => "John Anthony Burgess Wilson, (25 February 1917 – 22 November 1993) – who published under the pen name Anthony Burgess – was an English writer and composer. From relatively modest beginnings in a Catholic family in Manchester, he eventually became one of the best known English literary figures of the latter half of the twentieth century. Although Burgess was predominantly a comic writer, his dystopian satire A Clockwork Orange remains his best known novel."
          ),

          # Author.create(
          #   :first_name     => "Anthony",
          #   :last_name      => "Burgess",
          #   :bio            => "John Anthony Burgess Wilson, (25 February 1917 – 22 November 1993) – who published under the pen name Anthony Burgess – was an English writer and composer. From relatively modest beginnings in a Catholic family in Manchester, he eventually became one of the best known English literary figures of the latter half of the twentieth century. Although Burgess was predominantly a comic writer, his dystopian satire A Clockwork Orange remains his best known novel."
          # )

          Author.new(
            :first_name     => "Ken",
            :last_name      => "Kesey",
            :bio            => "Kenneth Elton 'Ken' Kesey (September 17, 1935 – November 10, 2001) was an American author, best known for his novel One Flew Over the Cuckoo's Nest (1962)[1] and as a countercultural figure who considered himself a link between the Beat Generation of the 1950s and the hippies of the 1960s. 'I was too young to be a beatnik, and too old to be a hippie,'' Kesey said in a 1999 interview with Robert K. Elder."
          ),

          # Author.create(
          #   :first_name     => "Ken",
          #   :last_name      => "Kesey",
          #   :bio            => "Kenneth Elton 'Ken' Kesey (September 17, 1935 – November 10, 2001) was an American author, best known for his novel One Flew Over the Cuckoo's Nest (1962)[1] and as a countercultural figure who considered himself a link between the Beat Generation of the 1950s and the hippies of the 1960s. 'I was too young to be a beatnik, and too old to be a hippie,'' Kesey said in a 1999 interview with Robert K. Elder."
          # )

          Author.new(
            :first_name     => "Kurt",
            :last_name      => "Vonnegut",
            :bio            => "Kurt Vonnegut, Jr. (November 11, 1922 – April 11, 2007) was an American writer and humorist. In a career spanning over 50 years, Vonnegut published fourteen novels, three short story collections, five plays and five works of non-fiction. He is most famous for his darkly satirical, best-selling novel Slaughterhouse-Five, which tells of the life of Billy Pilgrim."
          ),

          # Author.create(
          #   :first_name     => "Kurt",
          #   :last_name      => "Vonnegut",
          #   :bio            => "Kurt Vonnegut, Jr. (November 11, 1922 – April 11, 2007) was an American writer and humorist. In a career spanning over 50 years, Vonnegut published fourteen novels, three short story collections, five plays and five works of non-fiction. He is most famous for his darkly satirical, best-selling novel Slaughterhouse-Five, which tells of the life of Billy Pilgrim."
          # )

          Author.new(
            :first_name     => "Ray",
            :last_name      => "Bradbury",
            :bio            => "Ray Douglas Bradbury (22 August 1920 – 5 June 2012) was an American fantasy, science fiction, horror and mystery fiction author. Best known for his dystopian novel Fahrenheit 451 (1953) and for the science fiction and horror stories gathered together as The Martian Chronicles (1950) and The Illustrated Man (1951), Bradbury was one of the most celebrated 20th- and 21st-century American genre writers. He wrote and consulted on many screenplays and television scripts, including Moby Dick and It Came from Outer Space. Many of his works have been adapted into comic books, television shows, and films."
          ),

          # Author.create(
          #   :first_name     => "Ray",
          #   :last_name      => "Bradbury",
          #   :bio            => "Ray Douglas Bradbury (22 August 1920 – 5 June 2012) was an American fantasy, science fiction, horror and mystery fiction author. Best known for his dystopian novel Fahrenheit 451 (1953) and for the science fiction and horror stories gathered together as The Martian Chronicles (1950) and The Illustrated Man (1951), Bradbury was one of the most celebrated 20th- and 21st-century American genre writers. He wrote and consulted on many screenplays and television scripts, including Moby Dick and It Came from Outer Space. Many of his works have been adapted into comic books, television shows, and films."
          # ),

          Author.new(
            :first_name     => "Doc",
            :last_name      => "Brown",
            :bio            => "Doc Brown is the creator and mastermind behind The Dead Writer's Delorean. While he does not write any articles, it is through his inventive genius that we are able to glean wisdom from our favorite authors post-mortem."
          )

          # Author.create(
          #   :first_name     => "Doc",
          #   :last_name      => "Brown",
          #   :bio            => "Doc Brown is the creator and mastermind behind The Dead Writer's Delorean. While he does not write any articles, it is through his inventive genius that we are able to glean wisdom from our favorite authors post-mortem."
          # )

      ]
    end
    @@authors
  end

  def self.find(last_name)
    all.select{|author| author.last_name == last_name}.first
  end

  def show_name
    "#{@first_name} #{@last_name}"
  end

end
