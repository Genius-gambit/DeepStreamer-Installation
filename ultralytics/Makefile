run:
	# Generates config file
	@wget https://github.com/ultralytics/assets/releases/download/v0.0.0/yolov8s.pt
	@python3 gen_wts_yoloV8.py -w yolov8s.pt

	@cp yolov8s.cfg ~/DeepStream-Yolo
	@cp yolov8s.wts ~/DeepStream-Yolo
	@cp labels.txt ~/DeepStream-Yolo
