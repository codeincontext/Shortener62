Shorten62
===

Shorten62 is a little ruby module that will convert an integer to a short string consisting of case-sensitive letters and numbers. It is ideal for encoding and decoding record IDs into short URLs for your rails site. 

As an example of this compressions, a 3 character string allows for 238328 possibilities. 

Installation
---

Drop the module wherever you require it. For rails, this is likely to be the lib folder.

Use
---

Shortener62::encode(49583059)
=> "3m2OL"

Shortener62::decode('3m2OL')
=> 49583059


short_url = root_url + Shortener62::encode(post.id)

post = Post.find(Shortener62::decode(short_path))
