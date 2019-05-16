import base64
import os

'''below 3 lines allows script to check the directory where it is executed, so it knows where to crete the excel file. I copied the whole block from stack overflow'''
abspath = os.path.abspath(__file__)
current_directory = os.path.dirname(abspath)
os.chdir(current_directory)


with open("icon.gif", "rb") as image_file:
    encoded_string = base64.b64encode(image_file.read())
print(encoded_string)