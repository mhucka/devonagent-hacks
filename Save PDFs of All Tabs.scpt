FasdUAS 1.101.10   ��   ��    k             l     ��  ��    T N =============================================================================     � 	 	 �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��  ��    %  @file    Save PDFs of All Tabs     �   >   @ f i l e         S a v e   P D F s   o f   A l l   T a b s      l     ��  ��    N H @brief   Convert open tabs to PDF and save them in a destination folder     �   �   @ b r i e f       C o n v e r t   o p e n   t a b s   t o   P D F   a n d   s a v e   t h e m   i n   a   d e s t i n a t i o n   f o l d e r      l     ��  ��    2 , @author  Michael Hucka <mhucka@caltech.edu>     �   X   @ a u t h o r     M i c h a e l   H u c k a   < m h u c k a @ c a l t e c h . e d u >      l     ��  ��    C = @license Please see the file LICENSE in the parent directory     �   z   @ l i c e n s e   P l e a s e   s e e   t h e   f i l e   L I C E N S E   i n   t h e   p a r e n t   d i r e c t o r y      l     ��   !��     : 4 @repo    https://github.com/mhucka/devonagent-hacks    ! � " " h   @ r e p o         h t t p s : / / g i t h u b . c o m / m h u c k a / d e v o n a g e n t - h a c k s   # $ # l     �� % &��   % T N =============================================================================    & � ' ' �   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = $  ( ) ( l     ��������  ��  ��   )  * + * l      , - . , x     �� / 0��   / 1      ��
�� 
ascr 0 �� 1��
�� 
minv 1 m       2 2 � 3 3  2 . 4��   -    Yosemite (10.10) or later    . � 4 4 4   Y o s e m i t e   ( 1 0 . 1 0 )   o r   l a t e r +  5 6 5 x    �� 7����   7 2  	 ��
�� 
osax��   6  8 9 8 l     ��������  ��  ��   9  : ; : l     ��������  ��  ��   ;  < = < l     �� > ?��   >   Utility functions.    ? � @ @ &   U t i l i t y   f u n c t i o n s . =  A B A l     �� C D��   C T N .............................................................................    D � E E �   . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . B  F G F l     ��������  ��  ��   G  H I H i     J K J I      �� L���� 0 
appmissing 
appMissing L  M N M o      ���� 0 thename theName N  O�� O o      ���� 0 theid theId��  ��   K k      P P  Q R Q l     �� S T��   S R L Test if the given application exists on this computer & return true if not.    T � U U �   T e s t   i f   t h e   g i v e n   a p p l i c a t i o n   e x i s t s   o n   t h i s   c o m p u t e r   &   r e t u r n   t r u e   i f   n o t . R  V W V Q      X Y Z X O     [ \ [ e     ] ] n     ^ _ ^ 1    ��
�� 
pnam _ 5    �� `��
�� 
appf ` o   	 
���� 0 theid theId
�� kfrmID   \ m     a a�                                                                                  MACS  alis    4  active                         BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    a c t i v e  &System/Library/CoreServices/Finder.app  / ��   Y R      ������
�� .ascrerr ****      � ****��  ��   Z L     b b m    ��
�� boovtrue W  c�� c L     d d m    ��
�� boovfals��   I  e f e l     ��������  ��  ��   f  g h g i     i j i I      �� k���� 0 appnotrunning appNotRunning k  l m l o      ���� 0 thename theName m  n�� n o      ���� 0 theid theId��  ��   j k      o o  p q p l     �� r s��   r E ? Test if the given application is running & return true if not.    s � t t ~   T e s t   i f   t h e   g i v e n   a p p l i c a t i o n   i s   r u n n i n g   &   r e t u r n   t r u e   i f   n o t . q  u v u O      w x w r     y z y l    {���� { E     | } | l   
 ~���� ~ e    
   n    
 � � � 1    	��
�� 
pnam � 2    ��
�� 
pcap��  ��   } o   
 ���� 0 thename theName��  ��   z o      ���� 	0 found   x m      � ��                                                                                  sevs  alis    P  active                         BD ����System Events.app                                              ����            ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    a c t i v e  -System/Library/CoreServices/System Events.app   / ��   v  ��� � L     � � H     � � o    ���� 	0 found  ��   h  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� &0 sanitizedfilename sanitizedFileName �  ��� � 1      ��
�� 
pnam��  ��   � k     & � �  � � � l     �� � ���   � Q K Return a name with most non-ASCII characters replaced with "-" and leading    � � � � �   R e t u r n   a   n a m e   w i t h   m o s t   n o n - A S C I I   c h a r a c t e r s   r e p l a c e d   w i t h   " - "   a n d   l e a d i n g �  � � � l     �� � ���   � R L and trailing whitespace removed.  This is more strict than necessary; macOS    � � � � �   a n d   t r a i l i n g   w h i t e s p a c e   r e m o v e d .     T h i s   i s   m o r e   s t r i c t   t h a n   n e c e s s a r y ;   m a c O S �  � � � l     �� � ���   � N H allows many more characters in file names, but this function makes the     � � � � �   a l l o w s   m a n y   m o r e   c h a r a c t e r s   i n   f i l e   n a m e s ,   b u t   t h i s   f u n c t i o n   m a k e s   t h e   �  � � � l     �� � ���   � ; 5 result more compatible with Linux/Unix file systems.    � � � � j   r e s u l t   m o r e   c o m p a t i b l e   w i t h   L i n u x / U n i x   f i l e   s y s t e m s . �  � � � Z      � ����� � ?      � � � n      � � � 1    ��
�� 
leng � 1     ��
�� 
pnam � m    ���� � � r     � � � n     � � � 7  	 �� � �
�� 
ctxt � m    ����  � m    ���� � � 1    	��
�� 
pnam � 1      ��
�� 
pnam��  ��   �  ��� � L    & � � I   %�� ���
�� .sysoexecTEXT���     TEXT � b    ! � � � b     � � � m     � � � � � 
 e c h o   � n     � � � 1    ��
�� 
strq � 1    ��
�� 
pnam � m      � � � � � f   |   s e d   ' s | [ ^ a - z A - Z 0 - 9 _   ] | - | g ; s | ^ [   	 ] * | | ; s | [   	 ] * $ | | '��  ��   �  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Main body.    � � � �    M a i n   b o d y . �  � � � l     �� � ���   � T N .............................................................................    � � � � �   . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �   Sanity checks.    � � � �    S a n i t y   c h e c k s . �  � � � l     ��������  ��  ��   �  � � � l     ����� � Z      � ����� � n     � � � I    �� ����� 0 
appmissing 
appMissing �  � � � m     � � � � �  D E V O N a g e n t �  ��� � m     � � � � �  D N a g��  ��   �  f      � k   
  � �  � � � I  
 �� ���
�� .sysodlogaskr        TEXT � m   
  � � � � � z T h i s   s c r i p t � o n l y   w o r k s   i n   D E V O N a g e n t ,   w h i c h   i s   n o t   i n s t a l l e d .��   �  ��� � L    ����  ��  ��  ��  ��  ��   �  � � � l   - ����� � Z    - � ����� � n    � � � I    �� ����� 0 appnotrunning appNotRunning �  � � � m     � � � � �  D E V O N a g e n t �  ��� � m     � � � � �  D N a g��  ��   �  f     � k   ! ) � �  � � � I  ! &�� ���
�� .sysodlogaskr        TEXT � m   ! " � � � � � R D E V O N a g e n t   d o e s   n o t   a p p e a r   t o   b e   r u n n i n g .��   �  ��  L   ' )����  ��  ��  ��  ��  ��   �  l     ����~��  �  �~    l     �}�}     Main loop.    �    M a i n   l o o p . 	 l     �|�{�z�|  �{  �z  	 
�y
 l  . ��x�w O   . � k   6 �  r   6 ? l  6 =�v�u I  6 =�t�s
�t .sysostflalis    ��� null�s   �r�q
�r 
prmp m   8 9 � N C h o o s e   d e s t i n a t i o n   f o l d e r   f o r   P D F   f i l e s�q  �v  �u   o      �p�p &0 destinationfolder destinationFolder �o X   @ ��n k   ] �  r   ] f n   ] b !  1   ^ b�m
�m 
pnam! o   ] ^�l�l 0 thetab theTab o      �k�k 0 thetitle theTitle "#" r   g p$%$ n   g l&'& 1   h l�j
�j 
pPDF' o   g h�i�i 0 thetab theTab% o      �h�h 0 contentaspdf contentAsPDF# ()( r   q �*+* b   q },-, n  q y./. I   r y�g0�f�g &0 sanitizedfilename sanitizedFileName0 1�e1 o   r u�d�d 0 thetitle theTitle�e  �f  /  f   q r- m   y |22 �33  . p d f+ o      �c�c 0 filename fileName) 454 r   � �676 b   � �898 b   � �:;: l  � �<�b�a< l  � �=�`�_= n   � �>?> 1   � ��^
�^ 
psxp? o   � ��]�] &0 destinationfolder destinationFolder�`  �_  �b  �a  ; m   � �@@ �AA  /9 o   � ��\�\ 0 filename fileName7 o      �[�[ 0 filepath filePath5 BCB r   � �DED I  � ��ZFG
�Z .rdwropenshor       fileF o   � ��Y�Y 0 filepath filePathG �XH�W
�X 
permH m   � ��V
�V boovtrue�W  E o      �U�U 0 thefile theFileC IJI I  � ��TKL
�T .rdwrwritnull���     ****K o   � ��S�S 0 contentaspdf contentAsPDFL �RM�Q
�R 
refnM o   � ��P�P 0 thefile theFile�Q  J N�ON I  � ��NO�M
�N .rdwrclosnull���     ****O o   � ��L�L 0 thefile theFile�M  �O  �n 0 thetab theTab l  C MP�K�JP n   C MQRQ 2  I M�I
�I 
brtbR 4   C I�HS
�H 
brwsS m   G H�G�G �K  �J  �o   5   . 3�FT�E
�F 
cappT m   0 1UU �VV  D N a g
�E kfrmID  �x  �w  �y       �DWXYZ[\�D  W �C�B�A�@�?
�C 
pimr�B 0 
appmissing 
appMissing�A 0 appnotrunning appNotRunning�@ &0 sanitizedfilename sanitizedFileName
�? .aevtoappnull  �   � ****X �>]�> ]  ^_^ �= 2�<
�= 
vers�<  _ �;`�:
�; 
cobj` aa   �9
�9 
osax�:  Y �8 K�7�6bc�5�8 0 
appmissing 
appMissing�7 �4d�4 d  �3�2�3 0 thename theName�2 0 theid theId�6  b �1�0�1 0 thename theName�0 0 theid theIdc  a�/�.�-�,�+
�/ 
appf
�. kfrmID  
�- 
pnam�,  �+  �5  � 
*��0�,EUW 	X  eOfZ �* j�)�(ef�'�* 0 appnotrunning appNotRunning�) �&g�& g  �%�$�% 0 thename theName�$ 0 theid theId�(  e �#�"�!�# 0 thename theName�" 0 theid theId�! 	0 found  f  �� �
�  
pcap
� 
pnam�' � *�-�,E�E�UO�[ � ���hi�� &0 sanitizedfilename sanitizedFileName� �j� j  �
� 
pnam�  h �
� 
pnami ��� �� ��
� 
leng� �
� 
ctxt
� 
strq
� .sysoexecTEXT���     TEXT� '��,� �[�\[Zk\Z�2E�Y hO��,%�%j \ �k��lm�
� .aevtoappnull  �   � ****k k     �nn  �oo  �pp 
��  �  �  l �� 0 thetab theTabm % � �� �� � ��
 ��	U��������� ����������2����@��������������� 0 
appmissing 
appMissing
� .sysodlogaskr        TEXT�
 0 appnotrunning appNotRunning
�	 
capp
� kfrmID  
� 
prmp
� .sysostflalis    ��� null� &0 destinationfolder destinationFolder
� 
brws
� 
brtb
� 
kocl
� 
cobj
�  .corecnte****       ****
�� 
pnam�� 0 thetitle theTitle
�� 
pPDF�� 0 contentaspdf contentAsPDF�� &0 sanitizedfilename sanitizedFileName�� 0 filename fileName
�� 
psxp�� 0 filepath filePath
�� 
perm
�� .rdwropenshor       file�� 0 thefile theFile
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****� �)��l+  �j OhY hO)��l+  �j OhY hO)���0 �*��l E�O }*a k/a -[a a l kh  �a ,E` O�a ,E` O)_ k+ a %E` O�a ,a %_ %E` O_ a el  E` !O_ a "_ !l #O_ !j $[OY��U ascr  ��ޭ