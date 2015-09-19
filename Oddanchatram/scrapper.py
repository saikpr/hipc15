from scrap_to_csv import scrap_fd
import datetime
import urllib2


if __name__=="__main__":
    start_date = datetime.date(2014, 9, 18)
    number_of_days=365
    this_date= start_date
    for i in xrange(number_of_days):
        this_date = this_date + datetime.timedelta(days=1)
        date_string = str(this_date.day)+str(this_date.month)+str(this_date.year)
        # print date_string
        # print this_date
        url="http://oddanchatramvegetablemarket.com/oddanchatram-vegetable-market-price-details-"+date_string
        print "trying :"+ url
        try:
            response = urllib2.urlopen(url)
            output_fd=open("test_csv"+date_string+".csv","wb")
            scrap_fd(response,output_fd)
            response.close()
            output_fd.close()
        except urllib2.HTTPError:
            print "Error with "+date_string
        
        