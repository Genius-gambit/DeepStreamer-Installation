install:
	# Step 1
	# Install packages

	@sudo apt install \
		libssl1.1 \
		libgstreamer1.0-0 \
		gstreamer1.0-tools \
		gstreamer1.0-plugins-good \
		gstreamer1.0-plugins-bad \
		gstreamer1.0-plugins-ugly \
		gstreamer1.0-libav \
		libgstreamer-plugins-base1.0-dev \
		libgstrtspserver-1.0-0 \
		libjansson4 \
		libyaml-cpp-dev
	
	# Install Python3 and ultralytics

	@sudo apt update
	@sudo apt install -y python3-pip
	@pip3 install --upgrade pip
	@git clone https://github.com/ultralytics/ultralytics.git
	@python3 YOLOv8-Jetson.py
	
	# Clone DeepStream-Yolo, copy gen_wts_yoloV8.py to ultralytics

	@git clone https://github.com/marcoslucianops/DeepStream-Yolo
	@cp ~/DeepStream-Yolo/utils/gen_wts_yoloV8.py ~/ultralytics

	# Step 2
	# cd ultralytics
	# Edit the gen_wts_yoloV8.py
	# Remove "yolo" from line 5 and line 6

	# Reference:
	# 	https://wiki.seeedstudio.com/YOLOv8-DeepStream-TRT-Jetson/
