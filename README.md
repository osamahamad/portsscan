
Takes a file contain list of sub/domains 

Extract those domains internet protocols and save them into [ip.out]

Take [ip.out] and perform ports scanning with masscan -p1-65535 

Save the result into [ports-masscan.out]


____________________________
To be used after extracting subdomains with amass, subfinder, findomain or archivesuburls ..etc to perform ports scan. 
