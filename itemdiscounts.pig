x1 = load 'gs://cloud-ml-api/pig_input/itemdetails.txt' using PigStorage(',') AS (Type:chararray,Name:chararray,RetailPrice:float,DiscountPrice:float,Brand:chararray);
x2 = filter x1 by Type != 'Type';
x3 = foreach x2 generate Type, Name, RetailPrice, DiscountPrice, Brand, RetailPrice/DiscountPrice AS Off:float;
x4 = filter x3 by LOWER(Brand) == 'nike' or LOWER(Brand) == 'puma';
x5 = group x4 by Type;
store x5 into 'gs://cloud-ml-api/pig_output/';