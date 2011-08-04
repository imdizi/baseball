require 'rubygems'
require 'mechanize'

agent=Mechanize.new
p=agent.get('http://kbodata.news.naver.com/m_rank/rank_team.asp')
i = p.search('//table[@class="table_board2"]/tbody/tr')[0]
arr = i.search('td')
puts arr[0].inner_text
puts arr[1].inner_text
puts arr[-1].inner_text

