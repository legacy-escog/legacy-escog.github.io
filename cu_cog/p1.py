
import glob, collections, os, re, shelve


MARKERS = dict(
  PREAMBLE = '<!-- titles should be less than 70 characters -->',
  TITLE = '<h1 class="title">',
  START_TEXT = '<div id="cog_post_body">',
  END_TEXT = '<!--// end div id=cog_post_body //-->',
  START_UPDATE = '<div id="last_update_text"',
  END_UPDATE = '<!--// end div id="last_update_text" //-->' )

class UrlSub(object):
    def __init__(self,tag,sfile=None):
        self.c1 = re.compile( '"(https://www.earthsystemcog.org/site_media/[^"]*)"' )
        self.c2 = re.compile( '"(/site_media/[^"]*)"' )
        self.maps = {}
        
        p1 = '/site_media/projects/%s' % tag
        p2 = '/site_media/logos/'
        p3 = '/site_media/photos/'
        self.rep = { p2:'../Logos/', p3:'../Photos/', p1:'../Documents/' }
        self.tags = [p1,p2,p3]
        if sfile != None:
            self.urls=shelve.open( sfile )

    def get_tag(self,url):
        for t in self.tags:
                if url.find(t) == 0:
                    return t
        return None
                  
    def get_urls(self,ss):
        return self.c1.findall( ss ) + self.c1.findall( ss )

    def repl(self,line):
        for u in self.get_urls(line):
            t = self.get_tag(u)
            if t != None:
                line = line.replace( u, self.rep[t] )
        return line

class CogHtmlParse(object):
    def __init__(self,file, odir='_md',tag='es-doc-models'):
        self.sub = UrlSub(tag,'urls_%s' % tag )
        ii = open(file).readlines()
        fn = file.rpartition('/')[-1]
        cc = collections.defaultdict(list)
        for k,line in enumerate( ii ):
            for km,v in MARKERS.items():
              if line.find( v ) != -1:
                cc[km].append(k)

        ne = 0
        for km in MARKERS.keys():
            if len(cc[km]) != 1:
                print ('ERROR : %s -- %s \n %s' % (km,cc[km], [ii[x] for x in cc[km]]))
                ne +=1
        if ne > 0:
            print (file, 'ERRORS: %s' % ne )
            self.cc = None
        else:
        ##self.start = cc['start'][0]
        ##self.end = cc['end'][0]
          oo = open( '%s/%s.md' % (odir,fn), 'w' )
          oo.write( ii[ cc['TITLE'][0]] .strip() + '\n\n' )
          oo.write( ii[ cc['START_TEXT'][0] ].strip() + '\n' )
          for line in ii[cc['START_TEXT'][0]:cc['END_TEXT'][0]]:
              line2 = self.sub.repl( line )
              oo.write(line2)
          oo.write( ii[ cc['END_TEXT'][0] ].strip() + '\n' )
          oo.close()
          self.cc = cc

if __name__ == "__main__":
  import sys
  idir = sys.argv[1]
  odir = sys.argv[2]
  tag = sys.argv[3]
  fl = [f for f in sorted( glob.glob( '%s/*' % idir ) ) if f[0] != '_' and f[-3:] != ".py" and  os.path.isfile(f)  ]

  for f in fl:
    cf  = CogHtmlParse( f, odir=odir, tag=tag )
    print (f,cf.cc)
