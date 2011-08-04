require 'rubygems'
require 'mechanize'

agent=Mechanize.new
p=agent.get('http://kbodata.news.naver.com/m_rank/rank_team.asp')
puts p.search('//table[@class="table_board2"]/tbody/tr')[0].inner_text

