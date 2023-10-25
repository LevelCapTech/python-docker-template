import os
from os.path import join, dirname
from dotenv import load_dotenv

load_dotenv(verbose=True)

dotenv_path = join(dirname(__file__), '.env')
load_dotenv(dotenv_path)

LOG_DIR= os.environ.get("LOG_DIR")
DEBUG_MODE = os.environ.get("DEBUG_MODE", "False").lower() == "true"
