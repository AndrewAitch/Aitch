import os 
from PIL import Image
for element in os.listdir('.'):
    for el in os.listdir('.'+'/'+element):
        for e in os.listdir('.'+'/'+element+'/'+el):
            if os.path.isdir('.'+'/'+element+'/'+el+'/'+e):
                for a in os.listdir('.'+'/'+element+'/'+el+'/'+e):
                        if a[-1]=='f':
                            try :
                                im=Image.open('.'+'/'+element+'/'+el+'/'+e+'/'+a)
                                imm='.'+'/'+element+'/'+el+'/'+e+'/'+a[0:-4]
                                width,height = im.size
                                r = float(width)/float(height)
                                im.save(imm+'.png')
                                im1 = im.resize((int(150*r),150))
                                im2 = im.resize((int(900*r),900))
                                im3 = im.resize((int(1050*r),1050))
                                im4 = im.resize((int(600*r),600))
                                im1.save(imm+'1.png')
                                im2.save(imm+'2.png')
                                im3.save(imm+'3.png')
                                im4.save(imm+'4.png')
                            except:
                                print(imm)
