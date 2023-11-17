run:
	# Generates config file
	@wget https://github.com/ultralytics/assets/releases/download/v0.0.0/yolov8x.pt
	@python3 gen_wts_yoloV8.py -w yolov8x.pt

	@cp yolov8x.cfg ~/DeepStream-Yolo
	@cp yolov8x.wts ~/DeepStream-Yolo
	@cp labels.txt ~/DeepStream-Yolo
