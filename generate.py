from lxml import etree
import lxml.html


def generate():
    xml = lxml.etree.parse('update_test.xml')
    xslt = lxml.etree.parse('file.xslt')
    transform = lxml.etree.XSLT(xslt)
    newxml = transform(xml)
    with open('generated.html', 'w') as file:
        file.write(str(newxml))
        file.close()
		
generate()