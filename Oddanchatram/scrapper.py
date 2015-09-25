from scrap_to_csv import scrap_fd
import datetime
import urllib2


if __name__=="__main__":
    start_date = datetime.date(2014, 9, 18)
    number_of_days=400
    this_date= start_date
    headers=["TimeSeries","S_no","Commodity","Weight_per_kg","Price"]
    output_fd_single_file=open("data_dindigul_single.csv")
    writer = csv.DictWriter(output_fd_single_file, delimiter=',', lineterminator='\n',fieldnames=headers)
    writer.writeheader()
    for i in xrange(number_of_days):
        this_date = this_date + datetime.timedelta(days=1)
        date_string = str(this_date.day)+str(this_date.month)+str(this_date.year)
        # print date_string
        # print this_date
        url="http://oddanchatramvegetablemarket.com/dindigul-vegetable-market-price-details-"+date_string
        print "trying :"+ url
        try:
            response = urllib2.urlopen(url)
            #output_fd=open("test_csv"+date_string+".csv","wb")
            scrap_fd(response,writer,this_date.strftime("%Y-%m-%d::%H:%M:%S"))
            response.close()
            output_fd_single_file.flush()
            #output_fd.close()
        except urllib2.HTTPError:
            print "Error with "+date_string
       
    output_fd_single_file.close()
        