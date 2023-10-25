import settings
import os
import time
from datetime import datetime
import logging

print("Start")
print(f"[ENV]LOG_DIR={settings.LOG_DIR}")

# 現在の日時を取得
current_time = datetime.now().strftime('%Y%m%d%H%M%S')
log_filename = f"{current_time}.txt"
# ログのフルパスを設定
log_filename_fullpath = os.path.join(settings.LOG_DIR, log_filename)

# DEBUG_MODE に基づいてログレベルを設定
log_level = logging.DEBUG if settings.DEBUG_MODE else logging.INFO

# ロギングの基本設定
logging.basicConfig(level=log_level,
                    filename=log_filename_fullpath,
                    format='%(asctime)s %(levelname)s - %(filename)s[%(lineno)d]:%(message)s')

# ルートロガーを使用
logging.info("アプリケーション開始")

time.sleep(3)

logging.info("アプリケーション終了")
print("end")
