require 'rubygems'
require 'mechanize'

agent=Mechanize.new
p=agent.get('http://kbodata.news.naver.com/m_rank/rank_team.asp')
p.search('//table[@class="table_board2"]/tbody/tr').each do |i|
  arr = i.search('td')
  str = arr[0].inner_text
  str += " - " + arr[1].inner_text
  arr[-1].inner_text =~ /(\d+)승 (\d+)패 (\d+)무/
  str += " - " + $1 + " - " + $2 + " - " + $3
  puts str
end
