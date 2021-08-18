{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "91fa2860",
   "metadata": {},
   "outputs": [],
   "source": [
    "from urllib.request import urlopen\n",
    "from bs4 import BeautifulSoup as bs\n",
    "\n",
    "# 교보문고의 베스트셀러 웹페이지를 가져옵니다.\n",
    "\n",
    "html = urlopen('http://www.kyobobook.co.kr/bestSellerNew/bestseller.laf')\n",
    "bsObject = bs(html, \"html.parser\")\n",
    "\n",
    "# 책의 상세 웹페이지 주소를 추출하여 리스트에 저장합니다.\n",
    "book_page_urls = []\n",
    "for cover in bsObject.find_all('div', {'class':'detail'}):\n",
    "    link = cover.select('a')[0].get('href')\n",
    "    book_page_urls.append(link)\n",
    "\n",
    "# 메타 정보로부터 필요한 정보를 추출합니다.메타 정보에 없는 저자 정보만 따로 가져왔습니다.   \n",
    "for index, book_page_url in enumerate(book_page_urls):\n",
    "    html = urlopen(book_page_url)\n",
    "    bsObject = bs(html, \"html.parser\")\n",
    "    title = bsObject.find('meta', {'property':'rb:itemName'}).get('content')\n",
    "    author = bsObject.select('span.name a')[0].text\n",
    "    image = bsObject.find('meta', {'property':'rb:itemImage'}).get('content')\n",
    "    url = bsObject.find('meta', {'property':'rb:itemUrl'}).get('content')\n",
    "    originalPrice = bsObject.find('meta', {'property': 'rb:originalPrice'}).get('content')\n",
    "    salePrice = bsObject.find('meta', {'property':'rb:salePrice'}).get('content')\n",
    "\n",
    "    print(index+1, title, author, image, url, originalPrice, salePrice)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "b7c2a5f6",
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "52e3da75",
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
