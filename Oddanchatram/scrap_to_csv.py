from  bs4 import BeautifulSoup
import csv
import sys
from itertools import izip

def grouped(iterable, n):
    "s -> (s0,s1,s2,...sn-1), (sn,sn+1,sn+2,...s2n-1), (s2n,s2n+1,s2n+2,...s3n-1), ..."
    return izip(*[iter(iterable)]*n)
    
def scrap_fd(input_fd,output_fd):
    soup =BeautifulSoup ( input_fd)
    headers=["S_no","Commodity","Weight_per_kg","Price"]
    writer = csv.DictWriter(output_fd, delimiter=',', lineterminator='\n',fieldnames=headers)
    writer.writeheader()
    tdata= soup.tbody.find_all("td")
    for line1,line2,line3,line4 in grouped(tdata,4):
        # print "*****line1"
        try:
    #         print line1
            k=line1.p.b.contents[0].encode('ascii', 'replace')[1:]
            j=line2.p.contents[0].encode('ascii', 'replace')
            l=line3.contents[0].encode('ascii', 'replace')
            m=line4.contents[0].encode('ascii', 'replace')
            
            row_dict={"S_no":k,"Commodity":j,"Weight_per_kg":l,"Price":m}
            writer.writerow(row_dict)
            # print k
            # print j
            # print l
            print m
    #         print type(line1.p.b)
    #         print k.get("b")
        except AttributeError:
            pass
    #     print "*****line2"
    #     print line2
    #     print "*****line3"
    #     print line3
    #     print type(line1)

if __name__=="__main__":
    input_fd=open("sample_html.htm","r")
    output_fd=open("sample_csv.csv","wb")
    scrap_fd(input_fd,output_fd)
    