
import re, glob, os, sys, shelve, collections

class Parse(object):
    def __init__(self,sdir,tag=None):
        self.sdir =sdir
        self.tag = tag
        c1 = re.compile( '"(https://www.earthsystemcog.org/site_media/[^"]*)"' )
        c2 = re.compile( '"(/site_media/[^"]*)"' )
        fl = [f for f in glob.glob( '%s/*' % sdir ) if os.path.isfile(f)]
        self.urls = set()
        for f in fl:
            for ii in open(f,'r').readlines():
                for u in c1.findall( ii.strip() ):
                    self.urls.add( u )
                for u in c2.findall( ii.strip() ):
                    self.urls.add( u )

    def consol(self,sfile):
        sh = shelve.open( sfile )
        l1 = len( sh.keys() )
        for u in self.urls:
            if u in sh:
                sh[u].add(self.tag)
            else:
                sh[u] = set( [self.tag,] )
        l2 = len( sh.keys() )
        print('consol %s: %s and %s --> %s' % (self.sdir, l1, len(self.urls), l2) )
        sh.close()

if __name__ == "__main__":
    if sys.argv[1] == '-r':
        tag = sys.argv[2]
        sfile = 'urls_%s' % tag
        sh = shelve.open( sfile, 'r' )
        p1 = '/site_media/projects/%s' % tag
        p2 = '/site_media/logos/'
        p3 = '/site_media/photos/'
        tags = [p1,p2,p3]
        cc = collections.defaultdict( set )
        for k in sh.keys():
            print (k)
            ok = False
            for t in tags:
                if k.find(t) == 0:
                    ok = True
                    cc[t].add(k)
            if not ok:
               cc['__other__'].add(k)
        print (cc['__other__'] )
        oo = open( 'maps_%s.txt' % tag , 'w' )
        for k in sorted( cc['__other__'] ):
            oo.write( '%s\t%s\n' % (k,k) )
        oo.close()
    elif sys.argv[1] == '-m':
        pass
    elif sys.argv[1] == '-l':
        sh = shelve.open( sys.argv[2], 'r' )
        urls = set()
        for k in sh.keys():
            if k[0] == '/':
                urls.add( 'https://www.earthsystemcog.org%s' % k )
            else:
                urls.add( k )
        l = sorted( list( urls ) )
        for i in l:
            print (i)
            op = i.replace( 'https://', '' )
            if not os.path.isfile(op):
              os.popen( 'wget -r --tries=2 --no-parent %s' % i )
    else:
      p = Parse(sys.argv[1],tag=sys.argv[3])
      p.consol( sys.argv[2] )
