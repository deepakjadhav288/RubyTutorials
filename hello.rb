

valid = !("deepak<p> jadhav</p>"!~/^(.*?)<img src=\\*"/m)? "nil" :
"<p>Ruby is very good</p>\r\n<ul>;<img src=\"https://upload.wikimedia.org/wikipedia/commons/6/6f/HP_logo_630x630.png\" alt=\"\" width=\"104\" height=\"104\" />Mandsaur district saw more violence on Wednesday, <img src=\"https://image.freepik.com/free-icon/macos-platform_318-33076.jpg\" alt=\"\" width=\"202\" height=\"202\" />a day after five farmers were killed in police firing. Prime Minister Narendra &nbsp;held an emergency meeting with top ministers and took stock of the situation on Wednesday. Congress vice-president Rahul Gandhi is scheduled to visit the spot on:<img src=\"http://socialmobivideos.com/members/templates/1/images/over_logo.png\" alt=\"\" width=\"101\" height=\"101\" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><img src=\"http://pngimg.com/uploads/bmw_logo/bmw_logo_PNG19712.png\" alt=\"\" width=\"101\" height=\"101\" /></p>".gsub(/^(.*?)<img src=\\*"/m,'').gsub(/".*$/m,'')
puts valid
