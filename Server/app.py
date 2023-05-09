import json
from flask import Flask
from flask_cors import CORS
app = Flask(__name__)
cors=CORS(app)

database = {
  'DEV KALGUTKAR': 2212010, 
'HRISHIKESH BHAVE': 2216014,
'OM PARAB': 2214033,
'LIAM MENDES': 2211011,
'NEHA BHANDARI': 2112068,
'SACHI BOKADE': 2113016,
'PRANAV NAIK': 2114035,
'BHAGYASHREE KUDALKAR': 2111008,
 'AADARSH CHODANKAR': 2012001,
 'MELISSA SOLOMON': 2013014,
 'JASON RODRIGUES': 2014016,
 'JOHAN ARAUJO': 2121009,
 'LYZANDER GOMES': 1912025, 
 'YASH PHAL DESSAI': 2022025, 
 'ANIRUDDHA SURAWASE': 2023007,  
 'REEV DSOUZA': 1914036, 
 'SHRUTI SAWANT': 2021037
}


CLASS_REG='https://docs.google.com/spreadsheets/d/1jC9BWDi-06lxcEn524T3UE_5MGSSvrF9V1DWddJQnA0/edit?pli=1#gid=0'
DEPT_REG='https://docs.google.com/spreadsheets/d/1jMYywzICmj83CzKZqAP09U0PHb-W6AVwgyNFLG4icIM/edit#gid=0'


@app.route('/login/<name>/<password>/<choice>')
def login(name, password,choice):
    if name in database:
        if database[name] == int(password):
            if choice=='Class':
                return json.dumps({'Response':"OK",'Link':CLASS_REG})
            else:
                return json.dumps({'Response':"OK",'Link':DEPT_REG})
    return json.dumps({'Response':"NotOK"})

if __name__ == '__main__':
    app.run(debug=True)