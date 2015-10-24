require './config/environment'

# First User
User.create(first_name: 'Nicki', last_name: 'Minaj', email: 'nicki@google.com', password: 'password', picture_url: 'http://i.imgur.com/cs4CE4S.jpg', address:'568 Beatty St, Vancouver, BC V6B 2L3')

# Second User
User.create(first_name: 'Nick', last_name: 'Jonas', email: 'jonas@google.com', password: 'password', picture_url: 'http://i.imgur.com/OAnfgJU.jpg', address: '1095 Hamilton St, Vancouver, BC V6B 5T4')

# Third User
User.create(first_name: 'Albert', last_name: 'Einstein', email: 'einstein@google.com', password: 'password', picture_url: 'http://i.imgur.com/t3XvDKM.jpg', address: '780 Richards St, Vancouver, BC V6B 3A4')

# Fourth User
User.create(first_name: 'Barack', last_name: 'Obama', email: 'obama@google.com', password: 'password', picture_url: 'http://i.imgur.com/zHOf0m4.jpg', address: '200 Granville St, Vancouver, BC V6C 1S4')

# Fifth User
User.create(first_name: 'Johnny', last_name: 'Depp', email: 'johnnydepp@google.com', password: 'password', picture_url: 'http://i.imgur.com/cn3Un8c.jpg', address: '45 Blood Alley Square, Vancouver, BC V6B 1C7')

# Sixth User
User.create(first_name: 'Justin', last_name: 'Beiber', email: 'justin@google.com', password: 'password', picture_url: 'http://i.imgur.com/m83NUbx.jpg', address: '217 Carrall St, Vancouver, BC V6B 2J2')

# Seventh User
User.create(first_name: 'Steve', last_name: 'Jobs', email: 'stevejobs@google.com', password: 'password', picture_url: 'http://i.imgur.com/ZS4sZZl.jpg', address: '777 Thurlow St, Vancouver, BC V6E 3V5')

# Eighth User
User.create(first_name: 'Stephen', last_name: 'Hawking', email: 'hawking@google.com', password: 'password', picture_url: 'http://i.imgur.com/Os95cm5.jpg', address: '1177 Marinaside Crescent, Vancouver, BC V6Z 2Y3')

# Ninth User
User.create(first_name: 'David', last_name: 'Hasselhoff', email: 'david@google.com', password: 'password', picture_url: 'http://i.imgur.com/E7WC6Uq.jpg', address: '555 W Hastings St, Vancouver, BC V6B 4N6')

# Tenth User
User.create(first_name: 'Snoop', last_name: 'Dogg', email: 'snoopy@google.com', password: 'password', picture_url: 'http://i.imgur.com/5T3W7Wz.jpg', address: '2881 Granville St, Vancouver, BC V6H 3J4') 

# Books for first user

User.first.books.create(
  title: 'Crazy Sexy Juice: 100+ Simple Juice, Smoothie & Nut Milk Recipes to Supercharge Your Health',
  author: 'Kris Carr',
  description: 'Kris Carr is a multi-week New York Times best-selling author and health advocate. She is the subject and director of the documentary Crazy Sexy Cancer, which aired on TLC and OWN: The Oprah Winfrey Network. Kris is also the author of the groundbreaking Crazy Sexy Cancer book series. Her third book, Crazy Sexy Diet, is a wellness game plan for peak health, spiritual wealth, and happiness. Kris regularly lectures at medical schools, hospitals, corporations such as Whole Foods, and HarvardUniversity. She is a contributing editor for Natural Health magazine and writes for many online publications.',
  isbn: '9781401941529', 
  picture_url: 'http://i.imgur.com/2yaTIE1.jpg'
  )

User.first.books.create(
  title: 'Ender\'s Game',
  author: 'Orson Scott',
  description: "The International Bestseller THE HUGO AND NEBULA AWARD WINNING NOVEL Orson Scott Card\'s beloved classic Ender\'s Game is now a major motion picture. Andrew \"Ender\" Wiggin thinks he is playing computer simulated war games; he is, in fact, engaged in something far more desperate. Ender may be the military genius Earth desperately needs in a war against an alien enemy seeking to destroy all human life. The only way to find out is to throw Ender into ever harsher training, to chip away and find the diamond inside, or destroy him utterly. Ender Wiggin is six years old when it begins. He will grow up fast. \"Orson Scott Card makes a strong case for being the best writer science fiction has to offer.\" --The Houston Post This movie tie-in edition features cover art from the Summit Entertainment film starring Harrison Ford, Ben Kingsley, and Asa Butterfield as Ender Wiggin",
  isbn: '9780312853235',
  picture_url: 'http://i.imgur.com/IG9SMcF.jpg'
  )

User.first.books.create(
  title: 'Magnus Chase and the Gods of Asgard',
  author: 'Rick Riordan',
  description: 'Rick Riordan (www.rickriordan.com) is the author of three # 1 New York Times best-selling series with millions of copies sold throughout the world: Percy Jackson and the Olympians, the Kane Chronicles, and the Heroes of Olympus. His Greek myth collection, Percy Jacksons Greek Gods, was a #1 New York Times bestseller as well. His previous novels for adults include the hugely popular Tres Navarre series, winner of the top three awards in the mystery genre. He lives in Boston, Massachusetts with his wife and two sons.',
  isbn: '1423160916',
  picture_url: 'http://i.imgur.com/3IMmjjM.jpg'
  )

# Books for second user

User.second.books.create(
  title: 'This Book Loves You',
  author: ' PewDiePie',
  description: 'This Book Loves You is a collection of beautifully illustrated inspirational sayings written by PewDiePie, the most subscribed YouTuber in the world with 39 million fans and more than 10 billion views. In This Book Loves You, PewDiePie delivers advice and wisdom that everyone can use--or at least everyone willing to give up and stop caring. If all else fails, remember: "Don’t be yourself. Be a pizza. Everyone loves pizza."',
  isbn: '1101999047',
  picture_url: 'http://i.imgur.com/7FC6zly.jpg'
  )

User.second.books.create(
  title: 'The Neverending Story',
  author: 'Ende Michael',
  description: 'A young boy starts reading an amazing fantasy story, only to discover that he is part of the plot! An incredible, mystical classic.',
  isbn: '9780140074314',
  picture_url: 'http://i.imgur.com/w9dpuBH.jpg '
  )

User.second.books.create(
  title: 'Furiously Happy: A Funny Book About Horrible Things',
  author: 'Jenny Lawson',
  description: 'In Furiously Happy, #1 New York Times bestselling author Jenny Lawson explores her lifelong battle with mental illness. A hysterical, ridiculous book about crippling depression and anxiety? That sounds like a terrible idea. But terrible ideas are what Jenny does best.',
  isbn: '9781250077001',
  picture_url: 'http://i.imgur.com/f8xHUNf.jpg'
  )


# Books for third user

User.third.books.create(
  title: 'The Subtle Knife',
  author: 'Pullman Philip',
  description: 'As the boundaries between worlds begin to dissolve, Lyra and her daemon help Will Parry in his search for his father and for a powerful, magical knife.',
  isbn: '9780440238145',
  picture_url: 'http://i.imgur.com/YkmYyvx.jpg'
  )

User.third.books.create(
  title: 'Breaking Away: A Harrowing True Story of Resilience, Courage, and Triumph',
  author: 'Patrick O\'Sullivan',
  description: 'Patrick O\'Sullivan was a kid with skills, with natural gifts that catapulted him into the spotlight and made NHL scouts rave. O\’Sullivan seemed destined to become one of the next great hockey players in the world. But then it all went horribly wrong.',
  isbn: '9781443444669',
  picture_url: 'http://i.imgur.com/fhujD6O.jpg'
  )

User.third.books.create(
  title: 'A Knight of the Seven Kingdoms',
  author: 'George R. R. Martin',
  description: 'Taking place nearly a century before the events of A Game of Thrones, A Knight of the Seven Kingdoms compiles the first three official prequel novellas to George R. R. Martin’s ongoing masterwork, A Song of Ice and Fire. These never-before-collected adventures recount an age when the Targaryen line still holds the Iron Throne, and the memory of the last dragon has not yet passed from living consciousness.',
  isbn: '9780345533488',
  picture_url: 'http://i.imgur.com/Nkt6Q76.jpg'
  )


# Books for fourth user

User.fourth.books.create(
  title: 'The Hobbit - A Journey Into Maturity',
  author: 'Green, William H.',
  description: 'This fantasy favourite of children and adolescents has neither children, nor women as main characters. Nevertheless, William Green\'s discussion reveals the sexual symbolism and gender relations in the story of Bilbo Baggins, the homebody hobbit who goes adventuring in spite of himself. By showing us that it is really the story of an adolescent\'s journey into maturity, Green explains why the book became a cult classic in the 1960s. By examining Tolkien\'s spatial imagery he demonstrates the depth of this literary work, identifying it as more than just a prequel to The Lord of the Rings.',
  isbn: '9780805788069',
  picture_url: 'http://i.imgur.com/4gOaYxC.jpg'
  )

User.fourth.books.create(
  title: 'Diary of a Wimpy Kid',
  author: 'Jeff Kinney',
  description: 'Jeff Kinney is a #1 New York Times bestselling author and five-time Nickelodeon Kids’ Choice Award winner for Favorite Book. Jeff has been named one of Time magazine’s 100 Most Influential People in the World. He is also the creator of Poptropica, which was named one of Time magazine’s 50 Best Websites. He spent his childhood in the Washington, D.C., area and moved to New England in 1995. Jeff lives with his wife and two sons in Plainville, Massachusetts, where he owns a bookstore, An Unlikely Story.',
  isbn: '9781419717017',
  picture_url: 'http://i.imgur.com/WNbiPZS.jpg'
  )

User.fourth.books.create(
  title: 'Stars of Fortune: Book One of the Guardians Trilogy',
  author: 'Nora Roberts',
  description: 'Nora Roberts is the #1 New York Times bestselling author of more than 200 novels. She is also the author of the bestselling futuristic suspense series written under the pen name J. D. Robb. There are more than 500 million copies of her books in print',
  isbn: '9780425280102',
  picture_url: 'http://i.imgur.com/rIgegMo.jpg'
  )


# Books for fifth user

User.fifth.books.create(
  title: 'Men Are From Mars, Women Are From Venus',
  author: 'John Gray',
  description: 'Popular marriage counselor and seminar leader John Gray provides a unique, practical and proven way for men and women to communicate and relate better by acknowledging the differences between them. Once upon a time Martians and Venusians met, fell in love, and had happy relationships together because they respected and accepted their differences. Then they came to earth and amnesia set in: they forgot they were from different planets. Using this metaphor to illustrate the commonly occurring conflicts between men and women, Gray explains how these differences can come between the sexes and prohibit mutually fulfilling loving relationships. Based on years of successful counseling of couples, he gives advice on how to counteract these differences in communication styles, emotional needs and modes of behavior to promote a greater understanding between individual partners. Gray shows how men and women react differently in conversation and how their relationships are affected by male intimacy cycles ("get close", "back off"), and female self-esteem fluctuations (I\'m okay, I\'m not okay).',
  isbn: '9780060574215',
  picture_url: 'http://i.imgur.com/a2PEYhA.jpg'
  )

User.fifth.books.create(
  title: 'Starship Troopers',
  author: '',
  description: "The historians can't seem to settle whether to call this one 'The Third Space War' (or the fourth), or whether 'The First Interstellar War' fits it better. We just call it 'The Bug War.' Everything up to then and still later were 'incidents,' 'patrols,' or 'police actions.' However, you are just as dead if you buy the farm in an 'incident' as you are if you buy it in a declared war... In one of Robert A. Heinlein's most controversial bestsellers, a recruit of the future goes through the toughest boot camp in the Universe--and into battle with the Terran Mobile Infantry against mankind's most alarming enemy.",
  isbn: '9780441783589',
  picture_url: 'http://i.imgur.com/Kfcbjoj.jpg'
  )

User.fifth.books.create(
  title: 'Keep Moving: And Other Tips and Truths About Aging',
  author: 'Dick Van Dyke',
  description: 'Dick Van Dyke, the star of Mary Poppins, Chitty Chitty Bang Bang, and The Dick Van Dyke Show, has received five Emmy awards, a Tony, and a Grammy. In 2013, he received the Screen Actors Guild Life Achievement Award. He is also the New York Times bestselling author of My Lucky Life In and Out of Show Business. He lives in Malibu, California.',
  isbn: '9781602862968',
  picture_url: 'http://i.imgur.com/URW40MU.jpg'
  )

# Books for sixth user

User.find(6).books.create(
  title: 'Redwall',
  author: 'Brian Jacques',
  description: 'When the peaceful life of ancient Redwall Abbey is shattered by the arrival of the evil rat Cluny and his villainous hordes, Matthias, a young mouse, determines to find the legendary sword of Martin the Warrior which, he is convinced, will help Redwall\'s inhabitants destroy the enemy.',
  isbn: '9780399214240',
  picture_url: 'http://i.imgur.com/BKla4uC.jpg'
  )

User.find(6).books.create(
  title: 'The Giving Tree',
  author: 'Shel Silverstein',
  description: 'A young boy grows to manhood and old age experiencing the love and generosity of a tree which gives to him without thought of return.',
  isbn: '9780060256654 ',
  picture_url: 'http://i.imgur.com/dci8Isk.jpg'
  )

User.find(6).books.create(
  title: 'The Heart Goes Last: A Novel',
  author: 'Margaret Atwood',
  description: 'MARGARET ATWOOD, whose work has been published in thirty-five countries, is the author of more than forty books of fiction, poetry, and critical essays. In addition to The Handmaid\'s Tale, her novels include Cat\'s Eye, short-listed for the 1989 Booker Prize; Alias Grace, which won the Giller Prize in Canada and the Premio Mondello in Italy; The Blind Assassin, winner of the 2000 Booker Prize; Oryx and Crake, short-listed for the 2003 Man Booker Prize; The Year of the Flood; and her most recent, MaddAddam. She is the recipient of the Los Angeles Times Innovator\'s Award, and lives in Toronto with the writer Graeme Gibson.',
  isbn: '9780771009112',
  picture_url: 'http://i.imgur.com/sYTfDaQ.jpg'
  )

# Books for seventh user

User.find(7).books.create(
  title: 'Wine Folly: The Essential Guide to Wine',
  author: 'Madeline Puckette',
  description: 'Red or white? Cabernet or merlot? Light or bold? What to pair with food? Drinking great wine isn’t hard, but finding great wine does require a deeper understanding of the fundamentals. Wine Folly: The Essential Guide to Wine will help you make sense of it all in a unique infographic wine book. Designed by the creators of WineFolly.com, which has won Wine Blogger of the Year from the International Wine & Spirits Competition, this book combines sleek, modern information design with data visualization and gives readers pragmatic answers to all their wine questions',
  isbn: '9781592408993',
  picture_url: 'http://i.imgur.com/iV2o2SR.jpg'
  )

User.find(7).books.create(
  title: 'The Walking Dead Book 12',
  author: 'Robert Kirkman, Cliff Rathburn, Charlie Adlard',
  description: 'After Rick delivers Carl to Hilltop to start their new lives apart, a threat emerges from within the walker hordes that no one could expect. A threat that will leave readers speechless. Collects The Walking Dead #133-144.',
  isbn: '9781632154514',
  picture_url: 'http://i.imgur.com/W26VS6c.jpg'
  )

User.find(7).books.create(
  title: 'The Battle of Alberta: The Historic Rivalry Between the Edmonton Oilers and the Calgary Flames',
  author: ' Mark Spector',
  description: 'An up-close look at the rivalry between the Calgary Flames and the Edmonton Oilers, told from the perspective of those that were there. Sports writer and on-air personality Mark Spector pays tribute to the province\'s hockey heyday with a unique blend of humour and homage.',
  isbn: '9780771078064',
  picture_url: 'http://i.imgur.com/tg6OzhF.jpg'
  )

# Books for eighth user

User.find(8).books.create(
  title: 'World War Z',
  author: 'Max Brooks',
  description: 'An account of the decade-long conflict between humankind and hordes of the predatory undead is told from the perspective of dozens of survivors who describe in their own words the epic human battle for survival.',
  isbn: '9780307351937',
  picture_url: 'http://i.imgur.com/uF1Sleu.jpg'
  )

User.find(8).books.create(
  title: 'The Giver',
  author: 'Lois Lowry',
  description: 'Given his lifetime assignment at the Ceremony of Twelve, Jonas becomes the receiver of memories shared by only one other in his community and discovers the terrible truth about the society in which he lives.',
  isbn: '9780547345901',
  picture_url: 'http://i.imgur.com/Yj9vLt3.jpg'
  )

# Books for ninth user

  User.find(9).books.create(
  title: 'The Outlandish Companion Volume Two',
  author: 'Diana Gabaldon',
  description: ' #1 New York Times bestselling author Diana Gabaldon has captivated fans with the story of Jamie and Claire for 23 years and 8 epic novels. Now, she takes her readers deeper into their world with the second volume of her comprehensive guide to all things Outlandish, covering all the Outlander books that have been published since the first volume in 1999: The Fiery Cross, A Breath of Snow and Ashes, An Echo in the Bone, and Written in My Own Heart\'s Blood. Featuring all new material and extensive illustrations, Diana shares with readers new and old the fascinating history and secrets behind her beloved series.',
  isbn: '9780385685528',
  picture_url: 'http://i.imgur.com/foMNATb.jpg'
  )

User.find(9).books.create(
  title: 'The Drowning',
  author: 'Camilla Läckberg',
  description: 'Christian Thydell has been receiving anonymous threats since he began writing his novel \'The Mermaid\'. When one message, secreted within a bouquet of flowers, causes him to collapse at the launch party, crime writer Erica Falck is compelled to investigate.',
  isbn: '9780007419531',
  picture_url: 'http://i.imgur.com/pxhcKJy.jpg'
  )

# Books for tenth user

User.find(10).books.create(
  title: 'The Very Hungry Caterpillar',
  author: 'Eric Carle',
  description: 'THE all-time classic picture book, from generation to generation, sold somewhere in the world every 30 seconds! Have you shared it with a child or grandchild in your life? Carle\'s classic tale of a voracious caterpillar who eats his way through the days of the week and then changes into a eautiful butterfly has been reissued in a sumptuous twenty-fifth anniversary edition with a shiny, silver-coated cover and wonderfully thick, durably pages. --The Horn Book \'The very hungry caterpillar literally eats his way through the pages of the book--and right into your child\'s heart...\' -- Mother\'s Manual \'Gorgeously illustrated, brilliantly innovative...\' -- The New York Times Book Review Watch a Video',
  isbn: '9780399208539',
  picture_url: 'http://i.imgur.com/hj215Le.jpg'
  )

User.find(10).books.create(
  title: 'The Hunger Games',
  author: 'Suzanne Collins',
  description: 'In a future North America, where the rulers of Panem maintain control through an annual televised survival competition pitting young people from each of the twelve districts against one another, sixteen-year-old Katniss\'s skills are put to the test when she voluntarily takes her younger sister\'s place.',
  isbn: '9781410419866',
  picture_url: 'http://i.imgur.com/zHOy6TK.jpg'
  )

User.find(10).books.create(
  title: 'The Cat in the Hat',
  author: 'Seuss',
  description: 'Join the Cat in the Hat as he makes learning to read a joy! It\'s a rainy day and Dick and Sally can\'t find anything to do . . . until the Cat in the Hat unexpectedly appears and turns their dreary afternoon into a fun-filled extravaganza! This beloved Beginner Book by Dr. Seuss, which also features timeless Dr. Seuss characters such as Fish and Thing 1 and Thing 2, is fun to read aloud and easy to read alone. Written using 236 different words that any first or second grader can read, it\'s a fixture in home and school libraries and a favorite among parents, beginning readers, teachers, and librarians. Originally created by Dr. Seuss, Beginner Books encourage children to read all by themselves, with simple words and illustrations that give clues to their meaning.',
  isbn: '9780394800011',
  picture_url: 'http://i.imgur.com/SYFHFY3.jpg'
  )



















