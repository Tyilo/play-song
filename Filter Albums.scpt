FasdUAS 1.101.10   ��   ��    k             l     ��  ��    . (-- Filter albums by the typed query ----     � 	 	 P - -   F i l t e r   a l b u m s   b y   t h e   t y p e d   q u e r y   - - - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( ) # get song result list as XML string    ) � * * F   g e t   s o n g   r e s u l t   l i s t   a s   X M L   s t r i n g '  + , + i      - . - I      �� /���� $0 getresultlistxml getResultListXml /  0�� 0 o      ���� 	0 query  ��  ��   . k    + 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 0 * search iTunes library for the given query    : � ; ; T   s e a r c h   i T u n e s   l i b r a r y   f o r   t h e   g i v e n   q u e r y 8  < = < O    & > ? > k   % @ @  A B A l   ��������  ��  ��   B  C D C l   �� E F��   E 5 / search Music playlist for songs matching query    F � G G ^   s e a r c h   M u s i c   p l a y l i s t   f o r   s o n g s   m a t c h i n g   q u e r y D  H I H r      J K J l    L���� L e     M M 6    N O N n    
 P Q P 2    
��
�� 
cTrk Q 4    �� R
�� 
cPly R m    ����  O F     S T S E     U V U 1    ��
�� 
pAlb V o    ���� 	0 query   T >    W X W 1    ��
�� 
pKnd X m     Y Y � Z Z  P D F   D o c u m e n t��  ��   K o      ���� 0 allsongs allSongs I  [ \ [ r   ! % ] ^ ] J   ! #����   ^ o      ���� 0 	thealbums 	theAlbums \  _ ` _ r   & ) a b a m   & '����  b o      ���� 0 	songindex 	songIndex `  c d c l  * *��������  ��  ��   d  e f e l  * *�� g h��   g - ' retrieve list of albums matching query    h � i i N   r e t r i e v e   l i s t   o f   a l b u m s   m a t c h i n g   q u e r y f  j k j X   * a l�� m l k   : \ n n  o p o l  : :�� q r��   q   limit number of results    r � s s 0   l i m i t   n u m b e r   o f   r e s u l t s p  t u t Z  : G v w���� v ?  : ? x y x o   : ;���� 0 	songindex 	songIndex y l  ; > z���� z n   ; > { | { o   < >���� 0 	songlimit 	songLimit | o   ; <���� 
0 config  ��  ��   w  S   B C��  ��   u  } ~ } l  H H��  ���    / ) add album to list if not already present    � � � � R   a d d   a l b u m   t o   l i s t   i f   n o t   a l r e a d y   p r e s e n t ~  ��� � Z   H \ � ����� � H   H N � � E  H M � � � o   H I���� 0 	thealbums 	theAlbums � n   I L � � � 1   J L��
�� 
pAlb � o   I J���� 0 thesong theSong � r   Q X � � � b   Q V � � � o   Q R���� 0 	thealbums 	theAlbums � l  R U ����� � n   R U � � � 1   S U��
�� 
pAlb � o   R S���� 0 thesong theSong��  ��   � o      ���� 0 	thealbums 	theAlbums��  ��  ��  �� 0 thesong theSong m o   - .���� 0 allsongs allSongs k  � � � l  b b��������  ��  ��   �  � � � l  b b�� � ���   �    create initial XML string    � � � � 4   c r e a t e   i n i t i a l   X M L   s t r i n g �  � � � r   b i � � � n   b g � � � I   c g�������� "0 createxmlheader createXmlHeader��  ��   � o   b c���� 
0 config   � o      ���� 0 xml   �  � � � l  j j��������  ��  ��   �  � � � l  j j�� � ���   � R L inform user that no results were found (prompt to switch to iTunes instead)    � � � � �   i n f o r m   u s e r   t h a t   n o   r e s u l t s   w e r e   f o u n d   ( p r o m p t   t o   s w i t c h   t o   i T u n e s   i n s t e a d ) �  � � � Z   j � ��� � � =  j o � � � n   j m � � � 1   k m��
�� 
leng � o   j k���� 0 allsongs allSongs � m   m n����   � k   r � � �  � � � l  r r��������  ��  ��   �  � � � r   r � � � � b   r � � � � o   r s���� 0 xml   � n   s � � � � I   t ��� ����� 0 createxmlitem createXmlItem �  � � � m   t u � � � � �  n o - r e s u l t s �  � � � m   u v � � � � �  n u l l �  � � � m   v y � � � � �  n o �  � � � m   y | � � � � �  N o t   F o u n d �  � � � l  | � ����� � b   | � � � � b   | � � � � m   |  � � � � � & N o   s o n g s   m a t c h i n g   ' � o    ����� 	0 query   � m   � � � � � � �  '��  ��   �  ��� � n   � � � � � o   � ����� "0 defaulticonname defaultIconName � o   � ����� 
0 config  ��  ��   � o   s t���� 
0 config   � o      ���� 0 xml   �  ��� � l  � ���������  ��  ��  ��  ��   � k   � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � �����  � o      ���� 0 	songindex 	songIndex �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0 loop through the results to create the XML data    � � � � `   l o o p   t h r o u g h   t h e   r e s u l t s   t o   c r e a t e   t h e   X M L   d a t a �  � � � X   � ��� � � k   � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � c   � � � � � o   � ����� 0 	albumname 	albumName � m   � ��
� 
ctxt � o      �~�~ 0 	albumname 	albumName �  � � � r   � � � � � l  � � ��}�| � 6  � � � � � 4  � ��{ �
�{ 
cTrk � m   � ��z�z  � F   � � � � � =  � � � � � 1   � ��y
�y 
pAlb � o   � ��x�x 0 	albumname 	albumName � >  � �   1   � ��w
�w 
pKnd m   � � �  P D F   D o c u m e n t�}  �|   � o      �v�v 0 thesong theSong �  l  � ��u�t�s�u  �t  �s    l  � ��r	�r     limit number of results   	 �

 0   l i m i t   n u m b e r   o f   r e s u l t s  Z  � ��q�p ?  � � o   � ��o�o 0 	songindex 	songIndex l  � ��n�m n   � � o   � ��l�l 0 	songlimit 	songLimit o   � ��k�k 
0 config  �n  �m    S   � ��q  �p    l  � ��j�i�h�j  �i  �h    r   � � n   � � I   � ��g�f�g (0 getsongartworkpath getSongArtworkPath  o   � ��e�e 0 thesong theSong   n   � �!"! 1   � ��d
�d 
pArt" o   � ��c�c 0 thesong theSong  #�b# n   � �$%$ 1   � ��a
�a 
pAlb% o   � ��`�` 0 thesong theSong�b  �f   o   � ��_�_ 
0 config   o      �^�^ "0 songartworkpath songArtworkPath &'& l  � ��]�\�[�]  �\  �[  ' ()( l  � ��Z*+�Z  * "  add song information to XML   + �,, 8   a d d   s o n g   i n f o r m a t i o n   t o   X M L) -.- r   �
/0/ b   �121 o   � ��Y�Y 0 xml  2 n   �343 I   ��X5�W�X 0 createxmlitem createXmlItem5 676 l  � �8�V�U8 b   � �9:9 m   � �;; �<<  a l b u m -: o   � ��T�T 0 	albumname 	albumName�V  �U  7 =>= o   � ��S�S 0 	albumname 	albumName> ?@? m   � �AA �BB  y e s@ CDC o   � ��R�R 0 	albumname 	albumNameD EFE n   � GHG 1   � �Q
�Q 
pArtH o   � ��P�P 0 thesong theSongF I�OI o   �N�N "0 songartworkpath songArtworkPath�O  �W  4 o   � ��M�M 
0 config  0 o      �L�L 0 xml  . JKJ l �K�J�I�K  �J  �I  K LML r  NON [  PQP o  �H�H 0 	songindex 	songIndexQ m  �G�G O o      �F�F 0 	songindex 	songIndexM R�ER l �D�C�B�D  �C  �B  �E  �� 0 	albumname 	albumName � o   � ��A�A 0 	thealbums 	theAlbums � S�@S l �?�>�=�?  �>  �=  �@   � TUT l �<�;�:�<  �;  �:  U VWV r  #XYX b  !Z[Z o  �9�9 0 xml  [ n   \]\ I   �8�7�6�8 "0 createxmlfooter createXmlFooter�7  �6  ] o  �5�5 
0 config  Y o      �4�4 0 xml  W ^�3^ l $$�2�1�0�2  �1  �0  �3   ? m     __�                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   = `a` l ''�/�.�-�/  �.  �-  a bcb l ''�,de�,  d   return XML data   e �ff     r e t u r n   X M L   d a t ac ghg L  ')ii o  '(�+�+ 0 xml  h j�*j l **�)�(�'�)  �(  �'  �*   , klk l     �&�%�$�&  �%  �$  l mnm l   o�#�"o n    pqp I    �!� ��! (0 createartworkcache createArtworkCache�   �  q o    �� 
0 config  �#  �"  n r�r l   s��s I    �t�� $0 getresultlistxml getResultListXmlt u�u m    vv �ww  { q u e r y }�  �  �  �  �       �xyz�  x ��� $0 getresultlistxml getResultListXml
� .aevtoappnull  �   � ****y � .��{|�� $0 getresultlistxml getResultListXml� �}� }  �� 	0 query  �  { �����
�	��� 	0 query  � 0 allsongs allSongs� 0 	thealbums 	theAlbums� 0 	songindex 	songIndex�
 0 thesong theSong�	 0 xml  � 0 	albumname 	albumName� "0 songartworkpath songArtworkPath| _��~�� Y��� �������� � � � � � �������������;A��
� 
cPly
� 
cTrk~  
� 
pAlb
� 
pKnd
� 
kocl
� 
cobj
�  .corecnte****       ****�� 
0 config  �� 0 	songlimit 	songLimit�� "0 createxmlheader createXmlHeader
�� 
leng�� "0 defaulticonname defaultIconName�� �� 0 createxmlitem createXmlItem
�� 
ctxt
�� 
pArt�� (0 getsongartworkpath getSongArtworkPath�� "0 createxmlfooter createXmlFooter�,�#*�l/�-�[[�,\Z�@\[�,\Z�9A1EE�OjvE�OkE�O 6�[��l 	kh ���, Y hO���, ���,%E�Y h[OY��O�j+ E�O��,j  (����a a a �%a %�a ,a + %E�OPY �kE�O z�[��l 	kh �a &E�O*�k/�[[�,\Z�8\[�,\Za 9A1E�O���, Y hOʤ�a ,��,m+ E�O��a �%�a ��a ,�a + %E�O�kE�OP[OY��OPO��j+ %E�OPUO�OPz ����������
�� .aevtoappnull  �   � **** k     ��  �� m�� r����  ��  ��  �  � 
��  ���� "������v��
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� (0 createartworkcache createArtworkCache�� $0 getresultlistxml getResultListXml��  *��j �&�%/j E�O�j+ O*�k+ 	 ascr  ��ޭ