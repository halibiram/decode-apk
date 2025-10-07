package com.tknetwork.tunnel.adapter;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.preference.PreferenceManager;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.utils.ServerType;
import com.trilead.ssh2.Connection;
import config.ConfigUtil;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Locale;
import net.openvpn.openvpn.PrefUtil;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ServerAdapter extends ArrayAdapter<String> {
    private static final String TAG = new ObfuscatedString(new long[]{151853729432410150L, 7688453584846163551L, 7085920375299807287L}).toString();

    /* renamed from: config, reason: collision with root package name */
    private static ConfigUtil f5777config = null;
    private SharedPreferences.Editor editor;
    private boolean isPremium;
    private boolean mConnected;
    private Connection mConnection;
    private SharedPreferences myPrefs;
    private PrefUtil prefs;
    private int selectedServerType;

    /* loaded from: classes3.dex */
    public static class ViewHolder {
        TextView category;
        ImageView check;
        ImageView ivIcon;
        TextView mInfo;
        TextView mping;
        TextView png;
        TextView tvName;
    }

    public ServerAdapter(Context context, ArrayList<String> arrayList) {
        super(context, R.layout.server_item, arrayList);
        this.selectedServerType = ServerType.OPENVPN;
        this.isPremium = false;
        this.mConnected = false;
        f5777config = ConfigUtil.getInstance(context);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        this.prefs = new PrefUtil(this.myPrefs);
    }

    private String excludeIps() {
        try {
            return InetAddress.getByName(f5777config.getSSHHost()).getHostAddress();
        } catch (UnknownHostException unused) {
            return null;
        }
    }

    public static String getPingResult(String str) {
        BufferedReader bufferedReader;
        new ObfuscatedString(new long[]{7777005687923227599L}).toString();
        new ObfuscatedString(new long[]{-3723899149153038595L}).toString();
        char[] cArr = new char[4096];
        StringBuffer stringBuffer = new StringBuffer();
        BufferedReader bufferedReader2 = null;
        try {
            bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(new ObfuscatedString(new long[]{-7897746969529239204L, 756523358198040749L, 4213013870468812274L, -8916540758105245332L}).toString() + str).getInputStream()));
            while (true) {
                try {
                    int read = bufferedReader.read(cArr);
                    if (read <= 0) {
                        break;
                    }
                    stringBuffer.append(cArr, 0, read);
                } catch (Exception unused) {
                    if (bufferedReader != null) {
                        try {
                            bufferedReader.close();
                        } catch (IOException unused2) {
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    bufferedReader2 = bufferedReader;
                    if (bufferedReader2 != null) {
                        try {
                            bufferedReader2.close();
                        } catch (IOException unused3) {
                        }
                    }
                    throw th;
                }
            }
            String[] split = stringBuffer.toString().split(new ObfuscatedString(new long[]{5426931259729072921L, -555972041451908022L}).toString());
            String[] split2 = split[2].split(new ObfuscatedString(new long[]{-4303109089290216334L, 4553466276147446701L}).toString());
            if (split.length != 0 && split2.length != 0) {
                if (split.length != 1 && split2.length != 1) {
                    StringBuilder sb = new StringBuilder();
                    String str2 = split[1];
                    sb.append(str2.substring(1, str2.length()));
                    sb.append(split2[0]);
                    String str3 = split2[1];
                    sb.append(str3.substring(1, str3.length()));
                    String sb2 = sb.toString();
                    try {
                        bufferedReader.close();
                    } catch (IOException unused4) {
                    }
                    return sb2;
                }
                try {
                    bufferedReader.close();
                } catch (IOException unused5) {
                }
                return null;
            }
            try {
                bufferedReader.close();
            } catch (IOException unused6) {
            }
            return null;
        } catch (Exception unused7) {
            bufferedReader = null;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private String getServerType(JSONObject jSONObject) {
        if (jSONObject.getInt(new ObfuscatedString(new long[]{5855274295972107470L, 7004279103957255548L}).toString()) == 0) {
            return new ObfuscatedString(new long[]{155277106753869349L, 4831679145525630218L}).toString();
        }
        if (jSONObject.getInt(new ObfuscatedString(new long[]{5541800369474702777L, -5147723739350173408L}).toString()) == 1) {
            return new ObfuscatedString(new long[]{2919080829177251710L, 1770765135244698487L}).toString();
        }
        if (jSONObject.getInt(new ObfuscatedString(new long[]{-8700265521744766752L, 1486412772370004093L}).toString()) == 2) {
            return new ObfuscatedString(new long[]{981804821750833254L, 1508448702558193230L}).toString();
        }
        return new ObfuscatedString(new long[]{5335882965168889327L, 6119377064510412173L}).toString();
    }

    public static void inSomeWhere() {
        getPingResult(f5777config.getSSHHost());
    }

    public String getCountryCode(String str) {
        for (String str2 : Locale.getISOCountries()) {
            Locale locale = new Locale(new ObfuscatedString(new long[]{-6217810578295688358L}).toString(), str2);
            if (str.equalsIgnoreCase(str2) || str.toLowerCase().contains(locale.getDisplayCountry().toLowerCase()) || str.equalsIgnoreCase(locale.getDisplayCountry())) {
                return str2.toLowerCase();
            }
        }
        return new ObfuscatedString(new long[]{7680181212743757897L}).toString();
    }

    @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    @SuppressLint({"SetTextI18n"})
    public View getDropDownView(int i, View view, @NonNull ViewGroup viewGroup) {
        return view;
    }

    public Drawable getFlag(String str) {
        try {
            return Drawable.createFromStream(getContext().getAssets().open(new ObfuscatedString(new long[]{5820845927608049085L, -2203968015665610874L}).toString() + getCountryCode(str) + new ObfuscatedString(new long[]{-6595975259437880056L, 4734675071212346292L}).toString()), null);
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    @NonNull
    public View getView(int i, View view, @NonNull ViewGroup viewGroup) {
        ViewHolder viewHolder;
        String item;
        if (view == null) {
            view = LayoutInflater.from(getContext()).inflate(R.layout.server_item, (ViewGroup) null);
            viewHolder = new ViewHolder();
            viewHolder.tvName = (TextView) view.findViewById(R.id.server_item_title);
            viewHolder.mInfo = (TextView) view.findViewById(R.id.server_description);
            viewHolder.png = (TextView) view.findViewById(R.id.png);
            viewHolder.check = (ImageView) view.findViewById(R.id.typeTunnel);
            viewHolder.ivIcon = (ImageView) view.findViewById(R.id.server_item_icon);
            view.setTag(viewHolder);
        } else {
            viewHolder = (ViewHolder) view.getTag();
        }
        if (f5777config.getServerSelectedPosition() == i) {
            viewHolder.check.setImageResource(R.drawable.ic_item_selected);
            viewHolder.check.setColorFilter(ContextCompat.getColor(getContext(), R.color.tint_check));
        } else {
            viewHolder.check.setImageResource(R.drawable.ic_item_unselected);
            viewHolder.check.setColorFilter(ContextCompat.getColor(getContext(), R.color.color_text_light));
        }
        try {
            item = getItem(i);
            viewHolder.tvName.setText(item);
            Drawable flag = getFlag(item);
            if (flag != null) {
                viewHolder.ivIcon.setImageDrawable(flag);
            } else {
                viewHolder.ivIcon.setImageResource(R.drawable.ic_server);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        if (item == null) {
            return view;
        }
        String lowerCase = item.toLowerCase();
        if (lowerCase.contains(new ObfuscatedString(new long[]{2728404505974680637L, 8215780955981114391L, -7587452839425386475L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-4606843290819603095L, 5666257765370195877L, 102934550850247767L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
            viewHolder.png.setText(new ObfuscatedString(new long[]{-4995247409937200137L, 8252075087132895829L, -2408839971551959500L, -1757895542610472155L, -1594364955368173993L}).toString());
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-3932030645485607997L, 3266322640956985179L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-5703469978241174710L, -4577943775480974459L, 386107141660295860L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-2782089333158583454L, -4363637977544604984L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{8627706297695773746L, -4753408239398841871L, -8687574264299682267L}).toString());
            viewHolder.png.setText(new ObfuscatedString(new long[]{-8090771243095611272L, 5199501614217590381L, 5530810486594550838L}).toString());
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{496658441076360001L, 3810733612804649063L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{1207450243060051435L, -4870923753450518246L, -2056017172375968663L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{1868892296014665028L, -6900466492326268238L, -5751624273371861145L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-5821880358588418984L, -7434387591911843883L, 4938106091982299307L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-685813670017828651L, 7124799216709135258L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-2945551741736701299L, 6576937980867268658L, 2559982329039382942L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{2311235796220669123L, -1974210389245025206L, -3861368583249414750L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-5289260986632363258L, 2360013695666168176L, 1886011553560280278L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-4454736812573471835L, 4288430030169774959L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-2197921045990939093L, -8789737650255236283L, -4916945025984477220L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-6750780682957030429L, -8354122310211920711L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-4461093591982467747L, -679625001987548743L, -5622041483418332556L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{3609809601121384322L, 432582565729787862L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-16090221779375213L, 1901029000091979227L, 5943054449832094794L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorWarning));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-8063834842301661736L, 4856415424349204254L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{7535945378086696685L, -1527487930073401190L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-8375294771829963368L, -4558526729880547795L, -5439053910601289575L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{5821324866014966005L, 7140978727146467778L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{810936014463691540L, 4305430487856176302L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{8661990920555684542L, 1704172079951668682L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorAccent));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{5565600516265403729L, 6819960248914125926L, 3791238071276265883L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{5184303713693371953L, 6265425659759749997L, -8593650468036505468L, 3947582644008729062L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-6250171170819808436L, -4006653680140150524L, 8797858726629513631L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-8719644334265015198L, -8768924861613904526L, 1067379160500256249L, 2568961247409685839L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{5054950719961449507L, 6603641947535257949L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{5877044434575747487L, 4522769545960428178L, 4784652365737868885L, -8718212904364793465L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-2342042741891695977L, -942216964761161757L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-414131878543792625L, -8639497168752485370L, -9077625566447667997L, 6332228894454948316L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-939271275750472264L, 6651042926555979648L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-8844012923985255199L, 8764419841137119003L, 415039189589958111L, 1615485035375421906L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-6903147814903886005L, -3459460733304488468L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{8388869055407505366L, -268039391987555393L, 4232166800231731584L, -5072833768498310L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-2839027384543462843L, 2340905669925606480L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-526367786848332522L, 1400048417278841467L, 1252751753570436542L, 2049242816305718725L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-5513402023045006264L, 3364728939889114925L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-5110213053024147188L, 5651510913911433063L, 6726460032859725730L, 1152434601928420223L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{6381526612071901267L, 4253770195234621877L, -2749379176815249615L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{7242024011693025462L, 8402901351153432336L, 1537976435358396467L, -1793617729335413300L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{4919934531921553887L, 4703715861704206137L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-6668157805338101218L, 8664044070067791735L, -1559306690068203260L, -9153740061137113342L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.connect_color));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{6427803737935759299L, -7744593983358163275L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{7615565980222244284L, 208109295363184779L, -1442832280550507103L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.violet));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{5135130569764468197L, 6317983705493681725L, 2096334888906128245L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{8537339520069912481L, 4705808470526810733L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.violet));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-2156105570738862503L, -4660944537465480584L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-6443697569385279451L, 4318608580966283666L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.violet));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{7401137423051735735L, 1007627133615523128L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{1454835793230296849L, -381388976661809617L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.blue));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-2835300335062676041L, 5515679156580484401L, -5222810865758448576L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{1025833962599008330L, 7788721122201174677L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.blue));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-5506603539491172184L, 5911423682162162590L, 70562068951534970L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{2387525682383389991L, -340282997413694755L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.blue));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-5563179488772757840L, 6151446801166492465L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{7496469731982546164L, 7645393642806870182L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.blue));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{2812276568714918753L, 429931347261168830L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-8254711279975208568L, 4609117965333053242L, 8402596451776829388L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-2586922364009220462L, -8839693948567604109L, -4813636198230600946L, -8866190995441029980L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-1482371489935868120L, 4751650038041933586L, -2959019940303402899L, 5624574041921875166L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{532163031602457061L, 3536125770606557193L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-6060834189227908760L, -6539258386741377189L, 2256547586645653954L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{7946320929141316982L, 640150485395332910L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{4242175718416678892L, -1120547813010941311L, -6092547560732356175L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-3981162220561889118L, 6953531158491144564L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{523944649362643782L, 8334889437843919372L, 3164897842742732035L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-9132416900063252194L, -92459498713496609L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-6263198432705261427L, -3248131392906063811L, -3323015405152189760L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-1626161956316661421L, 8035656421721638316L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-5133934812999041221L, -1928865600856237834L, -2447907800454483891L}).toString());
            viewHolder.mInfo.setTextColor(ContextCompat.getColor(getContext(), R.color.colorInfo));
        } else if (lowerCase.contains(new ObfuscatedString(new long[]{-5341539163094426535L, -4762443449668131204L}).toString())) {
            viewHolder.mInfo.setText(new ObfuscatedString(new long[]{-1703485516299654376L, 1331756751723919660L}).toString());
        }
        return view;
    }

    public String ping(String str) {
        String obfuscatedString = new ObfuscatedString(new long[]{9096895856875513474L}).toString();
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(new ObfuscatedString(new long[]{1234772098101400230L, 2130660059805598731L, 7093904273940637886L, 605664677178948751L}).toString() + str).getInputStream()));
            char[] cArr = new char[4096];
            StringBuffer stringBuffer = new StringBuffer();
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read > 0) {
                    stringBuffer.append(cArr, 0, read);
                } else {
                    bufferedReader.close();
                    return stringBuffer.toString();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
            return obfuscatedString;
        }
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public String getItem(int i) {
        return (String) super.getItem(i);
    }
}
