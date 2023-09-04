
import 'dart:convert';

List<QuoteModel> quoteModelFromJson(String str) => List<QuoteModel>.from(json.decode(str).map((x) => QuoteModel.fromJson(x)));

String quoteModelToJson(List<QuoteModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class QuoteModel {
  String quote;
  String author;

  QuoteModel({
    required this.quote,
    required this.author,
  });

  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
    quote: json["quote"],
    author: json["author"],
  );

  Map<String, dynamic> toJson() => {
    "quote": quote,
    "author": author,
  };
}
List<QuoteModel> quoteModel=[

  QuoteModel(quote: "What you get by achieving your goals is not as important as what you become by achieving your goals.",author: "Zig Ziglar"),
  QuoteModel(
      quote: "Intelligence without ambition is a bird without wings.",
      author: "Salvador Dali"
  ),
  QuoteModel(
      quote: "The key is to keep company only with people who uplift you, whose presence calls forth your best.",
      author: "Epictetus"
  ),
  QuoteModel(
      quote: "We may encounter many defeats but we must not be defeated.",
      author: "May Angelou"
  ),
  QuoteModel(
      quote: "Problems are not stop signs, they are guidelines.",
      author: "Robert H. Schuller"
  ),
  QuoteModel(
      quote: "Be kind whenever possible. It is always possible.",
      author: "Dalai Lama"
  ),
  QuoteModel(
      quote: "A creative man is motivated by the desire to achieve, not by the desire to beat others.",
      author: "Ayn Rand"
  ),
  QuoteModel(
      quote: "A somebody was once a nobody who wanted to and did.",
      author: "John Burroughs"
  ),
  QuoteModel(
      quote: "Life is 10% what happens to us and 90% how we react to it.",
      author: "Dennis P. Kimbro"
  ),
  QuoteModel(
      quote: "Even if you’re on the right track, you’ll get run over if you just sit there.",
      author: "Will Rogers"
  ),
  QuoteModel(
      quote: "Luck is a dividend of sweat. The more you sweat, the luckier you get.",
      author: "Ray Kroc"
  ),
  QuoteModel(
      quote: "Courage is the first of human qualities because it is the quality which guarantees all others.",
      author: "Winston Churchill"
  ),
  QuoteModel(
      quote: "The great thing in this world is not so much where you stand, as in what direction you are moving.",
      author: "Oliver Wendell Holmes"
  ),
  QuoteModel(
      quote: "Though no one can go back and make a brand new start, anyone can start from now and make a brand new ending.",
      author: "Carl Bard"
  ),
  QuoteModel(
      quote: "Speak less than you know; have more than you show.",
      author: "William Shakespeare"
  ),
  QuoteModel(
      quote: "Education costs money. But then so does ignorance.",
      author: "Sir Claus Moser"
  ),
  QuoteModel(
      quote: "The journey of a thousand miles begins with one step.",
      author: "Lao Tzu"
  ),
  QuoteModel(
      quote: "Do not let what you cannot do interfere with what you can do.",
      author: "John Wooden"
  ),
  QuoteModel(
      quote: "Defeat is not bitter unless you swallow it.",
      author: "Joe Clark"
  ),
  QuoteModel(
      quote: "An obstacle is often a stepping stone.",
      author: "Prescott"
  ),
  QuoteModel(
      quote: "Don’t worry about failures, worry about the chances you miss when you don’t even try.",
      author: "Jack Canfield"
  ),
  QuoteModel(
      quote: "Live each day as if your life had just begun.",
      author: "Johann Wolfgang Von Goethe"
  ),
  QuoteModel(
      quote: "The secret to getting ahead is getting started.",
      author: "Mark Twain"
  ),
  QuoteModel(
      quote: "The will to win, the desire to succeed, the urge to reach your full potential, these are the keys that will unlock the door to personal excellence.",
      author: "Confucius"
  ),
  QuoteModel(
      quote: "Set your goals high and don’t stop until you get there.",
      author: "Bo Jackson"
  ),
  QuoteModel(
      quote: "The world is full of magical things patiently waiting for our wits to grow sharper.",
      author: "Bertrand Russell"
  ),
  QuoteModel(
      quote: "Let us make our future now, and let us make our dreams tomorrow’s reality.",
      author: "Malala Yousafzai"
  ),
  QuoteModel(
      quote: "All you need is the plan, the road map, and the courage to press on to your destination.",
      author: "Earl Nightingale"
  ),
  QuoteModel(
      quote: "The glow of one warm thought is to me worth more than money.",
      author: "Thomas Jefferson"
  ),
  QuoteModel(
      quote: "The power of imagination makes us infinite.",
      author: "John Muir"
  ),
  QuoteModel(
      quote: "Try to be a rainbow in someone’s cloud.",
      author: "Maya Angelou"
  ),
  QuoteModel(
      quote: "I dwell in possibility.",
      author: "Emily Dickinson"
  ),
  QuoteModel(
      quote: "A No. 2 pencil and a dream can take you anywhere.",
      author: "Joyce Meyer"
  ),
  QuoteModel(
      quote: "In a gentle way, you can shake the world.",
      author: "Mahatma Gandhi"
  ),
  QuoteModel(
      quote: "Follow your bliss and the universe will open doors where there were only walls.",
      author: "Joseph Campbell"
  ),
  QuoteModel(
      quote: "Each day provides its own gifts.",
      author: "Marcus Aurelius"
  ),
  QuoteModel(
      quote: "Creativity is intelligence having fun.",
      author: "Albert Einstein"
  ),
  QuoteModel(
      quote: "People who are crazy enough to think they can change the world, are the ones who do.",
      author: "Rob Siltanen"
  ),
  QuoteModel(
      quote: "Imagine your life is perfect in every respect; what would it look like?",
      author: "Brian Tracy"
  ),
  QuoteModel(
      quote: "The way to get started is to quit talking and begin doing.",
      author: "Walt Disney"
  ),
  QuoteModel(
      quote: "It is always the simple that produces the marvelous.",
      author: "Amelia Barr"
  ),
  QuoteModel(
      quote: "Our greatest glory is not in never falling, but in rising every time we fall.",
      author: "Confucius"
  ),
  QuoteModel(
      quote: "Everything you’ve ever wanted is on the other side of fear.",
      author: "George Addair"
  ),
  QuoteModel(
      quote: "Success is not final, failure is not fatal: it is the courage to continue that counts.",
      author: "Winston Churchill"
  ),
  QuoteModel(
      quote: "Hardships often prepare ordinary people for an extraordinary destiny.",
      author: "C.S. Lewis"
  ),
  QuoteModel(
      quote: "Believe in yourself. You are braver than you think, more talented than you know, and capable of more than you imagine.",
      author: "Roy T. Bennett"
  ),
  QuoteModel(
      quote: "I learned that courage was not the absence of fear, but the triumph over it. The brave man is not he who does not feel afraid, but he who conquers that fear.",
      author: "Nelson Mandela"
  ),
  QuoteModel(
      quote: "There is only one thing that makes a dream impossible to achieve: the fear of failure.",
      author: "Paulo Coelho"
  ),
  QuoteModel(
      quote: "It’s not whether you get knocked down. It’s whether you get up.",
      author: "Vince Lombardi"
  ),
  QuoteModel(
      quote: "Your true success in life begins only when you make the commitment to become excellent at what you do.",
      author: "Brian Tracy"
  ),
  QuoteModel(
      quote: "If you believe it will work out, you’ll see opportunities. If you believe it won’t, you will see obstacles.",
      author: "Wayne Dyer"
  ),
  QuoteModel(
      quote: "Your mental and physical health come first. Everything else is secondary.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "Less is almost always more. Simplicity is almost always the answer.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "You have to be lucky to be successful, but luck can be engineered.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "It all starts and ends in the mind. The most crucial skill is how you think.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "People suck. But if you’re kind, you’ll get the best out of even the worst.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "Perfection only exists in the mind. It’s not real. Imagine, create, improve.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "The world doesn’t need more noise. Don’t complain. Set an example.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "Struggle is a part of life. Learning to struggle well is a reward in itself.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "Your attention is the most important asset you have. Be deliberate with it.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "The goal of an ideal partner isn’t to complete you. It’s to augment you.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "Who you let into your life is a vital decision. Don’t leave it up to chance.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "The purpose of life isn’t to do or to accomplish. It’s to merely experience.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "Everything is approximate. Don’t aim to be right. Aim to be less wrong.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "It’s better to not have an opinion than to blindly follow someone else’s.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "For the world to put you down, it first needs you to give it permission.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "The more things you care about, the less meaningful caring becomes.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "Be kind to yourself in the face of failures. They really don’t define you.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "Don’t take too much pride in your accomplishments. They’re not all yours.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "Life is short. Don’t tolerate bullsh*t. Don’t wait until it’s too late.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "It’s true that some people have more innate talent. But talent isn’t enough.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "There is no such thing as fairness, and dwelling on it creates despair.",
      author: "Zat Rana"
  ),
  QuoteModel(
      quote: "If you want to achieve greatness stop asking for permission.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "Things work out best for those who make the best of how things work out.",
      author: "John Wooden"
  ),
  QuoteModel(
      quote: "To live a creative life, we must lose our fear of being wrong.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "If you are not willing to risk the usual you will have to settle for the ordinary.",
      author: "Jim Rohn"
  ),
  QuoteModel(
      quote: "Trust because you are willing to accept the risk, not because it’s safe or certain.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "All our dreams can come true if we have the courage to pursue them.",
      author: "Walt Disney"
  ),
  QuoteModel(
      quote: "Good things come to people who wait, but better things come to those who go out and get them.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "If you do what you always did, you will get what you always got.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "Success is walking from failure to failure with no loss of enthusiasm.",
      author: "Winston Churchill"
  ),
  QuoteModel(
      quote: "Just when the caterpillar thought the world was ending, he turned into a butterfly.",
      author: "Proverb"
  ),
  QuoteModel(
      quote: "Successful entrepreneurs are givers and not takers of positive energy.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "You know you're in love when you can't fall asleep because reality is finally better than your dreams.",
      author: "Dr. Seuss"
  ),
  QuoteModel(
      quote: "Whenever you see a successful person you only see the public glories, never the private sacrifices to reach them.",
      author: "Vaibhav Shah"
  ),
  QuoteModel(
      quote: "Don’t be afraid to give up the good to go for the great.",
      author: "John D. Rockefeller"
  ),
  QuoteModel(
      quote: "The distance between insanity and genius is measured only by success.",
      author: "Bruce Feirstein"
  ),
  QuoteModel(
      quote: "Don’t raise your voice, improve your argument.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "What seems to us as bitter trials are often blessings in disguise.",
      author: "Oscar Wilde"
  ),
  QuoteModel(
      quote: "Do one thing every day that scares you.",
      author: "Eleanor Roosevelt"
  ),
  QuoteModel(
      quote: "What’s the point of being alive if you don’t at least try to do something remarkable.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "Life is not about finding yourself. Life is about creating yourself.",
      author: "Lolly Daskal"
  ),
  QuoteModel(
      quote: "What lies behind us and what lies before us are tiny matters compared to what lies within us.",
      author: "Ralph Waldo Emerson"
  ),
  QuoteModel(
      quote: "It is never too late to be what you might have been.",
      author: "George Eliot"
  ),
  QuoteModel(
      quote: "Innovation distinguishes between a leader and a follower.",
      author: "Steve Jobs"
  ),
  QuoteModel(
      quote: "In three words I can sum up everything I've learned about life: it goes on.",
      author: "Robert Frost"
  ),
  QuoteModel(
      quote: "It does not matter how slowly you go, so long as you do not stop.",
      author: "Confucius"
  ),
  QuoteModel(
      quote: "We are still masters of our fate. We are still captains of our souls.",
      author: "Winston Churchill"
  ),
  QuoteModel(
      quote: "The best way out is always through.",
      author: "Robert Frost"
  ),
  QuoteModel(
      quote: "Hope is like the sun, which, as we journey toward it, casts the shadow of our burden behind us.",
      author: "Samuel Smiles"
  ),
  QuoteModel(
      quote: "Enthusiasm is the energy and force that builds literal momentum of the human soul and mind.",
      author: "Bryant McGill"
  ),
  QuoteModel(
      quote: "Sometimes thinking too much can destroy your momentum.",
      author: "Tom Watson"
  ),
  QuoteModel(
      quote: "Work spares us from three evils: boredom, vice, and need.",
      author: "Voltaire"
  ),
  QuoteModel(
      quote: "Fortune favors the brave.",
      author: "Publius Terence"
  ),
  QuoteModel(
      quote: "Strong lives are motivated by dynamic purposes.",
      author: "Kenneth Hildebrand"
  ),
  QuoteModel(
      quote: "Either write something worth reading or do something worth writing.",
      author: "Benjamin Franklin"
  ),
  QuoteModel(
      quote: "If the wind will not serve, take to the oars.",
      author: "Latin Proverb"
  ),
  QuoteModel(
      quote: "There are no traffic jams along the extra mile.",
      author: "Roger Staubach"
  ),
  QuoteModel(
      quote: "Too many of us are not living our dreams because we are living our fears.",
      author: "Les Brown"
  ),
  QuoteModel(
      quote: "Challenges are what make life interested and overcoming them is what makes life meaningful.",
      author: "Joshua J. Marine"
  ),
  QuoteModel(
      quote: "I have been impressed with the urgency of doing. Knowing is not enough; we must apply. Being willing is not enough; we must do.",
      author: "Leonardo da Vinci"
  ),
  QuoteModel(
      quote: "Start where you are. Use what you have. Do what you can.",
      author: "Arthur Ashe"
  ),
  QuoteModel(
      quote: "Happiness is not something ready made. It comes from your own actions.",
      author: "Dalai Lama"
  ),
  QuoteModel(
      quote: "If you do what you’ve always done, you’ll get what you’ve always gotten.",
      author: "Tony Robbins"
  ),
  QuoteModel(
      quote: "If you are offered a seat on a rocket ship, don’t ask what seat! Just get on.",
      author: "Sheryl Sandberg"
  ),
  QuoteModel(
      quote: "The question isn’t who is going to let me; it’s who is going to stop me.",
      author: "Ayn Rand"
  ),
  QuoteModel(
      quote: "Always work hard. Intensity clarifies. It creates not only momentum, but also the pressure you need to feel either friction, or fulfillment.",
      author: "Marcus Buckingham"
  ),
  QuoteModel(
      quote: "We are what we repeatedly do. Excellence, therefore, is not an act but a habit.",
      author: "Aristotle"
  ),
  QuoteModel(
      quote: "Take calculated risks. That is quite different from being rash.",
      author: "George S. Patton"
  ),
  QuoteModel(
      quote: "In every difficult situation is potential value. Believe this, then begin looking for it.",
      author: "Norman Vincent Peale"
  ),
  QuoteModel(
      quote: "When everything seems to be going against you, remember that the airplane takes off against the wind, not with it.",
      author: "Henry Ford"
  ),
  QuoteModel(
      quote: "Accept responsibly for your life. Know that it is you who will get you where you want to go, no one else.",
      author: "Les Brown"
  ),
  QuoteModel(
      quote: "You cannot plough a field by turning it over in your mind.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "The world is wide, and I will not waste my life in friction when it could be turned into momentum.",
      author: "Frances E. Willard"
  ),
  QuoteModel(
      quote: "Believe with all of your heat that you will do what you were made to do.",
      author: "Orison Swett Marden"
  ),
  QuoteModel(
      quote: "Do not wait to strike till the iron is hot; but make it hot by striking.",
      author: "William B. Sprague"
  ),
  QuoteModel(
      quote: "If you have the guts to keep making mistakes, your wisdom and intelligence leap forward with huge momentum.",
      author: "Holly Near"
  ),
  QuoteModel(
      quote: "Good things come to those who wait but greater things come to those who get off their ass and do anything to make it happen.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "Ask and it will be given to you; search and you will find; knock and the door will be opened for you.",
      author: "Jesus"
  ),
  QuoteModel(
      quote: "People often say that motivation doesn’t last. Well, neither does bathing and that is why we recommend it daily.",
      author: "Zig Ziglar"
  ),
  QuoteModel(
      quote: "I can, therefore I am.",
      author: "Simone Weil"
  ),
  QuoteModel(
      quote: "I’ve found that luck is quite predictable. If you want more luck, take more chances. Be more active. Show up more often.",
      author: "Brian Tracy"
  ),
  QuoteModel(
      quote: "You need to overcome the tug of people against you as you reach for high goals.",
      author: "George S. Patton"
  ),
  QuoteModel(
      quote: "To know oneself, one should assert oneself.",
      author: "Albert Camus"
  ),
  QuoteModel(
      quote: "The first step toward success is taken when you refuse to be a captive of the environment in which you first find yourself.",
      author: "Mark Caine"
  ),
  QuoteModel(
      quote: "The most effective way to do it, is to do it.",
      author: "Amelia Earhart"
  ),
  QuoteModel(
      quote: "Begin to be now what you will be hereafter.",
      author: "William James"
  ),
  QuoteModel(
      quote: "Leap, and the net will appear.",
      author: "John Burroughs"
  ),
  QuoteModel(
      quote: "Do your work with your whole heart, and you will succeed – there’s so little competition.",
      author: "Elbert Hubbard"
  ),
  QuoteModel(
      quote: "A goal is a dream with a deadline.",
      author: "Napoleon Hill"
  ),
  QuoteModel(
      quote: "Things do not happen. Things are made to happen.",
      author: "John F. Kennedy"
  ),
  QuoteModel(
      quote: "Quality is not an act, it is a habit.",
      author: "Aristotle"
  ),
  QuoteModel(
      quote: "The secret of getting ahead is getting started.",
      author: "Mark Twain"
  ),
  QuoteModel(
      quote: "By failing to prepare, you are preparing to fail.",
      author: "Benjamin Franklin"
  ),
  QuoteModel(
      quote: "Either you run the day or the day runs you.",
      author: "Jim Rohn"
  ),
  QuoteModel(
      quote: "Once you choose hope, anything's possible.",
      author: "Christopher Reeve"
  ),
  QuoteModel(
      quote: "Try not to become a person of success, but rather try to become a person of value.",
      author: "Albert Einstein"
  ),
  QuoteModel(
      quote: "Success is walking from failure to failure with no loss of enthusiasm.",
      author: "Winston Churchill"
  ),
  QuoteModel(
      quote: "Someone is sitting in the shade today because someone planted a tree a long time ago.",
      author: "Warren Buffett"
  ),
  QuoteModel(
      quote: "Don't cry because it's over, smile because it happened.",
      author: "Dr. Seuss"
  ),
  QuoteModel(
      quote: "Life is short, and it is here to be lived.",
      author: "Kate Winslet"
  ),
  QuoteModel(
      quote: "You can't connect the dots looking forward; you can only connect them looking backward...This approach has never let me down, and it has made all the difference in my life.",
      author: "Steve Jobs"
  ),
  QuoteModel(
      quote: "Everything you can imagine is real.",
      author: "Pablo Picasso"
  ),
  QuoteModel(
      quote: "Successful people do what unsuccessful people are not willing to do. Don't wish it were easier; wish you were better.",
      author: "Jim Rohn"
  ),
  QuoteModel(
      quote: "Rarely have I seen a situation where doing less than the other guy is a good strategy.",
      author: "Jimmy Spithill"
  ),
  QuoteModel(
      quote: "Change will not come if we wait for some other person or some other time. We are the ones we've been waiting for. We are the change that we seek.",
      author: "Barack Obama"
  ),
  QuoteModel(
      quote: "If you love what you do and are willing to do what it takes, it's within your reach.",
      author: "Steve Wozniak"
  ),
  QuoteModel(
      quote: "In my experience, there is only one motivation, and that is desire. No reasons or principle contain it or stand against it.",
      author: "Jane Smiley"
  ),
  QuoteModel(
      quote: "Keep on going, and the chances are that you will stumble on something, perhaps when you are least expecting it.",
      author: "Charles F. Kettering"
  ),
  QuoteModel(
      quote: "The successful warrior is the average man, with laser-like focus.",
      author: "Bruce Lee"
  ),
  QuoteModel(
      quote: "In the midst of movement and chaos, keep stillness inside of you.",
      author: "Deepak Chopra"
  ),
  QuoteModel(
      quote: "Success does not consist in never making mistakes but in never making the same one a second time.",
      author: "George Bernard Shaw"
  ),
  QuoteModel(
      quote: "I don't want to get to the end of my life and find that I lived just the length of it. I want to have lived the width of it as well.",
      author: "Diane Ackerman"
  ),
  QuoteModel(
      quote: "As we look ahead into the next century, leaders will be those who empower others.",
      author: "Bill Gates"
  ),
  QuoteModel(
      quote: "The only place where success comes before work is in the dictionary.",
      author: "Vidal Sassoon"
  ),
  QuoteModel(
      quote: "It’s not what you look at that matters, it’s what you see.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "The road to success and the road to failure are almost exactly the same.",
      author: "Colin R. Davis"
  ),
  QuoteModel(
      quote: "Success is liking yourself, liking what you do, and liking how you do it.",
      author: "Maya Angelou"
  ),
  QuoteModel(
      quote: "A real entrepreneur is somebody who has no safety net underneath them.",
      author: "Henry Kravis"
  ),
  QuoteModel(
      quote: "The function of leadership is to produce more leaders, not more followers.",
      author: "Ralph Nader"
  ),
  QuoteModel(
      quote: "Whenever you find yourself on the side of the majority, it is time to pause and reflect.",
      author: "Mark Twain"
  ),
  QuoteModel(
      quote: "If you genuinely want something, don’t wait for it — teach yourself to be impatient.",
      author: "Gurbaksh Chahal"
  ),
  QuoteModel(
      quote: "Don’t let the fear of losing be greater than the excitement of winning.",
      author: "Robert Kiyosaki"
  ),
  QuoteModel(
      quote: "Motivation is what gets you started. Habit is what keeps you going.",
      author: "Jim Ryun"
  ),
  QuoteModel(
      quote: "People rarely succeed unless they have fun in what they are doing.",
      author: "Dale Carnegie"
  ),
  QuoteModel(
      quote: "Little minds are tamed and subdued by misfortune; but great minds rise above it.",
      author: "Washington Irving"
  ),
  QuoteModel(
      quote: "Knowledge is being aware of what you can do. Wisdom is knowing when not to do it.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "You can do anything, but not everything.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "Success is most often achieved by those who don't know that failure is inevitable.",
      author: "Coco Chanel"
  ),
  QuoteModel(
      quote: "There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.",
      author: "Ray Goforth"
  ),
  QuoteModel(
      quote: "Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning.",
      author: "Albert Einstein"
  ),
  QuoteModel(
      quote: "Take up one idea. Make that one idea your life - think of it, dream of it, live on that idea. Let the brain, muscles, nerves, every part of your body be full of that idea, and just leave every other idea alone. This is the way to success.",
      author: "Swami Vivekananda"
  ),
  QuoteModel(
      quote: "You only live once, but if you do it right, once is enough.",
      author: "Mae West"
  ),
  QuoteModel(
      quote: "Opportunities don't happen. You create them.",
      author: "Chris Grosser"
  ),
  QuoteModel(
      quote: "You miss 100 percent of the shots you don't take.",
      author: "Wayne Gretzky"
  ),
  QuoteModel(
      quote: "The way I see it, if you want the rainbow, you gotta put up with the rain.",
      author: "Dolly Parton"
  ),
  QuoteModel(
      quote: "The longer I live, the more beautiful life becomes.",
      author: "Frank Lloyd Wright"
  ),
  QuoteModel(
      quote: "Success is the sum of small efforts, repeated day-in and day-out.",
      author: "Robert Collier"
  ),
  QuoteModel(
      quote: "Things work out best for those who make the best of how things work out.",
      author: "John Wooden"
  ),
  QuoteModel(
      quote: "A dream doesn't become reality through magic; it takes sweat, determination, and hard work.",
      author: "Colin Powell"
  ),
  QuoteModel(
      quote: "If you always do what interests you, at least one person is pleased.",
      author: "Katharine Hepburn"
  ),
  QuoteModel(
      quote: "Twenty years from now you will be more disappointed by the things that you didn't do than by the ones you did do. So throw off the bowlines. Sail away from the safe harbor...Explore. Dream. Discover.",
      author: "Mark Twain"
  ),
  QuoteModel(
      quote: "Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work.",
      author: "Steve Jobs"
  ),
  QuoteModel(
      quote: "Don't be afraid to give up the good to go for the great.",
      author: "John D. Rockefeller"
  ),
  QuoteModel(
      quote: "Only put off until tomorrow what you are willing to die having left undone.",
      author: "Pablo Picasso"
  ),
  QuoteModel(
      quote: "Though no one can go back and make a brand-new start, anyone can start from now and make a brand-new ending.",
      author: "Carl Bard"
  ),
  QuoteModel(
      quote: "We become what we think about most of the time, and that's the strangest secret.",
      author: "Earl Nightingale"
  ),
  QuoteModel(
      quote: "The biggest risk is not taking any risk...In a world that's changing really quickly, the only strategy that is guaranteed to fail is not taking risks.",
      author: "Mark Zuckerberg"
  ),
  QuoteModel(
      quote: "Don't worry about failure; you only have to be right once.",
      author: "Drew Houston"
  ),
  QuoteModel(
      quote: "Nothing great was ever achieved without enthusiasm.",
      author: "Ralph Waldo Emerson"
  ),
  QuoteModel(
      quote: "Keep your face to the sunshine and you can never see the shadow.",
      author: "Helen Keller"
  ),
  QuoteModel(
      quote: "The only place where success comes before work is in the dictionary.",
      author: "Vidal Sassoon"
  ),
  QuoteModel(
      quote: "The more you praise and celebrate your life, the more there is in life to celebrate.",
      author: "Oprah Winfrey"
  ),
  QuoteModel(
      quote: "All progress takes place outside the comfort zone.",
      author: "Michael John Bobak"
  ),
  QuoteModel(
      quote: "The first step toward success is taken when you refuse to be a captive of the environment in which you first find yourself.",
      author: "Mark Caine"
  ),
  QuoteModel(
      quote: "I avoid looking forward or backward, and try to keep looking upward.",
      author: "Charlotte Bronte"
  ),
  QuoteModel(
      quote: "One of the greatest diseases is to be nobody to anybody.",
      author: "Mother Teresa"
  ),
  QuoteModel(
      quote: "Your time is limited, so don’t waste it living someone else’s life.",
      author: "Steve Jobs"
  ),
  QuoteModel(
      quote: "Setting goals is the first step in turning the invisible into visible.",
      author: "Tony Robbins"
  ),
  QuoteModel(
      quote: "The most difficult thing is the decision to act, the rest is merely tenacity.",
      author: "Emelia Earhart"
  ),
  QuoteModel(
      quote: "Courage is grace under pressure.",
      author: "Ernest Hemingway"
  ),
  QuoteModel(
      quote: "If you are not willing to risk the usual, you will have to settle for the ordinary.",
      author: "Jim Rohn"
  ),
  QuoteModel(
      quote: "There is no easy walk to freedom anywhere, and many of us will have to pass through the valley of the shadow of death again and again before we reach the mountaintop of our desires.",
      author: "Nelson Mandela"
  ),
  QuoteModel(
      quote: "It is not the strongest of the species that survive, nor the most intelligent, but the one most responsive to change.",
      author: "Charles Darwin"
  ),
  QuoteModel(
      quote: "The best and most beautiful things in the world cannot be seen or even touched -- they must be felt with the heart.",
      author: "Helen Keller"
  ),
  QuoteModel(
      quote: "Great minds discuss ideas; average minds discuss events; small minds discuss people.",
      author: "Eleanor Roosevelt"
  ),
  QuoteModel(
      quote: "The best revenge is massive success.",
      author: "Frank Sinatra"
  ),
  QuoteModel(
      quote: "A successful man is one who can lay a firm foundation with the bricks others have thrown at him.",
      author: "David Brinkley"
  ),
  QuoteModel(
      quote: "May you live every day of your life.",
      author: "Jonathan Swift"
  ),
  QuoteModel(
      quote: "The difference between winning and losing is most often not quitting.",
      author: "Walt Disney"
  ),
  QuoteModel(
      quote: "Live as if you were to die tomorrow. Learn as if you were to live forever.",
      author: "Mahatma Gandhi"
  ),
  QuoteModel(
      quote: "I have not failed. I've just found 10,000 ways that won't work.",
      author: "Thomas Edison"
  ),
  QuoteModel(
      quote: "When you cease to dream you cease to live.",
      author: "Malcolm Forbes"
  ),
  QuoteModel(
      quote: "No one can make you feel inferior without your consent.",
      author: "Eleanor Roosevelt"
  ),
  QuoteModel(
      quote: "Failure is another steppingstone to greatness.",
      author: "Oprah Winfrey"
  ),
  QuoteModel(
      quote: "Identity is a prison you can never escape, but the way to redeem your past is not to run from it, but to try to understand it, and use it as a foundation to grow.",
      author: "Jay-Z"
  ),
  QuoteModel(
      quote: "When I dare to be powerful - to use my strength in the service of my vision, then it becomes less and less important whether I am afraid.",
      author: "Audre Lorde"
  ),
  QuoteModel(
      quote: "Develop success from failures. Discouragement and failure are two of the surest stepping stones to success.",
      author: "Dale Carnegie"
  ),
  QuoteModel(
      quote: "If you want to make a permanent change, stop focusing on the size of your problems and start focusing on the size of you!",
      author: "T. Harv Eker"
  ),
  QuoteModel(
      quote: "If you don’t design your own life plan, chances are you’ll fall into someone else’s plan. And guess what they have planned for you? Not much.",
      author: "Jim Rohn"
  ),
  QuoteModel(
      quote: "The number one reason people fail in life is because they listen to their friends, family, and neighbors.",
      author: "Napoleon Hill"
  ),
  QuoteModel(
      quote: "There is no chance, no destiny, no fate, that can hinder or control the firm resolve of a determined soul.",
      author: "Ella Wheeler Wilcox"
  ),
  QuoteModel(
      quote: "You must expect great things of yourself before you can do them.",
      author: "Michael Jordan"
  ),
  QuoteModel(
      quote: "Our greatest fear should not be of failure but of succeeding at things in life that don’t really matter.",
      author: "Francis Chan"
  ),
  QuoteModel(
      quote: "In my experience, there is only one motivation, and that is desire. No reasons or principle contain it or stand against it.",
      author: "Jane Smiley"
  ),
  QuoteModel(
      quote: "I don’t want to get to the end of my life and find that I lived just the length of it. I want to have lived the width of it as well.",
      author: "Diane Ackerman"
  ),
  QuoteModel(
      quote: "Success is...knowing your purpose in life, growing to reach your maximum potential, and sowing seeds that benefit others.",
      author: "John C. Maxwell"
  ),
  QuoteModel(
      quote: "Be miserable. Or motivate yourself. Whatever has to be done, it’s always your choice.",
      author: "Wayne Dyer"
  ),
  QuoteModel(
      quote: "You’ve got to get up every morning with determination if you’re going to go to bed with satisfaction.",
      author: "George Lorimer"
  ),
  QuoteModel(
      quote: "To be successful you must accept all challenges that come your way. You can’t just accept the ones you like.",
      author: "Mike Gafka"
  ),
  QuoteModel(
      quote: "Real difficulties can be overcome; it is only the imaginary ones that are unconquerable.",
      author: "Theodore N. Vail"
  ),
  QuoteModel(
      quote: "Failure is the condiment that gives success its flavor.",
      author: "Truman Capote"
  ),
  QuoteModel(
      quote: "Don’t let what you cannot do interfere with what you can do.",
      author: "John R. Wooden"
  ),
  QuoteModel(
      quote: "It is better to fail in originality than to succeed in imitation.",
      author: "Herman Melville"
  ),
  QuoteModel(
      quote: "Fortune sides with him who dares.",
      author: "Virgil"
  ),
  QuoteModel(
      quote: "You may have to fight a battle more than once to win it.",
      author: "Margaret Thatcher"
  ),
  QuoteModel(
      quote: "It's not the size of the dog in the fight, but the size of the fight in the dog",
      author: "Archie Griffen"
  ),
  QuoteModel(
      quote: "Nothing lasts forever. Not even your troubles.",
      author: "Arnold H. Glasgow"
  ),
  QuoteModel(
      quote: "There are only two ways to live your life. One is as though nothing is a miracle. The other is as though everything is a miracle.",
      author: "Albert Einstein"
  ),
  QuoteModel(
      quote: "Where hope grows, miracles blossom.",
      author: "Elna Rae"
  ),
  QuoteModel(
      quote: "To accomplish great things, we must not only act, but also dream, not only plan, but also believe.",
      author: "Anatole France"
  ),
  QuoteModel(
      quote: "You measure the size of the accomplishment by the obstacles you had to overcome to reach your goals.",
      author: "Booker T. Washington"
  ),
  QuoteModel(
      quote: "Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no hope at all.",
      author: "Dale Carnegie"
  ),
  QuoteModel(
      quote: "Take chances, make mistakes. That's how you grow. Pain nourishes your courage. You have to fail in order to practice being brave",
      author: "Mary Tyler Moore"
  ),
  QuoteModel(
      quote: "Being strong means rejoicing in who you are, complete with imperfections",
      author: "Margaret Woodhouse"
  ),
  QuoteModel(
      quote: "A life spent making mistakes is not only more honorable but more useful than a life spent doing nothing",
      author: "George Bernard Shaw"
  ),
  QuoteModel(
      quote: "If you don’t go after what you want, you’ll never have it. If you don’t ask, the answer is always no. If you don’t step forward, you’re always in the same place",
      author: "Nora Roberts"
  ),
  QuoteModel(
      quote: "It took me a long time not to judge myself through someone else's eyes",
      author: "Sally Field"
  ),
  QuoteModel(
      quote: "Make the most of yourself, for that is all there is of you",
      author: "Ralph Waldo Emerson"
  ),
  QuoteModel(
      quote: "Awards become corroded, friends gather no dust",
      author: "Jesse Owens"
  ),
  QuoteModel(
      quote: "Hope never abandons you, you abandon it",
      author: "George Weinberg"
  ),
  QuoteModel(
      quote: "Nothing splendid has ever been achieved except by those who dared believe that something inside of them was superior to circumstance",
      author: "Bruce Barton"
  ),
  QuoteModel(
      quote: "I quit being afraid when my first venture failed and the sky didn't fall down",
      author: "Allen H. Neuharth"
  ),
  QuoteModel(
      quote: "Life is 10% of what happens to me and 90% of how I react to it",
      author: "John Maxwell"
  ),
  QuoteModel(
      quote: "Determine never to be idle. No person will have occasion to complain of the want of time who never loses any. It is wonderful how much may be done if we are always doing.",
      author: "Thomas Jefferson"
  ),
  QuoteModel(
      quote: "Aerodynamically the bumblebee shouldn't be able to fly, but the bumblebee doesn't know that so it goes on flying anyway",
      author: "Mary Kay Ash"
  ),
  QuoteModel(
      quote: "I'm selfish, impatient and a little insecure. I make mistakes, I am out of control and at times hard to handle. But if you can't handle me at my worst, then you sure as hell don't deserve me at my best.",
      author: "Marilyn Monroe"
  ),
  QuoteModel(
      quote: "A room without books is like a body without a soul.",
      author: "Marcus Tullius Cicero"
  ),
  QuoteModel(
      quote: "Be the change that you wish to see in the world.",
      author: "Mahatma Gandhi"
  ),
  QuoteModel(
      quote: "Don't walk behind me; I may not lead. Don't walk in front of me; I may not follow. Just walk beside me and be my friend.",
      author: "Albert Camus"
  ),
  QuoteModel(
      quote: "Happiness is a butterfly, which when pursued, is always beyond your grasp, but which, if you will sit down quietly, may alight upon you.",
      author: "Nathaniel Hawthorne"
  ),
  QuoteModel(
      quote: "Sometimes you can't see yourself clearly until you see yourself through the eyes of others.",
      author: "Ellen DeGeneres"
  ),
  QuoteModel(
      quote: "The whole secret of a successful life is to find out what is one's destiny to do, and then do it.",
      author: "Henry Ford"
  ),
  QuoteModel(
      quote: "If you're going through hell, keep going.",
      author: "Winston Churchill"
  ),
  QuoteModel(
      quote: "To me, business isn't about wearing suits or pleasing stockholders. It's about being true to yourself, your ideas and focusing on the essentials.",
      author: "Richard Branson"
  ),
  QuoteModel(
      quote: "In order to be irreplaceable one must always be different.",
      author: "Coco Chanel"
  ),
  QuoteModel(
      quote: "If you're not stubborn, you'll give up on experiments too soon. And if you're not flexible, you'll pound your head against the wall and you won't see a different solution to a problem you're trying to solve.",
      author: "Jeff Bezos"
  ),
  QuoteModel(
      quote: "If you can't explain it simply, you don't understand it well enough.",
      author: "Albert Einstein"
  ),
  QuoteModel(
      quote: "You can't please everyone, and you can't make everyone like you.",
      author: "Katie Couric"
  ),
  QuoteModel(
      quote: "I believe every human has a finite number of heartbeats. I don't intend to waste any of mine.",
      author: "Neil Armstrong"
  ),
  QuoteModel(
      quote: "The two most important days in your life are the day you are born and the day you find out why.",
      author: "Mark Twain"
  ),
  QuoteModel(
      quote: "As you grow older, you will discover that you have two hands, one for helping yourself, the other for helping others.",
      author: "Audrey Hepburn"
  ),
  QuoteModel(
      quote: "If you want to achieve excellence, you can get there today. As of this second, quit doing less-than-excellent work.",
      author: "Thomas J. Watson"
  ),
  QuoteModel(
      quote: "If your actions inspire others to dream more, learn more, do more, and become more, you are a leader.",
      author: "John Quincy Adams"
  ),
  QuoteModel(
      quote: "You may only succeed if you desire succeeding; you may only fail if you do not mind failing.",
      author: "Philippos"
  ),
  QuoteModel(
      quote: "I find that the harder I work, the more luck I seem to have.",
      author: "Thomas Jefferson"
  ),
  QuoteModel(
      quote: "It often requires more courage to dare to do right than to fear to do wrong.",
      author: "Abraham Lincoln"
  ),
  QuoteModel(
      quote: "I find that when you have a real interest in life and a curious life, that sleep is not the most important thing.",
      author: "Martha Stewart"
  ),
  QuoteModel(
      quote: "Success does not consist in never making mistakes but in never making the same one a second time.",
      author: "George Bernard Shaw"
  ),
  QuoteModel(
      quote: "Knowledge is being aware of what you can do. Wisdom is knowing when not to do it.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "You can do anything, but not everything.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.",
      author: "Ray Goforth"
  ),
  QuoteModel(
      quote: "Things work out best for those who make the best of how things work out.",
      author: "John Wooden"
  ),
  QuoteModel(
      quote: "If you are not willing to risk the usual, you will have to settle for the ordinary.",
      author: "Jim Rohn"
  ),
  QuoteModel(
      quote: "Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning.",
      author: "Albert Einstein"
  ),
  QuoteModel(
      quote: "Opportunities don't happen. You create them.",
      author: "Chris Grosser"
  ),
  QuoteModel(
      quote: "There is no easy walk to freedom anywhere, and many of us will have to pass through the valley of the shadow of death again and again before we reach the mountaintop of our desires.",
      author: "Nelson Mandela"
  ),
  QuoteModel(
      quote: "It is not the strongest of the species that survive, nor the most intelligent, but the one most responsive to change.",
      author: "Charles Darwin"
  ),
  QuoteModel(
      quote: "Great minds discuss ideas; average minds discuss events; small minds discuss people.",
      author: "Eleanor Roosevelt"
  ),
  QuoteModel(
      quote: "A successful man is one who can lay a firm foundation with the bricks others have thrown at him.",
      author: "David Brinkley"
  ),
  QuoteModel(
      quote: "No one can make you feel inferior without your consent.",
      author: "Eleanor Roosevelt"
  ),
  QuoteModel(
      quote: "Don't limit yourself. Many people limit themselves to what they think they can do. You can go as far as your mind lets you. What you believe, remember, you can achieve.",
      author: "Mary Kay Ash"
  ),
  QuoteModel(
      quote: "Be who you are and say what you feel, because those who mind don't matter and those who matter don't mind.",
      author: "Dr. Seuss"
  ),
  QuoteModel(
      quote: "Keep your eyes on the stars and your feet on the ground.",
      author: "Theodore Roosevelt"
  ),
  QuoteModel(
      quote: "The only person you should try to be better than is the person you were yesterday.",
      author: "Anonymous"
  ),
  QuoteModel(
      quote: "Never be bullied into silence. Never allow yourself to be made a victim. Accept no one's definition of your life; define yourself.",
      author: "Harvey Fierstein"
  ),
  QuoteModel(
      quote: "A man who flies from his fear may find that he has only taken a shortcut to meet it.",
      author: "Sador, Children of Húrin"
  ),
  QuoteModel(
      quote: "Life's too mysterious to take too serious.",
      author: "Mary Engelbreit"
  ),
  QuoteModel(
      quote: "The woman who follows the crowd will usually go no further than the crowd. The woman who walks alone is likely to find herself in places no one has been before.",
      author: "Albert Einstein"
  ),
  QuoteModel(
      quote: "There isn't a way things should be. There's just what happens, and what we do.",
      author: "Terry Pratchett, A Hat Full of Sky"
  ),
  QuoteModel(
      quote: "It's not about how hard you can hit; it's about how hard you can get hit and keep moving forward.",
      author: "Rocky Balboa, Rocky"
  ),
  QuoteModel(
      quote: "If you want to go fast, go alone. If you want to go far, go together.",
      author: "African proverb"
  ),
  QuoteModel(
      quote: "Believe you can and you're halfway there.",
      author: "T. Roosevelt"
  ),
  QuoteModel(
      quote: "Plant your garden and decorate your own soul, instead of waiting for someone to bring you flowers.",
      author: "Jose Luis Borges"
  ),
  QuoteModel(
      quote: "Do not go where the path may lead, go instead where there is no path and leave a trail.",
      author: "Ralph Waldo Emerson"
  )

];