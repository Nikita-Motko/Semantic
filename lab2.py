from lxml import etree
import lxml.html
import xml.etree.ElementTree as ET
from xml.dom import minidom

xml = ET.parse('1.xml')
all = xml.getroot()
def editing():
    q = 0
    i = 0 
    for game in all.findall('game'):
        i = i + 1
        if (i < 4):
            rating = game.find('rating')
            rating.text = '10.0'
        
    for game in all.findall('game'):
        q = q + 1
        game.set('game_id', str(q))
        publisher = ET.SubElement(game, 'reviews')
        ET.SubElement(publisher, 'review').text = 'review1'
        ET.SubElement(publisher, 'review').text = 'review2'
        ET.SubElement(publisher, 'review').text = 'review3'
        ET.SubElement(publisher, 'review').text = 'review4'
        ET.SubElement(publisher, 'review').text = 'review5'
        
    save_xml('update_test.xml', all)


def save_xml(filename, xml_code):
    xml_string = ET.tostring(xml_code).decode()
    xml_prettyxml = minidom.parseString(xml_string).toprettyxml()
    with open(filename, 'w', encoding='utf-8') as xml:
        xml.write(xml_prettyxml)

editing()