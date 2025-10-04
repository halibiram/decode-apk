package com.tknetwork.tunnel.adapter;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import config.ConfigUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class NetworkAdapter extends ArrayAdapter<JSONObject> {

    /* renamed from: config, reason: collision with root package name */
    private final ConfigUtil f5776config;
    private List<JSONObject> listNetwork;

    /* loaded from: classes3.dex */
    public static class ViewHolder {
        ImageView check;
        ImageView ivIcon;
        TextView mInfo;
        TextView tunnel_title;
        TextView tvName;
    }

    public NetworkAdapter(Context context, List<JSONObject> list) {
        super(context, R.layout.network_item, list);
        this.listNetwork = list;
        this.f5776config = ConfigUtil.getInstance(context);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public int getCount() {
        return this.listNetwork.size();
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, @NonNull ViewGroup viewGroup) {
        return view;
    }

    public int getIcon(String str) {
        return str.contains(new ObfuscatedString(new long[]{-8410762448143960479L, 4660650841675806073L}).toString()) ? R.drawable.ic_globe : str.contains(new ObfuscatedString(new long[]{3212847379061014989L, -2261569328275195280L}).toString()) ? R.drawable.ic_omantel : str.contains(new ObfuscatedString(new long[]{8500187390387509047L, 9107013219955318351L}).toString()) ? R.drawable.bioscope : str.contains(new ObfuscatedString(new long[]{6396705431907622742L, -558393665393389077L}).toString()) ? R.drawable.ic_gtm : str.contains(new ObfuscatedString(new long[]{7569512379174714423L, 6216279954796452526L}).toString()) ? R.drawable.gphone : str.contains(new ObfuscatedString(new long[]{7998012349109288562L, -8326434016729826081L}).toString()) ? R.drawable.hoichoi : str.contains(new ObfuscatedString(new long[]{4965253221713523652L, -1557845207029184045L}).toString()) ? R.drawable.hysteria : str.contains(new ObfuscatedString(new long[]{-4935522758041492014L, 7049365583407206442L}).toString()) ? R.drawable.mtn : str.contains(new ObfuscatedString(new long[]{-7581457734084100450L, -2910798165163516984L}).toString()) ? R.drawable.axis : str.contains(new ObfuscatedString(new long[]{1987198458730710029L, -7631287279906571156L}).toString()) ? R.drawable.ic_smart : str.contains(new ObfuscatedString(new long[]{-6237629053626084688L, 1759579468500120526L}).toString()) ? R.drawable.byu : str.contains(new ObfuscatedString(new long[]{-2183572530146043355L, 7308567140883443501L}).toString()) ? R.drawable.isat : str.contains(new ObfuscatedString(new long[]{4633894334234776508L, 3582626272541862307L, -5347347595188479187L}).toString()) ? R.drawable.smartfren : str.contains(new ObfuscatedString(new long[]{-7275815936917036915L, -5533422393013512934L}).toString()) ? R.drawable.edukasi : str.contains(new ObfuscatedString(new long[]{8702586148178616259L, -2411124763581514164L}).toString()) ? R.drawable.inwi : str.contains(new ObfuscatedString(new long[]{-7789590347201037584L, -1279169440916437214L}).toString()) ? R.drawable.umobile : str.contains(new ObfuscatedString(new long[]{-1115252290375819388L, -8480167142435862403L}).toString()) ? R.drawable.celcom : str.contains(new ObfuscatedString(new long[]{6231754923631337940L, 6039632292385517102L}).toString()) ? R.drawable.redbull : str.contains(new ObfuscatedString(new long[]{529607047338768967L, 6379889911918999329L}).toString()) ? R.drawable.mobitel : str.contains(new ObfuscatedString(new long[]{2298459939489144831L, 3354736670761865401L}).toString()) ? R.drawable.ufone : str.contains(new ObfuscatedString(new long[]{-8094877347113263569L, -7917144946499268571L}).toString()) ? R.drawable.bitel : str.contains(new ObfuscatedString(new long[]{840192541377464605L, -3740192270632683808L}).toString()) ? R.drawable.entel : str.contains(new ObfuscatedString(new long[]{-3541266108525003184L, -2090591376095411058L}).toString()) ? R.drawable.zoom : str.contains(new ObfuscatedString(new long[]{-4711096756445499570L, -2606537886467821494L}).toString()) ? R.drawable.claro : str.contains(new ObfuscatedString(new long[]{-4016916677638336753L, 7271545483309097124L}).toString()) ? R.drawable.orange : str.contains(new ObfuscatedString(new long[]{1082061155992342022L, -8913334400137445646L}).toString()) ? R.drawable.slt : str.contains(new ObfuscatedString(new long[]{-6605397582893435290L, -1929367206807405464L, 2121873025543492955L}).toString()) ? R.drawable.telkomsel : str.contains(new ObfuscatedString(new long[]{-5465346254122123259L, 7527785131276462353L}).toString()) ? R.drawable.ic_sun : str.contains(new ObfuscatedString(new long[]{-7175348788925662060L, 7229872532567351925L}).toString()) ? R.drawable.xl : str.contains(new ObfuscatedString(new long[]{-4864495706258466945L, -8835532086682596512L}).toString()) ? R.drawable.dito : str.contains(new ObfuscatedString(new long[]{2005204631470801947L, -5392576362597745244L}).toString()) ? R.drawable.ic_tm : str.contains(new ObfuscatedString(new long[]{-8317199478404516025L, -8994032718838988865L}).toString()) ? R.drawable.ic_lebara : str.contains(new ObfuscatedString(new long[]{-8093072703318391787L, 3825000393634785892L}).toString()) ? R.drawable.ic_game : str.contains(new ObfuscatedString(new long[]{-6433654373479468217L, 2611798199440242862L}).toString()) ? R.drawable.ic_tnt : str.contains(new ObfuscatedString(new long[]{-4035200960415811062L, 5295495872636580715L}).toString()) ? R.drawable.ic_gomo : str.contains(new ObfuscatedString(new long[]{-2978014044103858156L, 8640604557134643820L}).toString()) ? R.drawable.ic_vargin : str.contains(new ObfuscatedString(new long[]{3919713386081096788L, -4584770984582642546L}).toString()) ? R.drawable.ic_facebook : str.contains(new ObfuscatedString(new long[]{563082115854185119L, -5208719953610872120L}).toString()) ? R.drawable.ic_google : str.contains(new ObfuscatedString(new long[]{-5622820789918689824L, 7782386214825717425L}).toString()) ? R.drawable.ic_youtube : str.contains(new ObfuscatedString(new long[]{-3641619156071956071L, 234254708868416530L, -8119388560079447036L}).toString()) ? R.drawable.ic_instagram : str.contains(new ObfuscatedString(new long[]{-798391552373544254L, -5760892043176637329L}).toString()) ? R.drawable.ic_iflix : str.contains(new ObfuscatedString(new long[]{-1234259933380831934L, -3234406623445004107L}).toString()) ? R.drawable.ic_snapchat : str.contains(new ObfuscatedString(new long[]{456802167215195828L, -6591947688458147197L}).toString()) ? R.drawable.ic_twitter : str.contains(new ObfuscatedString(new long[]{-9074989811075557920L, -2999836541223434422L}).toString()) ? R.drawable.ic_netflix : str.contains(new ObfuscatedString(new long[]{-6759382141893839854L, -4772754041803054321L, -4275972609496616966L}).toString()) ? R.drawable.ic_ml : str.contains(new ObfuscatedString(new long[]{3678179922183454416L, -6827485352063639802L}).toString()) ? R.drawable.ic_du : str.contains(new ObfuscatedString(new long[]{6323766822656714881L, 837805828134034028L}).toString()) ? R.drawable.ic_eti : str.contains(new ObfuscatedString(new long[]{1120210038940223063L, 8132324328427131067L}).toString()) ? R.drawable.ic_wifi : str.contains(new ObfuscatedString(new long[]{5663189501607278096L, -2226410763742423491L}).toString()) ? R.drawable.ic_whatsapp : str.contains(new ObfuscatedString(new long[]{2305371373473283685L, -7855058580148723972L}).toString()) ? R.drawable.ic_tiktok : str.contains(new ObfuscatedString(new long[]{5865442239645289555L, -8262974217512636929L}).toString()) ? R.drawable.ic_viber : str.contains(new ObfuscatedString(new long[]{-4242669114160179059L, 7647400919852572756L}).toString()) ? R.drawable.ic_airtel : str.contains(new ObfuscatedString(new long[]{-191472968308618116L, 644390845466464404L}).toString()) ? R.drawable.ic_jawwy : str.contains(new ObfuscatedString(new long[]{-581982794834142215L, 8165850949315781310L}).toString()) ? R.drawable.ic_digi : str.contains(new ObfuscatedString(new long[]{9222443059714901627L, -2824355463305707768L}).toString()) ? R.drawable.ic_airtel : str.contains(new ObfuscatedString(new long[]{-2787099710734713016L, -4109634873033874098L}).toString()) ? R.drawable.ic_pubg : str.contains(new ObfuscatedString(new long[]{-6198044181612451282L, -1689202424878905272L, -2653966754091926918L}).toString()) ? R.drawable.ic_playstore : str.contains(new ObfuscatedString(new long[]{-3022224316316910111L, 3046038091178197714L}).toString()) ? R.drawable.ic_skype : str.contains(new ObfuscatedString(new long[]{8651422927790914780L, -6484695808528741029L}).toString()) ? R.drawable.ic_telegram : str.contains(new ObfuscatedString(new long[]{8260010150939862408L, -4655577745377918149L}).toString()) ? R.drawable.ic_vivobee : str.contains(new ObfuscatedString(new long[]{3815979714092275922L, 1472685862149487105L}).toString()) ? !str.contains(new ObfuscatedString(new long[]{-1233790680263746894L, -5432821328805284515L}).toString()) ? R.drawable.ic_ooredoo : R.drawable.ic_ooredoo_free : str.contains(new ObfuscatedString(new long[]{-7340021820694859634L, 8833522296493909539L}).toString()) ? R.drawable.ic_viva : str.contains(new ObfuscatedString(new long[]{-4025452168394022973L, 2248854339042093610L, -8580472580644575386L}).toString()) ? R.drawable.ic_progresif : str.contains(new ObfuscatedString(new long[]{5351593805934819799L, 2579197017272320082L}).toString()) ? R.drawable.ic_jio : str.contains(new ObfuscatedString(new long[]{8886281310172599261L, -8853639495017125927L}).toString()) ? R.drawable.ic_flexi : str.contains(new ObfuscatedString(new long[]{4661008708320469590L, -6923155404689733617L, 4170633463292181961L}).toString()) ? R.drawable.ic_vodafone : str.contains(new ObfuscatedString(new long[]{-2711879917171848360L, 1043973301777304145L}).toString()) ? str.contains(new ObfuscatedString(new long[]{979821079700580596L, 5822354609907822384L}).toString()) ? R.drawable.ic_mobily_free : R.drawable.ic_mobily : str.contains(new ObfuscatedString(new long[]{2867930613220238130L, 6654390114873103036L}).toString()) ? str.contains(new ObfuscatedString(new long[]{7083123871822170898L, -5482400930826386975L}).toString()) ? R.drawable.ic_zain_free : R.drawable.ic_zain : str.contains(new ObfuscatedString(new long[]{-5864869458443604263L, 8381247531629638381L, 3352214457437738612L}).toString()) ? R.drawable.ic_banglalink : str.contains(new ObfuscatedString(new long[]{5117816112339299587L, 3857985972037658956L}).toString()) ? R.drawable.ic_dhiraagu : str.contains(new ObfuscatedString(new long[]{-940727759084808288L, -1699889869328148948L}).toString()) ? R.drawable.ic_dst : str.contains(new ObfuscatedString(new long[]{2551531513080882221L, -4927147944243111649L}).toString()) ? R.drawable.ic_friendi : str.contains(new ObfuscatedString(new long[]{-6284597432912299224L, -6138009391196420680L}).toString()) ? R.drawable.ic_grameenphone : str.contains(new ObfuscatedString(new long[]{8707269044407136991L, -402962222242141464L}).toString()) ? R.drawable.ic_imagine : str.contains(new ObfuscatedString(new long[]{4682602682264747491L, -7152827350405898824L, 6223119311965837619L}).toString()) ? R.drawable.ic_kuwait_zain : str.contains(new ObfuscatedString(new long[]{3912279347378263826L, 4350181452780821435L}).toString()) ? R.drawable.ic_lebara : str.contains(new ObfuscatedString(new long[]{2543503243332721210L, -391318298719886439L}).toString()) ? R.drawable.ic_omantel : str.contains(new ObfuscatedString(new long[]{330420249885075424L, 2531637037795881200L, 4936372606966316192L}).toString()) ? R.drawable.ic_progresif : str.contains(new ObfuscatedString(new long[]{3394783813692230060L, -3989704893584553778L}).toString()) ? R.drawable.ic_vodafone : str.contains(new ObfuscatedString(new long[]{-6665668099842784501L, -111289335088905036L}).toString()) ? R.drawable.ic_robi : str.contains(new ObfuscatedString(new long[]{5957092639678124431L, 1266246772717259761L}).toString()) ? R.drawable.ic_singtel : str.contains(new ObfuscatedString(new long[]{-8527683357956059137L, 7346946361366182325L}).toString()) ? str.contains(new ObfuscatedString(new long[]{3992221556888074457L, 6476723053593868336L}).toString()) ? R.drawable.ic_stc_free : R.drawable.ic_stc : str.contains(new ObfuscatedString(new long[]{3946652896792573311L, -3693501446462714108L}).toString()) ? R.drawable.ic_vargin : str.contains(new ObfuscatedString(new long[]{-805707946288933838L, -4887721364486310255L}).toString()) ? R.drawable.starhub : R.drawable.ic_server;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @NonNull
    public View getView(int i, View view, @NonNull ViewGroup viewGroup) {
        ViewHolder viewHolder;
        if (view == null) {
            view = LayoutInflater.from(getContext()).inflate(R.layout.network_item, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.tvName = (TextView) view.findViewById(R.id.network_item_title);
            viewHolder.mInfo = (TextView) view.findViewById(R.id.network_item_info);
            viewHolder.tunnel_title = (TextView) view.findViewById(R.id.typeTunnel);
            viewHolder.ivIcon = (ImageView) view.findViewById(R.id.network_item_icon);
            viewHolder.check = (ImageView) view.findViewById(R.id.check);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        if (this.f5776config.getNetworkSelectedPosition() == i) {
            viewHolder.check.setImageResource(R.drawable.ic_item_selected);
            viewHolder.check.setColorFilter(ContextCompat.getColor(getContext(), R.color.tint_check));
        } else {
            viewHolder.check.setImageResource(R.drawable.ic_item_unselected);
            viewHolder.check.setColorFilter(ContextCompat.getColor(getContext(), R.color.color_text_light));
        }
        JSONObject item = getItem(i);
        if (item == null) {
            return view;
        }
        try {
            if (item.has(new ObfuscatedString(new long[]{4214343842194956630L, -8850551870968991176L}).toString())) {
                String string = item.getString(new ObfuscatedString(new long[]{8929403806538870312L, -4702743911145155254L}).toString());
                if (string.isEmpty()) {
                    viewHolder.mInfo.setVisibility(8);
                }
                viewHolder.mInfo.setVisibility(0);
                viewHolder.mInfo.setText(string);
            } else {
                viewHolder.mInfo.setVisibility(8);
            }
            String string2 = item.getString(new ObfuscatedString(new long[]{-8042869028631355615L, -336786557895667469L}).toString());
            viewHolder.tvName.setText(Html.fromHtml(string2));
            setIcon(viewHolder.ivIcon, getIcon(string2.toLowerCase()));
            int i2 = item.getInt(new ObfuscatedString(new long[]{3256640431149772088L, -4809206318938050029L, -7689441638007415883L}).toString());
            if (i2 == 0) {
                if (this.f5776config.getOVPN().booleanValue()) {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-3176593244207684983L, -3140962824122940051L}).toString());
                } else {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-6789135775626283729L, 7722118667579152859L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.blue));
                }
            } else if (i2 == 1) {
                if (this.f5776config.getOVPN().booleanValue()) {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-7025626898536922691L, 6172746676391971562L, -6470886013472200006L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
                } else {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{4475492249915216114L, 6922793984192352596L, 101187955580838789L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorError));
                }
            } else if (i2 == 2) {
                if (this.f5776config.getOVPN().booleanValue()) {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{3001809650573593239L, -8652569172492311347L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorError));
                } else {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-5346945064382179562L, 6790001242767283926L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorError));
                }
            } else if (i2 == 3) {
                if (this.f5776config.getOVPN().booleanValue()) {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{6399136602440922029L, 5223624433732758175L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
                } else {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-964461784485392787L, -7120000333268562133L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
                }
            } else if (i2 == 4) {
                if (this.f5776config.getOVPN().booleanValue()) {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-4391420674544343687L, 3404571834999135180L, -3738755573982812522L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
                } else {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{451331376838405586L, -6571229795567373568L, -2992969243909496048L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
                }
            } else if (i2 == 5) {
                if (this.f5776config.getOVPN().booleanValue()) {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{910781063831766452L, -5861384349909174312L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorError));
                } else {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-509420818759781601L, -553782752046205524L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.colorError));
                }
            } else if (i2 == 6) {
                viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-3964749738901215573L, -1722751990519594474L}).toString());
                viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.violet));
            } else if (i2 == 7) {
                if (this.f5776config.getOVPN().booleanValue()) {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{6972918032695461937L, 2176655442600408356L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.violet));
                } else {
                    viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-5628181986452751310L, 9071479931260696730L}).toString());
                    viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.violet));
                }
            } else if (i2 == 8) {
                viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-4523220358139375633L, -4874714173518592333L}).toString());
                viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.blue));
            } else if (i2 == 9) {
                viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{8358382115927533705L, -4315148045297630722L, -4178710614309519778L}).toString());
                viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.graph_color));
            } else if (i2 == 10) {
                viewHolder.tunnel_title.setText(new ObfuscatedString(new long[]{-4051999777361502963L, -863748352724824881L, 7308418553489044680L}).toString());
                viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.graph_color));
            } else if (i2 == 11) {
                viewHolder.tunnel_title.setText(R.string.wireguard);
                viewHolder.tunnel_title.setTextColor(ContextCompat.getColor(getContext(), R.color.blue));
            }
        } catch (Exception e) {
            Toast.makeText(getContext(), new ObfuscatedString(new long[]{4225023216983061103L, -8695668926817943057L, 145669279757781249L}).toString() + e.getMessage(), 1).show();
        }
        return view;
    }

    public void refreshDataSet(ArrayList<JSONObject> arrayList) {
        this.listNetwork = arrayList;
        notifyDataSetChanged();
    }

    public void setIcon(ImageView imageView, int i) {
        imageView.setImageResource(i);
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public JSONObject getItem(int i) {
        return this.listNetwork.get(i);
    }
}
