alea
============
alea is a tiny gem that aim to bring some aleatory behavior to ruby Kernel.

> Alea - Greek soldier (From Wikipedia, the free encyclopedia):
"Alea was a Greek soldier who reputedly [invented the dicing game](http://books.google.co.uk/books?id=7rEkOX8NmM0C&pg=RA1-PA61&lpg=RA1-PA61&dq=disis+occidens+adam&source=web&ots=0MbgJ4ioAf&sig=Gu5-vxetefyJJeB8wTuGPzzFZQo&hl=en&sa=X&oi=book_result&resnum=1&ct=result#PRA1-PA60,M1) ['Tabula'](http://en.wikipedia.org/wiki/Tabula).This is the origin of the name aléatoire, meaning random.

Install
-------

´sudo gem install alea´

The junk 
--------
<pre>
require 'alea'

# Add between 10 and 25 friends to a user
@user.add_friends rand_within(10..25)

# 75% chances of this happens
frequently do
  update_profile(@user) 
end

# 65% chances of this happens
probably do
  @group.activate!
end

# 20% chances of this happens
rarely do
  generate_404
end

# 5% chances of this happens
almost_never do
    grant_admin_privileges(@user)
end

# 95% chances of this happens
almost_always do
  post_incorrect_data_for_captcha
end

# 50% chances of true 
@group.moderated = maybe

# Calculate rounded percents 
send_mail_to 20.percent.of(the_community)


</pre> 

PS: I will probably give the option of set custom % via Alea::PROBABLY, Alea::RARELY etc. soon.

Credits
-------

This code is based and inspired on some chunks of code appeared on the always entertaining, brilliant and funny [project.ioni.st](http://project.ioni.st/) tumblelog.

More
-------

[http://github.com/linkingpaths/alea](http://github.com/linkingpaths/alea)

[http://github.com/linkingpaths/alea/wikis](http://github.com/linkingpaths/alea/wikis)


Copyright (c) 2008-2020 Linking Paths, released under the MIT license
