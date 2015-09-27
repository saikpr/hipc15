#!/bin/bash
file_name=$1
echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_brinjal.csv
cat $file_name |grep -i "Brinjal" >>data_brinjal.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_tomotto_ottu.csv
cat $file_name |grep -i "Tomotto ottu">>data_tomotto_ottu.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_lady_finger.csv
cat $file_name |grep -i "Ladys Finger" >>data_lady_finger.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_snakee_guard.csv
cat $file_name |grep -i "Snake Guard" >>data_snakee_guard.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_bitter_gourd.csv
cat $file_name |grep -i "Bitter Gourd" >>data_bitter_gourd.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_bottle_gourd.csv
cat $file_name |grep -i "Bottle gourd" >>data_bottle_gourd.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Pumpkin.csv
cat $file_name |grep -i "Pumpkin" >>data_Pumpkin.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Bean.csv
cat $file_name |grep -i "Bean" >>data_bottle_gourd.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Cluster_Beans.csv
cat $file_name |grep -i "Cluster Beans" >>data_Cluster_Beans.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Red_Chilies.csv
cat $file_name |grep -i "Red Chilies" >>data_Red_Chilies.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Onion.csv
cat $file_name |grep -i "Onion" >>data_Onion.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Pallari.csv
cat $file_name |grep -i "Pallari" >>data_Pallari.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Ginger.csv
cat $file_name |grep -i "Ginger" >>data_Ginger.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Potato.csv
cat $file_name |grep -i "Potato" >>data_Potato.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Radish.csv
cat $file_name |grep -i "Radish" >>data_Radish.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Mango.csv
cat $file_name |grep -i "Mango" >>data_Mango.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Cabbage.csv
cat $file_name |grep -i "Cabbage" >>data_Cabbage.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Carrot.csv
cat $file_name |grep -i "Carrot" >>data_Carrot.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Beetroot.csv
cat $file_name |grep -i "Beetroot" >>data_Beetroot.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Soybeans.csv
cat $file_name |grep -i "Soybeans" >>data_Soybeans.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Drumstick_beans.csv
cat $file_name |grep -i "Drumstick beans" >>data_Drumstick_beans.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_butter_beans.csv
cat $file_name |grep -i "butter beans"  >>data_butter_beans.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_bottle_gourd.csv
cat $file_name |grep -i "Banana nut" >>data_bottle_gourd.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Banana_Flower.csv
cat $file_name |grep -i "Banana Flower" >>data_Banana_Flower.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Curry_leaves.csv
cat $file_name |grep -i "Curry leaves" >>data_Curry_leaves.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Coriander_leaves.csv
cat $file_name |grep -i "Coriander leaves" >>data_Coriander_leaves.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price">data_Mint.csv 
cat $file_name |grep -i "Mint">>data_Mint.csv 

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price">data_Greens_Leaves.csv 
cat $file_name |grep -i "Greens Leaves">>data_Greens_Leaves.csv 

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price">data_Garlic.csv 
cat $file_name |grep -i "Garlic">>data_Garlic.csv 

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price" >data_Button_Mushrooms.csv
cat $file_name |grep -i "Button Mushrooms">>data_Button_Mushrooms.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price">data_Papaya.csv
cat $file_name |grep -i "Papaya">>data_Papaya.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price">data_SavSav.csv
cat $file_name |grep -i "SavSav">>data_SavSav.csv

echo "TimeSeries,S_no,Commodity,Weight_per_kg,Price">data_Sapotta.csv
cat $file_name |grep -i "Sapotta">>data_Sapotta.csv