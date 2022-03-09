#! /usr/bin/python3

import json, psutil, datetime, sys, time

while True:
  print(json.dumps((datetime.datetime.now().isoformat(),
                    psutil.Process(int(sys.argv[1])).memory_info()._asdict())))
  time.sleep(1)
