{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "fb81ebb6",
   "metadata": {},
   "outputs": [],
   "source": [
    "# -*- coding: utf-8 -*-\n",
    "import scrapy\n",
    "\n",
    "class exampleSpider(scrapy.Spider):\n",
    "    name = 'kinspider' # scrapy의 spider를 실행하기 위해 필요한 매개변수\n",
    "    category = '5' # 크롤링하고자 하는 카테고리\n",
    "    kin_urls = 'http://kin.naver.com/qna/list.nhn?dirId=' + category # 네이버 지식인 기본 URL\n",
    "    start_urls = [kin_urls]\n",
    "\n",
    "    # 최신 1000개의 질문 목록을 가져온다.\n",
    "    def parse(self, response):\n",
    "        # 현재 목록에 각 질문의 링크를 타고 들어간다. parse_doc에서 나머지를 처리함.\n",
    "        for item in response.css('td.title a'):\n",
    "            yield response.follow(item, self.parse_doc)\n",
    "\n",
    "        # 다음 페이지를 자동으로 넘어간다. 중복된 페이지는 scrapy가 url을 체크해서 알아서 처리해줌.\n",
    "        for next_page in response.css('div.paginate > a'):\n",
    "            yield response.follow(next_page, self.parse)\n",
    "\n",
    "    # 각 질문의 링크에 들어가서 질문의 본문을 각각 txt 파일로 저장한다.\n",
    "    def parse_doc(self, response):\n",
    "        docId = response.request.url.split(\"docId=\")[-1]\n",
    "        title = response.css('span.title_text ::text').extract_first().strip().encode('utf8')\n",
    "        question_contents = response.css('div#contents_layer_0 div._endContentsText ::text').extract()\n",
    "        question = \"\\n\\n\".encode('utf8')\n",
    "        for q in question_contents:\n",
    "            question += q.strip().encode('utf8')\n",
    "            question += \"\\n\".encode('utf8')\n",
    "            \n",
    "        filename = 'raw/%s.txt' % docId\n",
    "        with open(filename, 'wb') as f:\n",
    "            f.write(title)\n",
    "            f.write(question)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "25f992eb",
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "4dd926e7",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.8.8"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
