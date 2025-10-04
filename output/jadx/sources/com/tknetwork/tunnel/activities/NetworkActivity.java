package com.tknetwork.tunnel.activities;

import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.preference.PreferenceManager;
import com.fbd.tunnel.R;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.search.SearchBar;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.NetworkActivity;
import com.tknetwork.tunnel.adapter.NetworkAdapter;
import com.tknetwork.tunnel.adapter.ServerAdapter;
import com.tknetwork.tunnel.core.ConfigParser;
import com.tknetwork.tunnel.core.Connection;
import com.tknetwork.tunnel.core.VpnProfile;
import com.tknetwork.tunnel.utils.ServerType;
import com.tknetwork.tunnel.utils.VPNUtil;
import com.tknetwork.tunnel.utils.c_12;
import com.tknetwork.tunnel.utils.gen;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0749x8313616e;
import defpackage.C0419x35cc9f53;
import defpackage.C1001x2241e83c;
import defpackage.DialogInterfaceOnClickListenerC0372xe698d;
import defpackage.DialogInterfaceOnClickListenerC0387xcd6c59d4;
import defpackage.DialogInterfaceOnClickListenerC0519xdc2f50a1;
import defpackage.RunnableC0450xb2a4f6ac;
import defpackage.RunnableC1000x19d68b8b;
import j$.util.Objects;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import net.openvpn.openvpn.PrefUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class NetworkActivity extends MainBaseActivity {
    public static final int ASK_QUESTION_REQUEST = 4003;
    private static final int S_BIND_CALLED = 1;
    private static final String TAG = new ObfuscatedString(new long[]{4404765709270961908L, -7851650694633886748L, -7329898807767498775L}).toString();
    private AlertDialog a;
    private AppCompatImageView btnPayloadGen;
    private CheckBox ckMultiCert;
    private CheckBox ckUseDefProxy;

    /* renamed from: config */
    private ConfigUtil f5773config;
    private SharedPreferences.Editor editor;
    private TextInputEditText etCertificate;
    private TextInputEditText etNetworkBackQuery;
    private TextInputEditText etNetworkFrontQuery;
    private TextInputEditText etNetworkInfo;
    private TextInputEditText etNetworkName;
    private TextInputEditText etNetworkPayload;
    private TextInputEditText etSSLInfo;
    private TextInputEditText etSSLName;
    private TextInputEditText etSSLPayload;
    private TextInputEditText etSSLPort;
    private TextInputEditText etSSLSNI;
    private TextInputEditText etSquidPort;
    private TextInputEditText etSquidProxy;
    private AppCompatImageView exit;
    private CheckBox isFake;
    private CheckBox isReplace;
    private RelativeLayout l_add;
    private MaterialCardView l_info;
    private RelativeLayout l_pro;
    private ArrayList<JSONObject> listNetwork;
    public ArrayList<String> listProfiles;
    private SharedPreferences.Editor mEditor;
    private Handler mHandler;
    private SharedPreferences mPref;
    private SharedPreferences myPrefs;
    public NetworkAdapter networkAdapter;
    private LinearLayout p_layout;
    private RadioGroup payload_type;
    private PrefUtil prefs;
    private Spinner proto_spin;
    private Spinner proto_type;
    private RadioButton r_b;
    private SearchBar searchBar;
    public ServerAdapter server_adapter;
    private RadioGroup server_type;
    private Toolbar toolbar;
    private CheckBox udp;
    private View v;
    private int selectedServerType = ServerType.OPENVPN;
    private final String UDP_CLI = new ObfuscatedString(new long[]{2816956785184448030L, -1354018422570736631L, -8068102998923808148L, 9142649899528717081L, 9120170271067455293L, 7094302493468681040L, 1361116705490471619L, 1993361976655103399L, 4570877280315915635L, 8356945804984071666L, -2954242906800094125L, 4990196936948099367L, 6052975680557565026L, -1160161419981191213L, -753154392790540095L, 3685708490260105646L, -4720973873549741498L, 6530888092256570507L, 6063109815135145159L, 566040314293660156L, -8438022419422183436L, 1045433253829995315L, -5508834908165119281L, 2710366278323624433L, -3833614493164864577L, 6268235666992335059L, 2214927826373749696L, -4885923565391014490L, -5282626904594018192L, 1232260404237659103L, 7535320532940046855L, 8252498729659313514L, -3794290734237974005L, 7007607587973914344L, 4221668228693051729L, -3438870633307822523L, 7262882483417119295L, 7217538422672190731L, -3267543763908023315L, 5303403234426441737L}).toString();

    /* renamed from: com.tknetwork.tunnel.activities.NetworkActivity$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends OnBackPressedCallback {
        public AnonymousClass1(boolean z) {
            super(z);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            NetworkActivity.this.setResult(0, false);
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.NetworkActivity$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements AdapterView.OnItemSelectedListener {
        public AnonymousClass2() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 1) {
                NetworkActivity.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-4439203644454132205L, 8690241119504804901L, 7704849269900905550L, -7164906313969215638L, 3626364667522316288L, -5636381559515724945L, -4579891564965868559L, -2603807184095289873L, -927199091241059814L, -2933230293443043680L}).toString());
            } else if (i == 2) {
                NetworkActivity.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{1679224973659469483L, 6036634151800124688L, 1220060031059139950L, -9215783370436162376L, -1468348849348321997L, 1276298586946458611L, 4516953546716801797L, -1739993771300719051L, 3075012529045126098L, 7141903090270714995L, 6659543705621979588L, -6920764655716181456L, 5839556729683228874L, -4821781150887973262L}).toString());
            } else if (i == 3) {
                NetworkActivity.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-9002405314086345850L, 6937923397050095608L, 6828965043341833742L, 5923324449422555248L, -1259819748625088628L, 1668233900727031496L, 1219576091166063308L, -7104469630267112529L, -5540583784964715020L}).toString());
            } else if (i == 4) {
                NetworkActivity.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-2607594257137484291L, -4180420713223450276L, 7597796060035818893L, -7331695223239122062L, -2743765962675610157L, 8745419647410419323L, 3135531597684557558L, 2003839423684448834L, -7045438571391975098L, -2864500071514640952L, 4659523015341253296L, -3738418566213891491L, -8809782828526933964L, -8865547237997804526L}).toString());
            }
            NetworkActivity.this.proto_type.getSelectedItem();
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.NetworkActivity$3 */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements AdapterView.OnItemSelectedListener {
        public AnonymousClass3() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 0) {
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                NetworkActivity.this.btnPayloadGen.setVisibility(8);
                NetworkActivity.this.server_type.setVisibility(0);
                NetworkActivity.this.p_layout.setVisibility(0);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                return;
            }
            if (i == 1) {
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{8119701316663327597L, 8851295410542202995L}).toString());
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                NetworkActivity.this.btnPayloadGen.setVisibility(0);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                NetworkActivity.this.p_layout.setVisibility(0);
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                return;
            }
            if (i == 2) {
                NetworkActivity.this.ckMultiCert.setVisibility(0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-8210336291404682174L, 2929215974433603731L}).toString());
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                NetworkActivity.this.btnPayloadGen.setVisibility(0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                NetworkActivity.this.p_layout.setVisibility(0);
                NetworkActivity.this.l_pro.setVisibility(0);
                NetworkActivity.this.l_info.setVisibility(0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                return;
            }
            if (i == 3) {
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{7909854164849197800L, -1104682114437281385L}).toString());
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                NetworkActivity.this.btnPayloadGen.setVisibility(8);
                NetworkActivity.this.p_layout.setVisibility(0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                return;
            }
            if (i == 4) {
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-4058937535788183919L, -446979391940067818L}).toString());
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                NetworkActivity.this.btnPayloadGen.setVisibility(0);
                NetworkActivity.this.p_layout.setVisibility(0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                return;
            }
            if (i == 5) {
                NetworkActivity.this.ckMultiCert.setVisibility(0);
                NetworkActivity.this.l_pro.setVisibility(0);
                NetworkActivity.this.l_info.setVisibility(0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 0);
                ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{1520627847301114922L, -6984719259606512146L}).toString());
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                NetworkActivity.this.btnPayloadGen.setVisibility(0);
                NetworkActivity.this.p_layout.setVisibility(0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                return;
            }
            if (i == 6) {
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-8033952638091313409L, 2894532807568081889L}).toString());
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                NetworkActivity.this.btnPayloadGen.setVisibility(0);
                NetworkActivity.this.p_layout.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                return;
            }
            if (i == 7) {
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                NetworkActivity.this.btnPayloadGen.setVisibility(8);
                NetworkActivity.this.p_layout.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                return;
            }
            if (i == 8) {
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                NetworkActivity.this.btnPayloadGen.setVisibility(8);
                NetworkActivity.this.p_layout.setVisibility(8);
                return;
            }
            if (i == 9) {
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-6673348745758208139L, -5275526827632530829L, 8996781877921951274L}).toString());
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 8);
                NetworkActivity.this.btnPayloadGen.setVisibility(8);
                NetworkActivity.this.p_layout.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                return;
            }
            if (i == 10) {
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-207856950420459513L, 8080135168019793440L, -1961966008364095781L}).toString());
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 8);
                NetworkActivity.this.btnPayloadGen.setVisibility(8);
                NetworkActivity.this.p_layout.setVisibility(8);
                return;
            }
            if (i == 11) {
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 8);
                NetworkActivity.this.btnPayloadGen.setVisibility(8);
                NetworkActivity.this.p_layout.setVisibility(8);
                return;
            }
            if (i == 12) {
                NetworkActivity.this.ckMultiCert.setVisibility(8);
                NetworkActivity.this.l_pro.setVisibility(8);
                NetworkActivity.this.l_info.setVisibility(8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 8);
                NetworkActivity.this.btnPayloadGen.setVisibility(8);
                NetworkActivity.this.p_layout.setVisibility(8);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.NetworkActivity$4 */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements SearchView.OnQueryTextListener {
        public AnonymousClass4() {
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            NetworkActivity.this.networkingList(str.toLowerCase());
            return true;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    private void clipImport1() {
        try {
            try {
                String d_01 = c_12.Parser.d_01(((ClipboardManager) getSystemService(new ObfuscatedString(new long[]{1561060230369618955L, 5804637287109414768L, -1786440143102873792L}).toString())).getText().toString());
                if (TextUtils.isEmpty(d_01)) {
                    showToast(getString(R.string.message_invalid_file_content));
                } else {
                    processImportData(d_01);
                }
            } catch (Exception e) {
                showToast(String.format(new ObfuscatedString(new long[]{-228046692416779132L, 7815169584829581872L, 9109804144546310377L, 6684325989115998030L}).toString(), e.getClass().getName(), e.getMessage()));
            }
        } catch (Exception e2) {
            showToast(String.format(new ObfuscatedString(new long[]{8595893134928763852L, 883570339282064969L, -4908100377456483490L, 7516450066496334050L}).toString(), e2.getClass().getName(), e2.getMessage()));
        }
    }

    private void dialogAddPayload() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.add_payload, (ViewGroup) null);
        this.v = inflate;
        final int i = 3;
        final int i2 = 2;
        ((RelativeLayout) inflate.findViewById(R.id.s1)).setBackgroundColor(this.myPrefs.getInt(new ObfuscatedString(new long[]{-6695912319119878908L, -6186489112793068910L, 3976132613256997541L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{2364556746643150684L, -3696750469431880424L}).toString())));
        ((MaterialCardView) this.v.findViewById(R.id.save)).setBackgroundTintList(ColorStateList.valueOf(this.myPrefs.getInt(new ObfuscatedString(new long[]{5232449073152686976L, 4000429894077560028L, -7574042837880322545L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{3823278311383726855L, -7595507117451695264L}).toString()))));
        this.ckMultiCert = (CheckBox) this.v.findViewById(R.id.ckMultiCert);
        this.etCertificate = (TextInputEditText) this.v.findViewById(R.id.etCertificate);
        this.l_pro = (RelativeLayout) this.v.findViewById(R.id.l_pro);
        this.l_info = (MaterialCardView) this.v.findViewById(R.id.l_info);
        this.proto_type = (Spinner) this.v.findViewById(R.id.proto_type);
        this.proto_spin = (Spinner) this.v.findViewById(R.id.proto_spin);
        this.server_type = (RadioGroup) this.v.findViewById(R.id.server_type);
        this.l_add = (RelativeLayout) this.v.findViewById(R.id.l_add);
        this.etSSLSNI = (TextInputEditText) this.v.findViewById(R.id.etSSLSNI);
        this.etSSLPort = (TextInputEditText) this.v.findViewById(R.id.etSSLPort);
        this.payload_type = (RadioGroup) this.v.findViewById(R.id.payload_type);
        this.p_layout = (LinearLayout) this.v.findViewById(R.id.p_layout);
        this.etNetworkName = (TextInputEditText) this.v.findViewById(R.id.etNetworkName);
        this.etNetworkPayload = (TextInputEditText) this.v.findViewById(R.id.etNetworkPayload);
        this.etNetworkInfo = (TextInputEditText) this.v.findViewById(R.id.etNetworkInfo);
        this.ckUseDefProxy = (CheckBox) this.v.findViewById(R.id.ckUseDefProxy);
        this.etSquidProxy = (TextInputEditText) this.v.findViewById(R.id.etSquidProxy);
        this.etSquidPort = (TextInputEditText) this.v.findViewById(R.id.etSquidPort);
        this.etNetworkFrontQuery = (TextInputEditText) this.v.findViewById(R.id.etNetworkFrontQuery);
        this.etNetworkBackQuery = (TextInputEditText) this.v.findViewById(R.id.etNetworkBackQuery);
        this.btnPayloadGen = (AppCompatImageView) this.v.findViewById(R.id.btnPayloadGen);
        this.isReplace = (CheckBox) this.v.findViewById(R.id.isReplace);
        ((TextView) this.v.findViewById(R.id.pTitle)).setText(new ObfuscatedString(new long[]{-2000764676660341221L, 4912455690587618757L, -3864141341905976810L}).toString());
        final int i3 = 1;
        this.ckUseDefProxy.setChecked(true);
        final int i4 = 0;
        this.etSquidProxy.setEnabled(false);
        this.server_type.check(R.id.cf_radio);
        this.payload_type.check(R.id.ovpn_radio);
        this.proto_type.setAdapter((SpinnerAdapter) new ArrayAdapter(getApplicationContext(), android.R.layout.simple_dropdown_item_1line, new String[]{new ObfuscatedString(new long[]{-2172670248632822960L, -5593156816184593734L}).toString(), new ObfuscatedString(new long[]{6430251883179777199L, 3474250832948055286L, -4111617082417979564L}).toString(), new ObfuscatedString(new long[]{-2637860405175281827L, 3594121452099106753L, -1209846284533810075L}).toString(), new ObfuscatedString(new long[]{-7474808513539680087L, 5105225738474628253L, 5233967552191880325L}).toString(), new ObfuscatedString(new long[]{4092367219550501011L, 48661543992105083L, -6442387406665345618L}).toString()}));
        this.proto_type.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tknetwork.tunnel.activities.NetworkActivity.2
            public AnonymousClass2() {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i5, long j) {
                if (i5 == 1) {
                    NetworkActivity.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-4439203644454132205L, 8690241119504804901L, 7704849269900905550L, -7164906313969215638L, 3626364667522316288L, -5636381559515724945L, -4579891564965868559L, -2603807184095289873L, -927199091241059814L, -2933230293443043680L}).toString());
                } else if (i5 == 2) {
                    NetworkActivity.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{1679224973659469483L, 6036634151800124688L, 1220060031059139950L, -9215783370436162376L, -1468348849348321997L, 1276298586946458611L, 4516953546716801797L, -1739993771300719051L, 3075012529045126098L, 7141903090270714995L, 6659543705621979588L, -6920764655716181456L, 5839556729683228874L, -4821781150887973262L}).toString());
                } else if (i5 == 3) {
                    NetworkActivity.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-9002405314086345850L, 6937923397050095608L, 6828965043341833742L, 5923324449422555248L, -1259819748625088628L, 1668233900727031496L, 1219576091166063308L, -7104469630267112529L, -5540583784964715020L}).toString());
                } else if (i5 == 4) {
                    NetworkActivity.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-2607594257137484291L, -4180420713223450276L, 7597796060035818893L, -7331695223239122062L, -2743765962675610157L, 8745419647410419323L, 3135531597684557558L, 2003839423684448834L, -7045438571391975098L, -2864500071514640952L, 4659523015341253296L, -3738418566213891491L, -8809782828526933964L, -8865547237997804526L}).toString());
                }
                NetworkActivity.this.proto_type.getSelectedItem();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        this.proto_spin.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tknetwork.tunnel.activities.NetworkActivity.3
            public AnonymousClass3() {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i5, long j) {
                if (i5 == 0) {
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                    NetworkActivity.this.btnPayloadGen.setVisibility(8);
                    NetworkActivity.this.server_type.setVisibility(0);
                    NetworkActivity.this.p_layout.setVisibility(0);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                    return;
                }
                if (i5 == 1) {
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{8119701316663327597L, 8851295410542202995L}).toString());
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                    NetworkActivity.this.btnPayloadGen.setVisibility(0);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    NetworkActivity.this.p_layout.setVisibility(0);
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                    return;
                }
                if (i5 == 2) {
                    NetworkActivity.this.ckMultiCert.setVisibility(0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-8210336291404682174L, 2929215974433603731L}).toString());
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                    NetworkActivity.this.btnPayloadGen.setVisibility(0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                    NetworkActivity.this.p_layout.setVisibility(0);
                    NetworkActivity.this.l_pro.setVisibility(0);
                    NetworkActivity.this.l_info.setVisibility(0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                    return;
                }
                if (i5 == 3) {
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{7909854164849197800L, -1104682114437281385L}).toString());
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                    NetworkActivity.this.btnPayloadGen.setVisibility(8);
                    NetworkActivity.this.p_layout.setVisibility(0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                    return;
                }
                if (i5 == 4) {
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-4058937535788183919L, -446979391940067818L}).toString());
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                    NetworkActivity.this.btnPayloadGen.setVisibility(0);
                    NetworkActivity.this.p_layout.setVisibility(0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                    return;
                }
                if (i5 == 5) {
                    NetworkActivity.this.ckMultiCert.setVisibility(0);
                    NetworkActivity.this.l_pro.setVisibility(0);
                    NetworkActivity.this.l_info.setVisibility(0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 0);
                    ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{1520627847301114922L, -6984719259606512146L}).toString());
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                    NetworkActivity.this.btnPayloadGen.setVisibility(0);
                    NetworkActivity.this.p_layout.setVisibility(0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 0);
                    return;
                }
                if (i5 == 6) {
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-8033952638091313409L, 2894532807568081889L}).toString());
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                    NetworkActivity.this.btnPayloadGen.setVisibility(0);
                    NetworkActivity.this.p_layout.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                    return;
                }
                if (i5 == 7) {
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                    NetworkActivity.this.btnPayloadGen.setVisibility(8);
                    NetworkActivity.this.p_layout.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                    return;
                }
                if (i5 == 8) {
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 0);
                    NetworkActivity.this.btnPayloadGen.setVisibility(8);
                    NetworkActivity.this.p_layout.setVisibility(8);
                    return;
                }
                if (i5 == 9) {
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-6673348745758208139L, -5275526827632530829L, 8996781877921951274L}).toString());
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 8);
                    NetworkActivity.this.btnPayloadGen.setVisibility(8);
                    NetworkActivity.this.p_layout.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                    return;
                }
                if (i5 == 10) {
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) NetworkActivity.this.v.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-207856950420459513L, 8080135168019793440L, -1961966008364095781L}).toString());
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 8);
                    NetworkActivity.this.btnPayloadGen.setVisibility(8);
                    NetworkActivity.this.p_layout.setVisibility(8);
                    return;
                }
                if (i5 == 11) {
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 8);
                    NetworkActivity.this.btnPayloadGen.setVisibility(8);
                    NetworkActivity.this.p_layout.setVisibility(8);
                    return;
                }
                if (i5 == 12) {
                    NetworkActivity.this.ckMultiCert.setVisibility(8);
                    NetworkActivity.this.l_pro.setVisibility(8);
                    NetworkActivity.this.l_info.setVisibility(8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.payload_type, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_add, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_SNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.l_PORTSNI, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.excluded_udp_layout, 8);
                    AbstractC0749x8313616e.m3348xf0a984b7(NetworkActivity.this, R.id.radio_type, 8);
                    NetworkActivity.this.btnPayloadGen.setVisibility(8);
                    NetworkActivity.this.p_layout.setVisibility(8);
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        final int i5 = 4;
        this.ckMultiCert.setOnClickListener(new View.OnClickListener(this) { // from class: 딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ NetworkActivity f5184x3271d0aa;

            {
                this.f5184x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i5) {
                    case 0:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$6(view);
                        return;
                    case 1:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$7(view);
                        return;
                    case 2:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$8(view);
                        return;
                    case 3:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$9(view);
                        return;
                    case 4:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$2(view);
                        return;
                    default:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$3(view);
                        return;
                }
            }
        });
        final int i6 = 5;
        this.ckUseDefProxy.setOnClickListener(new View.OnClickListener(this) { // from class: 딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ NetworkActivity f5184x3271d0aa;

            {
                this.f5184x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i6) {
                    case 0:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$6(view);
                        return;
                    case 1:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$7(view);
                        return;
                    case 2:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$8(view);
                        return;
                    case 3:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$9(view);
                        return;
                    case 4:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$2(view);
                        return;
                    default:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$3(view);
                        return;
                }
            }
        });
        this.btnPayloadGen.setOnClickListener(new View.OnClickListener(this) { // from class: 딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ NetworkActivity f5184x3271d0aa;

            {
                this.f5184x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$6(view);
                        return;
                    case 1:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$7(view);
                        return;
                    case 2:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$8(view);
                        return;
                    case 3:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$9(view);
                        return;
                    case 4:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$2(view);
                        return;
                    default:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$3(view);
                        return;
                }
            }
        });
        this.v.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener(this) { // from class: 딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ NetworkActivity f5184x3271d0aa;

            {
                this.f5184x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$6(view);
                        return;
                    case 1:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$7(view);
                        return;
                    case 2:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$8(view);
                        return;
                    case 3:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$9(view);
                        return;
                    case 4:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$2(view);
                        return;
                    default:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$3(view);
                        return;
                }
            }
        });
        this.v.findViewById(R.id.save).setOnClickListener(new View.OnClickListener(this) { // from class: 딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ NetworkActivity f5184x3271d0aa;

            {
                this.f5184x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$6(view);
                        return;
                    case 1:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$7(view);
                        return;
                    case 2:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$8(view);
                        return;
                    case 3:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$9(view);
                        return;
                    case 4:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$2(view);
                        return;
                    default:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$3(view);
                        return;
                }
            }
        });
        this.a.setView(this.v);
        this.a.show();
        AppCompatImageView appCompatImageView = (AppCompatImageView) this.v.findViewById(R.id.exit);
        this.exit = appCompatImageView;
        appCompatImageView.setOnClickListener(new View.OnClickListener(this) { // from class: 딠뒵뒘듐딁땹뒵땡딸뒷될뒬땜돵땻됩땨돝딤뎹돼둡뒝땪뎠돴듻득듬돼뒬딨든됩된딨득들듬땠뒹듐됫듨딅땰듰둔땣드땀됴땄됩땃딁둔도듟듰딸두될돶딽딞땍뎰둥뎡딠뒘딝뎹딠딄돠드둘땐돷돰돨땤둑딎딻뎠딀둑땋딃땜둔딐뒈뎹됫됩돛돸땲뒨돵돸땋둑땀뒷둔딜땝땁뎽디뒀뎽뒈뎰뒼뎹땔땄뒼뒀돼뎰땥땧뒀

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ NetworkActivity f5184x3271d0aa;

            {
                this.f5184x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$6(view);
                        return;
                    case 1:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$7(view);
                        return;
                    case 2:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$8(view);
                        return;
                    case 3:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$9(view);
                        return;
                    case 4:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$2(view);
                        return;
                    default:
                        this.f5184x3271d0aa.lambda$dialogAddPayload$3(view);
                        return;
                }
            }
        });
    }

    private JSONObject getNetworkSelectedJson() {
        for (int i = 0; i < this.listNetwork.size(); i++) {
            if (this.listNetwork.get(i).getString(new ObfuscatedString(new long[]{2419595971224058392L, 4861403758103359044L}).toString()).equals(this.f5773config.getNetworkSelectedName())) {
                return this.listNetwork.get(i);
            }
        }
        return this.listNetwork.get(0);
    }

    private JSONObject getServer() {
        String serverSelectedName = this.f5773config.getServerSelectedName();
        JSONArray serversArray = getServersArray(this.selectedServerType);
        for (int i = 0; i < serversArray.length(); i++) {
            JSONObject jSONObject = serversArray.getJSONObject(i);
            if (jSONObject.getString(new ObfuscatedString(new long[]{-6643585160463694744L, -3881836959871177449L}).toString()).equals(serverSelectedName)) {
                return jSONObject;
            }
        }
        return serversArray.getJSONObject(0);
    }

    public /* synthetic */ void lambda$dialogAddPayload$2(View view) {
        if (this.ckMultiCert.isChecked()) {
            this.v.findViewById(R.id.etCertificate_ly).setVisibility(0);
        } else {
            this.v.findViewById(R.id.etCertificate_ly).setVisibility(8);
        }
    }

    public /* synthetic */ void lambda$dialogAddPayload$3(View view) {
        if (this.ckUseDefProxy.isChecked()) {
            this.etSquidProxy.setText(new ObfuscatedString(new long[]{8965950247646424291L, -7096053788449610499L, -6841030302952491909L}).toString());
            this.etSquidProxy.setEnabled(false);
        } else {
            this.etSquidProxy.setText(new ObfuscatedString(new long[]{952790088348996250L}).toString());
            this.etSquidProxy.setEnabled(true);
        }
    }

    public /* synthetic */ void lambda$dialogAddPayload$4(String str) {
        this.etNetworkPayload.setText(str);
    }

    public /* synthetic */ void lambda$dialogAddPayload$5(TextInputEditText textInputEditText, TextInputEditText textInputEditText2, TextInputEditText textInputEditText3, TextInputEditText textInputEditText4, TextInputEditText textInputEditText5, TextInputEditText textInputEditText6, TextInputEditText textInputEditText7, TextInputEditText textInputEditText8, DialogInterface dialogInterface, int i) {
        try {
            String obj = textInputEditText.getText().toString();
            this.etNetworkPayload.setText(String.format(new ObfuscatedString(new long[]{1853039567834073002L, -6595713960481115073L, 5606055362937781960L, 8637709064192283964L, 8983854216438546397L, 5292199850862428350L, -6581716484801409640L, 2111436561640451682L, 2865990751140872075L, -4246413861352886567L, -5035725090174974761L, -7729688618187642251L, -7474600140477347406L, 7648342917172965804L, -2552468567861965467L, -1074269363592255877L, 553363697568095361L, 683234172667176963L, 5583804339104060662L, -3888496285962491154L, 3690947102776353940L, -8322779918442284909L, 560731417886332992L, 1415777671330150841L, 3570734950110743789L, -7854455129866705113L, -1751300440893573957L, -1728980362337326896L, 6780160818652529046L, -5549375298237907521L, -4290168520551987029L, -793726940100886870L, 250438529614849212L, 5573526710975343415L, -4242311350553602681L, 2874713180805289809L, -8092165138890325916L, 4691129593493498548L, -6780613493723584507L, -3536134792760062824L}).toString(), new ObfuscatedString(new long[]{-4799643958459277733L, 1403208183349606973L}).toString() + textInputEditText2.getText().toString(), obj, new ObfuscatedString(new long[]{-5963696402476125456L, 3632741087421207453L}).toString(), Integer.valueOf(Integer.parseInt(textInputEditText3.getText().toString())), Integer.valueOf(Integer.parseInt(textInputEditText4.getText().toString())), Integer.valueOf(Integer.parseInt(textInputEditText5.getText().toString())), Integer.valueOf(Integer.parseInt(textInputEditText6.getText().toString())), new ObfuscatedString(new long[]{6110532295016980949L, 1977753557472628882L, -5588025225379136540L}).toString(), new ObfuscatedString(new long[]{-411500312646021590L, -602809497972750099L, -1229560724478238630L}).toString(), Boolean.TRUE, new ObfuscatedString(new long[]{347631547561061167L}).toString(), Integer.valueOf(Integer.parseInt(textInputEditText7.getText().toString())), Integer.valueOf(Integer.parseInt(textInputEditText8.getText().toString()))));
        } catch (Exception e) {
            Toast.makeText(this, e.getMessage(), 1).show();
        }
    }

    public /* synthetic */ void lambda$dialogAddPayload$6(View view) {
        if (this.proto_spin.getSelectedItemPosition() != 0 && this.proto_spin.getSelectedItemPosition() != 1 && this.proto_spin.getSelectedItemPosition() != 2 && this.proto_spin.getSelectedItemPosition() != 4 && this.proto_spin.getSelectedItemPosition() != 5) {
            if (this.proto_spin.getSelectedItemPosition() == 6) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                View inflate = LayoutInflater.from(this).inflate(R.layout.udp_maker, (ViewGroup) null);
                TextInputEditText textInputEditText = (TextInputEditText) inflate.findViewById(R.id.etUDPPort);
                TextInputEditText textInputEditText2 = (TextInputEditText) inflate.findViewById(R.id.etServerObfs);
                TextInputEditText textInputEditText3 = (TextInputEditText) inflate.findViewById(R.id.etRetry);
                TextInputEditText textInputEditText4 = (TextInputEditText) inflate.findViewById(R.id.etRetryInterval);
                TextInputEditText textInputEditText5 = (TextInputEditText) inflate.findViewById(R.id.etServerUpMBPS);
                TextInputEditText textInputEditText6 = (TextInputEditText) inflate.findViewById(R.id.etServerDownMBPS);
                TextInputEditText textInputEditText7 = (TextInputEditText) inflate.findViewById(R.id.etServerRWConn);
                TextInputEditText textInputEditText8 = (TextInputEditText) inflate.findViewById(R.id.etServerRW);
                textInputEditText2.setText(this.mPref.getString(new ObfuscatedString(new long[]{-265920689923194392L, -2900432196445814683L}).toString(), new ObfuscatedString(new long[]{-4462299875177867154L}).toString()));
                builder.setNegativeButton(new ObfuscatedString(new long[]{-4393314514421997063L, 970528052980926181L}).toString(), (DialogInterface.OnClickListener) null);
                builder.setPositiveButton(new ObfuscatedString(new long[]{3680421699768634769L, -5445076938827654994L}).toString(), new DialogInterfaceOnClickListenerC0387xcd6c59d4(this, textInputEditText2, textInputEditText, textInputEditText5, textInputEditText6, textInputEditText3, textInputEditText4, textInputEditText7, textInputEditText8, 1));
                builder.setTitle(new ObfuscatedString(new long[]{-3793242327475895082L, 2636813931833355888L, 6364015426635112862L}).toString());
                builder.setView(inflate);
                builder.create().show();
                return;
            }
            return;
        }
        gen genVar = new gen(this);
        genVar.setCancelListener(new ObfuscatedString(new long[]{5777083928238869734L, 1143241325159229124L}).toString(), null);
        genVar.setGenerateListener(new ObfuscatedString(new long[]{-6481950138422572413L, 8208394075849920030L}).toString(), new C0419x35cc9f53(this, 19));
        genVar.show();
    }

    public /* synthetic */ void lambda$dialogAddPayload$7(View view) {
        this.a.dismiss();
    }

    public /* synthetic */ void lambda$dialogAddPayload$8(View view) {
        String obj = this.etNetworkPayload.getText().toString();
        String obj2 = this.etSquidProxy.getText().toString();
        boolean isChecked = this.ckMultiCert.isChecked();
        String replace = obj.replace(new ObfuscatedString(new long[]{-145467502017314705L, 2372583038451256520L}).toString(), new ObfuscatedString(new long[]{5849252851579638598L, -7875168639752856294L}).toString()).replace(new ObfuscatedString(new long[]{-5208352498354662188L, 8349410610863396521L}).toString(), new ObfuscatedString(new long[]{8817565243343689202L, -2848411992301009478L}).toString()).replace(new ObfuscatedString(new long[]{-2963526982335067248L, -5867614549584609910L}).toString(), new ObfuscatedString(new long[]{955836932588218914L, -2751608606665544767L}).toString()).replace(new ObfuscatedString(new long[]{6133182529928356799L, 7404565582843578876L}).toString(), new ObfuscatedString(new long[]{2196247088947657302L, -8641639459603613929L}).toString()).replace(new ObfuscatedString(new long[]{-4112866555804444704L, -7737064313067618000L}).toString(), new ObfuscatedString(new long[]{7845036790055146953L, -3886481749154632869L}).toString()).replace(new ObfuscatedString(new long[]{1418598970377188135L, 1586005852899654761L}).toString(), new ObfuscatedString(new long[]{-5582411219490663467L, -1120109524122373063L}).toString()).replace(new ObfuscatedString(new long[]{5575334139793985003L, -1930793573173779587L}).toString(), new ObfuscatedString(new long[]{-4987825062207930373L, 2123286812296664402L}).toString()).replace(new ObfuscatedString(new long[]{1742730368310813180L, 6168970279668439189L}).toString(), new ObfuscatedString(new long[]{1442817065454463710L, -1238331266763798797L}).toString()).replace(new ObfuscatedString(new long[]{-4443814233339519275L, 4025126732448346321L}).toString(), new ObfuscatedString(new long[]{4683335447728684788L, 1942965273455256790L}).toString()).replace(new ObfuscatedString(new long[]{-4518164073746417307L, 829331425158748328L}).toString(), new ObfuscatedString(new long[]{6692444284347977783L, -1186583681523440539L}).toString()).replace(new ObfuscatedString(new long[]{6010457472518715146L, 4045331245023559209L}).toString(), new ObfuscatedString(new long[]{-6664987858460491371L, 4320176160432927111L}).toString()).replace(new ObfuscatedString(new long[]{-3957187673925737567L, -4128821367487322628L}).toString(), new ObfuscatedString(new long[]{-7626572083978410834L, 7660701236588833850L}).toString()).replace(new ObfuscatedString(new long[]{8244963165600013497L, -7358153456642416871L}).toString(), new ObfuscatedString(new long[]{-611519480679965065L, 554449805790750996L}).toString()).replace(new ObfuscatedString(new long[]{2620821637571636770L, 7642669187342684501L}).toString(), new ObfuscatedString(new long[]{7089102656134581412L, -1113283860085475257L}).toString()).replace(new ObfuscatedString(new long[]{-3361104017752645895L, 4132623222869032825L}).toString(), new ObfuscatedString(new long[]{-7388298888337158985L, 8278123639689828578L}).toString()).replace(new ObfuscatedString(new long[]{3655172805440896041L, -4640914508357220203L}).toString(), new ObfuscatedString(new long[]{-8226178798169662982L, -9116055864133290042L}).toString()).replace(new ObfuscatedString(new long[]{-4062328062262375890L, 1641065254950772114L}).toString(), new ObfuscatedString(new long[]{9000107073076998075L, -1957033375346933225L}).toString()).replace(new ObfuscatedString(new long[]{-1606440277868102733L, -3667848387882778435L}).toString(), new ObfuscatedString(new long[]{-8195434075534917055L, 8866583401168080897L}).toString()).replace(new ObfuscatedString(new long[]{2520033891635258551L, 6165726526677343024L}).toString(), new ObfuscatedString(new long[]{188275781801394495L, -7373447483391194919L}).toString()).replace(new ObfuscatedString(new long[]{2477469776747070690L, 7104369503295446371L}).toString(), new ObfuscatedString(new long[]{-8813098488922988708L, -6734143598700339197L}).toString()).replace(new ObfuscatedString(new long[]{3002887982171682592L, 5769856964544576060L}).toString(), new ObfuscatedString(new long[]{-123754091858998918L, 4286220918641459947L}).toString()).replace(new ObfuscatedString(new long[]{-1276692451810290742L, -632849491196731120L}).toString(), new ObfuscatedString(new long[]{2174123863414085641L, 3510969055630879924L}).toString()).replace(new ObfuscatedString(new long[]{-8050428168456575886L, -8234594287403311910L}).toString(), new ObfuscatedString(new long[]{-5770251044116053721L, -6532206506641247647L}).toString()).replace(new ObfuscatedString(new long[]{9003394776987164642L, 591167022301243308L}).toString(), new ObfuscatedString(new long[]{-6204539997873710085L, 6411640199242971799L}).toString()).replace(new ObfuscatedString(new long[]{-3846256286592653295L, -4759202275305674632L}).toString(), new ObfuscatedString(new long[]{2967733567891819728L, 1544504654994511752L}).toString()).replace(new ObfuscatedString(new long[]{-6229099339684728886L, -5869366503204834320L}).toString(), new ObfuscatedString(new long[]{-7419367065608511805L, -7025914493256233555L}).toString());
        String replace2 = obj2.replace(new ObfuscatedString(new long[]{-8495033704218326807L, -7258914136152656527L}).toString(), new ObfuscatedString(new long[]{-3980888619480432487L, -5436654371089334159L}).toString()).replace(new ObfuscatedString(new long[]{571124873729123979L, -5776164262508363734L}).toString(), new ObfuscatedString(new long[]{8237646890071315382L, 6721139348255525849L}).toString()).replace(new ObfuscatedString(new long[]{6407070961234719268L, -8315036042253237017L}).toString(), new ObfuscatedString(new long[]{-1117822113045448324L, 3727956203522020393L}).toString()).replace(new ObfuscatedString(new long[]{4741721745667606551L, 6219649232214006521L}).toString(), new ObfuscatedString(new long[]{-6571159565836289847L, 2443759502147686273L}).toString()).replace(new ObfuscatedString(new long[]{-4692808665386807926L, -62015765560517914L}).toString(), new ObfuscatedString(new long[]{-2957383935071172399L, 7337141791183544441L}).toString()).replace(new ObfuscatedString(new long[]{2576693546243476717L, 1490235648824581356L}).toString(), new ObfuscatedString(new long[]{711428288618035169L, -759146981461424647L}).toString()).replace(new ObfuscatedString(new long[]{-2405091799329977714L, 8372081669844751411L}).toString(), new ObfuscatedString(new long[]{-1839602454918710926L, 4761928363771230005L}).toString()).replace(new ObfuscatedString(new long[]{3996419682911277676L, -8448558376466601623L}).toString(), new ObfuscatedString(new long[]{-4526091109276443492L, 7172584033194148313L}).toString()).replace(new ObfuscatedString(new long[]{-3338812021976118531L, 1037749282433650228L}).toString(), new ObfuscatedString(new long[]{7414190914859909012L, -6363815876618874043L}).toString()).replace(new ObfuscatedString(new long[]{-5273469519068894092L, 275494426312219451L}).toString(), new ObfuscatedString(new long[]{-5251124920669308028L, -3058898228558868949L}).toString()).replace(new ObfuscatedString(new long[]{-3981725534468236566L, 2038706468242898832L}).toString(), new ObfuscatedString(new long[]{2008467915846870469L, 2038520699174326301L}).toString()).replace(new ObfuscatedString(new long[]{-2486689174913630638L, 6739725990474974956L}).toString(), new ObfuscatedString(new long[]{1230341109044810433L, -8603148562957484510L}).toString()).replace(new ObfuscatedString(new long[]{-8735838982558984576L, 4472804143131991237L}).toString(), new ObfuscatedString(new long[]{5804803332444157331L, -6616041225370437545L}).toString()).replace(new ObfuscatedString(new long[]{6588691701930223423L, 6238433929525194605L}).toString(), new ObfuscatedString(new long[]{6772216888951034123L, 1501283861563547758L}).toString()).replace(new ObfuscatedString(new long[]{1560825427963517556L, -506990722575937277L}).toString(), new ObfuscatedString(new long[]{8594062193659971666L, 6788094579901996408L}).toString()).replace(new ObfuscatedString(new long[]{-5492853855985795157L, -9190512504691038700L}).toString(), new ObfuscatedString(new long[]{-7530594665145092526L, 3583028673552983225L}).toString()).replace(new ObfuscatedString(new long[]{-4567011159656572230L, -5715592982387887968L}).toString(), new ObfuscatedString(new long[]{-7186777601547974140L, -4388263210623861565L}).toString()).replace(new ObfuscatedString(new long[]{-8211388235913992177L, -5740877168434491046L}).toString(), new ObfuscatedString(new long[]{1519903328406654509L, -7433209971191078108L}).toString()).replace(new ObfuscatedString(new long[]{-8010080238277194888L, 2736485135715592068L}).toString(), new ObfuscatedString(new long[]{3083262115883275451L, -8032591152237214755L}).toString()).replace(new ObfuscatedString(new long[]{-3486022437340045324L, -4545920178378339508L}).toString(), new ObfuscatedString(new long[]{6794192045252024310L, 952276507566368579L}).toString()).replace(new ObfuscatedString(new long[]{4373489672093467078L, 3921228413657563090L}).toString(), new ObfuscatedString(new long[]{3987949749548408476L, -2124972967043245889L}).toString()).replace(new ObfuscatedString(new long[]{2482965413454405379L, 311562736353340874L}).toString(), new ObfuscatedString(new long[]{-1346052173623115217L, 3153850689178888449L}).toString()).replace(new ObfuscatedString(new long[]{-5002457429472794882L, 5169683466449236769L}).toString(), new ObfuscatedString(new long[]{-1362673331067271362L, 1896211617897060418L}).toString()).replace(new ObfuscatedString(new long[]{-1317581595669401892L, -3858714303021382066L}).toString(), new ObfuscatedString(new long[]{3825269312308016835L, 4431004950640980442L}).toString()).replace(new ObfuscatedString(new long[]{6858418205963672101L, -6979477880143076563L}).toString(), new ObfuscatedString(new long[]{5873748909401141107L, 3784948569063230913L}).toString()).replace(new ObfuscatedString(new long[]{-588977521046266872L, 5753519286896753969L}).toString(), new ObfuscatedString(new long[]{-8461453687520602315L, 1002033659191494205L}).toString());
        JSONObject jSONObject = new JSONObject();
        String obj3 = this.etNetworkName.getText().toString();
        if (this.proto_spin.getSelectedItemPosition() == 0) {
            try {
                int selectedItemPosition = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-4712220604932028941L, 4996420820874927861L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{5069961051632000675L, -7481908366144093392L, 6827321043179569800L}).toString(), selectedItemPosition);
                jSONObject.put(new ObfuscatedString(new long[]{9081605423359557169L, 1856336246678536189L, -5156229836456807325L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-6033423333491165886L, -6880062319533826249L, 5670689743079160800L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{8344755120962719583L, -5774144664848087213L}).toString(), new ObfuscatedString(new long[]{2717358991283076698L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7837518405246347617L, 3032741617768107986L, -5313657461571498123L}).toString(), new ObfuscatedString(new long[]{-7363937996973942941L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1820517164416333579L, 4548969129506695303L}).toString(), new ObfuscatedString(new long[]{7909955989284563043L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-3833304433929932117L, 7061403119746578164L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{3204776901796154986L, 8739069669141572072L, 5313263998225907816L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8811096023612705089L, -1415330925285655638L, -2633266699408027357L}).toString(), new ObfuscatedString(new long[]{-5906324631598081954L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-2743706019869558055L, -6301444923807311164L, -2048164238043296062L}).toString(), new ObfuscatedString(new long[]{7398535597566786310L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{6711822728812660855L, -5179219413821190420L, 7311285483253140791L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{156234476544211353L, 1774302331271115776L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{5276421060221506666L, -5491291480252895000L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{8309994986126293750L, -3049640159267687006L, -1082594191869771152L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8292909122683147390L, 7175505131807079705L, -6641368645473286869L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-8105407055196774672L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-1976549907123865517L, -3975640725340524328L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{8675618511189651644L, 6653067779290495090L, -3399036671323089823L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-3029582248646110741L, -4032848360701634993L, -5060054083860656476L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{-3156535846437208415L, -9169122624545980037L, -360120080078209533L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i = 0; i < this.listNetwork.size(); i++) {
                    if (obj3.equals(this.listNetwork.get(i).getString(new ObfuscatedString(new long[]{-906590105228580571L, -650234863185733286L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{3079630789715942346L, 6597060595856259994L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e) {
                Toast.makeText(this, e.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 1) {
            try {
                int selectedItemPosition2 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-8460487984328122042L, -8082769809808039852L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-4673709079180810481L, 8145567158863179508L, -5179653016291430124L}).toString(), selectedItemPosition2);
                jSONObject.put(new ObfuscatedString(new long[]{-8579092542339679117L, 1702871562069230519L, -310080742472806739L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-6708897690114223906L, -2665408563133085350L, -7341356305055944646L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-1593885035052396319L, -4181069929054958161L}).toString(), new ObfuscatedString(new long[]{-4572426996537713485L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{4299903146667302074L, -5545863131259669139L, 3648526075461940325L}).toString(), new ObfuscatedString(new long[]{-6133633845235082274L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-6067510744567299824L, 5964156242708943108L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{157644359316062045L, -8332973627910727693L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1735878568149731192L, -5916419723032336484L, 6455033814708373011L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-3488610540257907512L, 7840093109147839893L, -8765543358012060163L}).toString(), new ObfuscatedString(new long[]{-6780099301188627380L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{5671246941892244921L, -888072929772444685L, 5018197882736457015L}).toString(), new ObfuscatedString(new long[]{-2825268342386797142L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7468747625224879184L, 5629266237015809489L, 6550907031148553988L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-1493605016162263497L, -5602618316043881218L, 4667815510411440085L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{3290611670698437896L, -5007044719549349008L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{5321834655544621112L, 6394977971334162992L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{2388918899284826345L, -7628584202429203822L, 5460026588905879046L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-6827643431301667131L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{6599703980131290099L, 3195791847850710664L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{3661174183831768601L, 7986761222404503291L, -2490408667175075115L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{1605454289818678610L, -8515011666079372099L, -4395365135799707901L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{-2181849654148128440L, -8778798684851785073L, 6088461401131085742L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i2 = 0; i2 < this.listNetwork.size(); i2++) {
                    if (obj3.equals(this.listNetwork.get(i2).getString(new ObfuscatedString(new long[]{-5568263392133643129L, -3130668862109381686L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-5024273086146700944L, 8832260774634573688L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e2) {
                Toast.makeText(this, e2.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 2) {
            try {
                int selectedItemPosition3 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{2418338143540134561L, -5547255523761155470L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{9106048552111585389L, -6406720538220232138L, -8487134132249128349L}).toString(), selectedItemPosition3);
                jSONObject.put(new ObfuscatedString(new long[]{-5232096695393272788L, -5007427206121386736L, -4687102476197302275L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-3106920647109425860L, 6319412311821358325L, 5779733830294980629L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{4316545695371444329L, 8172110717711734318L}).toString(), VPNUtil.encrypt(this.etSSLSNI.getText().toString()));
                jSONObject.put(new ObfuscatedString(new long[]{3080196790855074605L, -7397668376669962212L, 8607718891341472290L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{5545179849582455602L, 895143591604374047L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-9192368236217574591L, 1119960812381680297L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8669962963593285428L, 1149840472220704152L, -3428454870701696845L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{8823642499630552401L, -7181029457727126995L, -5573777883243986831L}).toString(), this.etNetworkFrontQuery.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{8824369487264175352L, 6216893930454517819L, -8034023930394593285L}).toString(), this.etNetworkBackQuery.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{6688685657522502832L, 6941966093729505860L, -7955469034152154135L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{5388666825039494393L, -244864901908990131L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{803093923961606798L, 918409289429808403L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{8922974045871166718L, -7214869174626474126L, -7032619940691595426L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{7666934095112843505L, -2383128796574108100L, -3226517966649252695L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{758133401944393882L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-2488120822575891133L, 8124725897545740157L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-4333128801755490694L, -8582731383128931846L, 6479915868989799209L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{3654947800639488331L, 4530563648146670688L, 1272730609703174204L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{-3992097070503181154L, 7517241876510694431L, 402605325708786225L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i3 = 0; i3 < this.listNetwork.size(); i3++) {
                    if (obj3.equals(this.listNetwork.get(i3).getString(new ObfuscatedString(new long[]{5639180495197779075L, 6496384555845306198L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-6774721908120039934L, 8745132846797908320L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e3) {
                Toast.makeText(this, e3.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 3) {
            try {
                int selectedItemPosition4 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-1732287469338317275L, 1825841919153617322L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-2031110575131434677L, 2513010844463110572L, -1547048329830377192L}).toString(), selectedItemPosition4);
                jSONObject.put(new ObfuscatedString(new long[]{3852765133754095100L, -3705961488279167736L, 5098302519213286572L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-3365515177415980362L, -7674755334763492128L, -5084608179124143688L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{4694734143025257839L, -5759658965484505774L}).toString(), VPNUtil.encrypt(this.etSSLSNI.getText().toString()));
                jSONObject.put(new ObfuscatedString(new long[]{3863422651964520005L, 263631559734771427L, 1914064028319345209L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-260986578490306061L, 4807262533664413052L}).toString(), new ObfuscatedString(new long[]{-7279291080388820140L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-6325106261162680096L, 9091495631506648389L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{4021094188284520476L, 2221260041246295357L, -8411395781587370219L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8874938772287454996L, 7565287686099401158L, 1642310889206788262L}).toString(), new ObfuscatedString(new long[]{-110726358799911267L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8733666065183102452L, -7967715368859021609L, -5704258337516210208L}).toString(), new ObfuscatedString(new long[]{2774096074487309394L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{7816470616860186971L, -3194709445548558192L, -6732745884688011309L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{2370725145228315459L, -2752307075486758034L}).toString(), new ObfuscatedString(new long[]{-1986011693693645820L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8166626678415567075L, -5145888526886103333L}).toString(), new ObfuscatedString(new long[]{-500830903051531466L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-6369880650646830898L, -554605359547869141L, -5850027090210528559L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-4898001455798048284L, -3252324902257833612L, 894040960537767791L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-6746122109587575830L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{8292551052692115540L, -6205440674836490757L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-604785889812786600L, -2543580438789434796L, 8704155839663539942L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{3367989285119483848L, 4509742674306434911L, 7969668038571593734L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{3588777434328405659L, 8725594396063798808L, 7832998329098480766L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i4 = 0; i4 < this.listNetwork.size(); i4++) {
                    if (obj3.equals(this.listNetwork.get(i4).getString(new ObfuscatedString(new long[]{-5713567173178175697L, 8379369333653016382L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{739614401217025166L, -4018494416670546616L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e4) {
                Toast.makeText(this, e4.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 4) {
            try {
                int selectedItemPosition5 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{3006083812020448833L, -9217943223686829653L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{6449655383294057959L, -2913139892209204216L, 829778698127606046L}).toString(), selectedItemPosition5);
                jSONObject.put(new ObfuscatedString(new long[]{80315911215938873L, 4038341926049346971L, 3963273923627568334L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-21136630777808486L, -2101954780467910664L, 7047710256880972405L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{1663217504643235243L, -7256643381467511154L}).toString(), VPNUtil.encrypt(this.etSSLSNI.getText().toString()));
                jSONObject.put(new ObfuscatedString(new long[]{6917930650460494068L, 5320704797609383351L, -1812659497140803457L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7188200889053270820L, 4234731163645457020L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{5084603837404332193L, -4581351451950978522L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{1509498982720280214L, 157405970013502184L, 5680174004048266861L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-4592183999156200262L, 5672267947426754827L, 8910097435643763159L}).toString(), new ObfuscatedString(new long[]{-3770293654929265186L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{321873896921393306L, 7538733532736322576L, 671293019839244378L}).toString(), new ObfuscatedString(new long[]{3467129666911625495L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{528697559479914143L, 5962788968316684669L, 8587972113453877588L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-5210392640476631570L, -1386556492288342716L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{2801167464887575705L, 5264365701368448102L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7235396237348689661L, -2696728468311483504L, 7443322510766230827L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-1541547636189524309L, 5570928131544668856L, 7898013453171634670L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{5776311604282495434L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-4033405220654617590L, 436088175220314410L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{4454266064333315809L, -5212442703062403812L, -8475933566662741837L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-1699242477361769914L, 183967620491040835L, -3826485792933758119L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{-8041973296778332765L, 6515229859714155088L, 8872560616027639615L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i5 = 0; i5 < this.listNetwork.size(); i5++) {
                    if (obj3.equals(this.listNetwork.get(i5).getString(new ObfuscatedString(new long[]{-2000716806872515009L, 2583466928553089224L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{4117127246599097801L, -4966049544170605747L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e5) {
                Toast.makeText(this, e5.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 5) {
            try {
                int selectedItemPosition6 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-2072402157946225949L, -3819752159268054865L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{5311189577519622492L, 754834520906030504L, -3299667743700129495L}).toString(), selectedItemPosition6);
                jSONObject.put(new ObfuscatedString(new long[]{-7891076114523787263L, 8028853357450275799L, -8603801962287896734L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-1129719773834565828L, -1982494811829104247L, 8420521727946384981L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{3864111253563920371L, 2763916822830679144L}).toString(), VPNUtil.encrypt(this.etSSLSNI.getText().toString()));
                jSONObject.put(new ObfuscatedString(new long[]{-3333193699762011987L, 1243092794096592251L, 8149871933291128254L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{1891859213358022381L, 3446919368098338208L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{6613767185207778008L, 8193740251218808227L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{1134056172764994542L, 7819192712455515686L, -4380717495551388975L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-5414822199200357235L, -5551668151512896383L, -1840922382496004209L}).toString(), new ObfuscatedString(new long[]{934006468380732122L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-6763023331611586227L, -7732290659521163239L, -2181463947209375148L}).toString(), new ObfuscatedString(new long[]{-8231156366674933604L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8937388953334487L, 2500843731457490568L, 6194074810862413498L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{7996390255842461990L, -3137976352437398079L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{2629287866873893383L, -4014110660237593765L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-804483825879261083L, -899729732565573936L, -4096924850899194364L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-2483450921123753365L, -6888966541763693672L, 5988302833558019860L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-4378834805293512408L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{5440095564981815812L, -4789521461039640513L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-5946996697943301931L, -8528298343196207870L, -8940592993075326573L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{489653648454917406L, -2333210067439217185L, -7939743238413546781L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{7668745089982845499L, 7577431468649658143L, -8264517693931993835L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i6 = 0; i6 < this.listNetwork.size(); i6++) {
                    if (obj3.equals(this.listNetwork.get(i6).getString(new ObfuscatedString(new long[]{5183356534142650686L, 2610750302589456965L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-4551349286029444594L, -2790089111202779585L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e6) {
                Toast.makeText(this, e6.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 6) {
            try {
                int selectedItemPosition7 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{8490450996663069831L, -6304988661406282515L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{5495487748738897621L, 981783883798259784L, -2854016198464946857L}).toString(), selectedItemPosition7);
                jSONObject.put(new ObfuscatedString(new long[]{-1138990552116352142L, -8508443014575262706L, 8144118541759300175L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-4277559748992419079L, -6261884787164447818L, -3015816140647721142L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-2386559246154753479L, 4792340599481688734L}).toString(), new ObfuscatedString(new long[]{6795809949228956816L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{6624717546333468561L, -3808609126297968646L, 8578849480509199549L}).toString(), new ObfuscatedString(new long[]{1330830659862787827L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{379314567588565881L, -521283767255923259L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{3157991304526949725L, 8813729883894704982L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{2980870828748004434L, 8582373363620254812L, -8164366034469593562L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{927300967804889870L, -1433610115468706607L, 7922597396907206109L}).toString(), new ObfuscatedString(new long[]{2990798602630003533L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5095673447142698692L, -3210776579351034013L, -4698461097658631422L}).toString(), new ObfuscatedString(new long[]{-8165245738915178319L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{2559916731656648609L, -4683792317666271609L, -3042893673467223219L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{2499038460502128135L, 4195179763278742856L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{-1473044563590389704L, 9008782301617034858L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{8334725982381542378L, 7812700861586246132L, 6579221036890815342L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{1389477450211066486L, -4833557051519495601L, -5243617333401296029L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-4680654122398401850L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{4740470650787800900L, 5286553829663490947L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-4248135945386893474L, 6990341592096091301L, -5513522650818160036L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-8066124975811034444L, -1752717732615030832L, 5917183062769527605L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{-2754539583622984158L, 5328845206306147331L, 3500067867258805868L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i7 = 0; i7 < this.listNetwork.size(); i7++) {
                    if (obj3.equals(this.listNetwork.get(i7).getString(new ObfuscatedString(new long[]{1907463353453797238L, -7511363521152075554L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{912687087816978273L, -3800413712235097668L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e7) {
                Toast.makeText(this, e7.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 7) {
            try {
                int selectedItemPosition8 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{445901596939444434L, 7494497359688555508L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{2496390119293679551L, 6590108310273974030L, -3746267420916447638L}).toString(), selectedItemPosition8);
                jSONObject.put(new ObfuscatedString(new long[]{8684805638670008102L, 6586025368701991200L, 2629561298825981529L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-2330828780677190569L, 4632563863723537928L, -971901582199220937L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-3047979475105947432L, 7870457268962855468L}).toString(), new ObfuscatedString(new long[]{-859378545285944159L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{375861034079386312L, 5502830012817564825L, -4373547961185511275L}).toString(), new ObfuscatedString(new long[]{8828968824450868786L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8039001911034575178L, -7391651670801983809L}).toString(), new ObfuscatedString(new long[]{-8047533280837871611L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-3227369068988367767L, 5859106345488537923L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7422230496769842061L, 6672684412695828856L, -8731678480026274471L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-5759393629307259956L, 3105065549641922649L, 7281834580121077509L}).toString(), new ObfuscatedString(new long[]{6685051739951708095L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{7414155719956940565L, -2390382245351566858L, 4856349994200603765L}).toString(), new ObfuscatedString(new long[]{4775572566552924429L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-3955381981940767764L, 5166473756249853704L, 4534123222685003379L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-2556897462292940134L, 3063447968968089426L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{-7911342727446126557L, 7613764382348874054L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-2761246905446479014L, 6903154220858630012L, 7592895124734721267L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-302742424933558987L, -4388387240565023468L, -2739971337023724776L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{6530751563722032374L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-6137454723293825168L, -7442225396877488223L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{2816362153523884490L, 4166358843758659040L, -538243583562203885L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{9155563755750319424L, -6342164391073119332L, -7679200575975223434L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{-300229171892775676L, 4563279147795438173L, 5326300792108091960L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i8 = 0; i8 < this.listNetwork.size(); i8++) {
                    if (obj3.equals(this.listNetwork.get(i8).getString(new ObfuscatedString(new long[]{6772097526116127508L, 7368057450786117295L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-2163930694130527755L, -8007708292676401588L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e8) {
                Toast.makeText(this, e8.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 8) {
            try {
                int selectedItemPosition9 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{3711872769802125570L, -6122522725048281946L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-961171823883694826L, 2036788907526642867L, -4102407631960876474L}).toString(), selectedItemPosition9);
                jSONObject.put(new ObfuscatedString(new long[]{510835056787625206L, 8207054756463725869L, 379186408238994124L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{226977788794841995L, -6793397465459346898L, -5547881426461654449L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-8415108018846412991L, 2737877070072179842L}).toString(), new ObfuscatedString(new long[]{-8331635696087642028L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8498472008676111560L, -5847344070168210799L, -1668393627747057957L}).toString(), new ObfuscatedString(new long[]{-5458875911979464649L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{7749652928667876918L, 864799975075334475L}).toString(), new ObfuscatedString(new long[]{7433660842494869971L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8256892720699220051L, 753391745250654648L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-6089943608940062102L, -3254966975648776787L, -4423944443874098765L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{7426425386619326065L, -5785762716077615508L, -8769395038608565517L}).toString(), new ObfuscatedString(new long[]{3836334051949354246L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{8411945675907226327L, 9132067813835829817L, 4753357418578990946L}).toString(), new ObfuscatedString(new long[]{-5310368311173157845L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4527858087861625324L, 3756736421075845968L, -6614138411916171526L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{3802536374441126193L, -6046207919810883049L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{2959187479946277725L, -9177215713803903464L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-286891765207161806L, -662254423896342301L, -7907882536995503156L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-1742758151898893751L, -2636397460693931682L, -6822447815971024222L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-9208250003887148049L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{2679313075284597574L, -83228169148888149L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-2706791712657257148L, 941770103992855329L, 2647579890892715254L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-7382514346057618489L, -4668800587267247625L, -7195103484132996921L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{-7040208813865896305L, 8983967813886532264L, -3729368385607383376L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i9 = 0; i9 < this.listNetwork.size(); i9++) {
                    if (obj3.equals(this.listNetwork.get(i9).getString(new ObfuscatedString(new long[]{78908560030172010L, 1243707950177421606L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{2072475878397872417L, 1373307893863901640L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e9) {
                Toast.makeText(this, e9.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 9) {
            try {
                int selectedItemPosition10 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{4231141663097635536L, 3550244093149224856L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-2693911290404429207L, 8048714920771623552L, 3527510239922526753L}).toString(), selectedItemPosition10);
                jSONObject.put(new ObfuscatedString(new long[]{-3834357734272859154L, 3176965492914211079L, -1618954523500320657L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-2813986362810331536L, 7491282956033168010L, -6001068714873290633L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{8002700348203138510L, -6697288057571645936L}).toString(), new ObfuscatedString(new long[]{-3749601013923406929L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8105607293873814987L, -8392739313672535281L, 5107584759451064025L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7544107772131353202L, 1484512105659166042L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-2962385259734933301L, -2260632949637912431L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{3829880313025332997L, 8791050352290517630L, -4855516002852038791L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8714102265389212828L, -1782741270087649339L, 2911083596174755821L}).toString(), new ObfuscatedString(new long[]{6194437700988313130L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5071768165556978892L, -7687438291679749788L, -3307058960832105709L}).toString(), new ObfuscatedString(new long[]{-2908453098413881929L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5062789699899382280L, 2245432577168156307L, -6524652552032942091L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{517146614719454955L, 2396568522497838384L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{2474855822149097835L, -5086377640509975087L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{891296156929586659L, 2743501073019715198L, -4639204149053697724L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{3678961401612842127L, -3648858899292249775L, 451005247206469090L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{7116704328310267179L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-4887074636403252114L, -6920457096754308414L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{5264649105227855504L, -651118477387716885L, -7644495538625949509L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{4771511835110607134L, -7974101123110369282L, 7764625340426929338L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{4916139986185996249L, -5590531443858945330L, -4596629027659025842L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i10 = 0; i10 < this.listNetwork.size(); i10++) {
                    if (obj3.equals(this.listNetwork.get(i10).getString(new ObfuscatedString(new long[]{5910695832538368587L, 7709821285984361343L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-6326680561812896885L, 3876257705173057825L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e10) {
                Toast.makeText(this, e10.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 10) {
            try {
                int selectedItemPosition11 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{2650056889217807465L, 7837932738084857326L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-3733796509091513558L, 4477391894838804121L, 6757485563714992425L}).toString(), selectedItemPosition11);
                jSONObject.put(new ObfuscatedString(new long[]{-7742219336623152965L, -6836291118946416106L, 3506998462137755827L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{1432827027421604803L, 3108900517379510266L, -1967557952900980463L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-6095876047119529539L, 510048377091020568L}).toString(), new ObfuscatedString(new long[]{-3981016596499242937L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{137504814535343490L, 4969585962093786491L, -3609494927673512369L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-949736998470315797L, 5327498945188195844L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-3292472062495435279L, -8656427646545071701L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7278541006142394866L, -220805883830134731L, -622446048184225554L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-1838900868206097080L, 793631107291420090L, 4731246778578035736L}).toString(), new ObfuscatedString(new long[]{2358866360642755301L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-628087981793127817L, 96627228712096609L, 3012451150325932096L}).toString(), new ObfuscatedString(new long[]{3619011171018868310L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{5061264654637556801L, 704710811134515795L, 1128328267768274543L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-5989451998490398325L, -7116914607858616048L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{-3645269861010536146L, -3805607690037166745L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{3175180214790728971L, -772784450951552838L, -3380247292131378687L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-276746036908688427L, -3663989116473465118L, -8469038698846899126L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{6640540580263045876L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-2313320207734756874L, -5375406281114161782L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{3206654132586364521L, 1636425555682536400L, 4381850706495528133L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-4739071839486487234L, -1652246395907394334L, -1146145691697309576L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{-787109609796505887L, -4996717243143011396L, 9067842005252213890L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i11 = 0; i11 < this.listNetwork.size(); i11++) {
                    if (obj3.equals(this.listNetwork.get(i11).getString(new ObfuscatedString(new long[]{-7365333811665672668L, 2585826971201321193L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-5759918099209225781L, -2256094055669024479L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e11) {
                Toast.makeText(this, e11.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 11) {
            try {
                int selectedItemPosition12 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-7204896907004656582L, 3542325196889283934L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-8963544223486766747L, -1798510106844660950L, 7642156462972642654L}).toString(), selectedItemPosition12);
                jSONObject.put(new ObfuscatedString(new long[]{-8881382088358808401L, -3141975888288415395L, -3287697112692935564L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{4394332006505556957L, 7189395347033111534L, 639269840306407442L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-7181122469528160141L, -2777678039767504612L}).toString(), new ObfuscatedString(new long[]{6232870004534934918L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-3004455040629282204L, 2213645950341257376L, 389855527099012639L}).toString(), new ObfuscatedString(new long[]{5841031606405994339L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4958112117563178099L, 6208002431383349798L}).toString(), new ObfuscatedString(new long[]{-3640821208627843649L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-34503828957482594L, 5110548963216604507L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4753452551319229476L, -4057827515492932492L, -2351170819746522406L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{4631959739059558022L, -3058558875033378825L, -6182197956220426193L}).toString(), new ObfuscatedString(new long[]{-5164185304173752463L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-3088299557033572911L, -6905127026931552346L, -8579230503911071233L}).toString(), new ObfuscatedString(new long[]{-4432892061490229243L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{8489980558577951046L, -6105265870776836253L, -687108161673115953L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-5853281803688266656L, 2124656548207243080L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{-9016997725807788733L, -392259301697838393L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{435127148963109691L, 2508533091059684866L, 3472537676293295850L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-872553968563044130L, 3887529607543362858L, 6306155912619596190L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-6784816875157473231L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{8710471885983849864L, 8350037461347416880L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-1704644897925259762L, -2188802170009287487L, 2365568047228206704L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-7772462574303602188L, -378989094475615148L, 7296847741909203345L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{2511369279153901663L, 5387676519255835219L, 6400861268553127558L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i12 = 0; i12 < this.listNetwork.size(); i12++) {
                    if (obj3.equals(this.listNetwork.get(i12).getString(new ObfuscatedString(new long[]{7827872344566030542L, 7307409825948869183L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{1014156613641717707L, 2300410482504782182L}).toString(), 0).show();
                this.a.dismiss();
                return;
            } catch (Exception e12) {
                Toast.makeText(this, e12.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 12) {
            try {
                int selectedItemPosition13 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-6992465365374939279L, -5379885043701830671L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-7803065103170337879L, 5709235727665883622L, 1085661266100133324L}).toString(), selectedItemPosition13);
                jSONObject.put(new ObfuscatedString(new long[]{4798176602923816655L, -6934886648877363354L, -8902914233297655546L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-1178742962574990983L, -5816020611038838748L, -4986879936318396530L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{3276959774027058939L, -6070451896364423671L}).toString(), new ObfuscatedString(new long[]{6570131734522935272L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{2615035914951452873L, 2337837424964722372L, -101320938718134302L}).toString(), new ObfuscatedString(new long[]{8649093679807589790L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5382527433483428814L, 956015408281109757L}).toString(), new ObfuscatedString(new long[]{-3175579407972927341L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1049636213578952892L, 755902631253434820L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{3763304899663160645L, -2299534865301380429L, -8295560013198035851L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{8766112821192976141L, -684763063632165298L, -5855501750461952550L}).toString(), new ObfuscatedString(new long[]{8501932256298552929L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1256228806960386287L, 581140287654845582L, 7921881519134398200L}).toString(), new ObfuscatedString(new long[]{-9029807672311127131L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4856012348132430501L, -9167778893849860880L, 2906174219494083422L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{1257848761862229511L, 3490509207297554053L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{5508863221071590998L, -781053882230211876L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1555642800057560122L, -5297890272010930324L, -4426695415687627853L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{6645841506695109191L, 3571185700705876223L, 4654680016597557240L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{8126796770896966600L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{6602407023416367639L, -639199829481636275L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-6897353847597771949L, 2410297460742705173L, -4022350794395850444L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-6765515922340720522L, -5763746538943429803L, 368562051566604536L}).toString(), replace);
                this.editor.apply();
                this.f5773config.setNetworkSelectedPosition(0);
                this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{-3352585968547007672L, -7062451454860116310L, 3126487655096876542L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reload();
                setResult(-1, true);
                for (int i13 = 0; i13 < this.listNetwork.size(); i13++) {
                    if (obj3.equals(this.listNetwork.get(i13).getString(new ObfuscatedString(new long[]{-4557230191666502179L, 568071324455054402L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{3887330224495628643L, 237471988429895964L}).toString(), 0).show();
                this.a.dismiss();
            } catch (Exception e13) {
                Toast.makeText(this, e13.getMessage(), 0).show();
            }
        }
    }

    public /* synthetic */ void lambda$dialogAddPayload$9(View view) {
        this.a.dismiss();
    }

    public /* synthetic */ void lambda$onCreate$1(AdapterView adapterView, View view, int i, long j) {
        String obfuscatedString = new ObfuscatedString(new long[]{-398984725095048942L, -5471918862010618415L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{-565680022160717183L, 1769322248505599912L}).toString();
        try {
            JSONObject jSONObject = (JSONObject) adapterView.getAdapter().getItem(i);
            obfuscatedString = jSONObject.getString(new ObfuscatedString(new long[]{655070832714086340L, -5431790237264618932L}).toString());
            obfuscatedString2 = jSONObject.getString(new ObfuscatedString(new long[]{-20832030750700075L, -3663849803019687525L}).toString());
        } catch (JSONException unused) {
        }
        int i2 = 0;
        while (true) {
            if (i2 >= this.listNetwork.size()) {
                break;
            }
            JSONObject jSONObject2 = this.listNetwork.get(i2);
            try {
                String string = jSONObject2.getString(new ObfuscatedString(new long[]{-3506483866086968901L, -7551535154547605141L}).toString());
                String string2 = jSONObject2.getString(new ObfuscatedString(new long[]{831869131101226505L, 4298340153718118736L}).toString());
                if (string.equals(obfuscatedString) && string2.equals(obfuscatedString2)) {
                    i = i2;
                    break;
                }
            } catch (JSONException unused2) {
            }
            i2++;
        }
        this.f5773config.setNetworkSelectedName(obfuscatedString);
        this.f5773config.setNetworkSelectedPosition(i);
        setSelectedServer();
        setSelectedNetwork(true);
        loadNetworks();
        loadServers();
        setResult(-1, true);
        Intent intent = new Intent(this, (Class<?>) ActivityUi.class);
        overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
        startActivity(intent);
    }

    public /* synthetic */ boolean lambda$onPrepareOptionsMenu$10(MenuItem menuItem) {
        dialogAddPayload();
        reload();
        return true;
    }

    public /* synthetic */ void lambda$onPrepareOptionsMenu$11() {
        loadNetworks();
        setSelectedNetwork(true);
        setSelectedServer();
        reload();
        Toast.makeText(this, new ObfuscatedString(new long[]{-802743207724067041L, -2353281897924679000L, 2642664219637448824L, 31874961786352995L}).toString(), 0).show();
    }

    public /* synthetic */ boolean lambda$onPrepareOptionsMenu$12(MenuItem menuItem) {
        this.prefs.set_string(new ObfuscatedString(new long[]{633182516596311575L, -8899968674639499887L, -5282068975967801764L}).toString(), new ObfuscatedString(new long[]{797336543896010177L}).toString());
        this.prefs.set_string(new ObfuscatedString(new long[]{4584154544203308311L, -6792993177396515659L, 1321524719360392594L}).toString(), new ObfuscatedString(new long[]{-2549222846684263442L}).toString());
        this.mHandler.postDelayed(new RunnableC0450xb2a4f6ac(this, 28), 1000L);
        return true;
    }

    public /* synthetic */ boolean lambda$onPrepareOptionsMenu$13(MenuItem menuItem) {
        if (!TkLogStatus.isTunnelActive()) {
            showLINK();
        } else {
            Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{6805996312686557418L, -8702984733438017541L, -252182583895866233L, 3039200197560341754L}).toString(), 1).show();
        }
        return true;
    }

    public /* synthetic */ void lambda$showLINK$14(DialogInterface dialogInterface, int i) {
        this.editor.putString(new ObfuscatedString(new long[]{-3460101879139895687L, -2841656499650030014L, -1900706494629614228L}).toString(), this.prefs.get_string(new ObfuscatedString(new long[]{2074511856569881365L, 8865625003459414343L, 6840647299012722974L}).toString()));
        this.editor.apply();
        clipImport1();
        dialogInterface.dismiss();
    }

    private void loadAppColors(int i) {
        setStatusBarColor(i);
        setNavBarColor(i);
        findViewById(R.id.toolbar).setBackgroundColor(i);
    }

    private String mProtoType() {
        if (this.payload_type.getCheckedRadioButtonId() == R.id.ovpn_radio) {
            return new ObfuscatedString(new long[]{9061502935822984628L, -4998007003207904386L}).toString();
        }
        if (this.payload_type.getCheckedRadioButtonId() == R.id.ssh_radio) {
            return new ObfuscatedString(new long[]{-388605790212560184L, 4921751010179976009L}).toString();
        }
        if (this.payload_type.getCheckedRadioButtonId() == R.id.ocs_radio) {
            return new ObfuscatedString(new long[]{-6590770928926147398L, 3239448697529369298L}).toString();
        }
        return new ObfuscatedString(new long[]{-2779101986917796116L, 9205129528439458049L}).toString();
    }

    private String mServerType() {
        if (this.server_type.getCheckedRadioButtonId() == R.id.cf_radio) {
            return new ObfuscatedString(new long[]{-9195280687295964797L, -4441221837173915758L}).toString();
        }
        if (this.server_type.getCheckedRadioButtonId() == R.id.ws_radio) {
            return new ObfuscatedString(new long[]{-7833403453723006254L, -6414205742136320886L}).toString();
        }
        return new ObfuscatedString(new long[]{2537345442127508823L, 6720098500633999637L}).toString();
    }

    public void networkingList(String str) {
        ArrayList<JSONObject> arrayList = new ArrayList<>();
        Iterator<JSONObject> it = this.listNetwork.iterator();
        while (it.hasNext()) {
            JSONObject next = it.next();
            String obfuscatedString = new ObfuscatedString(new long[]{-4574985960499761368L}).toString();
            try {
                obfuscatedString = next.getString(new ObfuscatedString(new long[]{8269957868429344401L, -171032127142729151L}).toString()).toLowerCase();
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (obfuscatedString.contains(str)) {
                arrayList.add(next);
            }
        }
        if (str.isEmpty()) {
            arrayList = this.listNetwork;
        }
        this.networkAdapter.refreshDataSet(arrayList);
    }

    private void processImportData(String str) {
        try {
            String optString = new JSONObject(str).optString(new ObfuscatedString(new long[]{-6242231479432390181L, -5301313780613872822L}).toString());
            if (!optString.isEmpty()) {
                this.prefs.set_string(new ObfuscatedString(new long[]{3249723804610034286L, -6343370514154194470L, -2406024210992862525L}).toString(), c_12.Parser.parse(optString));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.f5773config.setNetworkSelectedPosition(0);
        this.f5773config.setNetworkSelectedName(new ObfuscatedString(new long[]{6081040431455490130L, 2370952534308933397L, 2465045672998150483L}).toString());
        loadNetworks();
        this.prefs.get_string(new ObfuscatedString(new long[]{6125911935502143004L, 8740578465266467162L, -7360695004063991893L}).toString());
        setSelectedNetwork(true);
        setResult(-1, true);
        Intent intent = new Intent(this, (Class<?>) ActivityUi.class);
        overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
        startActivity(intent);
        showToast(getString(R.string.message_import_successful));
    }

    private void reload() {
        ListView listView = (ListView) findViewById(R.id.network_list);
        listView.setAdapter((ListAdapter) this.networkAdapter);
        int networkSelectedPosition = this.f5773config.getNetworkSelectedPosition();
        listView.setSelection(networkSelectedPosition);
        this.mHandler.postDelayed(new RunnableC1000x19d68b8b(listView, networkSelectedPosition, 1), 500L);
    }

    public void setResult(int i, boolean z) {
        Intent intent = new Intent();
        intent.putExtra(new ObfuscatedString(new long[]{3330895843332118863L, 1278893741109688596L, 9191030146954659671L}).toString(), z);
        setResult(i, intent);
        finish();
    }

    private void setSelectedNetwork(boolean z) {
        ImageView imageView = (ImageView) findViewById(R.id.tweak_icon);
        TextView textView = (TextView) findViewById(R.id.tweak_name);
        TextView textView2 = (TextView) findViewById(R.id.tvNetworkgInfo);
        try {
            JSONObject networkSelectedJson = getNetworkSelectedJson();
            String string = networkSelectedJson.getString(new ObfuscatedString(new long[]{-4229400769029380456L, -6167431287131175605L}).toString());
            String string2 = networkSelectedJson.getString(new ObfuscatedString(new long[]{-3254190480960189963L, -5181699331769203536L}).toString());
            textView.setText(string);
            textView2.setText(string2);
            imageView.setImageResource(this.networkAdapter.getIcon(string.toLowerCase()));
            JSONObject networkSelectedJson2 = getNetworkSelectedJson();
            int i = networkSelectedJson2.getInt(new ObfuscatedString(new long[]{5760637021600064835L, 511627788722003120L, 2696605421233742626L}).toString());
            this.selectedServerType = ServerType.OPENVPN;
            if (networkSelectedJson2.has(new ObfuscatedString(new long[]{4716863128704913181L, 2125151111146718256L, -8517426123841832420L}).toString())) {
                String string3 = networkSelectedJson2.getString(new ObfuscatedString(new long[]{752716515237571707L, 5074863298706506087L, 6144587727168793390L}).toString());
                if (string3.equals(new ObfuscatedString(new long[]{4696758607963857630L, 7394843188081897233L}).toString())) {
                    this.mConfig.setConnectionType(new ObfuscatedString(new long[]{-2472695630577593329L, -7121242310296127649L}).toString());
                    this.selectedServerType = ServerType.OPENVPN;
                    this.mConfig.setSSH(false);
                    this.mConfig.setOCS(false);
                    this.mConfig.setOVPN(true);
                } else if (string3.equals(new ObfuscatedString(new long[]{-5235967281128716867L, -7198486843647242177L}).toString())) {
                    this.selectedServerType = ServerType.SSH;
                    this.mConfig.setConnectionType(new ObfuscatedString(new long[]{4883324148701467836L, -4034115884788092890L}).toString());
                    this.mConfig.setSSH(true);
                    this.mConfig.setOCS(false);
                    this.mConfig.setOVPN(false);
                }
            }
            this.selectedServerType = ServerType.OPENVPN;
            if (i == 0) {
                if (this.f5773config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_normal);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_direct);
                }
            } else if (i == 1) {
                if (this.f5773config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_payload);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_payload);
                }
            } else if (i == 2) {
                if (this.f5773config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_proxy);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_proxy);
                }
            } else if (i == 3) {
                if (this.f5773config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_ssl_tls);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_tls);
                }
            } else if (i == 4) {
                if (this.f5773config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv_payload);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_payload);
                }
            } else if (i == 5) {
                if (this.f5773config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_ssl_proxy);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_ssl_proxy);
                }
            } else if (i == 6) {
                ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_hysteria);
                this.selectedServerType = ServerType.HYSTERIA_UDP;
            } else if (i == 7) {
                if (this.f5773config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.udpv4_normal);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_dropbear);
                }
                this.selectedServerType = ServerType.OPENVPN;
            } else if (i == 8) {
                ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.v2ray);
                this.selectedServerType = ServerType.V2RAY;
            } else if (i == 9) {
                ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_dnstt);
                this.selectedServerType = ServerType.DNSTT;
            } else if (i == 10) {
                ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ovpn_dnstt);
                this.selectedServerType = ServerType.DNSTT;
            } else if (i == 11) {
                ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.wireguard);
                this.selectedServerType = ServerType.WIREGUARD;
            } else if (i == 12) {
                ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.psiphon);
            }
            if (z) {
                this.f5773config.setServerSelectedPosition(0);
                this.f5773config.setServerSelectedName(new ObfuscatedString(new long[]{-326132372503772909L, 7901459295915664096L}).toString());
            }
            loadServers();
            setSelectedServer();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void setSelectedServer() {
        ImageView imageView = (ImageView) findViewById(R.id.select_server_icon);
        TextView textView = (TextView) findViewById(R.id.select_server_name);
        TextView textView2 = (TextView) findViewById(R.id.tvNetworkInfo);
        TextView textView3 = (TextView) findViewById(R.id.notes);
        try {
            JSONObject server = getServer();
            String string = server.getString(new ObfuscatedString(new long[]{6423270325095958132L, 695407775331584291L}).toString());
            textView2.setText(server.getString(new ObfuscatedString(new long[]{2115411288064942081L, -5238362598396504692L}).toString()));
            textView.setText(string);
            Drawable flag = this.server_adapter.getFlag(string);
            if (flag != null) {
                imageView.setImageDrawable(flag);
            } else {
                imageView.setImageResource(R.drawable.ic_server);
            }
            String lowerCase = string.toLowerCase();
            if (lowerCase.contains(new ObfuscatedString(new long[]{-4413614006872204645L, 4836639477534779078L, 3766469097440438487L}).toString())) {
                textView3.setText(getString(R.string.best_performance));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{3556793770141374636L, 5378354647860936229L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{3179126000883116474L, -2234046796969171951L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{1541464926062290017L, -4375339243456732047L, -3624537863852184974L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-4545132445327401418L, 2455526432227157336L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{5473496016419418664L, 4843104162789869028L, -6262163112043098464L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-2040127202880170773L, -8610454112106156179L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6426710013458149299L, 8510552854006666162L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-5344724089787015056L, -5832346075188190507L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-4720992047751625624L, -4787462121438346152L}).toString())) {
                textView3.setText(getString(R.string.china));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorAccent));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-92044609126192106L, -1590965429427688800L, -206268915405152361L}).toString())) {
                textView3.setText(getString(R.string.china));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorAccent));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{8865903699981948000L, 5792157018961517653L}).toString())) {
                textView3.setText(getString(R.string.china));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorAccent));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-889127247120646538L, -8649325760094476260L, 292631355555648233L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{4689939481842150736L, 9046212405704766165L, -8198901832547191386L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{2780056681264553269L, -3844334947969570056L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-2174754419375956051L, 1302430242749331499L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6300867808425344478L, -6583913432599797118L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-752418470047086808L, -3000566603728617487L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-5600434990692682988L, 328652796567222579L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6563584881279149653L, -2921335666374659835L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-5136476572925973092L, -2890375016504107187L, -8543609407223752718L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{4189877822289907693L, 3992538333451705862L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-493689549813560326L, -8683874644447314095L}).toString())) {
                textView3.setText(getString(R.string.north_america));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.purple_200));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{8224326586826886557L, 4458616740001807101L, 5675128795194165568L}).toString())) {
                textView3.setText(getString(R.string.america));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.purple_200));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-5212099482204033166L, 5187422554383831115L}).toString())) {
                textView3.setText(getString(R.string.america));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-8249657378390047859L, -8467688303349008064L}).toString())) {
                textView3.setText(getString(R.string.europe));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-165369996507396380L, 4794117413235652161L, -2424570080537087796L}).toString())) {
                textView3.setText(getString(R.string.europe));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{3720036857105272119L, 1196387819896989341L, -2453594029052435450L}).toString())) {
                textView3.setText(getString(R.string.europe));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{5191820359323927392L, 1590510706189215974L}).toString())) {
                textView3.setText(getString(R.string.saudi_arabia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6707913607005932173L, 8855589770153749179L, -8904939319416331198L, 1780806515538103258L}).toString())) {
                textView3.setText(getString(R.string.united_arab_emirates));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{655415186526217798L, -8205772844393869676L}).toString())) {
                textView3.setText(getString(R.string.saudi_arabia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-4355819171872339589L, 1710873728380231859L}).toString())) {
                textView3.setText(getString(R.string.saudi_arabia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{2864409925196689920L, -2767426455170717480L}).toString())) {
                textView3.setText(getString(R.string.south_korea_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
            } else if (lowerCase.contains(new ObfuscatedString(new long[]{265306867653679070L, 8520477872991635516L}).toString())) {
                textView3.setText(getString(R.string.east_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
            } else if (lowerCase.contains(new ObfuscatedString(new long[]{-3969302410469427441L, 5371182978327434640L}).toString())) {
                textView3.setText(R.string.custom);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showLINK() {
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        create.setIcon(R.drawable.ic_launcher);
        create.setTitle(R.string.app_name);
        create.setMessage(new ObfuscatedString(new long[]{-7825787018408567289L, -7727763958043440960L, 7578592059676669700L, 626611122021454926L, -8508275450180372954L, -4325631274695775473L}).toString());
        create.setButton(-1, new ObfuscatedString(new long[]{-8898118466129199076L, -1871310503588602645L}).toString(), new DialogInterfaceOnClickListenerC0519xdc2f50a1(this, 4));
        create.setButton(-2, new ObfuscatedString(new long[]{-6708887726676956205L, 7107551236121763454L}).toString(), new DialogInterfaceOnClickListenerC0372xe698d(6));
        create.show();
    }

    public void loadNetworks() {
        try {
            if (this.listNetwork.size() > 0) {
                this.listNetwork.clear();
            }
            JSONArray networksArray = getNetworksArray();
            for (int i = 0; i < networksArray.length(); i++) {
                this.listNetwork.add(networksArray.getJSONObject(i));
            }
            String str = this.prefs.get_string(new ObfuscatedString(new long[]{-523037501661828935L, 445715510967030713L, -2812893612714732118L}).toString());
            if (!TextUtils.isEmpty(str)) {
                this.listNetwork.add(0, new JSONObject(c_12.Parser.d_01(str)));
            }
            String str2 = this.prefs.get_string(new ObfuscatedString(new long[]{6020350729185336738L, -8867583222679691655L, 2890913110317108854L}).toString());
            if (!TextUtils.isEmpty(str2)) {
                this.listNetwork.add(0, new JSONObject(c_12.Parser.d_01(str2)));
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<JSONObject> it = this.listNetwork.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
        } catch (JSONException unused) {
            Toast.makeText(this, new ObfuscatedString(new long[]{-7259004426982602804L, -6040116052193599344L}).toString(), 0).show();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006e A[Catch: Exception -> 0x0014, TryCatch #5 {Exception -> 0x0014, blocks: (B:3:0x0006, B:5:0x000e, B:6:0x0017, B:8:0x0029, B:13:0x0041, B:14:0x0061, B:15:0x0068, B:17:0x006e, B:19:0x0086, B:22:0x008d, B:25:0x00dc, B:33:0x005d, B:37:0x005c, B:45:0x0054), top: B:2:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void loadServers() {
        String str;
        JSONArray serversArray;
        int i;
        InputStream openRawResource;
        try {
            if (this.listProfiles.size() > 0) {
                this.listProfiles.clear();
            }
            String obfuscatedString = new ObfuscatedString(new long[]{-7995338622523133122L}).toString();
            try {
                openRawResource = getResources().openRawResource(R.raw.f5784config);
                try {
                    byte[] bArr = new byte[openRawResource.available()];
                    openRawResource.read(bArr);
                    str = new String(bArr);
                } catch (Throwable th) {
                    if (openRawResource != null) {
                        try {
                            openRawResource.close();
                            throw th;
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                            throw th;
                        }
                    }
                    throw th;
                }
            } catch (IOException e) {
                e = e;
            } catch (NullPointerException e2) {
                e = e2;
            }
            try {
                openRawResource.close();
            } catch (IOException | NullPointerException e3) {
                e = e3;
                obfuscatedString = str;
                e.printStackTrace();
                str = obfuscatedString;
                serversArray = getServersArray(this.selectedServerType);
                while (i < serversArray.length()) {
                }
            }
            serversArray = getServersArray(this.selectedServerType);
            for (i = 0; i < serversArray.length(); i++) {
                JSONObject jSONObject = serversArray.getJSONObject(i);
                String string = jSONObject.getString(new ObfuscatedString(new long[]{4655502886481071138L, -3815118044295262864L}).toString());
                if (i == 0) {
                    this.listProfiles.add(string);
                } else {
                    String string2 = jSONObject.getString(new ObfuscatedString(new long[]{-1964296293175502147L, -6390539960549785620L, -7055594055699022738L}).toString());
                    String string3 = jSONObject.getString(new ObfuscatedString(new long[]{847054491002044887L, -8141307740963029133L, -754502045305907981L}).toString());
                    String optString = jSONObject.optString(new ObfuscatedString(new long[]{-3510070657070420756L, 4116204268874477271L}).toString(), new ObfuscatedString(new long[]{7138533052675341525L}).toString());
                    if (optString.isEmpty()) {
                        optString = str;
                    }
                    StringReader stringReader = new StringReader(optString);
                    ConfigParser configParser = new ConfigParser();
                    configParser.parseConfig(stringReader);
                    VpnProfile convertProfile = configParser.convertProfile();
                    Connection connection = convertProfile.mConnections[0];
                    connection.mServerName = string2;
                    connection.mServerPort = string3;
                    connection.mUseCustomConfig = true;
                    String format = String.format(new ObfuscatedString(new long[]{-7746667341897976153L, 8488755904580870801L}).toString(), URLEncoder.encode(string, new ObfuscatedString(new long[]{-4981953877334925971L, 8179051831965664163L}).toString()));
                    String configFile = convertProfile.getConfigFile(this, true);
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(getFilesDir(), format));
                    fileOutputStream.write(configFile.getBytes());
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    this.listProfiles.add(jSONObject.getString(new ObfuscatedString(new long[]{5771531479784928079L, 2580897678423090702L}).toString()));
                    this.server_adapter.notifyDataSetChanged();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            showToast(new ObfuscatedString(new long[]{9037257388056666471L, 8628118769431467488L, 2869886046044692568L}).toString() + e4.getMessage());
        }
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.fragment_network);
        Object[] objArr = {getIntent().toString()};
        new ObfuscatedString(new long[]{4473855913078003510L, -2426824025019282650L, -8846099491686396933L}).toString();
        String.format(new ObfuscatedString(new long[]{-2497727030408062797L, 6126620989047830969L, 791883715583110913L, 2364899258486508192L}).toString(), objArr);
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        this.a = create;
        create.setCancelable(false);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        this.prefs = new PrefUtil(this.myPrefs);
        SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences2;
        this.editor = defaultSharedPreferences2.edit();
        this.prefs = new PrefUtil(this.myPrefs);
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        this.mHandler = new Handler(Looper.getMainLooper());
        this.f5773config = ConfigUtil.getInstance(this);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        Objects.requireNonNull(supportActionBar);
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        this.listNetwork = new ArrayList<>();
        this.networkAdapter = new NetworkAdapter(this, this.listNetwork);
        ListView listView = (ListView) findViewById(R.id.network_list);
        listView.setAdapter((ListAdapter) this.networkAdapter);
        this.listProfiles = new ArrayList<>();
        this.server_adapter = new ServerAdapter(this, this.listProfiles);
        loadServers();
        loadNetworks();
        setSelectedServer();
        setSelectedNetwork(false);
        int networkSelectedPosition = this.f5773config.getNetworkSelectedPosition();
        listView.setSelection(networkSelectedPosition);
        this.mHandler.postDelayed(new RunnableC1000x19d68b8b(listView, networkSelectedPosition, 0), 500L);
        listView.setOnItemClickListener(new C1001x2241e83c(this, 0));
        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback(true) { // from class: com.tknetwork.tunnel.activities.NetworkActivity.1
            public AnonymousClass1(boolean z) {
                super(z);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                NetworkActivity.this.setResult(0, false);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.network_menu, menu);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem findItem = menu.findItem(R.id.search);
        final int i = 0;
        menu.findItem(R.id.add_custom).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener(this) { // from class: 딠듟뎬딝돰득딨듬딝뒋땸돼딠땅디뒈듬듐둡딜땥돨뒐두딌딄듔땜뎻딅땭땜득뒷뒤땄땁땄둑뒵땍뒹둘땅딄둬둘뎹땮딝듻돸땻뒛뎰딻뒹도돤딹땧딄둬땬딟뎨들땋땋땁둠땋땮둥땄땲뎬듔듼뎰둡딤돸듟땡딄뒾됐들뒾득땰됫돷뎨됨디듌땄딹딠듸돝땲땜뎨돶둔땐듟뎹딽땵뒵딤듸둬돴되둡땠땀딅돴뒷둡될땦딄듸

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ NetworkActivity f5186x3271d0aa;

            {
                this.f5186x3271d0aa = this;
            }

            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean lambda$onPrepareOptionsMenu$10;
                boolean lambda$onPrepareOptionsMenu$12;
                boolean lambda$onPrepareOptionsMenu$13;
                switch (i) {
                    case 0:
                        lambda$onPrepareOptionsMenu$10 = this.f5186x3271d0aa.lambda$onPrepareOptionsMenu$10(menuItem);
                        return lambda$onPrepareOptionsMenu$10;
                    case 1:
                        lambda$onPrepareOptionsMenu$12 = this.f5186x3271d0aa.lambda$onPrepareOptionsMenu$12(menuItem);
                        return lambda$onPrepareOptionsMenu$12;
                    default:
                        lambda$onPrepareOptionsMenu$13 = this.f5186x3271d0aa.lambda$onPrepareOptionsMenu$13(menuItem);
                        return lambda$onPrepareOptionsMenu$13;
                }
            }
        });
        final int i2 = 1;
        menu.findItem(R.id.delete_custom).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener(this) { // from class: 딠듟뎬딝돰득딨듬딝뒋땸돼딠땅디뒈듬듐둡딜땥돨뒐두딌딄듔땜뎻딅땭땜득뒷뒤땄땁땄둑뒵땍뒹둘땅딄둬둘뎹땮딝듻돸땻뒛뎰딻뒹도돤딹땧딄둬땬딟뎨들땋땋땁둠땋땮둥땄땲뎬듔듼뎰둡딤돸듟땡딄뒾됐들뒾득땰됫돷뎨됨디듌땄딹딠듸돝땲땜뎨돶둔땐듟뎹딽땵뒵딤듸둬돴되둡땠땀딅돴뒷둡될땦딄듸

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ NetworkActivity f5186x3271d0aa;

            {
                this.f5186x3271d0aa = this;
            }

            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean lambda$onPrepareOptionsMenu$10;
                boolean lambda$onPrepareOptionsMenu$12;
                boolean lambda$onPrepareOptionsMenu$13;
                switch (i2) {
                    case 0:
                        lambda$onPrepareOptionsMenu$10 = this.f5186x3271d0aa.lambda$onPrepareOptionsMenu$10(menuItem);
                        return lambda$onPrepareOptionsMenu$10;
                    case 1:
                        lambda$onPrepareOptionsMenu$12 = this.f5186x3271d0aa.lambda$onPrepareOptionsMenu$12(menuItem);
                        return lambda$onPrepareOptionsMenu$12;
                    default:
                        lambda$onPrepareOptionsMenu$13 = this.f5186x3271d0aa.lambda$onPrepareOptionsMenu$13(menuItem);
                        return lambda$onPrepareOptionsMenu$13;
                }
            }
        });
        final int i3 = 2;
        menu.findItem(R.id.paste_custom).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener(this) { // from class: 딠듟뎬딝돰득딨듬딝뒋땸돼딠땅디뒈듬듐둡딜땥돨뒐두딌딄듔땜뎻딅땭땜득뒷뒤땄땁땄둑뒵땍뒹둘땅딄둬둘뎹땮딝듻돸땻뒛뎰딻뒹도돤딹땧딄둬땬딟뎨들땋땋땁둠땋땮둥땄땲뎬듔듼뎰둡딤돸듟땡딄뒾됐들뒾득땰됫돷뎨됨디듌땄딹딠듸돝땲땜뎨돶둔땐듟뎹딽땵뒵딤듸둬돴되둡땠땀딅돴뒷둡될땦딄듸

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ NetworkActivity f5186x3271d0aa;

            {
                this.f5186x3271d0aa = this;
            }

            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean lambda$onPrepareOptionsMenu$10;
                boolean lambda$onPrepareOptionsMenu$12;
                boolean lambda$onPrepareOptionsMenu$13;
                switch (i3) {
                    case 0:
                        lambda$onPrepareOptionsMenu$10 = this.f5186x3271d0aa.lambda$onPrepareOptionsMenu$10(menuItem);
                        return lambda$onPrepareOptionsMenu$10;
                    case 1:
                        lambda$onPrepareOptionsMenu$12 = this.f5186x3271d0aa.lambda$onPrepareOptionsMenu$12(menuItem);
                        return lambda$onPrepareOptionsMenu$12;
                    default:
                        lambda$onPrepareOptionsMenu$13 = this.f5186x3271d0aa.lambda$onPrepareOptionsMenu$13(menuItem);
                        return lambda$onPrepareOptionsMenu$13;
                }
            }
        });
        SearchView searchView = (SearchView) findItem.getActionView();
        if (searchView != null) {
            searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.tknetwork.tunnel.activities.NetworkActivity.4
                public AnonymousClass4() {
                }

                @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
                public boolean onQueryTextChange(String str) {
                    NetworkActivity.this.networkingList(str.toLowerCase());
                    return true;
                }

                @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
                public boolean onQueryTextSubmit(String str) {
                    return false;
                }
            });
            return false;
        }
        return false;
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        loadAppColors(this.myPrefs.getInt(new ObfuscatedString(new long[]{5265779006047977348L, -5096105573890813962L, 1914065332959273570L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{7250097124936510827L, -4195815152781959268L}).toString())));
        super.onResume();
    }
}
