from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import os
import sys
import re
import time

rootdir = sys.argv[1]

# MCFUNCTION
browser = webdriver.Chrome()
browser.get('https://mcstacker.net/')
import_button = WebDriverWait(browser, 10).until(
    EC.element_to_be_clickable((By.XPATH, "//a[contains(@class, 'mainButtons') and contains(@class, 'specialButton') and text()='Import']"))
)
import_button.click()

command_input_div = WebDriverWait(browser, 10).until(
    EC.presence_of_element_located((By.ID, 'commandInput'))
)
textarea_input = command_input_div.find_element(By.ID, 'commandInput-ta')
textarea_input.clear()
textarea_input.send_keys("FAIL")
parse_nbt_span = command_input_div.find_element(By.ID, 'parseNBT')
parse_nbt_span.click()

alertify = WebDriverWait(browser, 10).until(
    EC.presence_of_element_located((By.ID, 'alertify'))
)
alertify_ok = WebDriverWait(browser, 10).until(
    EC.element_to_be_clickable((By.ID, 'alertify-ok'))
)
alertify_ok.click()

def recursiveMcFunctionIter(root: str):
    for filename in os.listdir(root):
        file_path = os.path.join(root, filename)
        if os.path.isfile(file_path):
            if file_path.endswith(".mcfunction"):
                with open(file_path, 'r') as file:
                    content = file.readlines()
                new_lines = []
                for line in content:
                    if ('function kits:char/' not in line and 'effect give' not in line) and ('give' in line or 'item replace entity' in line or 'particle' in line or 'summon' in line):
                        converted_line = convertCommandLine(line.strip())
                        if converted_line is not None:
                            new_lines.append(converted_line + "\n")
                        else:
                            new_lines.append(line)
                    else:
                        new_lines.append(line)
                with open(file_path, 'w') as file:
                    file.writelines(new_lines)
        else:
            recursiveMcFunctionIter(file_path)

def convertCommandLine(line: str):
    textarea_input.clear()
    textarea_input.send_keys(line)
    parse_nbt_span.click()
    if 'alertify-hidden' in alertify.get_attribute('class').split():
        command_output_div = WebDriverWait(browser, 10).until(
            EC.presence_of_element_located((By.ID, 'commandOutput'))
        )
        textarea_output = command_output_div.find_element(By.ID, 'commandOutput-ta')
        text_value = textarea_output.get_attribute('value')
        text_value = text_value[1:]
        return text_value
    else:
        p_element = alertify.find_element(By.CLASS_NAME, 'alertify-message')
        print("\nFAIL: \n" + p_element.text)
        print("Converting: \"" + line + "\"")
        alertify_ok = WebDriverWait(browser, 10).until(
            EC.element_to_be_clickable((By.ID, 'alertify-ok'))
        )
        alertify_ok.click()
        return None

recursiveMcFunctionIter(rootdir)

browser.close()


'''
# JSON
browser = webdriver.Chrome()
browser.get('https://misode.github.io/nbt2components/')
misode_input = WebDriverWait(browser, 10).until(
    EC.element_to_be_clickable((By.ID, 'input'))
)
misode_output = WebDriverWait(browser, 10).until(
    EC.element_to_be_clickable((By.ID, 'output'))
)

def recursiveJsonIter(root: str):
    for filename in os.listdir(root):
        file_path = os.path.join(root, filename)
        if os.path.isfile(file_path):
            if file_path.endswith(".json"):
                with open(file_path, 'r') as file:
                    content = file.readlines()
                new_lines = []
                for line in content:
                    if '"nbt":' in line:
                        pattern = r'\\(?!\')'
                        temp_line = line.strip("\"nbt: ")[:-2]
                        temp_line = re.sub(pattern, '', temp_line)
                        print("Converting: " + temp_line)
                        converted_line = convertJsonLine(temp_line)
                        if converted_line is not None:
                            converted_line.replace("[", "").replace("]", "")
                            new_lines.append("\"components\": " + converted_line + "\n")
                        else:
                            new_lines.append(line)
                    else:
                        new_lines.append(line)
                with open(file_path, 'w') as file:
                    file.writelines(new_lines)
        else:
            recursiveJsonIter(file_path)

def convertJsonLine(line: str):
    misode_input.clear()
    misode_input.send_keys(line)
    text_value = misode_output.get_attribute('value')
    #time.sleep(1)
    return text_value

recursiveJsonIter(rootdir)

browser.close()
'''