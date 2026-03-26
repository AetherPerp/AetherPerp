from eth_account import Account
import os
from dotenv import load_dotenv

load_dotenv()
pk = os.getenv("AetherPerp_PRIVATE_KEY")
acc = Account.from_key(pk)
print(f"Address: {acc.address}")
