FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ' ! Play selected album in iTunes --     � 	 	 B   P l a y   s e l e c t e d   a l b u m   i n   i T u n e s   - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( . ( play songs belonging to the given album    ) � * * P   p l a y   s o n g s   b e l o n g i n g   t o   t h e   g i v e n   a l b u m '  + , + i      - . - I      �� /���� 0 	playalbum 	playAlbum /  0�� 0 o      ���� 0 	albumname 	albumName��  ��   . k     G 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 n      9 : 9 I    �������� 00 createworkflowplaylist createWorkflowPlaylist��  ��   : o     ���� 
0 config   8  ; < ; n     = > = I    ��������  0 disableshuffle disableShuffle��  ��   > o    ���� 
0 config   <  ? @ ? l   ��������  ��  ��   @  A B A O    E C D C k    D E E  F G F r     H I H n     J K J I    �� L����  0 decodexmlchars decodeXmlChars L  M�� M o    ���� 0 	albumname 	albumName��  ��   K o    ���� 
0 config   I o      ���� 0 	albumname 	albumName G  N O N r    4 P Q P 6   2 R S R n     T U T 2    ��
�� 
cTrk U 4    �� V
�� 
cPly V m    ����  S F     1 W X W =  ! ( Y Z Y 1   " $��
�� 
pAlb Z o   % '���� 0 	albumname 	albumName X >  ) 0 [ \ [ 1   * ,��
�� 
pKnd \ m   - / ] ] � ^ ^  P D F   D o c u m e n t Q o      ���� 0 thesongs theSongs O  _ ` _ r   5 = a b a n   5 ; c d c I   6 ;�� e���� .0 sortsongsbyalbumorder sortSongsByAlbumOrder e  f�� f o   6 7���� 0 thesongs theSongs��  ��   d o   5 6���� 
0 config   b o      ���� 0 thesongs theSongs `  g�� g n   > D h i h I   ? D�� j���� (0 setplaylisttosongs setPlaylistToSongs j  k�� k o   ? @���� 0 thesongs theSongs��  ��   i o   > ?���� 
0 config  ��   D m     l l�                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   B  m�� m l  F F��������  ��  ��  ��   ,  n o n l     ��������  ��  ��   o  p�� p l    q���� q I    �� r���� 0 	playalbum 	playAlbum r  s�� s m     t t � u u  { q u e r y }��  ��  ��  ��  ��       �� v w x��   v ������ 0 	playalbum 	playAlbum
�� .aevtoappnull  �   � **** w �� .���� y z���� 0 	playalbum 	playAlbum�� �� {��  {  ���� 0 	albumname 	albumName��   y ������ 0 	albumname 	albumName�� 0 thesongs theSongs z ������ l������ |���� ]������ 
0 config  �� 00 createworkflowplaylist createWorkflowPlaylist��  0 disableshuffle disableShuffle��  0 decodexmlchars decodeXmlChars
�� 
cPly
�� 
cTrk |  
�� 
pAlb
�� 
pKnd�� .0 sortsongsbyalbumorder sortSongsByAlbumOrder�� (0 setplaylisttosongs setPlaylistToSongs�� H�j+ O�j+ O� 6��k+ E�O*�l/�-�[[�,\Z�8\[�,\Z�9A1E�O��k+ E�O��k+ UOP x �� }���� ~ ��
�� .aevtoappnull  �   � **** } k      � �   � �  p����  ��  ��   ~    	��  ���� "���� t��
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� 0 	playalbum 	playAlbum�� *��j �&�%/j E�O*�k+ ascr  ��ޭ