from PIL import Image
import sys

if len(sys.argv) < 4 :
    print 'Format'
    # print 'python image.py <input file> <output file>'
    print 'python image.py <width size> <height size> <input file> ...'
    sys.exit()

width = int(sys.argv[1])
height = int(sys.argv[2])
for everyfile in range(3,len(sys.argv)):
    input_file_name = sys.argv[everyfile]
     
    with open(input_file_name) as open_file:
        image_content = [int(line.strip()[-3:]) for line in open_file.readlines()]

    list_index = 0
    img = Image.new('RGBA', (width,height))
    for y in range(height):
        for x in range(width):
            rgba = (image_content[list_index], image_content[list_index] ,image_content[list_index] ,1)
            img.putpixel((x,y), rgba)
            list_index += 1
     
    img.show()
    img.save('output_'+input_file_name+'.jpeg')