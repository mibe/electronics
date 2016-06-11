<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="6.6.0">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
<library name="mibe">
<packages>
<package name="LC-204_DN">
<pad name="DOT2" x="0" y="-3.81" drill="0.8" shape="square"/>
<pad name="DIG1_E" x="1.8" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG1_D" x="3.6" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG1_C" x="5.4" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG2_E" x="7.2" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG2_D" x="9" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG2_C" x="10.8" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DOT4" x="12.6" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG3_E" x="14.4" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG3_G" x="16.2" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG3_D" x="18" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG3_C" x="19.8" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DOT5" x="21.6" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG4_E" x="23.4" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG4_D" x="25.2" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DIG4_C" x="27" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DOT7" x="28.8" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="GND" x="30.6" y="-3.81" drill="0.8" shape="octagon"/>
<pad name="DOT6" x="30.6" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG4_B" x="28.8" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG4_A" x="27" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG4_F" x="25.2" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG4_G" x="23.4" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG3_B" x="21.6" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG3_A" x="19.8" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG3_F" x="18" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DOT3" x="16.2" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG2_B" x="14.4" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG2_A" x="12.6" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG2_F" x="10.8" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG2_G" x="9" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG1_B" x="7.2" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG1_A" x="5.4" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG1_F" x="3.6" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DIG1_G" x="1.8" y="4.19" drill="0.8" shape="octagon"/>
<pad name="DOT1" x="0" y="4.19" drill="0.8" shape="octagon"/>
<wire x1="-2.7" y1="5.69" x2="-2.7" y2="-5.31" width="0.005" layer="21"/>
<wire x1="-2.7" y1="-5.31" x2="33.3" y2="-5.31" width="0.005" layer="21"/>
<wire x1="33.3" y1="-5.31" x2="33.3" y2="5.69" width="0.005" layer="21"/>
<wire x1="33.3" y1="5.69" x2="-2.7" y2="5.69" width="0.005" layer="21"/>
<text x="7.5" y="-1.81" size="4" layer="21" ratio="10">88:8.8</text>
<circle x="0.3" y="2.89" radius="0.7" width="0.005" layer="51"/>
<circle x="0.3" y="-2.51" radius="0.7" width="0.005" layer="51"/>
<circle x="30.3" y="2.89" radius="0.7" width="0.005" layer="51"/>
<circle x="30.3" y="-2.51" radius="0.7" width="0.005" layer="51"/>
<text x="-2.5" y="6.19" size="1.27" layer="25" ratio="10">&gt;Name</text>
<text x="22.69" y="6.19" size="1.27" layer="27" ratio="10">&gt;Value</text>
</package>
</packages>
<symbols>
<symbol name="LC-204_DN">
<pin name="DIG1_A" x="-15.24" y="38.1" visible="pin" length="middle" direction="in"/>
<pin name="DIG1_B" x="-15.24" y="35.56" visible="pin" length="middle" direction="in"/>
<pin name="DIG1_C" x="-15.24" y="33.02" visible="pin" length="middle" direction="in"/>
<pin name="DIG1_D" x="-15.24" y="30.48" visible="pin" length="middle" direction="in"/>
<pin name="DIG1_E" x="-15.24" y="27.94" visible="pin" length="middle" direction="in"/>
<pin name="DIG1_F" x="-15.24" y="25.4" visible="pin" length="middle" direction="in"/>
<pin name="DIG1_G" x="-15.24" y="22.86" visible="pin" length="middle" direction="in"/>
<pin name="DIG2_A" x="-15.24" y="17.78" visible="pin" length="middle" direction="in"/>
<pin name="DIG2_B" x="-15.24" y="15.24" visible="pin" length="middle" direction="in"/>
<pin name="DIG2_C" x="-15.24" y="12.7" visible="pin" length="middle" direction="in"/>
<pin name="DIG2_D" x="-15.24" y="10.16" visible="pin" length="middle" direction="in"/>
<pin name="DIG2_E" x="-15.24" y="7.62" visible="pin" length="middle" direction="in"/>
<pin name="DIG2_F" x="-15.24" y="5.08" visible="pin" length="middle" direction="in"/>
<pin name="DIG2_G" x="-15.24" y="2.54" visible="pin" length="middle" direction="in"/>
<pin name="DIG3_A" x="-15.24" y="-2.54" visible="pin" length="middle" direction="in"/>
<pin name="DIG3_B" x="-15.24" y="-5.08" visible="pin" length="middle" direction="in"/>
<pin name="DIG3_C" x="-15.24" y="-7.62" visible="pin" length="middle" direction="in"/>
<pin name="DIG3_D" x="-15.24" y="-10.16" visible="pin" length="middle" direction="in"/>
<pin name="DIG3_E" x="-15.24" y="-12.7" visible="pin" length="middle" direction="in"/>
<pin name="DIG3_F" x="-15.24" y="-15.24" visible="pin" length="middle" direction="in"/>
<pin name="DIG3_G" x="-15.24" y="-17.78" visible="pin" length="middle" direction="in"/>
<pin name="DIG4_A" x="-15.24" y="-22.86" visible="pin" length="middle" direction="in"/>
<pin name="DIG4_B" x="-15.24" y="-25.4" visible="pin" length="middle" direction="in"/>
<pin name="DIG4_C" x="-15.24" y="-27.94" visible="pin" length="middle" direction="in"/>
<pin name="DIG4_D" x="-15.24" y="-30.48" visible="pin" length="middle" direction="in"/>
<pin name="DIG4_E" x="-15.24" y="-33.02" visible="pin" length="middle" direction="in"/>
<pin name="DIG4_F" x="-15.24" y="-35.56" visible="pin" length="middle" direction="in"/>
<pin name="DIG4_G" x="-15.24" y="-38.1" visible="pin" length="middle" direction="in"/>
<pin name="DOT1" x="15.24" y="38.1" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="DOT2" x="15.24" y="35.56" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="DOT3" x="15.24" y="33.02" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="DOT4" x="15.24" y="30.48" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="DOT5" x="15.24" y="27.94" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="DOT6" x="15.24" y="25.4" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="DOT7" x="15.24" y="22.86" visible="pin" length="middle" direction="in" rot="R180"/>
<pin name="GND" x="15.24" y="17.78" visible="pin" length="middle" direction="pwr" rot="R180"/>
<wire x1="-10.16" y1="40.64" x2="10.16" y2="40.64" width="0.254" layer="94"/>
<wire x1="10.16" y1="40.64" x2="10.16" y2="-40.64" width="0.254" layer="94"/>
<wire x1="10.16" y1="-40.64" x2="-10.16" y2="-40.64" width="0.254" layer="94"/>
<wire x1="-10.16" y1="-40.64" x2="-10.16" y2="40.64" width="0.254" layer="94"/>
<text x="-10.16" y="41.275" size="1.778" layer="95">&gt;NAME</text>
<text x="-10.16" y="-43.18" size="1.778" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="LC-204_DN" prefix="D">
<description>&lt;b&gt;LC-204 DN&lt;/b&gt; - The LC-204 series represents 4-digit LED numeric displays designed to take up a minimum of space. The character size is 6 mm, the pin arrangement spacing is 1.8 mm and the shape is the same as a DIL package.</description>
<gates>
<gate name="G$1" symbol="LC-204_DN" x="-20.32" y="-43.18"/>
</gates>
<devices>
<device name="" package="LC-204_DN">
<connects>
<connect gate="G$1" pin="DIG1_A" pad="DIG1_A"/>
<connect gate="G$1" pin="DIG1_B" pad="DIG1_B"/>
<connect gate="G$1" pin="DIG1_C" pad="DIG1_C"/>
<connect gate="G$1" pin="DIG1_D" pad="DIG1_D"/>
<connect gate="G$1" pin="DIG1_E" pad="DIG1_E"/>
<connect gate="G$1" pin="DIG1_F" pad="DIG1_F"/>
<connect gate="G$1" pin="DIG1_G" pad="DIG1_G"/>
<connect gate="G$1" pin="DIG2_A" pad="DIG2_A"/>
<connect gate="G$1" pin="DIG2_B" pad="DIG2_B"/>
<connect gate="G$1" pin="DIG2_C" pad="DIG2_C"/>
<connect gate="G$1" pin="DIG2_D" pad="DIG2_D"/>
<connect gate="G$1" pin="DIG2_E" pad="DIG2_E"/>
<connect gate="G$1" pin="DIG2_F" pad="DIG2_F"/>
<connect gate="G$1" pin="DIG2_G" pad="DIG2_G"/>
<connect gate="G$1" pin="DIG3_A" pad="DIG3_A"/>
<connect gate="G$1" pin="DIG3_B" pad="DIG3_B"/>
<connect gate="G$1" pin="DIG3_C" pad="DIG3_C"/>
<connect gate="G$1" pin="DIG3_D" pad="DIG3_D"/>
<connect gate="G$1" pin="DIG3_E" pad="DIG3_E"/>
<connect gate="G$1" pin="DIG3_F" pad="DIG3_F"/>
<connect gate="G$1" pin="DIG3_G" pad="DIG3_G"/>
<connect gate="G$1" pin="DIG4_A" pad="DIG4_A"/>
<connect gate="G$1" pin="DIG4_B" pad="DIG4_B"/>
<connect gate="G$1" pin="DIG4_C" pad="DIG4_C"/>
<connect gate="G$1" pin="DIG4_D" pad="DIG4_D"/>
<connect gate="G$1" pin="DIG4_E" pad="DIG4_E"/>
<connect gate="G$1" pin="DIG4_F" pad="DIG4_F"/>
<connect gate="G$1" pin="DIG4_G" pad="DIG4_G"/>
<connect gate="G$1" pin="DOT1" pad="DOT1"/>
<connect gate="G$1" pin="DOT2" pad="DOT2"/>
<connect gate="G$1" pin="DOT3" pad="DOT3"/>
<connect gate="G$1" pin="DOT4" pad="DOT4"/>
<connect gate="G$1" pin="DOT5" pad="DOT5"/>
<connect gate="G$1" pin="DOT6" pad="DOT6"/>
<connect gate="G$1" pin="DOT7" pad="DOT7"/>
<connect gate="G$1" pin="GND" pad="GND"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="pinhead">
<description>&lt;b&gt;Pin Header Connectors&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="1X18">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="15.875" y1="1.27" x2="17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="1.27" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-0.635" x2="17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="1.27" x2="19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="1.27" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-0.635" x2="19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="19.685" y1="-1.27" x2="18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="18.415" y1="-1.27" x2="17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="1.27" x2="14.605" y2="1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="14.605" y1="-1.27" x2="13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="13.335" y1="-1.27" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="15.875" y1="1.27" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-0.635" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="17.145" y1="-1.27" x2="15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="1.27" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-0.635" x2="9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="1.27" x2="12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="1.27" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-0.635" x2="12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="12.065" y1="-1.27" x2="10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="10.795" y1="-1.27" x2="10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="1.27" x2="6.985" y2="1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="6.985" y1="-1.27" x2="5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="5.715" y1="-1.27" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="8.255" y1="1.27" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-0.635" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="9.525" y1="-1.27" x2="8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="1.27" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-0.635" x2="1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="1.27" x2="4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="1.27" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-0.635" x2="4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="4.445" y1="-1.27" x2="3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="3.175" y1="-1.27" x2="2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-1.905" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="1.27" x2="-0.635" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="0" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="-0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-0.635" y1="-1.27" x2="-1.905" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-1.905" y1="-1.27" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="0.635" y1="1.27" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="-0.635" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="1.905" y1="-1.27" x2="0.635" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-5.715" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="1.27" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-0.635" x2="-5.715" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-4.445" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="1.27" x2="-3.175" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="1.27" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-2.54" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-0.635" x2="-3.175" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-3.175" y1="-1.27" x2="-4.445" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-4.445" y1="-1.27" x2="-5.08" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-9.525" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="1.27" x2="-8.255" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-7.62" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-8.255" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-8.255" y1="-1.27" x2="-9.525" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-9.525" y1="-1.27" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-6.985" y1="1.27" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-0.635" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-5.715" y1="-1.27" x2="-6.985" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-13.335" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="1.27" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-0.635" x2="-13.335" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-12.065" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="1.27" x2="-10.795" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="1.27" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-10.16" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-0.635" x2="-10.795" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-10.795" y1="-1.27" x2="-12.065" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-12.065" y1="-1.27" x2="-12.7" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-17.145" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="1.27" x2="-15.875" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="1.27" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-15.24" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-0.635" x2="-15.875" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-15.875" y1="-1.27" x2="-17.145" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-17.145" y1="-1.27" x2="-17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-14.605" y1="1.27" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-0.635" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-13.335" y1="-1.27" x2="-14.605" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="1.27" x2="-20.955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="1.27" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-0.635" x2="-20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-19.685" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="1.27" x2="-18.415" y2="1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="1.27" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-17.78" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-0.635" x2="-18.415" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-18.415" y1="-1.27" x2="-19.685" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-19.685" y1="-1.27" x2="-20.32" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="0.635" x2="-22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="-22.225" y1="1.27" x2="-22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="-0.635" x2="-22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="-20.955" y1="-1.27" x2="-22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="20.955" y2="1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="1.27" x2="22.225" y2="1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="1.27" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="0.635" x2="22.86" y2="-0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-0.635" x2="22.225" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="22.225" y1="-1.27" x2="20.955" y2="-1.27" width="0.1524" layer="21"/>
<wire x1="20.955" y1="-1.27" x2="20.32" y2="-0.635" width="0.1524" layer="21"/>
<pad name="1" x="-21.59" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="-1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="1.27" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="6.35" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="8.89" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="11.43" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="13.97" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="16.51" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="19.05" y="0" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="21.59" y="0" drill="1.016" shape="long" rot="R90"/>
<text x="-22.9362" y="1.8288" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="-22.86" y="-3.175" size="1.27" layer="27">&gt;VALUE</text>
<rectangle x1="18.796" y1="-0.254" x2="19.304" y2="0.254" layer="51"/>
<rectangle x1="16.256" y1="-0.254" x2="16.764" y2="0.254" layer="51"/>
<rectangle x1="13.716" y1="-0.254" x2="14.224" y2="0.254" layer="51"/>
<rectangle x1="11.176" y1="-0.254" x2="11.684" y2="0.254" layer="51"/>
<rectangle x1="8.636" y1="-0.254" x2="9.144" y2="0.254" layer="51"/>
<rectangle x1="6.096" y1="-0.254" x2="6.604" y2="0.254" layer="51"/>
<rectangle x1="3.556" y1="-0.254" x2="4.064" y2="0.254" layer="51"/>
<rectangle x1="1.016" y1="-0.254" x2="1.524" y2="0.254" layer="51"/>
<rectangle x1="-1.524" y1="-0.254" x2="-1.016" y2="0.254" layer="51"/>
<rectangle x1="-4.064" y1="-0.254" x2="-3.556" y2="0.254" layer="51"/>
<rectangle x1="-6.604" y1="-0.254" x2="-6.096" y2="0.254" layer="51"/>
<rectangle x1="-9.144" y1="-0.254" x2="-8.636" y2="0.254" layer="51"/>
<rectangle x1="-11.684" y1="-0.254" x2="-11.176" y2="0.254" layer="51"/>
<rectangle x1="-14.224" y1="-0.254" x2="-13.716" y2="0.254" layer="51"/>
<rectangle x1="-16.764" y1="-0.254" x2="-16.256" y2="0.254" layer="51"/>
<rectangle x1="-19.304" y1="-0.254" x2="-18.796" y2="0.254" layer="51"/>
<rectangle x1="-21.844" y1="-0.254" x2="-21.336" y2="0.254" layer="51"/>
<rectangle x1="21.336" y1="-0.254" x2="21.844" y2="0.254" layer="51"/>
</package>
<package name="1X18/90">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<wire x1="-22.86" y1="-1.905" x2="-20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-20.32" y1="0.635" x2="-22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-22.86" y1="0.635" x2="-22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-21.59" y1="6.985" x2="-21.59" y2="1.27" width="0.762" layer="21"/>
<wire x1="-20.32" y1="-1.905" x2="-17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-17.78" y1="0.635" x2="-20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-19.05" y1="6.985" x2="-19.05" y2="1.27" width="0.762" layer="21"/>
<wire x1="-17.78" y1="-1.905" x2="-15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-15.24" y1="0.635" x2="-17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-16.51" y1="6.985" x2="-16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="-15.24" y1="-1.905" x2="-12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-12.7" y1="0.635" x2="-15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-13.97" y1="6.985" x2="-13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="-12.7" y1="-1.905" x2="-10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-10.16" y1="0.635" x2="-12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-11.43" y1="6.985" x2="-11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="-10.16" y1="-1.905" x2="-7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-7.62" y1="0.635" x2="-10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-8.89" y1="6.985" x2="-8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="-7.62" y1="-1.905" x2="-5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-5.08" y1="0.635" x2="-7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-6.35" y1="6.985" x2="-6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="-5.08" y1="-1.905" x2="-2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-2.54" y1="0.635" x2="-5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-3.81" y1="6.985" x2="-3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="-2.54" y1="-1.905" x2="0" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="0" y1="-1.905" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="0" y1="0.635" x2="-2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="-1.27" y1="6.985" x2="-1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="0" y1="-1.905" x2="2.54" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="2.54" y1="0.635" x2="0" y2="0.635" width="0.1524" layer="21"/>
<wire x1="1.27" y1="6.985" x2="1.27" y2="1.27" width="0.762" layer="21"/>
<wire x1="2.54" y1="-1.905" x2="5.08" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="5.08" y1="0.635" x2="2.54" y2="0.635" width="0.1524" layer="21"/>
<wire x1="3.81" y1="6.985" x2="3.81" y2="1.27" width="0.762" layer="21"/>
<wire x1="5.08" y1="-1.905" x2="7.62" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="7.62" y1="0.635" x2="5.08" y2="0.635" width="0.1524" layer="21"/>
<wire x1="6.35" y1="6.985" x2="6.35" y2="1.27" width="0.762" layer="21"/>
<wire x1="7.62" y1="-1.905" x2="10.16" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="10.16" y1="0.635" x2="7.62" y2="0.635" width="0.1524" layer="21"/>
<wire x1="8.89" y1="6.985" x2="8.89" y2="1.27" width="0.762" layer="21"/>
<wire x1="10.16" y1="-1.905" x2="12.7" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="12.7" y1="0.635" x2="10.16" y2="0.635" width="0.1524" layer="21"/>
<wire x1="11.43" y1="6.985" x2="11.43" y2="1.27" width="0.762" layer="21"/>
<wire x1="12.7" y1="-1.905" x2="15.24" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="15.24" y1="0.635" x2="12.7" y2="0.635" width="0.1524" layer="21"/>
<wire x1="13.97" y1="6.985" x2="13.97" y2="1.27" width="0.762" layer="21"/>
<wire x1="15.24" y1="-1.905" x2="17.78" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="17.78" y1="0.635" x2="15.24" y2="0.635" width="0.1524" layer="21"/>
<wire x1="16.51" y1="6.985" x2="16.51" y2="1.27" width="0.762" layer="21"/>
<wire x1="17.78" y1="-1.905" x2="20.32" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="20.32" y1="0.635" x2="17.78" y2="0.635" width="0.1524" layer="21"/>
<wire x1="19.05" y1="6.985" x2="19.05" y2="1.27" width="0.762" layer="21"/>
<wire x1="20.32" y1="-1.905" x2="22.86" y2="-1.905" width="0.1524" layer="21"/>
<wire x1="22.86" y1="-1.905" x2="22.86" y2="0.635" width="0.1524" layer="21"/>
<wire x1="22.86" y1="0.635" x2="20.32" y2="0.635" width="0.1524" layer="21"/>
<wire x1="21.59" y1="6.985" x2="21.59" y2="1.27" width="0.762" layer="21"/>
<pad name="1" x="-21.59" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="2" x="-19.05" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="3" x="-16.51" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="4" x="-13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="5" x="-11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="6" x="-8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="7" x="-6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="8" x="-3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="9" x="-1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="10" x="1.27" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="11" x="3.81" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="12" x="6.35" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="13" x="8.89" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="14" x="11.43" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="15" x="13.97" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="16" x="16.51" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="17" x="19.05" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<pad name="18" x="21.59" y="-3.81" drill="1.016" shape="long" rot="R90"/>
<text x="-23.495" y="-3.81" size="1.27" layer="25" ratio="10" rot="R90">&gt;NAME</text>
<text x="24.765" y="-3.81" size="1.27" layer="27" rot="R90">&gt;VALUE</text>
<rectangle x1="-21.971" y1="0.635" x2="-21.209" y2="1.143" layer="21"/>
<rectangle x1="-19.431" y1="0.635" x2="-18.669" y2="1.143" layer="21"/>
<rectangle x1="-16.891" y1="0.635" x2="-16.129" y2="1.143" layer="21"/>
<rectangle x1="-14.351" y1="0.635" x2="-13.589" y2="1.143" layer="21"/>
<rectangle x1="-11.811" y1="0.635" x2="-11.049" y2="1.143" layer="21"/>
<rectangle x1="-9.271" y1="0.635" x2="-8.509" y2="1.143" layer="21"/>
<rectangle x1="-6.731" y1="0.635" x2="-5.969" y2="1.143" layer="21"/>
<rectangle x1="-4.191" y1="0.635" x2="-3.429" y2="1.143" layer="21"/>
<rectangle x1="-1.651" y1="0.635" x2="-0.889" y2="1.143" layer="21"/>
<rectangle x1="0.889" y1="0.635" x2="1.651" y2="1.143" layer="21"/>
<rectangle x1="3.429" y1="0.635" x2="4.191" y2="1.143" layer="21"/>
<rectangle x1="5.969" y1="0.635" x2="6.731" y2="1.143" layer="21"/>
<rectangle x1="8.509" y1="0.635" x2="9.271" y2="1.143" layer="21"/>
<rectangle x1="11.049" y1="0.635" x2="11.811" y2="1.143" layer="21"/>
<rectangle x1="13.589" y1="0.635" x2="14.351" y2="1.143" layer="21"/>
<rectangle x1="16.129" y1="0.635" x2="16.891" y2="1.143" layer="21"/>
<rectangle x1="18.669" y1="0.635" x2="19.431" y2="1.143" layer="21"/>
<rectangle x1="21.209" y1="0.635" x2="21.971" y2="1.143" layer="21"/>
<rectangle x1="-21.971" y1="-2.921" x2="-21.209" y2="-1.905" layer="21"/>
<rectangle x1="-19.431" y1="-2.921" x2="-18.669" y2="-1.905" layer="21"/>
<rectangle x1="-16.891" y1="-2.921" x2="-16.129" y2="-1.905" layer="21"/>
<rectangle x1="-14.351" y1="-2.921" x2="-13.589" y2="-1.905" layer="21"/>
<rectangle x1="-11.811" y1="-2.921" x2="-11.049" y2="-1.905" layer="21"/>
<rectangle x1="-9.271" y1="-2.921" x2="-8.509" y2="-1.905" layer="21"/>
<rectangle x1="-6.731" y1="-2.921" x2="-5.969" y2="-1.905" layer="21"/>
<rectangle x1="-4.191" y1="-2.921" x2="-3.429" y2="-1.905" layer="21"/>
<rectangle x1="-1.651" y1="-2.921" x2="-0.889" y2="-1.905" layer="21"/>
<rectangle x1="0.889" y1="-2.921" x2="1.651" y2="-1.905" layer="21"/>
<rectangle x1="3.429" y1="-2.921" x2="4.191" y2="-1.905" layer="21"/>
<rectangle x1="5.969" y1="-2.921" x2="6.731" y2="-1.905" layer="21"/>
<rectangle x1="8.509" y1="-2.921" x2="9.271" y2="-1.905" layer="21"/>
<rectangle x1="11.049" y1="-2.921" x2="11.811" y2="-1.905" layer="21"/>
<rectangle x1="13.589" y1="-2.921" x2="14.351" y2="-1.905" layer="21"/>
<rectangle x1="16.129" y1="-2.921" x2="16.891" y2="-1.905" layer="21"/>
<rectangle x1="18.669" y1="-2.921" x2="19.431" y2="-1.905" layer="21"/>
<rectangle x1="21.209" y1="-2.921" x2="21.971" y2="-1.905" layer="21"/>
</package>
</packages>
<symbols>
<symbol name="PINHD18">
<wire x1="-6.35" y1="-25.4" x2="1.27" y2="-25.4" width="0.4064" layer="94"/>
<wire x1="1.27" y1="-25.4" x2="1.27" y2="22.86" width="0.4064" layer="94"/>
<wire x1="1.27" y1="22.86" x2="-6.35" y2="22.86" width="0.4064" layer="94"/>
<wire x1="-6.35" y1="22.86" x2="-6.35" y2="-25.4" width="0.4064" layer="94"/>
<text x="-6.35" y="23.495" size="1.778" layer="95">&gt;NAME</text>
<text x="-6.35" y="-27.94" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-2.54" y="20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="2" x="-2.54" y="17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="3" x="-2.54" y="15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="4" x="-2.54" y="12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="5" x="-2.54" y="10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="6" x="-2.54" y="7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="7" x="-2.54" y="5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="8" x="-2.54" y="2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="9" x="-2.54" y="0" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="10" x="-2.54" y="-2.54" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="11" x="-2.54" y="-5.08" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="12" x="-2.54" y="-7.62" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="13" x="-2.54" y="-10.16" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="14" x="-2.54" y="-12.7" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="15" x="-2.54" y="-15.24" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="16" x="-2.54" y="-17.78" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="17" x="-2.54" y="-20.32" visible="pad" length="short" direction="pas" function="dot"/>
<pin name="18" x="-2.54" y="-22.86" visible="pad" length="short" direction="pas" function="dot"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="PINHD-1X18" prefix="JP" uservalue="yes">
<description>&lt;b&gt;PIN HEADER&lt;/b&gt;</description>
<gates>
<gate name="A" symbol="PINHD18" x="0" y="0"/>
</gates>
<devices>
<device name="" package="1X18">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="/90" package="1X18/90">
<connects>
<connect gate="A" pin="1" pad="1"/>
<connect gate="A" pin="10" pad="10"/>
<connect gate="A" pin="11" pad="11"/>
<connect gate="A" pin="12" pad="12"/>
<connect gate="A" pin="13" pad="13"/>
<connect gate="A" pin="14" pad="14"/>
<connect gate="A" pin="15" pad="15"/>
<connect gate="A" pin="16" pad="16"/>
<connect gate="A" pin="17" pad="17"/>
<connect gate="A" pin="18" pad="18"/>
<connect gate="A" pin="2" pad="2"/>
<connect gate="A" pin="3" pad="3"/>
<connect gate="A" pin="4" pad="4"/>
<connect gate="A" pin="5" pad="5"/>
<connect gate="A" pin="6" pad="6"/>
<connect gate="A" pin="7" pad="7"/>
<connect gate="A" pin="8" pad="8"/>
<connect gate="A" pin="9" pad="9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="frames">
<description>&lt;b&gt;Frames for Sheet and Layout&lt;/b&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="A5L-LOC">
<wire x1="85.09" y1="3.81" x2="85.09" y2="24.13" width="0.1016" layer="94"/>
<wire x1="85.09" y1="24.13" x2="139.065" y2="24.13" width="0.1016" layer="94"/>
<wire x1="139.065" y1="24.13" x2="180.34" y2="24.13" width="0.1016" layer="94"/>
<wire x1="170.18" y1="3.81" x2="170.18" y2="8.89" width="0.1016" layer="94"/>
<wire x1="170.18" y1="8.89" x2="180.34" y2="8.89" width="0.1016" layer="94"/>
<wire x1="170.18" y1="8.89" x2="139.065" y2="8.89" width="0.1016" layer="94"/>
<wire x1="139.065" y1="8.89" x2="139.065" y2="3.81" width="0.1016" layer="94"/>
<wire x1="139.065" y1="8.89" x2="139.065" y2="13.97" width="0.1016" layer="94"/>
<wire x1="139.065" y1="13.97" x2="180.34" y2="13.97" width="0.1016" layer="94"/>
<wire x1="139.065" y1="13.97" x2="139.065" y2="19.05" width="0.1016" layer="94"/>
<wire x1="139.065" y1="19.05" x2="180.34" y2="19.05" width="0.1016" layer="94"/>
<wire x1="139.065" y1="19.05" x2="139.065" y2="24.13" width="0.1016" layer="94"/>
<text x="140.97" y="15.24" size="2.54" layer="94">&gt;DRAWING_NAME</text>
<text x="140.97" y="10.16" size="2.286" layer="94">&gt;LAST_DATE_TIME</text>
<text x="154.305" y="5.08" size="2.54" layer="94">&gt;SHEET</text>
<text x="140.716" y="4.953" size="2.54" layer="94">Sheet:</text>
<frame x1="0" y1="0" x2="184.15" y2="133.35" columns="4" rows="4" layer="94"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="DINA5_L" prefix="FRAME" uservalue="yes">
<description>&lt;b&gt;FRAME&lt;/b&gt;&lt;p&gt;
DIN A5, landscape with doc field</description>
<gates>
<gate name="G$1" symbol="A5L-LOC" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="jumper">
<description>&lt;b&gt;Jumpers&lt;/b&gt;&lt;p&gt;
&lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
<package name="05">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-1.3462" y1="0" x2="1.3462" y2="0" width="0.6096" layer="21"/>
<wire x1="2.54" y1="0" x2="1.397" y2="0" width="0.6096" layer="51"/>
<wire x1="-2.54" y1="0" x2="-1.397" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="2.54" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="0.889" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="2.5001" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="07">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-2.6162" y1="0" x2="2.6162" y2="0" width="0.6096" layer="21"/>
<wire x1="3.81" y1="0" x2="2.54" y2="0" width="0.6096" layer="51"/>
<wire x1="-3.81" y1="0" x2="-2.54" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-3.81" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="3.81" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-2.54" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="3.7" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="10">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-3.8862" y1="0" x2="3.8862" y2="0" width="0.6096" layer="21"/>
<wire x1="5.08" y1="0" x2="3.937" y2="0" width="0.6096" layer="51"/>
<wire x1="-5.08" y1="0" x2="-3.937" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-5.08" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="5.08" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-3.175" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="5" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="12">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-5.1562" y1="0" x2="5.1562" y2="0" width="0.6096" layer="21"/>
<wire x1="6.35" y1="0" x2="5.207" y2="0" width="0.6096" layer="51"/>
<wire x1="-6.35" y1="0" x2="-5.207" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-6.35" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="6.35" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-3.175" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="6.3" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="15">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-6.4262" y1="0" x2="6.4262" y2="0" width="0.6096" layer="21"/>
<wire x1="7.62" y1="0" x2="6.477" y2="0" width="0.6096" layer="51"/>
<wire x1="-7.62" y1="0" x2="-6.477" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-7.62" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="7.62" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-5.715" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="7.5999" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="20">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-8.9662" y1="0" x2="8.9662" y2="0" width="0.6096" layer="21"/>
<wire x1="10.16" y1="0" x2="9.017" y2="0" width="0.6096" layer="51"/>
<wire x1="-10.16" y1="0" x2="-9.017" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-10.16" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="10.16" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-8.255" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="10.1001" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="25">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-11.5062" y1="0" x2="11.5062" y2="0" width="0.6096" layer="21"/>
<wire x1="12.7" y1="0" x2="11.557" y2="0" width="0.6096" layer="51"/>
<wire x1="-12.7" y1="0" x2="-11.557" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-12.7" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="12.7" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-10.795" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="12.5999" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
<package name="30">
<description>&lt;b&gt;JUMPER&lt;/b&gt;</description>
<wire x1="-14.0462" y1="0" x2="14.0462" y2="0" width="0.6096" layer="21"/>
<wire x1="15.24" y1="0" x2="14.097" y2="0" width="0.6096" layer="51"/>
<wire x1="-15.24" y1="0" x2="-14.097" y2="0" width="0.6096" layer="51"/>
<pad name="1" x="-15.24" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<pad name="2" x="15.24" y="0" drill="0.8128" diameter="1.6002" shape="octagon"/>
<text x="-13.335" y="0.635" size="1.27" layer="25" ratio="10">&gt;NAME</text>
<text x="15.2001" y="0" size="0.02" layer="27">&gt;VALUE</text>
</package>
</packages>
<symbols>
<symbol name="J">
<wire x1="-2.54" y1="0" x2="-1.27" y2="1.27" width="0.1524" layer="94"/>
<wire x1="-1.27" y1="1.27" x2="1.27" y2="1.27" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="1.27" y2="1.27" width="0.1524" layer="94"/>
<circle x="-2.54" y="0" radius="0.254" width="0.4064" layer="94"/>
<circle x="2.54" y="0" radius="0.254" width="0.4064" layer="94"/>
<text x="-2.54" y="1.905" size="1.778" layer="95">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="1" x="-5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1"/>
<pin name="2" x="5.08" y="0" visible="pad" length="short" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="J" prefix="J">
<description>Bridge</description>
<gates>
<gate name="1" symbol="J" x="0" y="0"/>
</gates>
<devices>
<device name="5MM" package="05">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="7MM" package="07">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="10MM" package="10">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="12MM" package="12">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="15MM" package="15">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="20MM" package="20">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="25MM" package="25">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
<device name="30MM" package="30">
<connects>
<connect gate="1" pin="1" pad="1"/>
<connect gate="1" pin="2" pad="2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="D1" library="mibe" deviceset="LC-204_DN" device=""/>
<part name="JP1" library="pinhead" deviceset="PINHD-1X18" device=""/>
<part name="JP2" library="pinhead" deviceset="PINHD-1X18" device=""/>
<part name="FRAME1" library="frames" deviceset="DINA5_L" device=""/>
<part name="J1" library="jumper" deviceset="J" device="5MM"/>
<part name="J2" library="jumper" deviceset="J" device="5MM"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="D1" gate="G$1" x="99.06" y="76.2"/>
<instance part="JP1" gate="A" x="58.42" y="93.98"/>
<instance part="JP2" gate="A" x="147.32" y="93.98"/>
<instance part="FRAME1" gate="G$1" x="0" y="0"/>
<instance part="J1" gate="1" x="78.74" y="99.06"/>
<instance part="J2" gate="1" x="78.74" y="50.8"/>
</instances>
<busses>
<bus name="DIG1_[1..7],DIG2_[1..7],DIG3_[1..7],DIG4_[1..7],DOT[1..7],GND">
<segment>
<wire x1="38.1" y1="71.12" x2="38.1" y2="121.92" width="0.762" layer="92"/>
<wire x1="38.1" y1="121.92" x2="40.64" y2="124.46" width="0.762" layer="92"/>
<wire x1="40.64" y1="124.46" x2="68.58" y2="124.46" width="0.762" layer="92"/>
<wire x1="68.58" y1="124.46" x2="124.46" y2="124.46" width="0.762" layer="92"/>
<wire x1="124.46" y1="124.46" x2="127" y2="121.92" width="0.762" layer="92"/>
<wire x1="127" y1="121.92" x2="127" y2="71.12" width="0.762" layer="92"/>
<wire x1="68.58" y1="124.46" x2="71.12" y2="121.92" width="0.762" layer="92"/>
<wire x1="71.12" y1="121.92" x2="71.12" y2="38.1" width="0.762" layer="92"/>
</segment>
</bus>
</busses>
<nets>
<net name="DOT2" class="0">
<segment>
<wire x1="38.1" y1="116.84" x2="40.64" y2="114.3" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="1"/>
<wire x1="40.64" y1="114.3" x2="55.88" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DOT2"/>
<wire x1="127" y1="114.3" x2="124.46" y2="111.76" width="0.1524" layer="91"/>
<wire x1="124.46" y1="111.76" x2="114.3" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG1_5" class="0">
<segment>
<wire x1="38.1" y1="114.3" x2="40.64" y2="111.76" width="0.1524" layer="91"/>
<pinref part="JP1" gate="A" pin="2"/>
<wire x1="40.64" y1="111.76" x2="55.88" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG1_E"/>
<wire x1="71.12" y1="106.68" x2="73.66" y2="104.14" width="0.1524" layer="91"/>
<wire x1="73.66" y1="104.14" x2="83.82" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG1_4" class="0">
<segment>
<pinref part="JP1" gate="A" pin="3"/>
<wire x1="38.1" y1="111.76" x2="40.64" y2="109.22" width="0.1524" layer="91"/>
<wire x1="40.64" y1="109.22" x2="55.88" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG1_D"/>
<wire x1="71.12" y1="109.22" x2="73.66" y2="106.68" width="0.1524" layer="91"/>
<wire x1="73.66" y1="106.68" x2="83.82" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG1_3" class="0">
<segment>
<pinref part="JP1" gate="A" pin="4"/>
<wire x1="38.1" y1="109.22" x2="40.64" y2="106.68" width="0.1524" layer="91"/>
<wire x1="40.64" y1="106.68" x2="55.88" y2="106.68" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG1_C"/>
<wire x1="71.12" y1="111.76" x2="73.66" y2="109.22" width="0.1524" layer="91"/>
<wire x1="73.66" y1="109.22" x2="83.82" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG2_5" class="0">
<segment>
<pinref part="JP1" gate="A" pin="5"/>
<wire x1="38.1" y1="106.68" x2="40.64" y2="104.14" width="0.1524" layer="91"/>
<wire x1="40.64" y1="104.14" x2="55.88" y2="104.14" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG2_E"/>
<wire x1="71.12" y1="86.36" x2="73.66" y2="83.82" width="0.1524" layer="91"/>
<wire x1="73.66" y1="83.82" x2="83.82" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG2_4" class="0">
<segment>
<pinref part="JP1" gate="A" pin="6"/>
<wire x1="38.1" y1="104.14" x2="40.64" y2="101.6" width="0.1524" layer="91"/>
<wire x1="40.64" y1="101.6" x2="55.88" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG2_D"/>
<wire x1="71.12" y1="88.9" x2="73.66" y2="86.36" width="0.1524" layer="91"/>
<wire x1="73.66" y1="86.36" x2="83.82" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG2_3" class="0">
<segment>
<pinref part="JP1" gate="A" pin="7"/>
<wire x1="38.1" y1="101.6" x2="40.64" y2="99.06" width="0.1524" layer="91"/>
<wire x1="40.64" y1="99.06" x2="55.88" y2="99.06" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG2_C"/>
<wire x1="71.12" y1="91.44" x2="73.66" y2="88.9" width="0.1524" layer="91"/>
<wire x1="73.66" y1="88.9" x2="83.82" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DOT4" class="0">
<segment>
<pinref part="JP1" gate="A" pin="8"/>
<wire x1="38.1" y1="99.06" x2="40.64" y2="96.52" width="0.1524" layer="91"/>
<wire x1="40.64" y1="96.52" x2="55.88" y2="96.52" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DOT4"/>
<wire x1="127" y1="109.22" x2="124.46" y2="106.68" width="0.1524" layer="91"/>
<wire x1="124.46" y1="106.68" x2="114.3" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG3_5" class="0">
<segment>
<pinref part="JP1" gate="A" pin="9"/>
<wire x1="38.1" y1="96.52" x2="40.64" y2="93.98" width="0.1524" layer="91"/>
<wire x1="40.64" y1="93.98" x2="55.88" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG3_E"/>
<wire x1="71.12" y1="66.04" x2="73.66" y2="63.5" width="0.1524" layer="91"/>
<wire x1="73.66" y1="63.5" x2="83.82" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG3_7" class="0">
<segment>
<pinref part="JP1" gate="A" pin="10"/>
<wire x1="38.1" y1="93.98" x2="40.64" y2="91.44" width="0.1524" layer="91"/>
<wire x1="40.64" y1="91.44" x2="55.88" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG3_G"/>
<wire x1="71.12" y1="60.96" x2="73.66" y2="58.42" width="0.1524" layer="91"/>
<wire x1="73.66" y1="58.42" x2="83.82" y2="58.42" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG3_4" class="0">
<segment>
<pinref part="JP1" gate="A" pin="11"/>
<wire x1="38.1" y1="91.44" x2="40.64" y2="88.9" width="0.1524" layer="91"/>
<wire x1="40.64" y1="88.9" x2="55.88" y2="88.9" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG3_D"/>
<wire x1="71.12" y1="68.58" x2="73.66" y2="66.04" width="0.1524" layer="91"/>
<wire x1="73.66" y1="66.04" x2="83.82" y2="66.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG3_3" class="0">
<segment>
<pinref part="JP1" gate="A" pin="12"/>
<wire x1="38.1" y1="88.9" x2="40.64" y2="86.36" width="0.1524" layer="91"/>
<wire x1="40.64" y1="86.36" x2="55.88" y2="86.36" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG3_C"/>
<wire x1="71.12" y1="71.12" x2="73.66" y2="68.58" width="0.1524" layer="91"/>
<wire x1="73.66" y1="68.58" x2="83.82" y2="68.58" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DOT5" class="0">
<segment>
<pinref part="JP1" gate="A" pin="13"/>
<wire x1="38.1" y1="86.36" x2="40.64" y2="83.82" width="0.1524" layer="91"/>
<wire x1="40.64" y1="83.82" x2="55.88" y2="83.82" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DOT5"/>
<wire x1="127" y1="106.68" x2="124.46" y2="104.14" width="0.1524" layer="91"/>
<wire x1="124.46" y1="104.14" x2="114.3" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG4_5" class="0">
<segment>
<pinref part="JP1" gate="A" pin="14"/>
<wire x1="38.1" y1="83.82" x2="40.64" y2="81.28" width="0.1524" layer="91"/>
<wire x1="40.64" y1="81.28" x2="55.88" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG4_E"/>
<wire x1="71.12" y1="45.72" x2="73.66" y2="43.18" width="0.1524" layer="91"/>
<wire x1="73.66" y1="43.18" x2="83.82" y2="43.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG4_4" class="0">
<segment>
<pinref part="JP1" gate="A" pin="15"/>
<wire x1="38.1" y1="81.28" x2="40.64" y2="78.74" width="0.1524" layer="91"/>
<wire x1="40.64" y1="78.74" x2="55.88" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG4_D"/>
<wire x1="71.12" y1="48.26" x2="73.66" y2="45.72" width="0.1524" layer="91"/>
<wire x1="73.66" y1="45.72" x2="83.82" y2="45.72" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG4_3" class="0">
<segment>
<pinref part="JP1" gate="A" pin="16"/>
<wire x1="38.1" y1="78.74" x2="40.64" y2="76.2" width="0.1524" layer="91"/>
<wire x1="40.64" y1="76.2" x2="55.88" y2="76.2" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DIG4_C"/>
<wire x1="71.12" y1="50.8" x2="73.66" y2="48.26" width="0.1524" layer="91"/>
<wire x1="73.66" y1="48.26" x2="83.82" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DOT7" class="0">
<segment>
<pinref part="JP1" gate="A" pin="17"/>
<wire x1="38.1" y1="76.2" x2="40.64" y2="73.66" width="0.1524" layer="91"/>
<wire x1="40.64" y1="73.66" x2="55.88" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="DOT7"/>
<wire x1="127" y1="101.6" x2="124.46" y2="99.06" width="0.1524" layer="91"/>
<wire x1="124.46" y1="99.06" x2="114.3" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="JP1" gate="A" pin="18"/>
<wire x1="38.1" y1="73.66" x2="40.64" y2="71.12" width="0.1524" layer="91"/>
<wire x1="40.64" y1="71.12" x2="55.88" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="D1" gate="G$1" pin="GND"/>
<wire x1="127" y1="96.52" x2="124.46" y2="93.98" width="0.1524" layer="91"/>
<wire x1="124.46" y1="93.98" x2="114.3" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG1_1" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG1_A"/>
<wire x1="71.12" y1="116.84" x2="73.66" y2="114.3" width="0.1524" layer="91"/>
<wire x1="73.66" y1="114.3" x2="83.82" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="4"/>
<wire x1="127" y1="109.22" x2="129.54" y2="106.68" width="0.1524" layer="91"/>
<wire x1="129.54" y1="106.68" x2="144.78" y2="106.68" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG1_2" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG1_B"/>
<wire x1="71.12" y1="114.3" x2="73.66" y2="111.76" width="0.1524" layer="91"/>
<wire x1="73.66" y1="111.76" x2="83.82" y2="111.76" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="5"/>
<wire x1="127" y1="106.68" x2="129.54" y2="104.14" width="0.1524" layer="91"/>
<wire x1="129.54" y1="104.14" x2="144.78" y2="104.14" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG1_6" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG1_F"/>
<wire x1="71.12" y1="104.14" x2="73.66" y2="101.6" width="0.1524" layer="91"/>
<wire x1="73.66" y1="101.6" x2="83.82" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="3"/>
<wire x1="127" y1="111.76" x2="129.54" y2="109.22" width="0.1524" layer="91"/>
<wire x1="129.54" y1="109.22" x2="144.78" y2="109.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG1_7" class="0">
<segment>
<wire x1="71.12" y1="101.6" x2="73.66" y2="99.06" width="0.1524" layer="91"/>
<pinref part="J1" gate="1" pin="1"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="2"/>
<wire x1="127" y1="114.3" x2="129.54" y2="111.76" width="0.1524" layer="91"/>
<wire x1="129.54" y1="111.76" x2="144.78" y2="111.76" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG2_1" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG2_A"/>
<wire x1="71.12" y1="96.52" x2="73.66" y2="93.98" width="0.1524" layer="91"/>
<wire x1="73.66" y1="93.98" x2="83.82" y2="93.98" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="8"/>
<wire x1="127" y1="99.06" x2="129.54" y2="96.52" width="0.1524" layer="91"/>
<wire x1="129.54" y1="96.52" x2="144.78" y2="96.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG2_2" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG2_B"/>
<wire x1="71.12" y1="93.98" x2="73.66" y2="91.44" width="0.1524" layer="91"/>
<wire x1="73.66" y1="91.44" x2="83.82" y2="91.44" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="9"/>
<wire x1="127" y1="96.52" x2="129.54" y2="93.98" width="0.1524" layer="91"/>
<wire x1="129.54" y1="93.98" x2="144.78" y2="93.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG2_6" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG2_F"/>
<wire x1="71.12" y1="83.82" x2="73.66" y2="81.28" width="0.1524" layer="91"/>
<wire x1="73.66" y1="81.28" x2="83.82" y2="81.28" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="7"/>
<wire x1="127" y1="101.6" x2="129.54" y2="99.06" width="0.1524" layer="91"/>
<wire x1="129.54" y1="99.06" x2="144.78" y2="99.06" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG2_7" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG2_G"/>
<wire x1="71.12" y1="81.28" x2="73.66" y2="78.74" width="0.1524" layer="91"/>
<wire x1="73.66" y1="78.74" x2="83.82" y2="78.74" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="6"/>
<wire x1="127" y1="104.14" x2="129.54" y2="101.6" width="0.1524" layer="91"/>
<wire x1="129.54" y1="101.6" x2="144.78" y2="101.6" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG3_1" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG3_A"/>
<wire x1="71.12" y1="76.2" x2="73.66" y2="73.66" width="0.1524" layer="91"/>
<wire x1="73.66" y1="73.66" x2="83.82" y2="73.66" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="12"/>
<wire x1="127" y1="88.9" x2="129.54" y2="86.36" width="0.1524" layer="91"/>
<wire x1="129.54" y1="86.36" x2="144.78" y2="86.36" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG3_2" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG3_B"/>
<wire x1="71.12" y1="73.66" x2="73.66" y2="71.12" width="0.1524" layer="91"/>
<wire x1="73.66" y1="71.12" x2="83.82" y2="71.12" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="13"/>
<wire x1="127" y1="86.36" x2="129.54" y2="83.82" width="0.1524" layer="91"/>
<wire x1="129.54" y1="83.82" x2="144.78" y2="83.82" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG3_6" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG3_F"/>
<wire x1="71.12" y1="63.5" x2="73.66" y2="60.96" width="0.1524" layer="91"/>
<wire x1="73.66" y1="60.96" x2="83.82" y2="60.96" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="11"/>
<wire x1="127" y1="91.44" x2="129.54" y2="88.9" width="0.1524" layer="91"/>
<wire x1="129.54" y1="88.9" x2="144.78" y2="88.9" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG4_1" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG4_A"/>
<wire x1="71.12" y1="55.88" x2="73.66" y2="53.34" width="0.1524" layer="91"/>
<wire x1="73.66" y1="53.34" x2="83.82" y2="53.34" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="16"/>
<wire x1="127" y1="78.74" x2="129.54" y2="76.2" width="0.1524" layer="91"/>
<wire x1="129.54" y1="76.2" x2="144.78" y2="76.2" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG4_2" class="0">
<segment>
<wire x1="71.12" y1="53.34" x2="73.66" y2="50.8" width="0.1524" layer="91"/>
<pinref part="J2" gate="1" pin="1"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="17"/>
<wire x1="127" y1="76.2" x2="129.54" y2="73.66" width="0.1524" layer="91"/>
<wire x1="129.54" y1="73.66" x2="144.78" y2="73.66" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG4_6" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG4_F"/>
<wire x1="71.12" y1="43.18" x2="73.66" y2="40.64" width="0.1524" layer="91"/>
<wire x1="73.66" y1="40.64" x2="83.82" y2="40.64" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="15"/>
<wire x1="127" y1="81.28" x2="129.54" y2="78.74" width="0.1524" layer="91"/>
<wire x1="129.54" y1="78.74" x2="144.78" y2="78.74" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DIG4_7" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DIG4_G"/>
<wire x1="71.12" y1="40.64" x2="73.66" y2="38.1" width="0.1524" layer="91"/>
<wire x1="73.66" y1="38.1" x2="83.82" y2="38.1" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="14"/>
<wire x1="127" y1="83.82" x2="129.54" y2="81.28" width="0.1524" layer="91"/>
<wire x1="129.54" y1="81.28" x2="144.78" y2="81.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DOT1" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DOT1"/>
<wire x1="127" y1="116.84" x2="124.46" y2="114.3" width="0.1524" layer="91"/>
<wire x1="124.46" y1="114.3" x2="114.3" y2="114.3" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="1"/>
<wire x1="127" y1="116.84" x2="129.54" y2="114.3" width="0.1524" layer="91"/>
<wire x1="129.54" y1="114.3" x2="144.78" y2="114.3" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DOT3" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DOT3"/>
<wire x1="127" y1="111.76" x2="124.46" y2="109.22" width="0.1524" layer="91"/>
<wire x1="124.46" y1="109.22" x2="114.3" y2="109.22" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="10"/>
<wire x1="127" y1="93.98" x2="129.54" y2="91.44" width="0.1524" layer="91"/>
<wire x1="129.54" y1="91.44" x2="144.78" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="DOT6" class="0">
<segment>
<pinref part="D1" gate="G$1" pin="DOT6"/>
<wire x1="127" y1="104.14" x2="124.46" y2="101.6" width="0.1524" layer="91"/>
<wire x1="124.46" y1="101.6" x2="114.3" y2="101.6" width="0.1524" layer="91"/>
</segment>
<segment>
<pinref part="JP2" gate="A" pin="18"/>
<wire x1="127" y1="73.66" x2="129.54" y2="71.12" width="0.1524" layer="91"/>
<wire x1="129.54" y1="71.12" x2="144.78" y2="71.12" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="J1" gate="1" pin="2"/>
<pinref part="D1" gate="G$1" pin="DIG1_G"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="J2" gate="1" pin="2"/>
<pinref part="D1" gate="G$1" pin="DIG4_B"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
<errors>
<approved hash="113,1,56.1171,94.1112,JP1,,,,,"/>
<approved hash="113,1,145.017,94.1112,JP2,,,,,"/>
<approved hash="113,1,91.971,66.571,FRAME1,,,,,"/>
</errors>
</schematic>
</drawing>
</eagle>
