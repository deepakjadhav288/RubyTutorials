array = ["deep","jadh"]
array.map {|x| p x.tr('A-Za-z','N-ZA-Mn-za-m')}
# 