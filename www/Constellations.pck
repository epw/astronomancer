GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex (      U      -��`�0��x�5�[<   res://.import/star.png-db40ec76fb3fd808480ce0481255e27b.stex       �      �V�:��U+�F��   res://Star.gd.remap  8             �H��79��+�g̟   res://Star.gdc  �      �      �G�,5�Y�Ps$F?   res://Star.tscn P      �      �s��U�q��ԯ�ҁ   res://Stars.gd.remap 8              ?DG�x�2Fy�C�#/   res://Stars.gdc �      }      єj�l��3z��H��u   res://Stars.tscn`	      �      u\>�O+�a�3t���   res://assets/star.png.import�$      �      ��Y'�n��'����   res://default_env.tres  p'      �       um�`�N��<*ỳ�8   res://icon.png  @8      �      G1?��z�c��vN��   res://icon.png.import   �5      �      �����%��(#AB�   res://project.binary0E      g      �i+�頯{��E^I��    GDSC            =      ���ׄ�   �����������������ض�   �������Ӷ���   �����϶�   ���������������������Ҷ�   ��������������������Ҷ��            ?                                                    	      
                                                         #      0      1      7      ;      3YYYYYY;�  �  YYY0�  PQV�  -YYYYYYYY0�  PQV�  �  �  PRR�  RQYY0�  PQV�  �  �  Y`            [gd_scene load_steps=4 format=2]

[ext_resource path="res://assets/star.png" type="Texture" id=1]
[ext_resource path="res://Star.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 28, 28 )

[node name="Star" type="Area2D"]
modulate = Color( 0.6, 0.6, 0.6, 1 )
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
[connection signal="mouse_entered" from="." to="." method="_on_Star_mouse_entered"]
[connection signal="mouse_exited" from="." to="." method="_on_Star_mouse_exited"]
 GDSC            /      ���ӄ�   �����϶�   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   �������Ӷ���   ���¶���   	   ui_cancel                                                    	   	   
   
                                       %      -      3YYYYYYYYY0�  PQV�  -YYYY0�  P�  QV�  &�  T�  PQV�  �  PQT�  PQY`   [gd_scene load_steps=3 format=2]

[ext_resource path="res://Stars.gd" type="Script" id=1]
[ext_resource path="res://Star.tscn" type="PackedScene" id=2]

[node name="Stars" type="Node2D"]
script = ExtResource( 1 )

[node name="Star" parent="." instance=ExtResource( 2 )]
position = Vector2( 762.261, 538.815 )

[node name="Star2" parent="." instance=ExtResource( 2 )]
position = Vector2( 258.801, 275.772 )

[node name="Star3" parent="." instance=ExtResource( 2 )]
position = Vector2( 767.918, 199.404 )

[node name="Star4" parent="." instance=ExtResource( 2 )]
position = Vector2( 384.666, 550.129 )

[node name="Star5" parent="." instance=ExtResource( 2 )]
position = Vector2( 410.122, 120.208 )
       GDSTD   D           �  PNG �PNG

   IHDR   D   D   8��   sRGB ���  WIDATx�Ŝ{��F��@II}.�������dɮwv}��ݒHV�U$�>3�ɳIh�TS�T�py��L	�m����("�Џ��������m;������o�B���[����-a��~�bN6��d�Tqw�����V��o���In�?|?��|��?�ED��ݑ�[REU��JJ	��sN	3�������M�ڃ�#V�A}��6�	���ňs������3���Y6�x�m�Y�C &��6i�YH��-�s�m��?��e_ ��n��8ڮ3����$ B�<3�AU0s�Q�GU��t�����P��k��K۫���b1I19�u�����@4�1�LJ�ə�&���;Y�}DM+�����S{T���]�f��ϗMT�E��^qG����xŅM36M���)'T��0RJ��e�1��S$	��4�r�5k���l}⏾����*��C�ߦ���D�.��+h�C�9>)Sk��*�2�ǁ�I��00 �֐l)��P�'���,�BK�S��6K>8��:w����M^	��H����Rh� �6�|H��6��
�34U�5��"m�@hx� �/(J`m���	�޾�� $Td�6��%���e�I��%}�p�T �%��:ʓ�����i�T�xY�砲��n���~����0�]�V�U)�Xmݝ$BGs{N���iY�+�<�|:_P������I�a�9�&�ȤZ(fTU��!FN�
kP���raYV��jm���y�w�-�����5�I�$7Db`����#[�n�[w�\��@�y���{SO�3�a-+e]q34�fj�n��Y��'r��Z+^��\�S��U�e�~sT�{H�C��NRNPEQD�d�ڢ�&(͗	`r0�U�f&-����3��ht^X�;�,��Y��
)GWJ�Z��q�Q �;w�U����@J���DJis��AS�,�
��I��1G�%<��x�%�騣"i��X�0gwT�\��t@�0�q���Zcl"B�!�eJ��f�! ˣ@��D��L��B�z�P�i$�e����`堊WT!�@���TH�L�bUBHM�&x��-�l���LD�aI��y"/YV�yfmZ�����(�qD���?
��|Te��u]�u �s8'ݽz��yG�z���D�5S�p�s�dD��jS�n~�����RO��3cV��;�rk㭄�[����]}����	��lz��RaYRRT�a8��L]W�����h/�@�"m��� ��]#�2�Ĵ	8icșjΐ2���8M�*K-�e�X$s=�c� .]�ۂ�@����!�p��nBaK��ea�i�B؜�}�j�TP%��L�����f:��׊ul���XIRS���4�,�4dN��t�R*��ʲ,��*�F8ymyXBw��T/u�6�r1��f�
��qw��ߩn|���41��%CY�R�5&���a)�����SI�HNTo(��OJ�\$%�48p��g�_�4p�ݹ�o���"�dURʨys�1Y�H�-J�`T���=��P�h2]+�V�#RH�u]Ǒ��LV������'���%|
6y`�6��I�)q�&�Fr���DJ�e5�u}���SL�#� �������?��������m��T(e�z}c3�����My�^���%�P�fZy��h#Br̾8fes���HJM;Ng�錐(Ÿ�g�yfY�m�G�D�"X2�F����#͗8�!���7	F��Np�yem���K?nV��］���������˅�˅��o���6�q��^'��e��9AJ�q$�#�tF5S�����ze]��Y�]���j
�k��Y*��y_l��1ɑ2i��ا6�<��4TC�j�1�Wg�����>}���q����;����)�Ic�;��̌buC�:d�
iN^^^�y��v����<� ��{��(f�Z��%���QZ˝���y�'�����'p��F���+�o7�<p��>%g�8�~�SJ!�@�Cc���A�z9�K�s�+Sh]�ߺ������l�C���y_�5�@��(�������=��s%��#gхα��u�[�����0�|M����L�����v��a3��$o\@�H�u��>3�@�1s:�Ǒ��ƺT�9�ם��0/h
��$�7���,�Zn�"`�3�9d��AnN$�$v."猈����$%���	��;|��x:���^Ο��@J�E)�|�Ț��I1c^fV�A�SJ��q�(\����&Hn�^��uE%�YA=�! yĒaV�R�V7��Oj�$B6+�於Am�{ª��%k]b����C�/o&%3�*���3?�T9�����(W�fjy{�[,ȷ��^*��,n�I��������-AK�@J�K�a8��f��y��?�U��o*-�J���\��=� k��Dq��Ji�[Β�J���~�v���aȑo�#*9V�#�RIa�I�0]J����y�)��z�7�'!��r�c<�ō���
������	�������P܆n)�����)�1c��܇��'RJ���Ϝρ!���R,���t:m��,aJe�
Mc�T��U?�ks=bn�F ��+=�6Ҽ�--� �dk��#����Q�ԜYJ-WI$�R����Ǒ��L҉��!���t�ݙ���m�����uOО+|�
�B;�6H#E�u��f{0��7ɝ�vmd���!�?
jӪv��������2q:�)���Ô�r���酟~������������o��F)+��u"�j��y�k8R�EA7�7��e��˚���rW�]��=�����)qmlT�V�k�8�\.�ib�����/���?����/�����3�ί����Zx}}}xf����~(v�Ri�����g�����oۿ4(wM�zF\���m7��!-'h� h�t:���'r\��?�������ӟ�Sw~���/���_3cVr�$�^����к/c�w����l�cV[]g_����G�n�V!Oʏ�ɚ�2E0l�7��֟?n�$s�\xy�4�P�k�r7��Z�sfL�C����#�f/[�*VX�`��VH����PB� ���Vo�Wק����uǦ9�Arxlk��,^+Y*T%1�#�f6�4�Ϳ���0�k�Ѕ�r9���V8�F>~���}Bz-3�𽔲9ٔ�}ٸ�����'���z�7�(b���w"7��^�qy4��M���'��Vf����w��;���J�+f�i��4 �|��ߘ�yˌ��V�	����cy�Zt�����H${�յl�	B\��`W��ѥK6ypf*u��RMq3�ZY�����~g�^9���*̷+���/����/?odЯ�����$0�[
�5d�4����Uc�[�G�<��no���}�Y��n[�뛪>s���{C�*L�( Y�v�����G]fY
��}�__�y����������_"�Ĳ,���=�̈́z�9|S�V��ۈ^�8�G��9D��� ���,�C��ٱ���M�-Z��0�y5^��T*Ø���5�Vx��;���������Ϥ�6��hQ6���+�땲��'���4��m�� �4��&Fm����l1g�!�_xLҍ1�p�#�c��ݣ��]}��2��bu��<Ϭ���~gG��;I��;�ۍ��§O��q�2�8lxdY�V�|���\&b��R��nZ�i�6<�]?���,��9��7 }�:z����7��̷(���:_Ii�̬K%������`c�N��y:����]'"��o�c��S(�Z�ц5(�����d�G+�F+!�vo.-!)	P��ȯ��!��B��DPo���_���23��>].XY��B�Z
�:�i������n]W�am0~�a���'��j��Z+���W<�{w�:�"AԔR��>�$hNQ��}���,�#����)7ԍ�p�˧����+	������ʲ��RHI��3���ɣ���14'�/��\.���>y�	�Sʂ�І�LI��G}��j�ɥ��􊁢Tw�'�B���]_\vr�n*�rk$I�r��hT��P�|�t�t�gʲ�����?���0��R�Ӝ���#Vgx����g�|���tڪ���9��l�<(�3Q}����G�����~JT�����G�A�U>��p�u�%B3�<�9���t��S��=z������w��WTFW7�9K�/�%pe5�Z��y-�����4�����r�P\+�.��y�S��,�W�����Z�:��Tyڎ2p���u��=4ȝ�D&��:1f�|>���jT����y}���z�(��TSX+��!�۲;M#�����z�����V�:�N�q�/QPF���o	��	������j�Z�X���f衴k��vhmh�T��9��:��9�l���������l�;:���&�j�5��Zۊ��+k��߸��b\N'Nc��4qF�.��x��9�)�	j��홲7��A �M�j!A�m�{G��!�4���BJ)\�� S�l��'b�S�FҪw�2�R��HQ�/����e����4M������ͷ�V48��S��F+��s���@�1j�m!�RKe�������Da�߸]��襶v�5���M�Z}5%I������/��cY9���}�l��}+�v����#o����ճ.<�v7�� �V&�Rj��7�q�/��߹�n��E��s���5����]}�=�'N��h����c�q/MͽV�ׂ��\N)3�DҲ�������QSi<�)Dii�cK��Ã�eE<�&����_�n�v������~~�u�D�� �a�'����^d-��U!�;z{�H����e����~�4N\N��Dy��x�G����y��B�]� �t=�Q�	�E��!`�b����iMS��;�{���' ��E�����5̧��<�?��h8��{~���d�1a3]����^�V�ҧ�$͌i8��[k溮�߮�n7������R��DI�0�
mcT��Ef��޶g��6sT�TY�K�-�vGRb�N[H��u]u��S�G`��an��-�L��t>qi��^k��a&�**��4/�CR�D��Z��ul�*~�,:eO�i��J5C� Csjk��T�~he7�h@�;�.�/'�$y��r�����Z�w>��Χ��x�߸��T�FB��Z���5>��	d��-�h���-<��{$���~	�IZ������.B1gh>��4���E��L��8��?�!�	,ڱ��_��/�땥,�У�kk���{��4=��٠�KZ���;v/��{4k��ў�᭯&�΋���Υ�����O����j��q�r@B�L���Xoo�����kE\h ІN�v#i{�C �Qd��[7shA8�@���Y(���K8�,���f�����A�4U�3�&F"�{9������i4�aMM{����9䔷��ct�7h+��iqA�p�-�Z��{g�#�ݥ��ȬK-�V<eܜ4��;�#�>�9��'
�<J��!�3[�������Ƈ���U-N)�>a{˲G����FĮ����bM����I�q@�цQJy��{"�^�kn��xn�K��ŜHi���ϣkh�}��K��k�z�];b)��[1�m�ff�����ļ�n[��̰��F�ǪAG�='�����A�����{)��c>r��sZA����"i3�81���9Ú:��&���J
U� |I�J�\������#*=��^��E�}���L��읉]���cş KS߄d۹�EA`#~���=;�ѴB�;��>t|"]M�#j�<���#�����va{�y��>��{��Ǣ�!d��v�&Ѧ��p[�CZ)���vҶ���&���xӢna�m/��J�>0��&�n2�� ��awW����o��x<�.Џo��X�}��A�DTqm��}xF�A�1����wz鴕�ۖ�)e��QS�6�s��Yz��ч4���|��Z�s�MWU95<ar�D�{8�����*8�ְn2Ǳ�&�-:-�P<BI>$0�>��y�Џ���Ԉ����	%5M8���t�~���+U��p�	�8�Cx=С��f���aߝ�c���ݚ�4��7���wm��n�t�zx���u�w�}S������Gc?���{�ӑs[P����f��ۣ�{��#�}�?����Q#�����T�S�=    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/star.png-db40ec76fb3fd808480ce0481255e27b.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://assets/star.png"
dest_files=[ "res://.import/star.png-db40ec76fb3fd808480ce0481255e27b.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
         [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Star.gdc"
 [remap]

path="res://Stars.gdc"
�PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Constellations     application/run/main_scene         res://Stars.tscn   application/config/icon         res://icon.png     display/window/size/height         $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_clear_color                    �?)   rendering/environment/default_environment          res://default_env.tres           