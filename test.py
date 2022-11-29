# testing

# load packages
import pandas as pd
from ibm_watson import ToneAnalyzerV3
from ibm_cloud_sdk_core.authenticators import IAMAuthenticator

# load config file for authentication
import config

# authenticate my IBM license
ibm_watson_authenticator = IAMAuthenticator(config.IBM_WATSON_API_KEY)
ibm_watson_tone_analyzer = ToneAnalyzerV3(version='2017-09-21', authenticator=ibm_watson_authenticator)
ibm_watson_tone_analyzer.set_service_url(config.IBM_WATSON_URL)

# load in the data
tiktok = pd.read_excel("/Users/rgold/Documents/TikTokDaisy/tiktok.xlsx",sheet_name="tiktok")
print(tiktok)

# play with it
tiktok.loc[:,"username"]

