FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - '-- Filter songs by the typed query ----     � 	 	 N - -   F i l t e r   s o n g s   b y   t h e   t y p e d   q u e r y   - - - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( ) # get song result list as XML string    ) � * * F   g e t   s o n g   r e s u l t   l i s t   a s   X M L   s t r i n g '  + , + i      - . - I      �� /���� $0 getresultlistxml getResultListXml /  0�� 0 o      ���� 	0 query  ��  ��   . k     � 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 0 * search iTunes library for the given query    : � ; ; T   s e a r c h   i T u n e s   l i b r a r y   f o r   t h e   g i v e n   q u e r y 8  < = < O     � > ? > k    � @ @  A B A l   ��������  ��  ��   B  C D C l   �� E F��   E 5 / search Music playlist for songs matching query    F � G G ^   s e a r c h   M u s i c   p l a y l i s t   f o r   s o n g s   m a t c h i n g   q u e r y D  H I H r     J K J l    L���� L I   �� M N
�� .hookSrchcTrk        cPly M 4    �� O
�� 
cPly O m    ����  N �� P��
�� 
pTrm P o   	 
���� 	0 query  ��  ��  ��   K o      ���� 0 thesongs theSongs I  Q R Q l   ��������  ��  ��   R  S T S l   �� U V��   U    create initial XML string    V � W W 4   c r e a t e   i n i t i a l   X M L   s t r i n g T  X Y X r     Z [ Z n     \ ] \ I    �������� "0 createxmlheader createXmlHeader��  ��   ] o    ���� 
0 config   [ o      ���� 0 xml   Y  ^ _ ^ l   ��������  ��  ��   _  ` a ` l   �� b c��   b R L inform user that no results were found (prompt to switch to iTunes instead)    c � d d �   i n f o r m   u s e r   t h a t   n o   r e s u l t s   w e r e   f o u n d   ( p r o m p t   t o   s w i t c h   t o   i T u n e s   i n s t e a d ) a  e f e Z    � g h�� i g =    j k j n     l m l 1    ��
�� 
leng m o    ���� 0 thesongs theSongs k m    ����   h k   ! 8 n n  o p o l  ! !��������  ��  ��   p  q r q r   ! 6 s t s b   ! 4 u v u o   ! "���� 0 xml   v n   " 3 w x w I   # 3�� y���� 0 createxmlitem createXmlItem y  z { z m   # $ | | � } }  n o - r e s u l t s {  ~  ~ m   $ % � � � � �  n u l l   � � � m   % & � � � � �  n o �  � � � m   & ' � � � � �  N o t   F o u n d �  � � � l  ' , ����� � b   ' , � � � b   ' * � � � m   ' ( � � � � � & N o   s o n g s   m a t c h i n g   ' � o   ( )���� 	0 query   � m   * + � � � � �  '��  ��   �  ��� � n   , / � � � o   - /���� "0 defaulticonname defaultIconName � o   , -���� 
0 config  ��  ��   x o   " #���� 
0 config   t o      ���� 0 xml   r  ��� � l  7 7��������  ��  ��  ��  ��   i k   ; � � �  � � � l  ; ;��������  ��  ��   �  � � � l  ; ;�� � ���   � 6 0 loop through the results to create the XML data    � � � � `   l o o p   t h r o u g h   t h e   r e s u l t s   t o   c r e a t e   t h e   X M L   d a t a �  � � � r   ; > � � � m   ; <����  � o      ���� 0 	songindex 	songIndex �  � � � X   ? � ��� � � k   S � � �  � � � l  S S��������  ��  ��   �  � � � l  S S�� � ���   �   limit number of results    � � � � 0   l i m i t   n u m b e r   o f   r e s u l t s �  � � � Z   S b � ����� � ?  S Z � � � o   S T���� 0 	songindex 	songIndex � l  T Y ����� � n   T Y � � � o   U Y���� 0 	songlimit 	songLimit � o   T U���� 
0 config  ��  ��   �  S   ] ^��  ��   �  � � � l  c c��������  ��  ��   �  � � � l  c c�� � ���   �   get song information    � � � � *   g e t   s o n g   i n f o r m a t i o n �  � � � r   c k � � � l  c i ����� � e   c i � � n   c i � � � 1   d h��
�� 
pDID � o   c d���� 0 thesong theSong��  ��   � o      ���� 0 songid songId �  � � � r   l s � � � n   l q � � � 1   m q��
�� 
pnam � o   l m���� 0 thesong theSong � o      ���� 0 songname songName �  � � � r   t { � � � n   t y � � � 1   u y��
�� 
pArt � o   t u���� 0 thesong theSong � o      ���� 0 
songartist 
songArtist �  � � � r   | � � � � n   | � � � � 1   } ���
�� 
pAlb � o   | }���� 0 thesong theSong � o      ���� 0 	songalbum 	songAlbum �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pKnd � o   � ����� 0 thesong theSong � o      ���� 0 songkind songKind �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � , & exclude digital booklets from results    � � � � L   e x c l u d e   d i g i t a l   b o o k l e t s   f r o m   r e s u l t s �  � � � Z   � � � ����� � >  � � � � � o   � ��� 0 songkind songKind � m   � � � � � � �  P D F   D o c u m e n t � k   � � � �  � � � l  � ��~�}�|�~  �}  �|   �  � � � r   � � � � � n   � � � � � I   � ��{ ��z�{ (0 getsongartworkpath getSongArtworkPath �  � � � o   � ��y�y 0 thesong theSong �  � � � o   � ��x�x 0 
songartist 
songArtist �  ��w � o   � ��v�v 0 	songalbum 	songAlbum�w  �z   � o   � ��u�u 
0 config   � o      �t�t "0 songartworkpath songArtworkPath �  �  � l  � ��s�r�q�s  �r  �q     l  � ��p�p   "  add song information to XML    � 8   a d d   s o n g   i n f o r m a t i o n   t o   X M L  r   � �	 b   � �

 o   � ��o�o 0 xml   n   � � I   � ��n�m�n 0 createxmlitem createXmlItem  l  � ��l�k b   � � m   � � � 
 s o n g - o   � ��j�j 0 songid songId�l  �k    c   � � o   � ��i�i 0 songid songId m   � ��h
�h 
ctxt  m   � � �  y e s  o   � ��g�g 0 songname songName  !  o   � ��f�f 0 
songartist 
songArtist! "�e" o   � ��d�d "0 songartworkpath songArtworkPath�e  �m   o   � ��c�c 
0 config  	 o      �b�b 0 xml   #$# l  � ��a�`�_�a  �`  �_  $ %&% r   � �'(' [   � �)*) o   � ��^�^ 0 	songindex 	songIndex* m   � ��]�] ( o      �\�\ 0 	songindex 	songIndex& +�[+ l  � ��Z�Y�X�Z  �Y  �X  �[  ��  ��   � ,�W, l  � ��V�U�T�V  �U  �T  �W  �� 0 thesong theSong � o   B C�S�S 0 thesongs theSongs � -�R- l  � ��Q�P�O�Q  �P  �O  �R   f ./. l  � ��N�M�L�N  �M  �L  / 010 r   � �232 b   � �454 o   � ��K�K 0 xml  5 n   � �676 I   � ��J�I�H�J "0 createxmlfooter createXmlFooter�I  �H  7 o   � ��G�G 
0 config  3 o      �F�F 0 xml  1 8�E8 l  � ��D�C�B�D  �C  �B  �E   ? m     99�                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   = :;: l  � ��A�@�?�A  �@  �?  ; <=< l  � ��>>?�>  >   return XML data   ? �@@     r e t u r n   X M L   d a t a= ABA L   � �CC o   � ��=�= 0 xml  B D�<D l  � ��;�:�9�;  �:  �9  �<   , EFE l     �8�7�6�8  �7  �6  F GHG l   I�5�4I n    JKJ I    �3�2�1�3 (0 createartworkcache createArtworkCache�2  �1  K o    �0�0 
0 config  �5  �4  H L�/L l   M�.�-M I    �,N�+�, $0 getresultlistxml getResultListXmlN O�*O m    PP �QQ  { q u e r y }�*  �+  �.  �-  �/       �)RST�)  R �(�'�( $0 getresultlistxml getResultListXml
�' .aevtoappnull  �   � ****S �& .�%�$UV�#�& $0 getresultlistxml getResultListXml�% �"W�" W  �!�! 	0 query  �$  U � �����������  	0 query  � 0 thesongs theSongs� 0 xml  � 0 	songindex 	songIndex� 0 thesong theSong� 0 songid songId� 0 songname songName� 0 
songartist 
songArtist� 0 	songalbum 	songAlbum� 0 songkind songKind� "0 songartworkpath songArtworkPathV 9������ | � � � � �������
�	����� ����
� 
cPly
� 
pTrm
� .hookSrchcTrk        cPly� 
0 config  � "0 createxmlheader createXmlHeader
� 
leng� "0 defaulticonname defaultIconName� � 0 createxmlitem createXmlItem
� 
kocl
� 
cobj
�
 .corecnte****       ****�	 0 	songlimit 	songLimit
� 
pDID
� 
pnam
� 
pArt
� 
pAlb
� 
pKnd� (0 getsongartworkpath getSongArtworkPath
� 
ctxt� "0 createxmlfooter createXmlFooter�# �� �*�l/�l E�O�j+ E�O��,j  �������%�%��,�+ %E�OPY �kE�O ��[a a l kh ��a , Y hO�a ,EE�O�a ,E�O�a ,E�O�a ,E�O�a ,E�O�a  1Ĥ��m+ E�O��a �%�a &a ����+ %E�O�kE�OPY hOP[OY��OPO��j+ %E�OPUO�OPT � X����YZ��
�  .aevtoappnull  �   � ****X k     [[  \\ G]] L����  ��  ��  Y  Z 
��  ���� "������P��
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� (0 createartworkcache createArtworkCache�� $0 getresultlistxml getResultListXml��  *��j �&�%/j E�O�j+ O*�k+ 	ascr  ��ޭ