## Step 1:
install jtop by running this command
"sudo pip3 install -U jetson-stats"
Run "jtop"
Go to page 6. Type 'S' then 'E' then select 'manual' in the profiles section.

## Step 2:
Go to 'Info' page in jtop, check if opencv with CUDA is available. If not, follow the link below:
https://www.youtube.com/watch?v=art0-99fFa8

## Step 3:
Copy Makefile and YOLOv8-Jetson.py  to root directory

Run "cd ~" then
"make install"

## Step 4:

Run "cd DeepStream-Yolo" then run
"git checkout 68f762d5bdeae7ac3458529bfe6fed72714336ca"
then run "cp ~/DeepStream-Yolo/utils/gen_wts_yoloV8.py ~/ultralytics"

## Step 5:

Run "cd ~/ultralytics"
Edit the gen_wts_yoloV8.py
Remove cd ~/ultralytics from line 48, if it doesn't exist move forward
Remove ".yolo" from line 5 and line 6
Edit line 287 and 288 to add yolov8s

## Step 6:

Copy ultralytics's Makefile to ultralytics folder, then run
"cd ~/ultralytics" then run 
"make run"

## Step 7:

Copy DeepStream-Yolo's Makefile to DeepStream-Yolo folder, then run
"cd ~/DeepStream-Yolo" then run
"make run"

## Step 8:

Copy config_infer_primary_yoloV8.txt to DeepStream-Yolo/

## Step 9:

Copy deepstream_app_config.txt to DeepStream-Yolo/

## Step 10:

Copy labels.txt to DeepStream-Yolo/

## Step 11:

Testing

	deepstream-app -c deepstream_app_config.txt

## NOTE:
Nvidia Guide Link to work with configuration:
	https://docs.nvidia.com/metropolis/deepstream/dev-guide/text/DS_ref_app_deepstream.html

