FasdUAS 1.101.10   ��   ��    k             l     ��  ��    ' ! Play selected genre in iTunes --     � 	 	 B   P l a y   s e l e c t e d   g e n r e   i n   i T u n e s   - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( ( " play all songs by the given genre    ) � * * D   p l a y   a l l   s o n g s   b y   t h e   g i v e n   g e n r e '  + , + i      - . - I      �� /���� 0 	playgenre 	playGenre /  0�� 0 o      ���� 0 	genrename 	genreName��  ��   . k     + 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 n      9 : 9 I    �������� 00 createworkflowplaylist createWorkflowPlaylist��  ��   : o     ���� 
0 config   8  ; < ; n     = > = I    ��������  0 disableshuffle disableShuffle��  ��   > o    ���� 
0 config   <  ? @ ? l   ��������  ��  ��   @  A B A O    ) C D C k    ( E E  F G F r     H I H n     J K J I    �� L����  0 decodexmlchars decodeXmlChars L  M�� M o    ���� 0 	genrename 	genreName��  ��   K o    ���� 
0 config   I o      ���� 0 	genrename 	genreName G  N O N r    ! P Q P n     R S R I    �� T���� .0 getgenresongsbyartist getGenreSongsByArtist T  U�� U o    ���� 0 	genrename 	genreName��  ��   S o    ���� 
0 config   Q o      ���� 0 thesongs theSongs O  V�� V n   " ( W X W I   # (�� Y���� (0 setplaylisttosongs setPlaylistToSongs Y  Z�� Z o   # $���� 0 thesongs theSongs��  ��   X o   " #���� 
0 config  ��   D m     [ [�                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   B  \�� \ l  * *��������  ��  ��  ��   ,  ] ^ ] l     ��������  ��  ��   ^  _�� _ l    `���� ` I    �� a���� 0 	playgenre 	playGenre a  b�� b m     c c � d d  { q u e r y }��  ��  ��  ��  ��       �� e f g��   e ������ 0 	playgenre 	playGenre
�� .aevtoappnull  �   � **** f �� .���� h i���� 0 	playgenre 	playGenre�� �� j��  j  ���� 0 	genrename 	genreName��   h ������ 0 	genrename 	genreName�� 0 thesongs theSongs i ������ [�������� 
0 config  �� 00 createworkflowplaylist createWorkflowPlaylist��  0 disableshuffle disableShuffle��  0 decodexmlchars decodeXmlChars�� .0 getgenresongsbyartist getGenreSongsByArtist�� (0 setplaylisttosongs setPlaylistToSongs�� ,�j+ O�j+ O� ��k+ E�O��k+ E�O��k+ UOP g �� k���� l m��
�� .aevtoappnull  �   � **** k k      n n   o o  _����  ��  ��   l   m 	��  ���� "���� c��
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� 0 	playgenre 	playGenre�� *��j �&�%/j E�O*�k+  ascr  ��ޭ