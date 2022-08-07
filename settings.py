import dotenv
import os


ENVFILE_PATH = os.path.join(os.getcwd(), '.env')

if not os.path.exists(ENVFILE_PATH):
    print("[X] env variables is not loaded!")
    raise RuntimeError('Отсутствует .env файл!')

dotenv.load_dotenv(ENVFILE_PATH)

BOT_TOKEN = os.environ.get("BOT_TOKEN")
ACCESS_ID = os.environ.get("ACCESS_ID")