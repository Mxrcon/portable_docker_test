import uuid
import os

run_id = str(uuid.uuid4())

print("test uuid: "+run_id)

with open("./output.txt","w") as output_file:
    output_file.write(run_id)
    output_file.close()
