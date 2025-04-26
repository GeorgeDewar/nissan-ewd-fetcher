#!/bin/bash

# Fetch a Nissan EWD (Electronic Wiring Diagram) from https://www.nissan-techinfo.com
# Requires a subscription to the service

path=$1
if [ -z "$path" ]; then
    echo "Usage: $0 <base_url>"
    echo "e.g. $0 https://www.nissan-techinfo.com/abcdefg/sm/2019/Leaf/SM19EA1ZE1U2/eWD"
    exit 1
fi

function fetch() {
    # Fetch the file if it doesn't exist, create the directory if it doesn't exist
    # wget -nc -x $path$1 -O .$1
    if [ ! -f .$1 ]; then
        echo Fetching $1
        curl -q -C - --create-dirs -o .$1 $path$1 2>/dev/null
        grep "small technical glitch" .$1 >/dev/null && echo Error fetching $1
    else
        echo $1 already exists
    fi
}

# HTML
fetch /index.html
fetch /vehicle/htmlsrc/category.html
fetch /vehicle/htmlsrc/select.html
fetch /vehicle/htmlsrc/menu.html
fetch /vehicle/htmlsrc/fig.html
fetch /vehicle/htmlsrc/base_conlist.html
fetch /vehicle/htmlsrc/base_coninfo.html
fetch /vehicle/htmlsrc/navicon.html
fetch /vehicle/htmlsrc/base.html
fetch /vehicle/htmlsrc/base_figinfo.html
fetch /vehicle/htmlsrc/navi.html

# Data
fetch /vehicle/connector.xml
fetch /vehicle/figlist.xml
fetch /common/xslt/connector.xsl

# Style
fetch /common/css/style.css

# Javascript
fetch /common/script/global.js
fetch /common/script/language.js
fetch /common/script/navi.js
fetch /common/script/figinfo.js
fetch /common/script/globalscripts.js
fetch /common/script/listinfo.js
fetch /common/script/Categorydata.js
fetch /common/script/svg.js
fetch /common/script/svgcon.js
fetch /common/script/navicon.js
fetch /common/script/actx.js

# Images
fetch /common/image/other/space.gif
fetch /common/image/other/nissan_logo.gif
fetch /common/image/other/eWD_logo.gif
fetch /common/image/other/tri.gif
fetch /common/image/other/maru.gif
fetch /common/image/other/hm_back.gif
fetch /common/image/other/hm_line.gif
fetch /common/image/other/hs.gif
fetch /common/image/other/ts.gif
fetch /common/image/other/over_tri2.gif
fetch /common/image/button/top/circuit.gif
fetch /common/image/button/top/harness.gif
fetch /common/image/button/top/po.gif
fetch /common/image/button/top/search.gif
fetch /common/image/button/top/over_circuit.gif
fetch /common/image/button/top/over_harness.gif
fetch /common/image/button/top/over_po.gif
fetch /common/image/button/top/over_search.gif
fetch /common/image/button/footer_r/top_return.gif
fetch /common/image/button/footer_r/over_top_return.gif
fetch /common/image/button/footer_r/zoomout.gif
fetch /common/image/button/footer_r/over_zoomout.gif
fetch /common/image/button/footer_r/zoomfit.gif
fetch /common/image/button/footer_r/over_zoomfit.gif
fetch /common/image/button/footer_r/zoomin.gif
fetch /common/image/button/footer_r/over_zoomin.gif
fetch /common/image/button/footer_r/zoomall.gif
fetch /common/image/button/footer_r/over_zoomall.gif
fetch /common/image/button/footer_r/print.gif
fetch /common/image/button/footer_r/over_print.gif
fetch /common/image/button/footer_l/conzoomfit.gif
fetch /common/image/button/footer_l/conzoomin.gif
fetch /common/image/button/footer_l/over_conzoomfit.gif
fetch /common/image/button/footer_l/over_conzoomin.gif
fetch /common/image/button/footer_l/bottom_conzoomin.gif
fetch /common/image/button/footer_l/bottom_conzoomfit.gif
fetch /common/image/button/connector/rev.gif
fetch /common/image/button/connector/over_rev.gif
fetch /common/image/button/connector/bottom_rev.gif

# Wire colour images (used for two-colour wires)
fetch /common/image/wire_color/b_g.gif
fetch /common/image/wire_color/b_gr.gif
fetch /common/image/wire_color/bg_r.gif
fetch /common/image/wire_color/b_l.gif
fetch /common/image/wire_color/b_o.gif
fetch /common/image/wire_color/b_p.gif
fetch /common/image/wire_color/br_b.gif
fetch /common/image/wire_color/br_g.gif
fetch /common/image/wire_color/b_r.gif
fetch /common/image/wire_color/br_lg.gif
fetch /common/image/wire_color/br_o.gif
fetch /common/image/wire_color/br_r.gif
fetch /common/image/wire_color/br_sb.gif
fetch /common/image/wire_color/br_v.gif
fetch /common/image/wire_color/br_w.gif
fetch /common/image/wire_color/br_y.gif
fetch /common/image/wire_color/b_sb.gif
fetch /common/image/wire_color/b_v.gif
fetch /common/image/wire_color/b_w.gif
fetch /common/image/wire_color/b_y.gif
fetch /common/image/wire_color/g_b.gif
fetch /common/image/wire_color/g_br.gif
fetch /common/image/wire_color/g_l.gif
fetch /common/image/wire_color/g_o.gif
fetch /common/image/wire_color/g_p.gif
fetch /common/image/wire_color/gr_b.gif
fetch /common/image/wire_color/gr_br.gif
fetch /common/image/wire_color/gr_g.gif
fetch /common/image/wire_color/g_r.gif
fetch /common/image/wire_color/gr_l.gif
fetch /common/image/wire_color/gr_o.gif
fetch /common/image/wire_color/gr_r.gif
fetch /common/image/wire_color/gr_w.gif
fetch /common/image/wire_color/gr_y.gif
fetch /common/image/wire_color/g_v.gif
fetch /common/image/wire_color/g_w.gif
fetch /common/image/wire_color/g_y.gif
fetch /common/image/wire_color/la_bg.gif
fetch /common/image/wire_color/la_b.gif
fetch /common/image/wire_color/la_br.gif
fetch /common/image/wire_color/la_g.gif
fetch /common/image/wire_color/la_gr.gif
fetch /common/image/wire_color/la_lg.gif
fetch /common/image/wire_color/la_l.gif
fetch /common/image/wire_color/la_p.gif
fetch /common/image/wire_color/la_r.gif
fetch /common/image/wire_color/la_sb.gif
fetch /common/image/wire_color/la_v.gif
fetch /common/image/wire_color/la_w.gif
fetch /common/image/wire_color/la_y.gif
fetch /common/image/wire_color/l_bg.gif
fetch /common/image/wire_color/l_b.gif
fetch /common/image/wire_color/l_br.gif
fetch /common/image/wire_color/lg_b.gif
fetch /common/image/wire_color/l_g.gif
fetch /common/image/wire_color/lg_o.gif
fetch /common/image/wire_color/l_gr.gif
fetch /common/image/wire_color/lg_r.gif
fetch /common/image/wire_color/lg_w.gif
fetch /common/image/wire_color/l_lg.gif
fetch /common/image/wire_color/l_o.gif
fetch /common/image/wire_color/l_r.gif
fetch /common/image/wire_color/l_w.gif
fetch /common/image/wire_color/l_y.gif
fetch /common/image/wire_color/o_b.gif
fetch /common/image/wire_color/o_g.gif
fetch /common/image/wire_color/o_l.gif
fetch /common/image/wire_color/o_r.gif
fetch /common/image/wire_color/o_v.gif
fetch /common/image/wire_color/o_w.gif
fetch /common/image/wire_color/o_y.gif
fetch /common/image/wire_color/p_b.gif
fetch /common/image/wire_color/p_g.gif
fetch /common/image/wire_color/p_gr.gif
fetch /common/image/wire_color/p_l.gif
fetch /common/image/wire_color/p_w.gif
fetch /common/image/wire_color/p_y.gif
fetch /common/image/wire_color/r_b.gif
fetch /common/image/wire_color/r_g.gif
fetch /common/image/wire_color/r_lg.gif
fetch /common/image/wire_color/r_l.gif
fetch /common/image/wire_color/r_o.gif
fetch /common/image/wire_color/r_w.gif
fetch /common/image/wire_color/r_y.gif
fetch /common/image/wire_color/sb_br.gif
fetch /common/image/wire_color/sb_g.gif
fetch /common/image/wire_color/sb_o.gif
fetch /common/image/wire_color/sb_r.gif
fetch /common/image/wire_color/sb_w.gif
fetch /common/image/wire_color/sb_y.gif
fetch /common/image/wire_color/shield.gif
fetch /common/image/wire_color/v_b.gif
fetch /common/image/wire_color/v_g.gif
fetch /common/image/wire_color/v_gr.gif
fetch /common/image/wire_color/v_o.gif
fetch /common/image/wire_color/v_r.gif
fetch /common/image/wire_color/v_w.gif
fetch /common/image/wire_color/v_y.gif
fetch /common/image/wire_color/w_b.gif
fetch /common/image/wire_color/w_br.gif
fetch /common/image/wire_color/w_dg.gif
fetch /common/image/wire_color/w_g.gif
fetch /common/image/wire_color/w_lg.gif
fetch /common/image/wire_color/w_l.gif
fetch /common/image/wire_color/w_o.gif
fetch /common/image/wire_color/w_p.gif
fetch /common/image/wire_color/w_r.gif
fetch /common/image/wire_color/w_sb.gif
fetch /common/image/wire_color/w_v.gif
fetch /common/image/wire_color/w_y.gif
fetch /common/image/wire_color/y_b.gif
fetch /common/image/wire_color/y_br.gif
fetch /common/image/wire_color/y_g.gif
fetch /common/image/wire_color/y_gr.gif
fetch /common/image/wire_color/y_lg.gif
fetch /common/image/wire_color/y_l.gif
fetch /common/image/wire_color/y_o.gif
fetch /common/image/wire_color/y_r.gif
fetch /common/image/wire_color/y_v.gif
fetch /common/image/wire_color/y_w.gif

# Fetch SVGs - requires crude parsing of the XML files
mkdir -p vehicle/consvg

grep '<svgfile>' vehicle/connector.xml | cut -d'>' -f2 | cut -d'<' -f1 | sort | uniq > /tmp/conn_svgs.txt
cat /tmp/conn_svgs.txt | while read line 
do
   fetch /vehicle/consvg/$line
done

sed -n '/<figgroup name="Circuit Diagram">/,/<\/figgroup>/p' vehicle/figlist.xml > /tmp/figgroup_circuit.xml
sed -n '/<figgroup name="Harness Layout">/,/<\/figgroup>/p' vehicle/figlist.xml > /tmp/figgroup_harness.xml
sed -n '/<figgroup name="Power Source \/ Grounding \/ Sneak Path">/,/<\/figgroup>/p' vehicle/figlist.xml > /tmp/figgroup_power.xml

mkdir -p vehicle/circuit/svg
mkdir -p vehicle/harness/svg
mkdir -p vehicle/poeama/svg

grep '<svgfile>' /tmp/figgroup_circuit.xml | cut -d'>' -f2 | cut -d'<' -f1 | sort | uniq > /tmp/figgroup_circuit_svgs.txt
cat /tmp/figgroup_circuit_svgs.txt | while read line 
do
   fetch /vehicle/circuit/svg/$line
done

grep '<svgfile>' /tmp/figgroup_harness.xml | cut -d'>' -f2 | cut -d'<' -f1 | sort | uniq > /tmp/figgroup_harness_svgs.txt
cat /tmp/figgroup_harness_svgs.txt | while read line 
do
   fetch /vehicle/harness/svg/$line
done

grep '<svgfile>' /tmp/figgroup_power.xml | cut -d'>' -f2 | cut -d'<' -f1 | sort | uniq > /tmp/figgroup_power_svgs.txt
cat /tmp/figgroup_power_svgs.txt | while read line 
do
   fetch /vehicle/poeama/svg/$line
done
