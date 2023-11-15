## Step 1:
Copy Makefile and YOLOv8-Jetson.py  to root directory

Run "cd ~" then
"make install"

## Step 2:

Run "cd DeepStream-Yolo" then run
"git checkout 68f762d5bdeae7ac3458529bfe6fed72714336ca"
then run "cp ~/DeepStream-Yolo/utils/gen_wts_yoloV8.py ~/ultralytics"

## Step 2:

Run "cd ~/ultralytics"
Edit the gen_wts_yoloV8.py
Remove cd ~/ultralytics from line 48, if it doesn't exist move forward
Remove ".yolo" from line 5 and line 6
Edit line 287 and 288 to add yolov8x

## Step 3:

Copy ultralytics's Makefile to ultralytics folder, then run
"cd ~/ultralytics" then run 
"make run"

## Step 4:

Copy DeepStream-Yolo's Makefile to DeepStream-Yolo folder, then run
"cd ~/DeepStream-Yolo" then run
"make run"

## Step 5:

Edit the config_infer_primary_yoloV8.txt
    
    { 
		[property]
		...
		custom-network-config=yolov8x.cfg
		model-file=yolov8x.wts
		...
		num-detected-classes=80
		...
     }

## Step 6:

Edit the deepstream_app_config.txt

	{ 
		[primary-gie]
		...
		config-file=config_infer_primary_yoloV8.txt
     }

## Step 7:

Change the video source in deepstream_app_config.txt file.

	{
		[source0]
		...
		uri=file:///opt/nvidia/deepstream/deepstream/samples/streams/sample_1080p_h264.mp4
	}

## Step 8:

Testing

	deepstream-app -c deepstream_app_config.txt

