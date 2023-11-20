run:
	# Generates config file
	@wget https://github.com/ultralytics/assets/releases/download/v0.0.0/yolov8m.pt
	@python3 gen_wts_yoloV8.py -w yolov8m.pt

	@cp yolov8m.cfg ~/DeepStream-Yolo
	@cp yolov8m.wts ~/DeepStream-Yolo
	@cp labels.txt ~/DeepStream-Yolo
