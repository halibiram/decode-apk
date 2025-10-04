package com.tknetwork.tunnel.activities;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.TaskStackBuilder;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentSender;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.Uri;
import android.net.VpnService;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.StrictMode;
import android.provider.Settings;
import android.text.Editable;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.OnBackPressedCallback;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.ActionBarDrawerToggle;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.AppCompatButton;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.PopupMenu;
import androidx.core.content.ContextCompat;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.preference.PreferenceManager;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import app.tunnel.logger.utils.TrafficData;
import app.tunnel.vpncommons.enums.VpnType;
import app.tunnel.vpncommons.utils.CommonUtils;
import app.tunnel.vpncommons.utils.CoreAppUtils;
import app.tunnel.vpncommons.utils.DataAuth;
import app.tunnel.vpncommons.utils.VpnUtils;
import com.airbnb.lottie.LottieAnimationView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.fbd.tunnel.R;
import com.github.mikephil.charting.charts.LineChart;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.navigation.NavigationView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.play.core.appupdate.AppUpdateInfo;
import com.google.android.play.core.appupdate.AppUpdateManager;
import com.google.android.play.core.appupdate.AppUpdateManagerFactory;
import com.google.android.play.core.review.ReviewManagerFactory;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.ActivityUi;
import com.tknetwork.tunnel.adapter.NetworkAdapter;
import com.tknetwork.tunnel.adapter.ServerAdapter;
import com.tknetwork.tunnel.core.AppUtils;
import com.tknetwork.tunnel.core.ConfigParser;
import com.tknetwork.tunnel.core.Connection;
import com.tknetwork.tunnel.core.FileUtilKt;
import com.tknetwork.tunnel.core.VpnProfile;
import com.tknetwork.tunnel.helper.GeneratorHelper;
import com.tknetwork.tunnel.json.JsonManager;
import com.tknetwork.tunnel.logger.JcLogs;
import com.tknetwork.tunnel.service.TunnelVPN;
import com.tknetwork.tunnel.service.c_05;
import com.tknetwork.tunnel.service.c_06;
import com.tknetwork.tunnel.service.c_09;
import com.tknetwork.tunnel.thread.UDPTunnelThread;
import com.tknetwork.tunnel.utils.Generator;
import com.tknetwork.tunnel.utils.ServerType;
import com.tknetwork.tunnel.utils.StatisticsGraphData;
import com.tknetwork.tunnel.utils.VPNUtil;
import com.tknetwork.tunnel.utils.c_12;
import com.tknetwork.tunnel.utils.gen;
import com.tknetwork.tunnel.view.CircleProgressBar;
import com.tknetwork.tunnel.view.GraphHelper;
import com.tknetwork.tunnel.view.MaterialEditText;
import com.v2ray.ang.util.SpeedtestUtil;
import com.v2ray.ang.viewmodel.MainViewModel;
import config.ConfigUtil;
import de.blinkt.openvpn.core.ConnectionStatus;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0594x7175b0df;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1319x9e4ecaa8;
import defpackage.C0370x5ac5058d;
import defpackage.C0375x845d249c;
import defpackage.C0379x9172909e;
import defpackage.C0390x994ec581;
import defpackage.DialogInterfaceOnClickListenerC0372xe698d;
import defpackage.DialogInterfaceOnClickListenerC0378xba782511;
import defpackage.DialogInterfaceOnClickListenerC0387xcd6c59d4;
import defpackage.RunnableC0371x742e2fda;
import defpackage.RunnableC0373xbc544024;
import defpackage.RunnableC0374x3cd97916;
import defpackage.RunnableC0376xa1ab12f;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0389x4e99d4e;
import defpackage.RunnableC0391x31381f22;
import defpackage.RunnableC0704x26897e44;
import defpackage.ViewOnClickListenerC0377x690937ba;
import defpackage.ViewOnClickListenerC0380x79b970bd;
import defpackage.ViewOnClickListenerC0382x306fc053;
import defpackage.ViewOnClickListenerC0385x83592480;
import defpackage.ViewOnClickListenerC0386x3d250025;
import j$.util.Objects;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URL;
import java.net.URLEncoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import net.openvpn.openvpn.ClientAPI_ConnectionInfo;
import net.openvpn.openvpn.PrefUtil;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.polaric.md_colorfragment.ColorChooserFragment;

/* loaded from: classes3.dex */
public class ActivityUi extends MainBaseActivity implements JsonManager.ServerUpdate.OnUpdateListener, View.OnClickListener, View.OnTouchListener, AdapterView.OnItemSelectedListener, TextView.OnEditorActionListener, ColorChooserFragment.ColorFragmentCallback, JsonManager.ExpiryUpdate.ExpireDateListener, Generator.GeneratorListener, RadioGroup.OnCheckedChangeListener, NavigationView.OnNavigationItemSelectedListener, GeneratorHelper.GeneratorListener, UDPTunnelThread.SocksListener, TkLogStatus.ByteCountListener, TkLogStatus.StateListener, TkLogStatus.ConnectionTimeListener {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final int REQUEST_IMPORT_PKCS12 = 3;
    private static final int REQUEST_OFFLINE_UPDATE = 99;
    private static final boolean RETAIN_AUTH = false;
    private static final int S_BIND_CALLED = 1;
    private static final int S_START_CALLED = 2;
    private static final int UIF_REFLECTED = 131072;
    private static final int UIF_RESET = 65536;
    private final ActivityResultLauncher<Intent> NetworkSelectActivityLauncher;
    private final ActivityResultLauncher<Intent> ProtocolActivityLauncher;
    private final ActivityResultLauncher<Intent> ServerSelectActivityLauncher;
    private int TIMEOUT_TRIES;
    private final String UDP_CLI;
    private final int UPDATE_REQUEST_CODE;
    private AlertDialog a;
    private String autostart_profile_name;
    private AlertDialog b;
    private RelativeLayout banner;
    private final BroadcastReceiver broadcastReceiver;
    private AppCompatImageView btnPayloadGen;
    private AppCompatImageView btn_icon;
    private TextView bytes_in_view;
    private TextView bytes_out_view;
    private RadioGroup category_type;
    private TextView checkupdate;
    private CheckBox ckMultiCert;
    private CheckBox ckUseDefProxy;
    private CheckBox ckUseLogin;

    /* renamed from: config */
    private ConfigUtil f5771config;
    private AppCompatButton connect_button;
    private RelativeLayout contentView;
    private ImageView custom_arrow;
    private ImageView custom_na;
    private RelativeLayout custom_network;
    private CircleProgressBar custom_progressBar;
    private RelativeLayout custom_server;
    private String date;
    private FinishOnConnect delayed_finish_on_connect;
    private AppCompatButton disconnect_button;
    private DrawerLayout drawer;
    private TextView duration_view;
    private SharedPreferences.Editor editor;
    private TextInputEditText etAllowedIPs;
    private TextInputEditText etCertificate;
    private TextInputEditText etEndpoint;
    private TextInputEditText etNetworkBackQuery;
    private TextInputEditText etNetworkFrontQuery;
    private TextInputEditText etNetworkInfo;
    private TextInputEditText etNetworkName;
    private TextInputEditText etNetworkPayload;
    private TextInputEditText etPass;
    private TextInputEditText etPreSharedKey;
    private TextInputEditText etPrivateKey;
    private TextInputEditText etPublicKey;
    private TextInputEditText etSSLInfo;
    private TextInputEditText etSSLName;
    private TextInputEditText etSSLPayload;
    private TextInputEditText etSSLPort;
    private TextInputEditText etSSLSNI;
    private TextInputEditText etServerAddress;
    private TextInputEditText etServerCloudFront;
    private TextInputEditText etServerHTTP;
    private TextInputEditText etServerIP;
    private TextInputEditText etSquidPort;
    private TextInputEditText etSquidProxy;
    private TextInputEditText etTcpPort;
    private TextInputEditText etUser;
    private AppCompatImageView exit;
    private CheckBox fakeV2ray;
    private FinishOnConnect finish_on_connect;
    private int i4;
    public boolean isConnecting;
    private CheckBox isReplace;
    private RelativeLayout l_add;
    private MaterialCardView l_info;
    private RelativeLayout l_pro;
    private boolean last_active;
    private final ActivityResultLauncher<Intent> launcherReadFile;
    private final ActivityResultLauncher<String> launcherReadPermission;
    private ArrayList<JSONObject> listNetwork;
    public ArrayList<String> listProfiles;
    private Bundle mBundle;
    private LineChart mDataChart;
    private GraphHelper mDataGraph;
    private SharedPreferences.Editor mEditor;
    private TextView mExpireDate;
    private Handler mHandler;
    private long mLastReceived;
    private long mLastSent;
    private long mReceived;
    private long mSent;
    private long mValidade;
    private MainViewModel mainViewModel;
    private SharedPreferences myPrefs;
    private LinearLayoutCompat n_spinner;
    private NavigationView navigation_view;
    public NetworkAdapter networkAdapter;
    private RelativeLayout network_layout;
    private LottieAnimationView notice;
    private TextInputEditText openvpn_udp_port;
    private LinearLayout p_layout;
    private LinearLayoutCompat pass;
    private RadioGroup payload_type;
    private CheckBox pingbox;
    private PrefUtil prefs;
    private TextInputEditText primary;
    private Spinner proto_spin;
    private Spinner proto_type;
    private RadioButton r_b;
    private int randomIndex;
    private TextInputEditText sName;
    private LinearLayoutCompat s_spinner;
    private TextInputEditText secondary;
    private int selectedColor;
    private int selectedServerType;
    private Spinner serverType;
    public ServerAdapter server_adapter;
    private RelativeLayout server_layout;
    private RadioGroup server_type;
    private boolean showNoUpdate;
    private int startup_state;
    private final Handler stats_timer_handler;
    private final Runnable stats_timer_task;
    private TextView status_view;
    private Thread thPing;
    private Timer timer;
    private TextView tv_test_state;
    private final Handler ui_reset_timer_handler;
    private final Runnable ui_reset_timer_task;
    private LinearLayoutCompat user;
    private EditText user_name;
    private MaterialEditText user_pass;
    private View v;
    private View v2;
    private CheckBox wire_full_conf;
    private static final String TAG = new ObfuscatedString(new long[]{6135616676629682561L, 2203154475878266303L, 2332791121934923759L}).toString();
    private static boolean isConnected = false;
    private static boolean isstartV2 = false;

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends BroadcastReceiver {
        public AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action != null && action.equals(new ObfuscatedString(new long[]{335234699129676705L, 2659489503848166136L, 3562463144272602641L}).toString())) {
                TkLogStatus.clearLog();
                if (!new ConfigUtil(ActivityUi.this).isUDP().booleanValue()) {
                    ActivityUi.this.stopVPN();
                } else {
                    ActivityUi.this.stopUdp();
                }
            }
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$10 */
    /* loaded from: classes3.dex */
    public class AnonymousClass10 implements AdapterView.OnItemSelectedListener {
        public AnonymousClass10() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 0) {
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                ActivityUi.this.btnPayloadGen.setVisibility(8);
                ActivityUi.this.server_type.setVisibility(0);
                ActivityUi.this.p_layout.setVisibility(0);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                ActivityUi.this.ckMultiCert.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                return;
            }
            if (i == 1) {
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-2447873105146806746L, 2133149114670655891L}).toString());
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                ActivityUi.this.btnPayloadGen.setVisibility(0);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                ActivityUi.this.p_layout.setVisibility(0);
                ActivityUi.this.ckMultiCert.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                return;
            }
            if (i == 2) {
                ActivityUi.this.ckMultiCert.setVisibility(0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-7997055898038443856L, -5013625453788889822L}).toString());
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                ActivityUi.this.btnPayloadGen.setVisibility(0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                ActivityUi.this.p_layout.setVisibility(0);
                ActivityUi.this.l_pro.setVisibility(0);
                ActivityUi.this.l_info.setVisibility(0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                return;
            }
            if (i == 3) {
                ActivityUi.this.ckMultiCert.setVisibility(8);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{337499258624730239L, -8573159172995313897L}).toString());
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                ActivityUi.this.btnPayloadGen.setVisibility(8);
                ActivityUi.this.p_layout.setVisibility(0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                return;
            }
            if (i == 4) {
                ActivityUi.this.ckMultiCert.setVisibility(8);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{2045925932579962125L, -6318149169174757371L}).toString());
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                ActivityUi.this.btnPayloadGen.setVisibility(0);
                ActivityUi.this.p_layout.setVisibility(0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                return;
            }
            if (i == 5) {
                ActivityUi.this.ckMultiCert.setVisibility(0);
                ActivityUi.this.l_pro.setVisibility(0);
                ActivityUi.this.l_info.setVisibility(0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 0);
                ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-866793185397604316L, 1208195178936541943L}).toString());
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                ActivityUi.this.btnPayloadGen.setVisibility(0);
                ActivityUi.this.p_layout.setVisibility(0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                return;
            }
            if (i == 6) {
                ActivityUi.this.ckMultiCert.setVisibility(8);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{8092286019525245201L, 4972018324207261223L}).toString());
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                ActivityUi.this.btnPayloadGen.setVisibility(0);
                ActivityUi.this.p_layout.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                return;
            }
            if (i == 7) {
                ActivityUi.this.ckMultiCert.setVisibility(8);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                ActivityUi.this.btnPayloadGen.setVisibility(8);
                ActivityUi.this.p_layout.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                return;
            }
            if (i == 8) {
                ActivityUi.this.ckMultiCert.setVisibility(8);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                ActivityUi.this.btnPayloadGen.setVisibility(8);
                ActivityUi.this.p_layout.setVisibility(8);
                return;
            }
            if (i == 9) {
                ActivityUi.this.ckMultiCert.setVisibility(8);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{9166413124865451555L, -6238825610029314430L, 8160537903612755774L}).toString());
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 8);
                ActivityUi.this.btnPayloadGen.setVisibility(8);
                ActivityUi.this.p_layout.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                return;
            }
            if (i == 10) {
                ActivityUi.this.ckMultiCert.setVisibility(8);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{364871644106756695L, -3856783077213587073L, 9197406951529210111L}).toString());
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 8);
                ActivityUi.this.btnPayloadGen.setVisibility(8);
                ActivityUi.this.p_layout.setVisibility(8);
                return;
            }
            if (i == 11) {
                ActivityUi.this.ckMultiCert.setVisibility(8);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 8);
                ActivityUi.this.btnPayloadGen.setVisibility(8);
                ActivityUi.this.p_layout.setVisibility(8);
                return;
            }
            if (i == 12) {
                ActivityUi.this.ckMultiCert.setVisibility(8);
                ActivityUi.this.l_pro.setVisibility(8);
                ActivityUi.this.l_info.setVisibility(8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 8);
                ActivityUi.this.btnPayloadGen.setVisibility(8);
                ActivityUi.this.p_layout.setVisibility(8);
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends Thread {
        final /* synthetic */ int val$timePing;

        public AnonymousClass2(int i) {
            r2 = i;
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x00f5 A[DONT_GENERATE] */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00f7  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private synchronized void MakePinger() {
            int i;
            long ping;
            String str;
            try {
                try {
                    ping = SpeedtestUtil.getPing(ActivityUi.this.myPrefs.getString(new ObfuscatedString(new long[]{-804863557811000227L, -582350205489449174L, -5476416440605125235L}).toString(), new ObfuscatedString(new long[]{-1885181684857837276L, -8608005511505456195L, 1972932675448278542L}).toString()), String.valueOf(ActivityUi.this.mConfig.getPingThread()));
                } catch (Exception unused) {
                    new ObfuscatedString(new long[]{-3338698905867323194L, -2066609910745104530L, 2870408601039828343L}).toString();
                    new ObfuscatedString(new long[]{-1333531743680052628L, -1823931651817430741L, -4440101905927984987L}).toString();
                }
                if (ping < 400 && ping != 0 && ping != 1 && ping != -1) {
                    str = new ObfuscatedString(new long[]{94423986749540943L, -8837219329973933550L, -5558401457839406657L, 5811555029588530562L, -2046802049970825198L, 5373664318011464020L}).toString() + ping + new ObfuscatedString(new long[]{162908869022977769L, -4942738581845818013L, 5779484582428676775L}).toString();
                    ActivityUi.this.myPrefs.edit().putBoolean(new ObfuscatedString(new long[]{-6582724850930998003L, -6185807755801993058L, -4931946641734793311L, 5202976614302261517L}).toString(), false).apply();
                    TkLogStatus.logInfo(str);
                    i = r2;
                    if (i != 0) {
                        return;
                    }
                    if (i > 0) {
                        Thread.sleep(i * 1000);
                        return;
                    } else {
                        TkLogStatus.logInfo(new ObfuscatedString(new long[]{9213839095165146748L, -580458786808603662L, 5986797825655623147L}).toString());
                        throw new InterruptedException();
                    }
                }
                str = new ObfuscatedString(new long[]{-8148759948429608962L, 8439664366719215491L, 6835553000491386792L, -1983647174878530117L, -364514230546261953L, -3060215409113167246L}).toString() + ping + new ObfuscatedString(new long[]{6793831997058553910L, -7679979953045322259L, 7522039790107145029L}).toString();
                ActivityUi.this.myPrefs.edit().putBoolean(new ObfuscatedString(new long[]{-6582724850930998003L, -6185807755801993058L, -4931946641734793311L, 5202976614302261517L}).toString(), false).apply();
                TkLogStatus.logInfo(str);
                i = r2;
                if (i != 0) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                if (!TkLogStatus.isTunnelActive() || !ActivityUi.isConnected) {
                    break;
                }
                ActivityUi.this.TIMEOUT_TRIES++;
                if (ActivityUi.this.myPrefs.getBoolean(new ObfuscatedString(new long[]{15323299566285160L, -5119119293761355335L, -6930399379455835076L, -5914866608234827506L}).toString(), false) && ActivityUi.this.TIMEOUT_TRIES == Integer.parseInt(ActivityUi.this.myPrefs.getString(new ObfuscatedString(new long[]{2092290887017793024L, 2797576281556764824L, -8484351332433508813L}).toString(), new ObfuscatedString(new long[]{-721701115330359927L, 7280585076425756869L}).toString()))) {
                    TkLogStatus.logInfo(new ObfuscatedString(new long[]{4735930213541929937L, -1873370980226033987L, 7811194466056994529L, 2277186974642795498L, -4587328274511389119L, -1546258737699344289L}).toString());
                    ActivityUi.this.thPing.interrupt();
                    ActivityUi.this.thPing = null;
                    break;
                }
                try {
                    MakePinger();
                } catch (InterruptedException unused) {
                }
            }
            ActivityUi.this.TIMEOUT_TRIES = 0;
            ActivityUi.this.myPrefs.edit().putBoolean(new ObfuscatedString(new long[]{-1411927317104507649L, -5084261003545025755L, -5741426318109799557L, 7783054065310957004L}).toString(), true).apply();
            TkLogStatus.logInfo(new ObfuscatedString(new long[]{4314557931527464566L, 6046075390469216761L, -9116274476412714233L}).toString());
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$3 */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends TimerTask {
        public AnonymousClass3() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            long j;
            long totalRxBytes = TrafficStats.getTotalRxBytes();
            ActivityUi activityUi = ActivityUi.this;
            activityUi.mReceived = totalRxBytes - activityUi.mLastReceived;
            ActivityUi.this.mLastReceived = totalRxBytes;
            SharedPreferences.Editor edit = ActivityUi.this.myPrefs.edit();
            String obfuscatedString = new ObfuscatedString(new long[]{4249015604629326705L, -1000433626618290311L, 4114147834882935211L}).toString();
            long j2 = 0;
            if (ActivityUi.this.mLastReceived <= totalRxBytes) {
                j = ActivityUi.this.mLastReceived;
            } else {
                j = 0;
            }
            edit.putLong(obfuscatedString, j).apply();
            long totalTxBytes = TrafficStats.getTotalTxBytes();
            ActivityUi activityUi2 = ActivityUi.this;
            activityUi2.mSent = totalTxBytes - activityUi2.mLastSent;
            ActivityUi.this.mLastSent = totalTxBytes;
            SharedPreferences.Editor edit2 = ActivityUi.this.myPrefs.edit();
            String obfuscatedString2 = new ObfuscatedString(new long[]{-4053149925456786467L, 8983035946308702756L, 3836159040231479923L}).toString();
            if (ActivityUi.this.mLastSent <= totalTxBytes) {
                j2 = ActivityUi.this.mLastSent;
            }
            edit2.putLong(obfuscatedString2, j2).apply();
            TrafficData.addBytesDownload(ActivityUi.this.mReceived);
            TrafficData.addBytesSend(ActivityUi.this.mSent);
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$4 */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements DialogInterface.OnClickListener {
        public AnonymousClass4() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            ActivityUi.this.editor.putBoolean(new ObfuscatedString(new long[]{-185855504426279956L, 8016300848568638006L, -381882516335006038L}).toString(), true).apply();
            ActivityUi.this.startActivity(new Intent(new ObfuscatedString(new long[]{6670721184981053653L, 352705186240286156L, 2867124883780295030L, -5067284271459195160L, 8598130102319705864L}).toString(), Uri.parse(new ObfuscatedString(new long[]{-5542939349403916741L, -843745523766599099L, -672273586356282602L, 8149247770995037456L}).toString())));
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$5 */
    /* loaded from: classes3.dex */
    public class AnonymousClass5 implements DialogInterface.OnClickListener {
        public AnonymousClass5() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$6 */
    /* loaded from: classes3.dex */
    public class AnonymousClass6 extends OnBackPressedCallback {
        public AnonymousClass6(boolean z) {
            super(z);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            Intent intent = new Intent(new ObfuscatedString(new long[]{-4749642092926878575L, -1845845093106412929L, -20767686146078966L, -9210610186744486937L, 6083940113754741027L}).toString());
            intent.addCategory(new ObfuscatedString(new long[]{8407645368833801895L, -2525967103029696369L, 830162883634448161L, 1778844201282448468L, 9208382120009656948L}).toString());
            intent.setFlags(268435456);
            ActivityUi.this.startActivity(intent);
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$7 */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 extends DrawerLayout.SimpleDrawerListener {
        public AnonymousClass7() {
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerClosed(View view) {
            try {
                if (ActivityUi.this.drawer.getRotation() == 0.0f) {
                    ActivityUi.this.drawer.animate().setDuration(200L).rotation(0.0f);
                } else {
                    ActivityUi.this.drawer.animate().setDuration(200L).rotation(0.0f);
                }
            } catch (Exception unused) {
            }
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerOpened(View view) {
            try {
                if (ActivityUi.this.drawer.getRotation() == 0.0f) {
                    ActivityUi.this.drawer.animate().setDuration(200L).rotation(0.0f);
                } else {
                    ActivityUi.this.drawer.animate().setDuration(200L).rotation(0.0f);
                }
            } catch (Exception unused) {
            }
        }

        @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
        public void onDrawerSlide(View view, float f) {
            float f2 = 0.3f * f;
            float f3 = 1.0f - f2;
            ActivityUi.this.contentView.setScaleX(f3);
            ActivityUi.this.contentView.setScaleY(f3);
            ActivityUi.this.contentView.setTranslationX((view.getWidth() * f) - ((ActivityUi.this.contentView.getWidth() * f2) / 2.0f));
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$8 */
    /* loaded from: classes3.dex */
    public class AnonymousClass8 implements AdapterView.OnItemSelectedListener {
        public AnonymousClass8() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            int i2 = 0;
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 0);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 0);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort, 0);
            ActivityUi.this.ckMultiCert.setVisibility(8);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etCertificate_ly, 8);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.wire_ly, 8);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.wire_full_conf, 8);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerCloudFront_ly, 0);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerHTTP_ly, 0);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerIP_ly, 0);
            if (i != 0 && i != 1) {
                if (i == 2) {
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{1149072790085690171L, 2796079960891342595L, 7551634843873955067L, -7401323629078416230L, -8990793338115921216L}).toString());
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{2250990608871512418L, -1515458119751436664L, -2496545288058930520L}).toString());
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 8);
                    return;
                }
                if (i == 3) {
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 0);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerIP_ly, 0);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerCloudFront_ly, 0);
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-6905279831929825157L, 2019794853149013021L, 8102592141316503024L}).toString());
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{4392964282779057982L, 8200142028253530728L, -2158162263391022295L}).toString());
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{-4568121734583246913L, 3310139984439172884L, -2296872382946357513L}).toString());
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 0);
                    return;
                }
                if (i == 4) {
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{2727831168182083235L, -5575974004885898253L, -2769017024202575932L, 6827631361117761380L}).toString());
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{-1640770095704535252L, 8477956528387317472L, -464331276872773397L, -8347957831859266938L}).toString());
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{951268194192962895L, 791025370219611218L, -8691554918360177720L, -8402204307288635055L}).toString());
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 0);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etPort_tv, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort_ly, 8);
                    return;
                }
                if (i == 5) {
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerIP_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerCloudFront_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.wire_ly, 0);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.wire_full_conf, 0);
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-5169739512125790593L, -2733858340019244099L, -6269836175490489509L, 7188168382842920510L}).toString());
                    return;
                }
                return;
            }
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
            ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{2239467998783705186L, -3074754148439580678L, -8896480020610768889L, 6815030931607364167L}).toString());
            ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{8911127610293231922L, -524226134346697406L, 1541518778958657429L, -3379360249065821504L}).toString());
            ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{6622622359421885749L, 2540847432229860867L, -1779762162623785430L, 6837953274613239640L}).toString());
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 0);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etPort_tv, 0);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 0);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 0);
            AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort_ly, 0);
            if (i == 0) {
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etUdpPort_ly)).setHint(new ObfuscatedString(new long[]{-4783785247063607129L, -1436530746547328765L}).toString());
                ActivityUi.this.openvpn_udp_port.setText(new ObfuscatedString(new long[]{-4009088218239777162L, -4141067429365802984L}).toString());
                ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etTcpPort_ly)).setHint(new ObfuscatedString(new long[]{872829014003614688L, 775455214716865346L}).toString());
                ActivityUi.this.etTcpPort.setText(new ObfuscatedString(new long[]{5236945415663677298L, -8339097602138538958L}).toString());
                ActivityUi.this.etSSLPort.setText(new ObfuscatedString(new long[]{-7469848929862257483L, 4257386993620544856L}).toString());
                ActivityUi.this.ckMultiCert.setVisibility(0);
                View findViewById = ActivityUi.this.v.findViewById(R.id.etCertificate_ly);
                if (!ActivityUi.this.ckMultiCert.isChecked()) {
                    i2 = 8;
                }
                findViewById.setVisibility(i2);
            }
            if (i == 1) {
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 8);
                ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etTcpPort_ly)).setHint(new ObfuscatedString(new long[]{3095973099400010129L, -3667561581838220342L, 8148724348847661501L}).toString());
                ActivityUi.this.etTcpPort.setText(new ObfuscatedString(new long[]{-6574529404276428117L, 703805048341658756L}).toString());
                ActivityUi.this.etSSLPort.setText(new ObfuscatedString(new long[]{8865640527005443069L, 6215615058913491227L}).toString());
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ActivityUi$9 */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 implements AdapterView.OnItemSelectedListener {
        public AnonymousClass9() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 1) {
                ActivityUi.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-3343007266429299382L, 8200651635098276621L, -1380181979658497018L, -6678624026953569163L, -7289969583390805145L, -819289213758962219L, 7218809227933750344L, -4502718169899835197L, 1312266682461762880L, -1442866204798999941L}).toString());
            } else if (i == 2) {
                ActivityUi.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-105543130490972979L, -3701744857862945136L, 7312000896707717924L, -108370319957905552L, -6458592713575399997L, 2346181081681017880L, -7055588190406827311L, -6043228149049183148L, 5213768820448037241L, 9013423895868507938L, 1111069504557597622L, -3774232293396243903L, 1703263347174053493L, -5386584823521138725L}).toString());
            } else if (i == 3) {
                ActivityUi.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-2873496279599646714L, 7892140730460310838L, 8911214578451434635L, -8092643486079491609L, -692782287706493193L, 4796188022865954433L, 4467426708978201604L, 1841370796620394128L, 5031241414291207970L}).toString());
            } else if (i == 4) {
                ActivityUi.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{1862701723426135862L, -3923192547217947796L, 948038916066395459L, 4247139497613620411L, 7434001192864474773L, -1131554773907417356L, 1440993628714181250L, -8701791025473394532L, 6812612806946139113L, -9220522502585993202L, -5824568605328788899L, 6122306657668275023L, 99608077836120479L, -3422891354718941772L}).toString());
            }
            ActivityUi.this.proto_type.getSelectedItem();
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* loaded from: classes3.dex */
    public enum FinishOnConnect {
        DISABLED,
        ENABLED,
        ENABLED_ACROSS_ONSTART,
        PENDING
    }

    /* loaded from: classes3.dex */
    public enum ProfileSource {
        UNDEF,
        SERVICE,
        PRIORITY,
        PREFERENCES,
        LIST0
    }

    public ActivityUi() {
        FinishOnConnect finishOnConnect = FinishOnConnect.DISABLED;
        this.delayed_finish_on_connect = finishOnConnect;
        this.finish_on_connect = finishOnConnect;
        this.last_active = false;
        this.startup_state = 0;
        this.stats_timer_handler = new Handler(Looper.getMainLooper());
        this.stats_timer_task = new RunnableC0373xbc544024(this, 9);
        this.ui_reset_timer_handler = new Handler(Looper.getMainLooper());
        this.ui_reset_timer_task = new RunnableC0373xbc544024(this, 10);
        this.selectedServerType = ServerType.OPENVPN;
        this.UPDATE_REQUEST_CODE = 11;
        this.isConnecting = false;
        this.NetworkSelectActivityLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new C0375x845d249c(this, 4));
        this.ServerSelectActivityLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new C0375x845d249c(this, 5));
        this.ProtocolActivityLauncher = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new C0375x845d249c(this, 6));
        this.broadcastReceiver = new BroadcastReceiver() { // from class: com.tknetwork.tunnel.activities.ActivityUi.1
            public AnonymousClass1() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                String action = intent.getAction();
                if (action != null && action.equals(new ObfuscatedString(new long[]{335234699129676705L, 2659489503848166136L, 3562463144272602641L}).toString())) {
                    TkLogStatus.clearLog();
                    if (!new ConfigUtil(ActivityUi.this).isUDP().booleanValue()) {
                        ActivityUi.this.stopVPN();
                    } else {
                        ActivityUi.this.stopUdp();
                    }
                }
            }
        };
        this.TIMEOUT_TRIES = 0;
        this.randomIndex = 0;
        this.date = new ObfuscatedString(new long[]{1266728131191863853L, 5607930794723300422L, 6426439953814570768L, -6926160085745098632L, -8151281786996825874L}).toString();
        this.launcherReadFile = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new C0375x845d249c(this, 7));
        this.launcherReadPermission = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new C0375x845d249c(this, 8));
        this.i4 = 0;
        this.mValidade = 0L;
        this.UDP_CLI = new ObfuscatedString(new long[]{-7282733157879279964L, 499773750306073018L, 8896858257720842597L, -3434664995755097592L, -6835438168971243439L, -7456344825776925575L, 3573663093624406398L, -3454968326588021944L, -3727508088822544726L, 1861643641121139284L, -8985254747462305845L, -1269845642055633429L, 7923727484031356563L, -2108652616470515797L, 8023385486833081099L, 927562405968495646L, 1851879039198309121L, 2792716673194280013L, 737900787965598054L, 30068934861533566L, 3342432662529569571L, 1287829838013091256L, -1981758970988704165L, 487314943087953350L, 8196593262309482769L, -6770401245140580956L, 1658587801475025659L, -7862893747129489944L, -7584831547107594260L, 3261067713208378539L, -3592112058393969337L, 5591797726358765879L, -7581684580134443439L, -8116413695114430318L, 8491722554958622179L, -9021807323564532312L, 5447572293268364316L, 8808165657155529099L, 5360774667650487188L, -3975531827708777649L}).toString();
    }

    private String CategoryType() {
        if (this.category_type.getCheckedRadioButtonId() == R.id.type_premium) {
            return new ObfuscatedString(new long[]{-8901140306344373458L, -3797665056007504076L}).toString();
        }
        if (this.category_type.getCheckedRadioButtonId() == R.id.type_vip) {
            return new ObfuscatedString(new long[]{-5941749563554522741L, -6260983315332961545L}).toString();
        }
        if (this.category_type.getCheckedRadioButtonId() == R.id.type_private) {
            return new ObfuscatedString(new long[]{3227372439566399473L, -2215238714918746136L}).toString();
        }
        return new ObfuscatedString(new long[]{-3705052003781064652L, 5283917414424869111L}).toString();
    }

    private void CheckingApi() {
        ConfigUtil configUtil = new ConfigUtil(this);
        int i = 2;
        String replace = VPNUtil.decrypt(this.f5771config.getApi()).replace(new ObfuscatedString(new long[]{3103704993258383283L, -609284036380171255L}).toString(), new ObfuscatedString(new long[]{-2232803874977013481L, -4460846709704911506L}).toString()).replace(new ObfuscatedString(new long[]{1024620678494248046L, -7857897428126269288L}).toString(), new ObfuscatedString(new long[]{-3310060847278270531L, -8469380881100025050L}).toString()).replace(new ObfuscatedString(new long[]{-1467892655873883524L, -2258382281658662107L}).toString(), new ObfuscatedString(new long[]{8296892390292605243L, -9054334026382487008L}).toString()).replace(new ObfuscatedString(new long[]{6748733170069879369L, 1310580986735931469L}).toString(), new ObfuscatedString(new long[]{-804751970607402164L, 8768969346942398924L}).toString()).replace(new ObfuscatedString(new long[]{6220564269581141076L, 2596014992215564864L}).toString(), new ObfuscatedString(new long[]{7072731521639676249L, 4892380521666760008L}).toString()).replace(new ObfuscatedString(new long[]{-4670794831649035416L, -8232398714259740744L}).toString(), new ObfuscatedString(new long[]{2087502094810174155L, -246621572248686157L}).toString()).replace(new ObfuscatedString(new long[]{745168674040810777L, -7947197639287587288L}).toString(), new ObfuscatedString(new long[]{-2315268708928306719L, 6555165846442857405L}).toString()).replace(new ObfuscatedString(new long[]{1246047388596307824L, -4737941506764328998L}).toString(), new ObfuscatedString(new long[]{-6577460144080147469L, -428407907973292706L}).toString()).replace(new ObfuscatedString(new long[]{4757794823633260545L, -7404532689907836459L}).toString(), new ObfuscatedString(new long[]{-5221555870675487058L, 3348003283862735350L}).toString()).replace(new ObfuscatedString(new long[]{-2140540890316610570L, -2739661038137705493L}).toString(), new ObfuscatedString(new long[]{6208906674240896920L, 5275979214486416076L}).toString()).replace(new ObfuscatedString(new long[]{-5550048994841027211L, -9076648551754022188L}).toString(), new ObfuscatedString(new long[]{1294458849311286163L, -135809572203241958L}).toString()).replace(new ObfuscatedString(new long[]{-5407859833102276399L, -7892405686523506109L}).toString(), new ObfuscatedString(new long[]{4082180010131394772L, 2094136046925179605L}).toString()).replace(new ObfuscatedString(new long[]{-2973784871002234913L, 5997095009719932143L}).toString(), new ObfuscatedString(new long[]{-8854214329846204505L, -5370663667102176967L}).toString()).replace(new ObfuscatedString(new long[]{-5167770145705668607L, 3811991856937799175L}).toString(), new ObfuscatedString(new long[]{-1654965265434996761L, 2192993053327703088L}).toString()).replace(new ObfuscatedString(new long[]{-4899675956943292887L, -561774297642015342L}).toString(), new ObfuscatedString(new long[]{8374022241560577750L, -1967953757225208906L}).toString()).replace(new ObfuscatedString(new long[]{8254307373705432050L, 834957103300002981L}).toString(), new ObfuscatedString(new long[]{5346939278967633600L, -4726382933131010321L}).toString()).replace(new ObfuscatedString(new long[]{2158443119735792281L, -5811525378734230187L}).toString(), new ObfuscatedString(new long[]{-3333079265370540595L, 6054813901219876951L}).toString()).replace(new ObfuscatedString(new long[]{-9206770808696670048L, 1160048793688877752L}).toString(), new ObfuscatedString(new long[]{-5106639865056810282L, 2829477586790820352L}).toString()).replace(new ObfuscatedString(new long[]{-8449228130585255390L, -807299880559409133L}).toString(), new ObfuscatedString(new long[]{3054772059423882585L, 4083762512856921095L}).toString()).replace(new ObfuscatedString(new long[]{-5679834902051273243L, -6191189055097968848L}).toString(), new ObfuscatedString(new long[]{-8116580150129839172L, -186782554260243245L}).toString()).replace(new ObfuscatedString(new long[]{-7478398989709316951L, -1242924610179936569L}).toString(), new ObfuscatedString(new long[]{-4321358461594154166L, -7239514295161990454L}).toString()).replace(new ObfuscatedString(new long[]{1175133778271620539L, -7775319844407061462L}).toString(), new ObfuscatedString(new long[]{-2637888077721251597L, -5355510202680222771L}).toString()).replace(new ObfuscatedString(new long[]{-8330356652309269083L, 5025944179785502252L}).toString(), new ObfuscatedString(new long[]{-9029143803985368337L, -210297111009279291L}).toString()).replace(new ObfuscatedString(new long[]{6736999438796512739L, -8710653794135939223L}).toString(), new ObfuscatedString(new long[]{67367710590234329L, -4071028490903475L}).toString()).replace(new ObfuscatedString(new long[]{5458662010236912671L, -4748400195234267236L}).toString(), new ObfuscatedString(new long[]{7447206196993752997L, 4930686284643923943L}).toString()).replace(new ObfuscatedString(new long[]{7773766283303996185L, 5479967578134272058L}).toString(), new ObfuscatedString(new long[]{-809502673420190790L, -2176644976693481948L}).toString());
        String obj = this.user_name.getText().toString();
        Editable text = this.user_pass.getText();
        Objects.requireNonNull(text);
        String obj2 = text.toString();
        if (!obj.isEmpty() && !obj2.isEmpty()) {
            Volley.newRequestQueue(this).add(new StringRequest(String.format(replace, obj, obj2, Settings.Secure.getString(getContentResolver(), new ObfuscatedString(new long[]{-5440835751658475008L, 4039524449333831735L, 5609128061379822381L}).toString()), Build.MODEL), new C0379x9172909e(this, configUtil, 1), new C0370x5ac5058d(i)));
        } else {
            Toast.makeText(this, new ObfuscatedString(new long[]{-5355617342167381475L, 8723055792906292773L, 7176485920429003020L}).toString(), 0).show();
        }
    }

    private void SaveFile() {
        AlertDialog create = new AlertDialog.Builder(this.a.getContext()).create();
        View inflate = LayoutInflater.from(this.a.getContext()).inflate(R.layout.dialog_v2, (ViewGroup) null);
        inflate.findViewById(R.id.save_setup).setOnClickListener(new ViewOnClickListenerC0380x79b970bd(create, 0));
        inflate.findViewById(R.id.close_setup).setOnClickListener(new ViewOnClickListenerC0380x79b970bd(create, 1));
        create.setView(inflate);
        create.setCancelable(true);
        create.show();
    }

    private void attemptExportNetwork() {
        String str = this.prefs.get_string(new ObfuscatedString(new long[]{-2720515112218148331L, -840811322732678513L, -6984022129860426978L}).toString());
        if (TextUtils.isEmpty(str)) {
            showToast(getString(R.string.nothing_to_export));
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(new ObfuscatedString(new long[]{855437057532686456L, -7026149469360242175L}).toString(), new JSONObject(c_12.Parser.d_01(str)).toString());
            }
            File file = new File(Environment.getExternalStoragePublicDirectory(new ObfuscatedString(new long[]{3148829330250913739L, -8105590295411788823L, 8208518471448546972L}).toString()) + new ObfuscatedString(new long[]{1532865590168777056L, -7938342388390118199L}).toString() + getString(R.string.app_name));
            if (!file.exists()) {
                file.mkdirs();
            }
            String format = new SimpleDateFormat(new ObfuscatedString(new long[]{6624985581331523239L, 3111965177738461609L, -5138154590462981444L}).toString(), Locale.ENGLISH).format(new Date());
            String absolutePath = file.getAbsolutePath();
            StringBuilder sb = new StringBuilder();
            sb.append(this.prefs.get_string(new ObfuscatedString(new long[]{3573678659426352451L, -1569280735226190503L}).toString()));
            FileUtilKt.writeToFile(absolutePath, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8352343448584521675L, 5982036481694030112L}), sb, format), jSONObject.toString());
            showToast(getString(R.string.export_successful) + new ObfuscatedString(new long[]{8680139046662252279L, 1149891825546532801L, -5751003108703505891L}).toString() + Environment.DIRECTORY_DOCUMENTS + new ObfuscatedString(new long[]{418126485517757079L, -1357245790787807704L}).toString() + this.prefs.get_string(new ObfuscatedString(new long[]{-275680535149487208L, -5166544722546607678L}).toString()) + new ObfuscatedString(new long[]{4567312320653397538L, -4178894473554310599L}).toString() + format);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void attemptExportServer() {
        String str = this.prefs.get_string(new ObfuscatedString(new long[]{7156524769381209900L, -4482800319446489044L, -1724603062294117283L}).toString());
        if (TextUtils.isEmpty(str)) {
            showToast(getString(R.string.nothing_to_export));
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(new ObfuscatedString(new long[]{-2244347867501806343L, -1983039267508313320L}).toString(), new JSONObject(c_12.Parser.d_01(str)).toString());
            }
            File file = new File(Environment.getExternalStoragePublicDirectory(new ObfuscatedString(new long[]{-2564166165306347827L, -3282555019526232555L, 1739721171020988705L}).toString()) + new ObfuscatedString(new long[]{-6244173135698842471L, -1772112771271591997L}).toString() + getString(R.string.app_name));
            if (!file.exists()) {
                file.mkdirs();
            }
            String format = new SimpleDateFormat(new ObfuscatedString(new long[]{-414705819134294867L, -3353895322154167297L, -1179588251989899321L}).toString(), Locale.ENGLISH).format(new Date());
            String absolutePath = file.getAbsolutePath();
            StringBuilder sb = new StringBuilder();
            sb.append(this.prefs.get_string(new ObfuscatedString(new long[]{-6674926634378835611L, -4559251125419992659L, 1324787156247208007L}).toString()));
            FileUtilKt.writeToFile(absolutePath, AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{523064402313724795L, -5677339492627585835L}), sb, format), jSONObject.toString());
            showToast(getString(R.string.export_successful) + new ObfuscatedString(new long[]{7335753793880131671L, 237042005372661854L, 9058637201026670125L}).toString() + Environment.DIRECTORY_DOCUMENTS + new ObfuscatedString(new long[]{-8275939590570997259L, -601909972758858472L}).toString() + this.prefs.get_string(new ObfuscatedString(new long[]{-5938963892622654032L, 3781872107928002611L, -6378204929862275100L}).toString()) + new ObfuscatedString(new long[]{5719673495413728143L, 8474968500735347392L}).toString() + format);
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void attemptImport() {
        String obfuscatedString = new ObfuscatedString(new long[]{-7263191433178976968L, -2703265429986464262L, 6240454045213421342L, -9153595305671174717L, -1353625312256879614L, -1617152262018700134L}).toString();
        if (Build.VERSION.SDK_INT <= 32 && !hasPermission(obfuscatedString)) {
            this.launcherReadPermission.launch(obfuscatedString);
            return;
        }
        Uri parse = Uri.parse(Environment.DIRECTORY_DOWNLOADS);
        Intent intent = new Intent(new ObfuscatedString(new long[]{5797469608915233825L, -5298536672590700607L, -8283941862228545425L, -3712065977839199825L, 1133440609042218776L, 6720494207517845255L}).toString());
        intent.setDataAndType(parse, new ObfuscatedString(new long[]{3458007047114446063L, -8111331359682746770L}).toString());
        this.launcherReadFile.launch(intent);
    }

    private void bg_banner(boolean z) {
        int i;
        View findViewById = findViewById(R.id.banner);
        if (z) {
            i = 8;
        } else {
            i = 0;
        }
        findViewById.setVisibility(i);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005f A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x249c A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x24a2 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0071 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:142:0x2572 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:143:0x2578 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x260b A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x26b4 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x270e A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x2698 A[Catch: Exception -> 0x004b, TryCatch #0 {Exception -> 0x004b, blocks: (B:3:0x0006, B:5:0x003b, B:8:0x0046, B:10:0x005f, B:13:0x0071, B:15:0x1166, B:16:0x117b, B:18:0x1841, B:20:0x1bab, B:21:0x1bb9, B:22:0x1bbc, B:24:0x1bd0, B:25:0x1be5, B:27:0x1c00, B:29:0x1c06, B:32:0x1c2e, B:34:0x1c32, B:37:0x1c39, B:39:0x1c4e, B:40:0x1c64, B:42:0x1c79, B:43:0x1c8f, B:58:0x1cc9, B:60:0x1cd8, B:62:0x1ced, B:63:0x1d03, B:65:0x1d18, B:67:0x1d30, B:69:0x1d45, B:70:0x1d5b, B:72:0x1d70, B:73:0x1d86, B:75:0x1d9d, B:77:0x1db9, B:85:0x1ddc, B:87:0x1df1, B:88:0x1e07, B:90:0x1e21, B:92:0x1e36, B:93:0x1e3b, B:95:0x1e41, B:98:0x1e72, B:103:0x2085, B:105:0x20b0, B:107:0x20c5, B:109:0x20f1, B:111:0x20f7, B:119:0x2460, B:121:0x2474, B:123:0x249c, B:124:0x24a2, B:126:0x24ca, B:127:0x24ce, B:129:0x24f6, B:131:0x250b, B:133:0x2524, B:134:0x2529, B:135:0x252e, B:138:0x2535, B:140:0x254a, B:142:0x2572, B:143:0x2578, B:145:0x25a0, B:146:0x25a4, B:148:0x25cc, B:150:0x25e1, B:152:0x25fa, B:153:0x25ff, B:154:0x2604, B:157:0x260b, B:159:0x2620, B:161:0x2639, B:162:0x269c, B:164:0x26b4, B:165:0x2a57, B:167:0x270e, B:169:0x2723, B:171:0x273c, B:173:0x2751, B:175:0x2779, B:177:0x278e, B:179:0x27a7, B:180:0x27d5, B:181:0x2803, B:182:0x2830, B:184:0x2858, B:186:0x286d, B:188:0x2886, B:189:0x28b4, B:190:0x28e2, B:191:0x290f, B:193:0x2937, B:194:0x2965, B:195:0x2993, B:196:0x29cf, B:198:0x29e4, B:200:0x29fd, B:201:0x2a2a, B:202:0x2666, B:203:0x2681, B:204:0x2698, B:206:0x214f, B:208:0x2164, B:210:0x218c, B:211:0x2192, B:213:0x21ba, B:214:0x21be, B:216:0x21e6, B:218:0x21fb, B:220:0x2214, B:221:0x2219, B:222:0x221e, B:225:0x2225, B:227:0x223a, B:229:0x2262, B:230:0x2267, B:232:0x228f, B:233:0x2293, B:235:0x22bb, B:237:0x22d0, B:239:0x22e9, B:240:0x22ed, B:241:0x22f1, B:242:0x22f4, B:244:0x2309, B:246:0x2334, B:248:0x233a, B:250:0x234f, B:252:0x2377, B:254:0x238c, B:256:0x23a5, B:257:0x23a9, B:258:0x23ad, B:259:0x23b0, B:261:0x23d8, B:263:0x23ed, B:265:0x2406, B:266:0x240a, B:267:0x240e, B:268:0x2411, B:270:0x2439, B:271:0x243e, B:272:0x2443, B:273:0x20fc, B:275:0x2102, B:276:0x2120, B:277:0x213f, B:278:0x1ee6, B:280:0x1eec, B:283:0x1f15, B:285:0x1f27, B:288:0x1f2f, B:290:0x1f33, B:291:0x1f36, B:293:0x1f4b, B:295:0x1f64, B:296:0x1f92, B:297:0x1fbf, B:299:0x1fd4, B:300:0x1ff8, B:302:0x2020, B:303:0x207b, B:304:0x2024, B:306:0x204c, B:307:0x2050, B:309:0x2078, B:310:0x1cc5, B:311:0x004e, B:314:0x0059), top: B:2:0x0006, inners: #1, #2 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void c_02() {
        JSONObject jSONObject;
        int i;
        Intent prepare;
        try {
            ConfigUtil configUtil = ConfigUtil.getInstance(this);
            configUtil.setCustomPayload(false);
            JSONObject networkSelectedJson = getNetworkSelectedJson();
            int i2 = networkSelectedJson.getInt(new ObfuscatedString(new long[]{-4388200381013540191L, 2952784072788271341L, -8740648642323267729L}).toString());
            if (!configUtil.getServerSelectedName().contains(new ObfuscatedString(new long[]{-510093426921919463L, -4384234252066406873L}).toString()) && !configUtil.getServerSelectedName().isEmpty()) {
                jSONObject = getServerSelectedJson();
                if (jSONObject != null) {
                    showToast(new ObfuscatedString(new long[]{-834443794406212552L, 3734754361180564149L, -1746910408834793379L, 4329107479931253402L}).toString());
                    return;
                }
                String replace = VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{7398704567521029613L, -3415914784964375479L}).toString())).replace(new ObfuscatedString(new long[]{7722197934152965894L, 8144654795115222744L}).toString(), new ObfuscatedString(new long[]{-1153165559911673178L, -4853017044998311681L}).toString()).replace(new ObfuscatedString(new long[]{-6914187452299205814L, 4908925596673761297L}).toString(), new ObfuscatedString(new long[]{1597793765180898257L, 5061552297725207149L}).toString()).replace(new ObfuscatedString(new long[]{-277172897258867088L, 38388917735111350L}).toString(), new ObfuscatedString(new long[]{-8138110444609179872L, 2597510808291858768L}).toString()).replace(new ObfuscatedString(new long[]{2946333127660465295L, 1965227986362459510L}).toString(), new ObfuscatedString(new long[]{-5198517766382493992L, 8832445866465010162L}).toString()).replace(new ObfuscatedString(new long[]{-6432733188803606495L, -2952490103248482918L}).toString(), new ObfuscatedString(new long[]{-6159702075197484753L, -2735462951520150392L}).toString()).replace(new ObfuscatedString(new long[]{4191660738336431483L, 3950925968950639285L}).toString(), new ObfuscatedString(new long[]{3298366384602012817L, 640838349192079391L}).toString()).replace(new ObfuscatedString(new long[]{-2410443455319523267L, 3366033346311083176L}).toString(), new ObfuscatedString(new long[]{-3245188941017331322L, 8803066102476126473L}).toString()).replace(new ObfuscatedString(new long[]{-7860664113585699477L, -7689372378382235506L}).toString(), new ObfuscatedString(new long[]{1877079200538340160L, 3837775945106475353L}).toString()).replace(new ObfuscatedString(new long[]{-1946382223280651075L, 6614423741599645031L}).toString(), new ObfuscatedString(new long[]{-1286555358776302735L, -7421817691199428633L}).toString()).replace(new ObfuscatedString(new long[]{-971589215947932523L, 533480736693216171L}).toString(), new ObfuscatedString(new long[]{-6949921861990180284L, 6440475167844459632L}).toString()).replace(new ObfuscatedString(new long[]{-8009519800431696281L, -800546983161523192L}).toString(), new ObfuscatedString(new long[]{-5755420380225946929L, -2630117943123502115L}).toString()).replace(new ObfuscatedString(new long[]{7339452910619036764L, 8388596625304845769L}).toString(), new ObfuscatedString(new long[]{-2686692652744855058L, -8385012815506588617L}).toString()).replace(new ObfuscatedString(new long[]{7081849132892756550L, -467151254602330859L}).toString(), new ObfuscatedString(new long[]{1514431472108134847L, 6744244368008090239L}).toString()).replace(new ObfuscatedString(new long[]{-7462128346401105966L, -6530890879278144770L}).toString(), new ObfuscatedString(new long[]{6549246332877281976L, -263556197304993789L}).toString()).replace(new ObfuscatedString(new long[]{5149418265869451887L, -5043469635783746988L}).toString(), new ObfuscatedString(new long[]{3751733318986245033L, 3689468929980344349L}).toString()).replace(new ObfuscatedString(new long[]{-7509485018896661605L, -6035862935659766334L}).toString(), new ObfuscatedString(new long[]{2035556556584847140L, 7979068163811117598L}).toString()).replace(new ObfuscatedString(new long[]{-4617250268349690998L, 651644036267348774L}).toString(), new ObfuscatedString(new long[]{-8866950522350991284L, 2205523279829110985L}).toString()).replace(new ObfuscatedString(new long[]{6616608496255463939L, -7551137837525575238L}).toString(), new ObfuscatedString(new long[]{5019639738833253318L, -9170365314568403943L}).toString()).replace(new ObfuscatedString(new long[]{-2788557773664455823L, 745923640418412723L}).toString(), new ObfuscatedString(new long[]{5371306899576009850L, 8658874602594369744L}).toString()).replace(new ObfuscatedString(new long[]{-3070163350290856740L, 460698388823630572L}).toString(), new ObfuscatedString(new long[]{-7630078498459693346L, 4766821304352337909L}).toString()).replace(new ObfuscatedString(new long[]{1018711309011149466L, -8820841696013117281L}).toString(), new ObfuscatedString(new long[]{-7578816854411539483L, 4945582616548875583L}).toString()).replace(new ObfuscatedString(new long[]{-2105064045640757081L, 794576636089943619L}).toString(), new ObfuscatedString(new long[]{6603476480776043279L, -9087569644323865551L}).toString()).replace(new ObfuscatedString(new long[]{1711484252677564397L, -2669405027239914394L}).toString(), new ObfuscatedString(new long[]{-9187768826513895552L, 3497500284365245768L}).toString()).replace(new ObfuscatedString(new long[]{-6722164637101457733L, 3704325424987289023L}).toString(), new ObfuscatedString(new long[]{5107016059903369970L, -7271621130272709687L}).toString()).replace(new ObfuscatedString(new long[]{-7389525004375503009L, 9179170035577741301L}).toString(), new ObfuscatedString(new long[]{3828174403367539623L, 5340742434147602064L}).toString()).replace(new ObfuscatedString(new long[]{8743324898059285455L, -3200948476314439730L}).toString(), new ObfuscatedString(new long[]{7037318397386053164L, -8812961896458790128L}).toString());
                String replace2 = VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{4901484586712074012L, 3554579150023000621L}).toString())).replace(new ObfuscatedString(new long[]{-6834084976406143313L, 3539256469862084370L}).toString(), new ObfuscatedString(new long[]{1960988074243580139L, 5513119196611712572L}).toString()).replace(new ObfuscatedString(new long[]{790160229553944456L, 304175499137303243L}).toString(), new ObfuscatedString(new long[]{5809332857445157170L, -4714463231187932751L}).toString()).replace(new ObfuscatedString(new long[]{1338583297094115288L, -7241127837658746967L}).toString(), new ObfuscatedString(new long[]{-7195162193629918785L, 73149011730224165L}).toString()).replace(new ObfuscatedString(new long[]{-1490483792294782854L, 7250928738368396553L}).toString(), new ObfuscatedString(new long[]{992826674496955288L, 6994559092065533876L}).toString()).replace(new ObfuscatedString(new long[]{-2902493033173279091L, 7740339636762136434L}).toString(), new ObfuscatedString(new long[]{-6229767490537174891L, 1081559654378462325L}).toString()).replace(new ObfuscatedString(new long[]{8549117902216484560L, -9008531910544466004L}).toString(), new ObfuscatedString(new long[]{-8540203044964268378L, 6644431229549050294L}).toString()).replace(new ObfuscatedString(new long[]{-7931887857648923173L, 1948776809811803522L}).toString(), new ObfuscatedString(new long[]{-937906794471562956L, -7999171886599085351L}).toString()).replace(new ObfuscatedString(new long[]{-600838520431217339L, -6988503984126768027L}).toString(), new ObfuscatedString(new long[]{-9056524999664257207L, 8615458277096630348L}).toString()).replace(new ObfuscatedString(new long[]{-5295721156312094125L, 6976440401355952620L}).toString(), new ObfuscatedString(new long[]{2681440092938975611L, 506166903096479995L}).toString()).replace(new ObfuscatedString(new long[]{-6609390156548784230L, -5008921247037915363L}).toString(), new ObfuscatedString(new long[]{3681362416956737170L, 7030871297788258998L}).toString()).replace(new ObfuscatedString(new long[]{4734477400735213609L, 1763906707038397334L}).toString(), new ObfuscatedString(new long[]{-813545013131519274L, 4746254888900936142L}).toString()).replace(new ObfuscatedString(new long[]{-2084725072279747089L, 1275127903166116961L}).toString(), new ObfuscatedString(new long[]{164091730077483286L, 4489569102055384598L}).toString()).replace(new ObfuscatedString(new long[]{994251827103648792L, -3889425976519427027L}).toString(), new ObfuscatedString(new long[]{378116527086097331L, 543294392055149278L}).toString()).replace(new ObfuscatedString(new long[]{-1377715223765769552L, 2810497444972855781L}).toString(), new ObfuscatedString(new long[]{8329337320063492527L, -4241601865252813809L}).toString()).replace(new ObfuscatedString(new long[]{-6832025213921010096L, 7993383611167902160L}).toString(), new ObfuscatedString(new long[]{7660218807257183861L, 1984493756800433538L}).toString()).replace(new ObfuscatedString(new long[]{-2940656528091354533L, -1947905698507225130L}).toString(), new ObfuscatedString(new long[]{-1004334386819616331L, 490793517869837054L}).toString()).replace(new ObfuscatedString(new long[]{1561938576866743599L, -7443049120425906791L}).toString(), new ObfuscatedString(new long[]{4912499929851117525L, -3037068492637059381L}).toString()).replace(new ObfuscatedString(new long[]{7680200390382546775L, -809897837759837661L}).toString(), new ObfuscatedString(new long[]{4566067298650130002L, -3331872153927507308L}).toString()).replace(new ObfuscatedString(new long[]{6285117374861777744L, -8114876388228276336L}).toString(), new ObfuscatedString(new long[]{100367258712060377L, 5724440788323476807L}).toString()).replace(new ObfuscatedString(new long[]{6798715576188210478L, 357528898152342494L}).toString(), new ObfuscatedString(new long[]{-2461387918718089784L, 4504512199655430376L}).toString()).replace(new ObfuscatedString(new long[]{6802414505597663832L, -6301875704759486650L}).toString(), new ObfuscatedString(new long[]{7950359098416433187L, -5033917061063291991L}).toString()).replace(new ObfuscatedString(new long[]{655037490583312833L, -2675118367041898702L}).toString(), new ObfuscatedString(new long[]{6495240291317123544L, 8805767216695236472L}).toString()).replace(new ObfuscatedString(new long[]{-3860350024328393740L, 1277734616399548680L}).toString(), new ObfuscatedString(new long[]{6585873090292267089L, -1810267409314573137L}).toString()).replace(new ObfuscatedString(new long[]{-321219519999893399L, 5664992024382198063L}).toString(), new ObfuscatedString(new long[]{-5195135070975713088L, -514365204965016804L}).toString()).replace(new ObfuscatedString(new long[]{-2670668809031886596L, -3850879915834820306L}).toString(), new ObfuscatedString(new long[]{9221210856814734103L, 6058430731592570399L}).toString()).replace(new ObfuscatedString(new long[]{8249452749927738269L, -6324014087055122690L}).toString(), new ObfuscatedString(new long[]{8813888588877927808L, -5363194560705529595L}).toString());
                String replace3 = VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{-4405988644045291438L, 884674859042037731L, -6649083786497336174L}).toString())).replace(new ObfuscatedString(new long[]{8528803780713907320L, 3045528929212603020L}).toString(), new ObfuscatedString(new long[]{8494591729299321087L, -8426673014467585107L}).toString()).replace(new ObfuscatedString(new long[]{-2781867368175787340L, 4720638606906511114L}).toString(), new ObfuscatedString(new long[]{-8025216800104907720L, -6565071889311636583L}).toString()).replace(new ObfuscatedString(new long[]{-7637483809865350848L, -7362677393091791067L}).toString(), new ObfuscatedString(new long[]{2972622477923433019L, 4415147090192380529L}).toString()).replace(new ObfuscatedString(new long[]{7988187451275109517L, -2382413429404815501L}).toString(), new ObfuscatedString(new long[]{5357573578369463675L, -3204399014175934898L}).toString()).replace(new ObfuscatedString(new long[]{-5460652263564792927L, 6899387459719327855L}).toString(), new ObfuscatedString(new long[]{-7671574908281586083L, 6537693725103092928L}).toString()).replace(new ObfuscatedString(new long[]{-2143995540387742358L, -4236519797266228141L}).toString(), new ObfuscatedString(new long[]{-8734396743690976855L, -5841387958664702932L}).toString()).replace(new ObfuscatedString(new long[]{-3680509501239107642L, -8293454737333318764L}).toString(), new ObfuscatedString(new long[]{-4994400744096314008L, 8976426827703403920L}).toString()).replace(new ObfuscatedString(new long[]{-6391800636244472594L, -9052910547641253467L}).toString(), new ObfuscatedString(new long[]{-2110900116502747512L, 1419066675168611344L}).toString()).replace(new ObfuscatedString(new long[]{-8431855102163592351L, 1217105674968240145L}).toString(), new ObfuscatedString(new long[]{5476994992797376681L, 3960262303150557742L}).toString()).replace(new ObfuscatedString(new long[]{-3560969234818582901L, -5886360938232096818L}).toString(), new ObfuscatedString(new long[]{-2912478269304470633L, 7489733312527504019L}).toString()).replace(new ObfuscatedString(new long[]{1684565878452104841L, 519060007968631570L}).toString(), new ObfuscatedString(new long[]{-2447838665817478477L, -1347150081568336868L}).toString()).replace(new ObfuscatedString(new long[]{-3396453248734443127L, 3875846189964574101L}).toString(), new ObfuscatedString(new long[]{-4743958938566083301L, -4805720442517350898L}).toString()).replace(new ObfuscatedString(new long[]{-2214640403942708115L, -2921147041186480679L}).toString(), new ObfuscatedString(new long[]{7751287154584955065L, 946993323421120096L}).toString()).replace(new ObfuscatedString(new long[]{1325476090301280806L, 6091666844464642700L}).toString(), new ObfuscatedString(new long[]{6646791651409914153L, -2300452213602320971L}).toString()).replace(new ObfuscatedString(new long[]{-2681248734816140124L, -658554486948269965L}).toString(), new ObfuscatedString(new long[]{-9206790307402037914L, 3954251576780823605L}).toString()).replace(new ObfuscatedString(new long[]{6115903382783556746L, -1972688921808624001L}).toString(), new ObfuscatedString(new long[]{461507199261210696L, -6499932221226044748L}).toString()).replace(new ObfuscatedString(new long[]{4025640249580128912L, -615352640102748659L}).toString(), new ObfuscatedString(new long[]{-7477467722711722927L, 909105464847606975L}).toString()).replace(new ObfuscatedString(new long[]{3860664269917638661L, -4671760983347508041L}).toString(), new ObfuscatedString(new long[]{-5417122386181140947L, -3092688867279266820L}).toString()).replace(new ObfuscatedString(new long[]{-7626838101922018443L, -1930428326758007382L}).toString(), new ObfuscatedString(new long[]{179093316693290729L, -3428779104023017604L}).toString()).replace(new ObfuscatedString(new long[]{7154190689334549403L, 8950139944087455786L}).toString(), new ObfuscatedString(new long[]{-6143686409102921673L, 5977919298339418223L}).toString()).replace(new ObfuscatedString(new long[]{674925390332749516L, 1257692026711932209L}).toString(), new ObfuscatedString(new long[]{-4579932957440706237L, 9035811120488857349L}).toString()).replace(new ObfuscatedString(new long[]{2508710446227652297L, 7901000682226674378L}).toString(), new ObfuscatedString(new long[]{-7501594687747504719L, 1072162696146725905L}).toString()).replace(new ObfuscatedString(new long[]{255423983175985224L, -253106133043468349L}).toString(), new ObfuscatedString(new long[]{-1314515746080605866L, 5509693136853363471L}).toString()).replace(new ObfuscatedString(new long[]{-2258390367603344762L, -361938371592865989L}).toString(), new ObfuscatedString(new long[]{2011685380791087143L, -5530978502527248432L}).toString()).replace(new ObfuscatedString(new long[]{-1675475948046089748L, -1341747709117711256L}).toString(), new ObfuscatedString(new long[]{-5995568010895815109L, -5002107377638465793L}).toString()).replace(new ObfuscatedString(new long[]{-6869677090677517178L, 7059325179989411830L}).toString(), new ObfuscatedString(new long[]{-4775448355278967329L, 7670378316507702044L}).toString());
                configUtil.setSSHHost(replace3);
                String replace4 = VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{-3809235201746436621L, -3373966249891015447L, -1152250388506170184L, -3085951720752276654L}).toString())).replace(new ObfuscatedString(new long[]{8801036843470610137L, 5121646816705954013L}).toString(), new ObfuscatedString(new long[]{959527769561202249L, 5012858342709924051L}).toString()).replace(new ObfuscatedString(new long[]{6809538689685550134L, -3361879464990857420L}).toString(), new ObfuscatedString(new long[]{-8925956623690092291L, -6179149708970325191L}).toString()).replace(new ObfuscatedString(new long[]{2559497394907715920L, 9028363460646430110L}).toString(), new ObfuscatedString(new long[]{786476469006440604L, 4837423908474338303L}).toString()).replace(new ObfuscatedString(new long[]{-1292193907520708747L, -2853774663971087510L}).toString(), new ObfuscatedString(new long[]{1311787379687004795L, -3855308894665757010L}).toString()).replace(new ObfuscatedString(new long[]{1968059696376122939L, 4281016602854159180L}).toString(), new ObfuscatedString(new long[]{7120549727819283136L, 5044937430493410034L}).toString()).replace(new ObfuscatedString(new long[]{2538733945590476032L, 2950341061838588878L}).toString(), new ObfuscatedString(new long[]{1107015414457692941L, -3153479038335785065L}).toString()).replace(new ObfuscatedString(new long[]{474970179128138429L, -6039249034198333228L}).toString(), new ObfuscatedString(new long[]{5666391577848624291L, 8631969241229031082L}).toString()).replace(new ObfuscatedString(new long[]{4661347584540897736L, -2932489177163629866L}).toString(), new ObfuscatedString(new long[]{7822012428241998716L, -7012427346386980593L}).toString()).replace(new ObfuscatedString(new long[]{6489363395083091008L, -5751778736299029218L}).toString(), new ObfuscatedString(new long[]{-2132285519694091612L, 6147409542459152020L}).toString()).replace(new ObfuscatedString(new long[]{-5884388538048660512L, 6494734157247449924L}).toString(), new ObfuscatedString(new long[]{5772573500697444795L, 4377133168282561817L}).toString()).replace(new ObfuscatedString(new long[]{982971248108394399L, 1862801684988269249L}).toString(), new ObfuscatedString(new long[]{-1047650009032750828L, -3785471942755283448L}).toString()).replace(new ObfuscatedString(new long[]{2480979347892874841L, -6172151734100293175L}).toString(), new ObfuscatedString(new long[]{450651589717784115L, 1190458565937077481L}).toString()).replace(new ObfuscatedString(new long[]{5053322197972357227L, 5830976754918047299L}).toString(), new ObfuscatedString(new long[]{3239914905716751548L, -1486120247698800783L}).toString()).replace(new ObfuscatedString(new long[]{-7636142359391935281L, -7408188060604132935L}).toString(), new ObfuscatedString(new long[]{3987741251725464417L, -5445776700472656580L}).toString()).replace(new ObfuscatedString(new long[]{-5300159052289360355L, -7695171691720925346L}).toString(), new ObfuscatedString(new long[]{-8422980938024588242L, 7606347410432038964L}).toString()).replace(new ObfuscatedString(new long[]{9018253806204439549L, -3137828880378561868L}).toString(), new ObfuscatedString(new long[]{-2825563233980162526L, -5181306580139001301L}).toString()).replace(new ObfuscatedString(new long[]{4425392676545714819L, 7025204121726107939L}).toString(), new ObfuscatedString(new long[]{5982535477436813316L, 8119956259940088309L}).toString()).replace(new ObfuscatedString(new long[]{3891799352862343257L, -2313822552403135287L}).toString(), new ObfuscatedString(new long[]{7343232677954202031L, -8433076253446867004L}).toString()).replace(new ObfuscatedString(new long[]{-3853976199308869856L, 7944468961660482657L}).toString(), new ObfuscatedString(new long[]{-8201042133416916483L, 18987490112705272L}).toString()).replace(new ObfuscatedString(new long[]{-6509652845650279272L, 6123963780170907761L}).toString(), new ObfuscatedString(new long[]{-2315560045590114131L, 4317035755549604067L}).toString()).replace(new ObfuscatedString(new long[]{-6592017837646376035L, -6544734358020098244L}).toString(), new ObfuscatedString(new long[]{5920337636514931510L, 6550292246191444602L}).toString()).replace(new ObfuscatedString(new long[]{-3177255351467418914L, 3211722325912279668L}).toString(), new ObfuscatedString(new long[]{-7393084720795680828L, -824296025118092141L}).toString()).replace(new ObfuscatedString(new long[]{-9061260149973628850L, -7796162532317574876L}).toString(), new ObfuscatedString(new long[]{-7243791157729251364L, -6615795713199717198L}).toString()).replace(new ObfuscatedString(new long[]{8521940073212284950L, 5379815902845110279L}).toString(), new ObfuscatedString(new long[]{3268222709039568378L, 3890727654103428922L}).toString()).replace(new ObfuscatedString(new long[]{8685612879277263329L, -8267809339065805273L}).toString(), new ObfuscatedString(new long[]{-2170082908764918984L, -6178879373130200194L}).toString()).replace(new ObfuscatedString(new long[]{-416046797619763212L, 3450375211629746409L}).toString(), new ObfuscatedString(new long[]{-8182948662525789249L, -2579578469787690800L}).toString());
                configUtil.setSSHHost(replace4);
                String replace5 = VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{2974686950255758500L, 7278969377648518649L, -2987494505748743484L}).toString())).replace(new ObfuscatedString(new long[]{8616978245509433522L, -5293267576091597663L}).toString(), new ObfuscatedString(new long[]{-2380428590462549897L, 6402633634338931656L}).toString()).replace(new ObfuscatedString(new long[]{-6919864604990763324L, -3311690730659993940L}).toString(), new ObfuscatedString(new long[]{-6715313270865635301L, 909221524602586628L}).toString()).replace(new ObfuscatedString(new long[]{8250429996728170896L, 3025865923299120413L}).toString(), new ObfuscatedString(new long[]{5081720235492555960L, -1894285482316350786L}).toString()).replace(new ObfuscatedString(new long[]{2217615680664509927L, -1431363732331111905L}).toString(), new ObfuscatedString(new long[]{-6796617712019981761L, 2744079392365249977L}).toString()).replace(new ObfuscatedString(new long[]{1373307697101768012L, -7398988348281311909L}).toString(), new ObfuscatedString(new long[]{1066229414095170973L, -3785264425331169154L}).toString()).replace(new ObfuscatedString(new long[]{2864001501200988921L, 319401457542365203L}).toString(), new ObfuscatedString(new long[]{-3718658231145007105L, -4360307216652881030L}).toString()).replace(new ObfuscatedString(new long[]{8340821706529696479L, 4865080285241624924L}).toString(), new ObfuscatedString(new long[]{466319754946599031L, 664195246794620809L}).toString()).replace(new ObfuscatedString(new long[]{-737722774402097509L, 270657153036229768L}).toString(), new ObfuscatedString(new long[]{-2601921779511569999L, 721711449688111599L}).toString()).replace(new ObfuscatedString(new long[]{-3487418581567632363L, 8455010501974674869L}).toString(), new ObfuscatedString(new long[]{-161956189176057581L, 540758432806153976L}).toString()).replace(new ObfuscatedString(new long[]{-8378851855940973355L, -5993676833743169532L}).toString(), new ObfuscatedString(new long[]{4403898287273915888L, -8937601135291628623L}).toString()).replace(new ObfuscatedString(new long[]{-3034805689345528169L, -8012881374608504407L}).toString(), new ObfuscatedString(new long[]{-7278908521431713266L, -740620023901921221L}).toString()).replace(new ObfuscatedString(new long[]{-896426181938050515L, -8150754090918862899L}).toString(), new ObfuscatedString(new long[]{658374660568660321L, -11116204432799559L}).toString()).replace(new ObfuscatedString(new long[]{8111461842962294628L, 8031983823419822337L}).toString(), new ObfuscatedString(new long[]{5778749798433159919L, 5342131720206696138L}).toString()).replace(new ObfuscatedString(new long[]{-3389805187800746450L, 3235298842794314526L}).toString(), new ObfuscatedString(new long[]{6357634167499005647L, -8810516480509895004L}).toString()).replace(new ObfuscatedString(new long[]{-5318006571390467433L, -2227505924361821423L}).toString(), new ObfuscatedString(new long[]{9006159718390576982L, 7281375523740635859L}).toString()).replace(new ObfuscatedString(new long[]{1726731579087655980L, 7552298516868188542L}).toString(), new ObfuscatedString(new long[]{937251512403153485L, -7082330178307327046L}).toString()).replace(new ObfuscatedString(new long[]{2368949565723279558L, 7510095188130669410L}).toString(), new ObfuscatedString(new long[]{-4033333169162319270L, -2260870877222670800L}).toString()).replace(new ObfuscatedString(new long[]{-1096964936959189688L, -7154903800744231847L}).toString(), new ObfuscatedString(new long[]{-8021464868315303462L, -5479483881608149529L}).toString()).replace(new ObfuscatedString(new long[]{1205305781644211315L, 634163039932964118L}).toString(), new ObfuscatedString(new long[]{6213328040431783056L, -8772195272418234176L}).toString()).replace(new ObfuscatedString(new long[]{-5542805038060467134L, -9198568161955268410L}).toString(), new ObfuscatedString(new long[]{-8957409178370033473L, 2705878879532064293L}).toString()).replace(new ObfuscatedString(new long[]{3775992487485597136L, 4476852107968012017L}).toString(), new ObfuscatedString(new long[]{2414347159874692926L, -5514057675412375409L}).toString()).replace(new ObfuscatedString(new long[]{8092832602448608667L, 7886569608279997532L}).toString(), new ObfuscatedString(new long[]{6423712362036738311L, 6867461804667551871L}).toString()).replace(new ObfuscatedString(new long[]{4419426900279031573L, 2291888696375980027L}).toString(), new ObfuscatedString(new long[]{8884918585201940566L, 4621755052968089789L}).toString()).replace(new ObfuscatedString(new long[]{-7673267119551884462L, 64673829871617180L}).toString(), new ObfuscatedString(new long[]{4672912391753797540L, 6133885563799456382L}).toString()).replace(new ObfuscatedString(new long[]{1767771428253761118L, 1439180475456202175L}).toString(), new ObfuscatedString(new long[]{5618346003624387236L, 7302542100197190323L}).toString()).replace(new ObfuscatedString(new long[]{-7975103230132279466L, -8248762569082317763L}).toString(), new ObfuscatedString(new long[]{-6233372263867613856L, 694803020017134888L}).toString());
                configUtil.setSSHHost(replace5);
                configUtil.setSSLPort(jSONObject.getString(new ObfuscatedString(new long[]{8730667175930509017L, -4216923341372193991L, -4957095960868433358L}).toString()));
                configUtil.setSSHPort(jSONObject.getString(new ObfuscatedString(new long[]{-6486788764581367108L, -6166744111553607372L, -3330387641456602293L}).toString()));
                if (jSONObject.has(new ObfuscatedString(new long[]{5833839336841283622L, 5000618581660956137L}).toString())) {
                    configUtil.setCategory(jSONObject.getString(new ObfuscatedString(new long[]{-479953693166977210L, 3360045785555247312L}).toString()));
                }
                configUtil.setFreeServerUsername(VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{3381202333014830798L, 2338518733413710327L, 7848259490553999181L}).toString())).replace(new ObfuscatedString(new long[]{7734177003854043190L, -4929531101483292387L}).toString(), new ObfuscatedString(new long[]{4198237155235994732L, 3064063060270468677L}).toString()).replace(new ObfuscatedString(new long[]{-157093274734628661L, 8401379463251660486L}).toString(), new ObfuscatedString(new long[]{-5880390084736638912L, -8740664756213670551L}).toString()).replace(new ObfuscatedString(new long[]{6845253718439233271L, 8449827996203163545L}).toString(), new ObfuscatedString(new long[]{5839710854271193698L, 7614193346214276337L}).toString()).replace(new ObfuscatedString(new long[]{7005329340241679885L, 7726640368204210137L}).toString(), new ObfuscatedString(new long[]{1467529803940728024L, 8109831666838753643L}).toString()).replace(new ObfuscatedString(new long[]{4092039249176045469L, 1470873551278469583L}).toString(), new ObfuscatedString(new long[]{-8948795790552715708L, 7164082803631922544L}).toString()).replace(new ObfuscatedString(new long[]{-8423474648396679374L, 6024838057890413290L}).toString(), new ObfuscatedString(new long[]{84459435247405983L, 4584516268767391734L}).toString()).replace(new ObfuscatedString(new long[]{486014092311867751L, -8421906353619872474L}).toString(), new ObfuscatedString(new long[]{4714258658691909705L, 3210532380489534675L}).toString()).replace(new ObfuscatedString(new long[]{6951049428316812938L, -404847558505078526L}).toString(), new ObfuscatedString(new long[]{6646317962044971246L, -8896348591635571304L}).toString()).replace(new ObfuscatedString(new long[]{5327753285846221041L, -3664829607874469912L}).toString(), new ObfuscatedString(new long[]{1077561566812358398L, -5758780769415194894L}).toString()).replace(new ObfuscatedString(new long[]{-7406109727441860958L, -5070441760853945093L}).toString(), new ObfuscatedString(new long[]{4220028282559347057L, -3665694325847078855L}).toString()).replace(new ObfuscatedString(new long[]{276370663849828689L, 8175613980456124937L}).toString(), new ObfuscatedString(new long[]{-1807118542213188655L, -6674544628006158699L}).toString()).replace(new ObfuscatedString(new long[]{7101820986300004342L, -7155919888372305669L}).toString(), new ObfuscatedString(new long[]{-7736014180692951439L, 934885435890130184L}).toString()).replace(new ObfuscatedString(new long[]{-1739933861137253414L, -3814478902126763493L}).toString(), new ObfuscatedString(new long[]{6925940302797610448L, 7387096764281497221L}).toString()).replace(new ObfuscatedString(new long[]{-9024565153755062260L, -3265213721151492242L}).toString(), new ObfuscatedString(new long[]{20064998943385954L, -4913129206970555393L}).toString()).replace(new ObfuscatedString(new long[]{486024353494451020L, 8659369334937818505L}).toString(), new ObfuscatedString(new long[]{4520681688351783329L, -2347758701766685360L}).toString()).replace(new ObfuscatedString(new long[]{-5003361935249720127L, -366576303883827386L}).toString(), new ObfuscatedString(new long[]{-3073037223261649332L, -5959604130896742287L}).toString()).replace(new ObfuscatedString(new long[]{-1287255254105231317L, -1636582551519661577L}).toString(), new ObfuscatedString(new long[]{-8554085083255400357L, 6986541508652278463L}).toString()).replace(new ObfuscatedString(new long[]{5293588994956551727L, 3395348902222170058L}).toString(), new ObfuscatedString(new long[]{-552025694885504274L, 7714880150605242836L}).toString()).replace(new ObfuscatedString(new long[]{-5784329930511808655L, 4879412109512824118L}).toString(), new ObfuscatedString(new long[]{7374758670323336779L, -7793245004680553589L}).toString()).replace(new ObfuscatedString(new long[]{2876901964378709090L, -853747966970887076L}).toString(), new ObfuscatedString(new long[]{3418796453091273077L, -1151219466491155161L}).toString()).replace(new ObfuscatedString(new long[]{-3329045964825886681L, -2357608933033725185L}).toString(), new ObfuscatedString(new long[]{5920543926795280238L, 7075912912001223700L}).toString()).replace(new ObfuscatedString(new long[]{8448249899862324504L, -1985228082041321588L}).toString(), new ObfuscatedString(new long[]{7589350253108595524L, 2856741669669592481L}).toString()).replace(new ObfuscatedString(new long[]{7791435651315401395L, 3555590994191242005L}).toString(), new ObfuscatedString(new long[]{694398430096404714L, -4124412304629823750L}).toString()).replace(new ObfuscatedString(new long[]{3564967334177718901L, 3731645913563028045L}).toString(), new ObfuscatedString(new long[]{-1091722760250454914L, 3232227186533528640L}).toString()).replace(new ObfuscatedString(new long[]{-2039029767219845971L, -3815742840455455184L}).toString(), new ObfuscatedString(new long[]{2454749836019721404L, -7381351846988489587L}).toString()).replace(new ObfuscatedString(new long[]{4892249898390633145L, 5493770047398428316L}).toString(), new ObfuscatedString(new long[]{-8723355459790564480L, 1305147356523357426L}).toString()));
                configUtil.setFreeServerPassword(VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{1702736419198790881L, 5549376449877218070L, -7136612482557368694L}).toString())).replace(new ObfuscatedString(new long[]{-7876826873271866633L, 7726113355772979697L}).toString(), new ObfuscatedString(new long[]{-839898300520734622L, 8075825155533705584L}).toString()).replace(new ObfuscatedString(new long[]{5721860894359158585L, -8661594517414459849L}).toString(), new ObfuscatedString(new long[]{-4790639585484474126L, 8062850808837709423L}).toString()).replace(new ObfuscatedString(new long[]{2674591326283237138L, -66627365941382982L}).toString(), new ObfuscatedString(new long[]{-4140890996612989542L, -2074301909167950358L}).toString()).replace(new ObfuscatedString(new long[]{-6062038105832031430L, 1983196489156029993L}).toString(), new ObfuscatedString(new long[]{-597768443236397327L, -3026301763200524776L}).toString()).replace(new ObfuscatedString(new long[]{8861894493880647776L, 9142417622477367192L}).toString(), new ObfuscatedString(new long[]{-8410186641087280444L, 1341081648449191782L}).toString()).replace(new ObfuscatedString(new long[]{8103818182415607027L, -5985588958893240740L}).toString(), new ObfuscatedString(new long[]{4074962369884478405L, 6047222647193043698L}).toString()).replace(new ObfuscatedString(new long[]{-7826719893148076385L, -1759145107766888971L}).toString(), new ObfuscatedString(new long[]{3200230126368983189L, 2770214418965096732L}).toString()).replace(new ObfuscatedString(new long[]{-5711003687633173875L, 6145001564259821235L}).toString(), new ObfuscatedString(new long[]{-2823495729771428428L, -4311529591766426105L}).toString()).replace(new ObfuscatedString(new long[]{-6186785781117075702L, 8127052544238988214L}).toString(), new ObfuscatedString(new long[]{5578098845659335855L, -3051732605326766558L}).toString()).replace(new ObfuscatedString(new long[]{-552039167452833553L, 7618695993494050263L}).toString(), new ObfuscatedString(new long[]{7318516729831059987L, -7657284210574440088L}).toString()).replace(new ObfuscatedString(new long[]{-1266451345179396934L, 4893060398035906723L}).toString(), new ObfuscatedString(new long[]{6506508713407984775L, 2475387869886349410L}).toString()).replace(new ObfuscatedString(new long[]{4384138278833601397L, 611207122225713239L}).toString(), new ObfuscatedString(new long[]{-3495930919364041569L, 225139785953370991L}).toString()).replace(new ObfuscatedString(new long[]{-6484190359451911913L, -8499074213053685384L}).toString(), new ObfuscatedString(new long[]{-5290376168362340835L, 1241458702323763500L}).toString()).replace(new ObfuscatedString(new long[]{-6583318425715433651L, -34528736333765757L}).toString(), new ObfuscatedString(new long[]{7408182391983071900L, 7965996434320993577L}).toString()).replace(new ObfuscatedString(new long[]{8909937836383497402L, -633770737147370162L}).toString(), new ObfuscatedString(new long[]{-7622834529397393418L, 7988844639448101503L}).toString()).replace(new ObfuscatedString(new long[]{81317779115693528L, -5207318707649248048L}).toString(), new ObfuscatedString(new long[]{5328132221754464631L, -601509192497824152L}).toString()).replace(new ObfuscatedString(new long[]{5130142347032375726L, 1905254154173396940L}).toString(), new ObfuscatedString(new long[]{-2248452245316180163L, 7746319475724801505L}).toString()).replace(new ObfuscatedString(new long[]{-6703343942531516361L, -7858307837951389054L}).toString(), new ObfuscatedString(new long[]{2423686689474012948L, -6012929153331242127L}).toString()).replace(new ObfuscatedString(new long[]{-7949519421565262772L, -8643609977371704668L}).toString(), new ObfuscatedString(new long[]{-3886184258145035794L, 641811109533487658L}).toString()).replace(new ObfuscatedString(new long[]{5139778753442119035L, 947497167402441986L}).toString(), new ObfuscatedString(new long[]{-5948493691619533835L, 962370128794353800L}).toString()).replace(new ObfuscatedString(new long[]{3071815271959323070L, -8930904218709635411L}).toString(), new ObfuscatedString(new long[]{2831833645081790390L, -1315527965011391314L}).toString()).replace(new ObfuscatedString(new long[]{8040399036242347716L, 2582721966432891197L}).toString(), new ObfuscatedString(new long[]{3945791376053605140L, -1151798106997079523L}).toString()).replace(new ObfuscatedString(new long[]{-2725745578905539142L, -4016341721087561606L}).toString(), new ObfuscatedString(new long[]{-6132345624134451141L, -8959814430136967237L}).toString()).replace(new ObfuscatedString(new long[]{-5334648828467109760L, 9026534535527556307L}).toString(), new ObfuscatedString(new long[]{-6961824375434334776L, -5190182750142813897L}).toString()).replace(new ObfuscatedString(new long[]{5561730587261846001L, 980852077655199591L}).toString(), new ObfuscatedString(new long[]{5490699368206230293L, 1225037871517517121L}).toString()).replace(new ObfuscatedString(new long[]{-5772325983292253891L, -6548247590974666931L}).toString(), new ObfuscatedString(new long[]{109407184436623731L, -4171706391349608790L}).toString()));
                if (jSONObject.has(new ObfuscatedString(new long[]{-2407181414969280020L, 1081357210604177720L, -7275882732437150330L}).toString())) {
                    String replace6 = VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{-7043270002640211314L, -8493211078581940774L, 8792014206007685201L}).toString())).replace(new ObfuscatedString(new long[]{539875615438368773L, -5346493409496407507L}).toString(), new ObfuscatedString(new long[]{-3296704482762100426L, -225948493726624886L}).toString()).replace(new ObfuscatedString(new long[]{1759808228307146829L, -4947953782310819611L}).toString(), new ObfuscatedString(new long[]{-4374518594413627689L, 3422710368090506748L}).toString()).replace(new ObfuscatedString(new long[]{-929992410119643366L, -7712545232953923299L}).toString(), new ObfuscatedString(new long[]{-9105114890429824353L, -4415470629068410544L}).toString()).replace(new ObfuscatedString(new long[]{-8222995667511791221L, -1743107656448792944L}).toString(), new ObfuscatedString(new long[]{-7675258333858361605L, 670107708103490111L}).toString()).replace(new ObfuscatedString(new long[]{-6356936792010175403L, -5631467880115598161L}).toString(), new ObfuscatedString(new long[]{-5545641038472184070L, -873968749654981926L}).toString()).replace(new ObfuscatedString(new long[]{-188567611002036578L, 3599508688268680303L}).toString(), new ObfuscatedString(new long[]{-1432032200562783556L, -1273562574042782382L}).toString()).replace(new ObfuscatedString(new long[]{-2477412830788156258L, 951038183341349844L}).toString(), new ObfuscatedString(new long[]{-3035312336173636462L, -6400857165692433272L}).toString()).replace(new ObfuscatedString(new long[]{8023420277155504942L, 3528435098281262721L}).toString(), new ObfuscatedString(new long[]{-5865526308750433131L, 712560019910411384L}).toString()).replace(new ObfuscatedString(new long[]{-4941889043705686575L, 5035037855533892497L}).toString(), new ObfuscatedString(new long[]{-2188741269783830074L, 5993123953377670453L}).toString()).replace(new ObfuscatedString(new long[]{-9130944673052559177L, 1149868110975134178L}).toString(), new ObfuscatedString(new long[]{2664041316768844903L, -1180555332012359103L}).toString()).replace(new ObfuscatedString(new long[]{-6959913842469128225L, -4691697284691073630L}).toString(), new ObfuscatedString(new long[]{-5877995394759442950L, 3389714799013184075L}).toString()).replace(new ObfuscatedString(new long[]{-2839115674888483157L, 1200794791553102662L}).toString(), new ObfuscatedString(new long[]{-4757863188960511358L, -4274557405360860390L}).toString()).replace(new ObfuscatedString(new long[]{3068638178683946711L, -5633755213293520085L}).toString(), new ObfuscatedString(new long[]{-8357684078531358795L, 5349142704737530350L}).toString()).replace(new ObfuscatedString(new long[]{2757371386486187212L, -2345213711117993887L}).toString(), new ObfuscatedString(new long[]{-5862363944293500357L, -6015390613945427057L}).toString()).replace(new ObfuscatedString(new long[]{-8470850054571082299L, 1440368132363671461L}).toString(), new ObfuscatedString(new long[]{-421928557460633557L, 3022407811864120306L}).toString()).replace(new ObfuscatedString(new long[]{7791989419005664697L, -6708937072163998999L}).toString(), new ObfuscatedString(new long[]{8262787855733806353L, -5877500809820856797L}).toString()).replace(new ObfuscatedString(new long[]{1173111094533295974L, 8363975626395776745L}).toString(), new ObfuscatedString(new long[]{-615222827639894500L, -6983531680775549190L}).toString()).replace(new ObfuscatedString(new long[]{4437728335949378402L, -9004635019425427339L}).toString(), new ObfuscatedString(new long[]{3913793128612747098L, 3834535065613754445L}).toString()).replace(new ObfuscatedString(new long[]{6051228518690106110L, -7503608306124443043L}).toString(), new ObfuscatedString(new long[]{-8122537189168679596L, 7869934252468816616L}).toString()).replace(new ObfuscatedString(new long[]{-505632716260328102L, 1789237600847150709L}).toString(), new ObfuscatedString(new long[]{959415506667876367L, 3128554799375389575L}).toString()).replace(new ObfuscatedString(new long[]{7511044120310201802L, 2693093498113018829L}).toString(), new ObfuscatedString(new long[]{8693625603745191261L, 763284910071420485L}).toString()).replace(new ObfuscatedString(new long[]{-2231489047477512909L, -8815445612263892894L}).toString(), new ObfuscatedString(new long[]{4933728023710139366L, -7865792978832817459L}).toString()).replace(new ObfuscatedString(new long[]{6719412412179495789L, -6729363749742975776L}).toString(), new ObfuscatedString(new long[]{1978803329937686087L, 8091260088165398895L}).toString()).replace(new ObfuscatedString(new long[]{6378850567885996878L, 3518398560274503740L}).toString(), new ObfuscatedString(new long[]{-5963451982418376195L, 6972792852254697139L}).toString()).replace(new ObfuscatedString(new long[]{-1747506638288651710L, 217385544783960782L}).toString(), new ObfuscatedString(new long[]{-8811661219374018407L, 4532961506886610597L}).toString()).replace(new ObfuscatedString(new long[]{7584326179080904839L, 8784519897185055559L}).toString(), new ObfuscatedString(new long[]{2832095092853024844L, 597811647090181664L}).toString());
                    if (replace6.equals(new ObfuscatedString(new long[]{-6724972198190846322L, -6278914497260660670L, 1327289170512939337L}).toString())) {
                        replace6 = new ObfuscatedString(new long[]{-3567604645499048042L, -3586066544675149703L, 4582248246230320636L}).toString();
                    }
                    configUtil.setFreeServerPassword(replace6);
                }
                if (jSONObject.has(new ObfuscatedString(new long[]{-2088661061196267361L, 2789399777573379930L, 3854570451088333125L}).toString())) {
                    configUtil.setAutoLogin(jSONObject.getBoolean(new ObfuscatedString(new long[]{3772405150218625557L, 4321768141547269557L, -8006043615624363631L}).toString()));
                }
                if (configUtil.getConnectionType().equals(new ObfuscatedString(new long[]{1686309258535856350L, 6274557302535670597L}).toString()) && (prepare = VpnService.prepare(this)) != null) {
                    TkLogStatus.updateStateString(new ObfuscatedString(new long[]{6122160876480579524L, -7846358416167805398L, -1559596915479958641L, 633159945087268531L}).toString(), new ObfuscatedString(new long[]{2806594895553593141L}).toString());
                    try {
                        startActivityForResult(prepare, 65);
                    } catch (ActivityNotFoundException unused) {
                        TkLogStatus.logError(R.string.no_vpn_support_image);
                    }
                }
                if (i2 == 9) {
                    if (jSONObject.has(new ObfuscatedString(new long[]{2194709735825596270L, 3160415355137269368L}).toString())) {
                        configUtil.setCustomDNSPRIMARY(jSONObject.getString(new ObfuscatedString(new long[]{3389211266611584011L, 3385652388427243170L}).toString()));
                    }
                    if (jSONObject.has(new ObfuscatedString(new long[]{606691163248994987L, 1020191396616156124L}).toString())) {
                        configUtil.setCustomDNSSECONDARY(jSONObject.getString(new ObfuscatedString(new long[]{-6460467254832145691L, -8531497325387604133L}).toString()));
                    }
                    configUtil.setConnectionType(new ObfuscatedString(new long[]{5181723061112926545L, 8916554839814388623L, 6370480815470093936L}).toString());
                    setSelectedNetwork(false);
                    configUtil.setUdp(false);
                    launchVPN();
                    enabledWidgets(false);
                }
                if (i2 == 0 || i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5 || i2 == 6 || i2 == 7) {
                    enabledWidgets(false);
                }
                configUtil.setTunnelType(i2);
                if (this.mConfig.getSSH().booleanValue()) {
                    if (jSONObject.has(new ObfuscatedString(new long[]{-805155672553521267L, -6746343065989358875L}).toString())) {
                        configUtil.setCustomDNSPRIMARY(jSONObject.getString(new ObfuscatedString(new long[]{-7060440829220476458L, -3095865338815143586L}).toString()));
                    }
                    if (jSONObject.has(new ObfuscatedString(new long[]{6357497699534327684L, -605584727910633855L}).toString())) {
                        configUtil.setCustomDNSSECONDARY(jSONObject.getString(new ObfuscatedString(new long[]{1225586240378754536L, 2190955055173677759L}).toString()));
                    }
                }
                if (i2 == 6) {
                    if (jSONObject.has(new ObfuscatedString(new long[]{-1399581815409009393L, -1222843502601797607L}).toString())) {
                        configUtil.setCustomDNSPRIMARY(jSONObject.getString(new ObfuscatedString(new long[]{-1303628367593126752L, 7701746084621703009L}).toString()));
                    }
                    if (jSONObject.has(new ObfuscatedString(new long[]{-4880764409746484814L, 5715730140667776579L}).toString())) {
                        configUtil.setCustomDNSSECONDARY(jSONObject.getString(new ObfuscatedString(new long[]{6055246251883050546L, -9007686291574438344L}).toString()));
                    }
                    this.mConfig.setSSH(false);
                    this.mConfig.setOVPN(true);
                    configUtil.setUdp(true);
                    startUDP();
                    enabledWidgets(false);
                    return;
                }
                configUtil.setUdp(false);
                if (this.myPrefs.getBoolean(new ObfuscatedString(new long[]{3002205573400362206L, 810162834606866345L, 64493005317856964L}).toString(), false)) {
                    int i3 = this.myPrefs.getInt(new ObfuscatedString(new long[]{-7873123811641742892L, -4062916822633537480L, -4990145352558759948L, -3764142896067710059L}).toString(), 0);
                    if (i3 == 0) {
                        i2 = 2;
                    }
                    if (i3 == 1) {
                        i = 2;
                        i2 = 3;
                    } else {
                        i = 2;
                    }
                    if (i3 == i) {
                        i2 = 0;
                    }
                }
                if (jSONObject.has(new ObfuscatedString(new long[]{-5562036762731473512L, -4490544706881998742L}).toString())) {
                    configUtil.setUdpPort(jSONObject.getString(new ObfuscatedString(new long[]{-9129972113962773877L, -5401617874438792997L}).toString()));
                }
                Bundle bundle = new Bundle();
                if (networkSelectedJson.has(new ObfuscatedString(new long[]{-4407274918383012174L, -5096906710791101844L, 5272742669402080583L}).toString())) {
                    if (!networkSelectedJson.getBoolean(new ObfuscatedString(new long[]{-3324148618966429965L, -2726592822674362487L, 7971594466463530513L}).toString())) {
                        configUtil.setEnableReplace(false);
                    } else {
                        configUtil.setEnableReplace(true);
                    }
                }
                if (i2 == 9) {
                    configUtil.setDNSpublicKey(replace4);
                    configUtil.setDNSserverName(replace3);
                    configUtil.setDNSaddress(replace);
                    configUtil.setSSHHost(new ObfuscatedString(new long[]{1393837025607884678L, 2757391663025723609L, 7244115458106487393L}).toString());
                    configUtil.setSSHPort(new ObfuscatedString(new long[]{-655166308808008279L, -17666865409561997L}).toString());
                }
                if (i2 == 10) {
                    bundle.putString(new ObfuscatedString(new long[]{-2944459134723019177L, 8605164125204264951L, 2941303435791683734L, 4727909536073022540L}).toString(), replace4);
                    bundle.putString(new ObfuscatedString(new long[]{-9183309862774835248L, 6311123214342382371L, 3896333524944801497L}).toString(), replace3);
                    bundle.putString(new ObfuscatedString(new long[]{-2022361504322144301L, -6467417701308547831L}).toString(), networkSelectedJson.getString(new ObfuscatedString(new long[]{-3063923580426476364L, 8084756496195658321L}).toString()));
                    configUtil.setSSHHost(new ObfuscatedString(new long[]{7000765501930538684L, -1829990594863888970L, -990552326108878149L}).toString());
                    configUtil.setSSHPort(new ObfuscatedString(new long[]{-1751483603295618792L, 6272119479366419270L}).toString());
                }
                if (i2 == 8 || i2 == 11) {
                    Intent prepare2 = VpnService.prepare(this);
                    if (prepare2 != null) {
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{4367555842097000590L, 8436774209615057556L, -3040007043112640976L, -9015937223357661815L}).toString(), new ObfuscatedString(new long[]{-8624150390818420231L}).toString());
                        try {
                            startActivityForResult(prepare2, 60000);
                            if (new ConfigUtil(this).isUDP().booleanValue()) {
                                stopUdp();
                            } else {
                                stopVPN();
                            }
                        } catch (ActivityNotFoundException unused2) {
                            TkLogStatus.logError(R.string.no_vpn_support_image);
                        }
                    }
                    if (networkSelectedJson.has(new ObfuscatedString(new long[]{2967250089452651856L, 4530353635424491791L}).toString())) {
                        if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-147961783581512979L, 7360802967974965674L}).toString()).isEmpty()) {
                            configUtil.setPayload(replace.replace(new ObfuscatedString(new long[]{175271796267401231L, -2812737474531551599L}).toString(), replace4).replace(new ObfuscatedString(new long[]{-5064331193361793190L, -1945306082784093670L}).toString(), configUtil.getSSHHost()));
                        } else {
                            configUtil.setPayload(replace.replace(new ObfuscatedString(new long[]{4859900473657867828L, 188233637903660340L}).toString(), replace4).replace(new ObfuscatedString(new long[]{746432137799138370L, -7188272892515280306L}).toString(), configUtil.getSSHHost()));
                        }
                    }
                    if (jSONObject.has(new ObfuscatedString(new long[]{3374190518770930726L, 1691102205505947087L}).toString())) {
                        bundle.putBoolean(new ObfuscatedString(new long[]{-8224252265739932196L, -2623804081000006427L}).toString(), jSONObject.getBoolean(new ObfuscatedString(new long[]{763260975916640641L, -4038415151072673926L}).toString()));
                    }
                    if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-5595277455160762287L, -3572387207763897130L, 3443831442725726153L}).toString()).equals(new ObfuscatedString(new long[]{138664506506698978L, 1734908618346593680L}).toString())) {
                        configUtil.setV2rayConfig(replace3);
                    } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{891672010394393068L, 1495385768980956665L, 2719844898005059690L}).toString()).equals(new ObfuscatedString(new long[]{-6693705782478015841L, -7388596492198756564L}).toString())) {
                        configUtil.setV2rayConfig(replace4);
                    } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-935418874513288474L, -656587590627502508L, 6596545058204196927L}).toString()).equals(new ObfuscatedString(new long[]{-2075777291136757685L, 2310408062937510151L}).toString())) {
                        configUtil.setV2rayConfig(replace5);
                    }
                    changeVpnType();
                    setSelectedNetwork(false);
                    enabledWidgets(false);
                }
                configUtil.setNetworkSelectedName(networkSelectedJson.getString(new ObfuscatedString(new long[]{-5621797491617548071L, -7630673799330819622L}).toString()));
                if (networkSelectedJson.has(new ObfuscatedString(new long[]{-6983044732967690859L, -2218906704131663436L, 6245886908902994208L}).toString()) && networkSelectedJson.has(new ObfuscatedString(new long[]{-9182142142656955589L, -4724789091175154396L, 4621709764435418067L}).toString())) {
                    String string = networkSelectedJson.getString(new ObfuscatedString(new long[]{-3243419095244657265L, 6879061480766178515L, 7917522088895421450L}).toString());
                    String string2 = networkSelectedJson.getString(new ObfuscatedString(new long[]{3980410000515776642L, -4134500597218769180L, -8004034442632851024L}).toString());
                    if (string.isEmpty() && string2.isEmpty()) {
                        configUtil.setIsQueryMode(false);
                    } else if (!string.isEmpty()) {
                        configUtil.setIsQueryMode(true);
                        configUtil.setFrontQuery(string);
                        configUtil.setBackQuery(new ObfuscatedString(new long[]{-448391781215526826L}).toString());
                    } else {
                        configUtil.setIsQueryMode(true);
                        configUtil.setBackQuery(string2);
                        configUtil.setFrontQuery(new ObfuscatedString(new long[]{-7294142795589595242L}).toString());
                    }
                } else {
                    configUtil.setIsQueryMode(false);
                }
                if (i2 != 2) {
                    if (i2 == 5) {
                    }
                    if (i2 == 3 && networkSelectedJson.has(new ObfuscatedString(new long[]{-909247611993049722L, 3012518184521932131L, 8532646829744970444L}).toString())) {
                        if (!networkSelectedJson.getString(new ObfuscatedString(new long[]{-1148136730684987036L, -2857993525807513840L, 8694486343114813736L}).toString()).equals(new ObfuscatedString(new long[]{7880310622345375376L, -7905282607734049957L}).toString())) {
                            configUtil.setSSHHost(replace3);
                        } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-8008291219134597620L, -3676751087008285378L, -7937334925818667557L}).toString()).equals(new ObfuscatedString(new long[]{7677184766277256866L, 7727657182576829898L}).toString())) {
                            configUtil.setSSHHost(replace4);
                        } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{4778688285428669278L, 7807942504399811098L, 1283802111082967850L}).toString()).equals(new ObfuscatedString(new long[]{3596233722649648058L, -5346257387020803884L}).toString())) {
                            if (jSONObject.has(new ObfuscatedString(new long[]{-3088341458723629142L, 2969350783869475959L, -2480680149543971701L}).toString())) {
                                if (!jSONObject.getString(new ObfuscatedString(new long[]{-7353264526052821987L, -1699134005185866361L, 654394414373626824L}).toString()).isEmpty()) {
                                    configUtil.setSSHHost(replace5);
                                } else {
                                    configUtil.setSSHHost(replace3);
                                }
                            } else {
                                configUtil.setSSHHost(replace3);
                            }
                        }
                    }
                    if (i2 == 4 && networkSelectedJson.has(new ObfuscatedString(new long[]{-1067261050605903826L, 8047537104963697134L, 87398921059543517L}).toString())) {
                        if (!networkSelectedJson.getString(new ObfuscatedString(new long[]{-4873359372437010455L, 3395853016284982334L, -6153319567751317954L}).toString()).equals(new ObfuscatedString(new long[]{-2992121207074314755L, -8330247237287816766L}).toString())) {
                            configUtil.setSSHHost(replace3);
                        } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{3927301941550721946L, -6806359359269020964L, -2262536720583604467L}).toString()).equals(new ObfuscatedString(new long[]{8571893891215103561L, 4804519873154516327L}).toString())) {
                            configUtil.setSSHHost(replace4);
                        } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{5952766256660101337L, -2951013674200987789L, 3851974449174943519L}).toString()).equals(new ObfuscatedString(new long[]{-4371469905144651764L, 4982058257313010126L}).toString())) {
                            if (jSONObject.has(new ObfuscatedString(new long[]{6867002268310346159L, -3068879732350860472L, 9061546104159332542L}).toString())) {
                                if (!jSONObject.getString(new ObfuscatedString(new long[]{-3881616093788225354L, 6824375629121419873L, 2933406381610198415L}).toString()).isEmpty()) {
                                    configUtil.setSSHHost(replace5);
                                } else {
                                    configUtil.setSSHHost(replace3);
                                }
                            } else {
                                configUtil.setSSHHost(replace3);
                            }
                        }
                    }
                    if (i2 != 5) {
                        if (networkSelectedJson.has(new ObfuscatedString(new long[]{7722257798846741314L, 3077836519136601291L, 2314785107859874046L}).toString())) {
                            if (!networkSelectedJson.getString(new ObfuscatedString(new long[]{8704659467234082190L, -2564651703479023319L, 1700392763232438958L}).toString()).isEmpty()) {
                                configUtil.setCustomSSLPortEnable(networkSelectedJson.has(new ObfuscatedString(new long[]{-3985240518381705410L, -9097638308314908822L, 9093836803615281308L}).toString()));
                                configUtil.setSSLPort(networkSelectedJson.getString(new ObfuscatedString(new long[]{-8242858950662914692L, -3290973679954821083L, -6638765904914364500L}).toString()));
                            } else {
                                configUtil.setCustomSSLPortEnable(false);
                                configUtil.setSSLPort(jSONObject.getString(new ObfuscatedString(new long[]{3928759096946695607L, -7583879775222567387L, -7674809411241050826L}).toString()));
                            }
                        } else {
                            configUtil.setSSLPort(jSONObject.getString(new ObfuscatedString(new long[]{6429630186164550445L, -1288132988390218390L, 7348792993913441575L}).toString()));
                        }
                    } else {
                        configUtil.setCustomSSLPortEnable(false);
                    }
                    if (!this.myPrefs.getBoolean(new ObfuscatedString(new long[]{7892921294487057994L, 2444097837211967675L, -2290032045633224901L}).toString(), false)) {
                        String string3 = this.myPrefs.getString(new ObfuscatedString(new long[]{-8684184402513327001L, -851048599293783114L, 8027620775489900891L}).toString(), new ObfuscatedString(new long[]{-628822792425824158L}).toString());
                        configUtil.setSni(this.myPrefs.getString(new ObfuscatedString(new long[]{6996785471269100368L, 1152184188898523961L, 2601654384696393366L}).toString(), new ObfuscatedString(new long[]{562214057467020686L}).toString()));
                        configUtil.setPayload(string3);
                    } else {
                        if (networkSelectedJson.has(new ObfuscatedString(new long[]{2218381668592393051L, -3810760298199204826L}).toString())) {
                            if (!networkSelectedJson.getString(new ObfuscatedString(new long[]{-5761641648708416773L, 6851261221358085228L}).toString()).isEmpty()) {
                                if (networkSelectedJson.has(new ObfuscatedString(new long[]{6849561586600823096L, 6562000382926183701L, 776238761752290387L}).toString())) {
                                    if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-8631848405241247319L, 4180839323725098526L, 8244762624449440252L}).toString()).equals(new ObfuscatedString(new long[]{7700504737936518879L, 1776800587771557022L}).toString())) {
                                        if (jSONObject.has(new ObfuscatedString(new long[]{-1403640185620987883L, -1126004878931644199L, -7473286262381993493L}).toString())) {
                                            if (!jSONObject.getString(new ObfuscatedString(new long[]{3183234446122932259L, 9136465752348897672L, -6519834805582247320L}).toString()).isEmpty()) {
                                                configUtil.setSni(VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{-7697770139190286591L, 7736815335071091760L}).toString())).replace(new ObfuscatedString(new long[]{-3740834392716010521L, 3363065537492916321L}).toString(), replace5));
                                            } else {
                                                configUtil.setSni(VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{-192235684099837672L, -6633653601031051468L}).toString())).replace(new ObfuscatedString(new long[]{8281684325099461119L, -7809958623684790642L}).toString(), replace3));
                                            }
                                        } else {
                                            configUtil.setSni(VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{-6788798047931086479L, 4024691143182283612L}).toString())).replace(new ObfuscatedString(new long[]{-4130874665933608707L, -3544896628824752123L}).toString(), replace3));
                                        }
                                    }
                                    if (networkSelectedJson.getString(new ObfuscatedString(new long[]{8205867298889490874L, 6311466549113210126L, -8826208948690635864L}).toString()).equals(new ObfuscatedString(new long[]{-117354018548348595L, -2570236735786610330L}).toString())) {
                                        if (jSONObject.has(new ObfuscatedString(new long[]{-1564006824506318351L, 3796511817713625037L, 7076617456320759396L, -2364331388691368673L}).toString())) {
                                            if (!jSONObject.getString(new ObfuscatedString(new long[]{3408404356253573973L, -7950758755962569876L, -3731314172354326221L, 5772056991715057576L}).toString()).isEmpty()) {
                                                configUtil.setSni(VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{-574837149477785729L, 5329535610535046108L}).toString())).replace(new ObfuscatedString(new long[]{6028528792754089870L, -130128085877170036L}).toString(), replace4));
                                            } else {
                                                configUtil.setSni(VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{-8085027185911789164L, -5515031138982672987L}).toString())).replace(new ObfuscatedString(new long[]{3942181409557447417L, -5323962981686004676L}).toString(), replace3));
                                            }
                                        } else {
                                            configUtil.setSni(VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{-8474051684954350367L, -126088679926827230L}).toString())).replace(new ObfuscatedString(new long[]{1834703660132832060L, 8440995721467386865L}).toString(), replace3));
                                        }
                                    }
                                    if (networkSelectedJson.getString(new ObfuscatedString(new long[]{348557051522276475L, -3092964160093040713L, -3265325285025003289L}).toString()).equals(new ObfuscatedString(new long[]{539205828710488923L, -3433441613345735847L}).toString())) {
                                        configUtil.setSni(VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{-1896135405295864911L, -8739657579458340042L}).toString())).replace(new ObfuscatedString(new long[]{-6145812477832301900L, 4375594318415610232L}).toString(), replace3));
                                    }
                                } else {
                                    configUtil.setSni(VPNUtil.decrypt(networkSelectedJson.getString(new ObfuscatedString(new long[]{-3305481761018836615L, 5617261118256307709L}).toString())).replace(new ObfuscatedString(new long[]{3399704788181051575L, -2547805993132029634L}).toString(), replace3));
                                }
                            } else {
                                configUtil.setSni(networkSelectedJson.getString(new ObfuscatedString(new long[]{299928694491561526L, 5123111101553415149L}).toString()).replace(new ObfuscatedString(new long[]{8274637366441501812L, -1032281526457587476L}).toString(), replace3).replace(new ObfuscatedString(new long[]{4443665519347453184L, 7639165847370065742L}).toString(), replace4));
                            }
                        }
                        if (networkSelectedJson.has(new ObfuscatedString(new long[]{-4846756706828173213L, -7588145066034021615L}).toString())) {
                            if (networkSelectedJson.getString(new ObfuscatedString(new long[]{6502221127721712459L, -7892065163009987767L}).toString()).isEmpty()) {
                                configUtil.setPayload(replace.replace(new ObfuscatedString(new long[]{-2410470036732736192L, -624565260843722356L}).toString(), replace4.replace(new ObfuscatedString(new long[]{-6975014018088069447L, -8391310224718366746L}).toString(), configUtil.getSSHHost())));
                            } else {
                                configUtil.setPayload(replace.replace(new ObfuscatedString(new long[]{-6001990688914647495L, 556042261472875124L}).toString(), replace4).replace(new ObfuscatedString(new long[]{-1725555801540348851L, 833130632307767017L}).toString(), configUtil.getSSHHost()));
                            }
                        }
                    }
                    startService(new Intent(this, (Class<?>) TunnelVPN.class).putExtras(bundle).setAction(new ObfuscatedString(new long[]{166916080305179706L, 4072780035853342926L}).toString()));
                    return;
                }
                if (i2 == 2 && networkSelectedJson.has(new ObfuscatedString(new long[]{-4715567975694193558L, -1651765673730216568L, 1882248176745153975L}).toString())) {
                    if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-3031692258815624699L, -8846097120593056555L, -5849234596073612093L}).toString()).equals(new ObfuscatedString(new long[]{7991047837715941656L, 4907380546591246073L}).toString())) {
                        configUtil.setSSHHost(replace3);
                    } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-4114450671015702223L, 6933267187388522484L, -8867527877567718537L}).toString()).equals(new ObfuscatedString(new long[]{-8341763912625789376L, 2793565353191203035L}).toString())) {
                        configUtil.setSSHHost(replace4);
                    } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-4824735080590098433L, -1303766010917457666L, -525791925934244799L}).toString()).equals(new ObfuscatedString(new long[]{3623984686245268764L, -2131272430110854576L}).toString())) {
                        if (jSONObject.has(new ObfuscatedString(new long[]{9183056333059360277L, 5414838333008354126L, 1607898411186406438L}).toString())) {
                            if (!jSONObject.getString(new ObfuscatedString(new long[]{-5393452630776987297L, -5346124220440452335L, -1707720972537981841L}).toString()).isEmpty()) {
                                configUtil.setSSHHost(replace5);
                            } else {
                                configUtil.setSSHHost(replace3);
                            }
                        } else {
                            configUtil.setSSHHost(replace3);
                        }
                    }
                }
                if (i2 == 5 && networkSelectedJson.has(new ObfuscatedString(new long[]{782850069021880778L, -5115378319351573593L, -2642186958481792426L}).toString())) {
                    if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-4655999753296560562L, -7032972051771742903L, -4567225491939285151L}).toString()).equals(new ObfuscatedString(new long[]{6643726759538644634L, 48425792655216158L}).toString())) {
                        configUtil.setSSHHost(replace3);
                    } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-7234239417172887357L, -1841895595377367421L, 6893470341313774623L}).toString()).equals(new ObfuscatedString(new long[]{2060739385355387607L, -6194782063798984764L}).toString())) {
                        configUtil.setSSHHost(replace4);
                    } else if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-7813121815087110932L, -5302230442747868291L, 6801794146386491420L}).toString()).equals(new ObfuscatedString(new long[]{-5013361629240383994L, -3609259154119690019L}).toString())) {
                        if (jSONObject.has(new ObfuscatedString(new long[]{1499423470199092117L, -349476235419438214L, -2828843071055130430L}).toString())) {
                            if (!jSONObject.getString(new ObfuscatedString(new long[]{6676221080133732197L, 2184221890927408295L, 9003492810038055541L}).toString()).isEmpty()) {
                                configUtil.setSSHHost(replace5);
                            } else {
                                configUtil.setSSHHost(replace3);
                            }
                        } else {
                            configUtil.setSSHHost(replace3);
                        }
                    }
                }
                if (networkSelectedJson.getBoolean(new ObfuscatedString(new long[]{-5852104979390377351L, 8256211684682129757L, -4015854224413968333L}).toString())) {
                    configUtil.setProxyPort(networkSelectedJson.getString(new ObfuscatedString(new long[]{1624074320061746286L, 5889503695973360704L}).toString()));
                    if (replace2.contains(new ObfuscatedString(new long[]{6383063738967932467L, -3769206479727475282L}).toString()) || replace2.isEmpty()) {
                        if (networkSelectedJson.has(new ObfuscatedString(new long[]{-901163776102624486L, 2740812800009339890L, 4912532028321680267L}).toString())) {
                            if (networkSelectedJson.getString(new ObfuscatedString(new long[]{2370039346071596326L, -8981079197853556207L, -4659837277918491262L}).toString()).equals(new ObfuscatedString(new long[]{-3828774094708720526L, -2258044890424134493L}).toString())) {
                                if (jSONObject.has(new ObfuscatedString(new long[]{3470513856535378401L, 9194253785414569235L, 1760409736137216724L}).toString())) {
                                    if (!jSONObject.getString(new ObfuscatedString(new long[]{7590639159663266949L, 6513804801880772230L, 584794515357667550L}).toString()).isEmpty()) {
                                        configUtil.setProxy(replace5);
                                    } else {
                                        configUtil.setProxy(replace3);
                                    }
                                } else {
                                    configUtil.setProxy(replace3);
                                }
                            }
                            if (networkSelectedJson.getString(new ObfuscatedString(new long[]{2430209163439026197L, -5639838341252243305L, 7371425344981584016L}).toString()).equals(new ObfuscatedString(new long[]{7824359950818240144L, 5885888474774991135L}).toString())) {
                                if (jSONObject.has(new ObfuscatedString(new long[]{-5097981564889806551L, 7452475603648694390L, 8008524460056424961L, -2982258943264133549L}).toString())) {
                                    if (!jSONObject.getString(new ObfuscatedString(new long[]{2965126108168426996L, -7045898858892379447L, 1429129330064084496L, 2200366003359901571L}).toString()).isEmpty()) {
                                        configUtil.setProxy(replace4);
                                    } else {
                                        configUtil.setProxy(replace3);
                                    }
                                } else {
                                    configUtil.setProxy(replace3);
                                }
                            }
                            if (networkSelectedJson.getString(new ObfuscatedString(new long[]{-2957067812171001003L, -1495873120912023763L, -3261534573582854015L}).toString()).equals(new ObfuscatedString(new long[]{5940723673000209895L, 81329408652833551L}).toString())) {
                                configUtil.setProxy(replace3);
                            }
                        } else {
                            configUtil.setProxy(replace3);
                        }
                    }
                } else {
                    configUtil.setProxy(replace2);
                    configUtil.setProxyPort(networkSelectedJson.getString(new ObfuscatedString(new long[]{7778773863006230434L, -2474611486157347056L}).toString()));
                }
                if (i2 == 3) {
                    if (!networkSelectedJson.getString(new ObfuscatedString(new long[]{-1148136730684987036L, -2857993525807513840L, 8694486343114813736L}).toString()).equals(new ObfuscatedString(new long[]{7880310622345375376L, -7905282607734049957L}).toString())) {
                    }
                }
                if (i2 == 4) {
                    if (!networkSelectedJson.getString(new ObfuscatedString(new long[]{-4873359372437010455L, 3395853016284982334L, -6153319567751317954L}).toString()).equals(new ObfuscatedString(new long[]{-2992121207074314755L, -8330247237287816766L}).toString())) {
                    }
                }
                if (i2 != 5) {
                }
                if (!this.myPrefs.getBoolean(new ObfuscatedString(new long[]{7892921294487057994L, 2444097837211967675L, -2290032045633224901L}).toString(), false)) {
                }
                startService(new Intent(this, (Class<?>) TunnelVPN.class).putExtras(bundle).setAction(new ObfuscatedString(new long[]{166916080305179706L, 4072780035853342926L}).toString()));
                return;
            }
            JSONArray serversArray = getServersArray(this.selectedServerType);
            int i4 = this.randomIndex;
            if (i4 == 0) {
                i4 = 2;
            }
            jSONObject = serversArray.getJSONObject(i4);
            if (jSONObject != null) {
            }
        } catch (Exception unused3) {
            setSelectedNetwork(true);
            Toast.makeText(this, new ObfuscatedString(new long[]{-7029123611075084176L, -3893480143160237996L, -9032700028478335326L, -5028407226796933419L}).toString(), 0).show();
        }
    }

    private void callInAppUpdate() {
        AppUpdateManager create = AppUpdateManagerFactory.create(this);
        create.getAppUpdateInfo().addOnSuccessListener(new C0379x9172909e(this, create, 0));
    }

    private void cancel_stats() {
        this.stats_timer_handler.removeCallbacks(this.stats_timer_task);
    }

    private void cancel_ui_reset() {
        this.ui_reset_timer_handler.removeCallbacks(this.ui_reset_timer_task);
    }

    private void changeVpnType() {
        this.editor.putString(new ObfuscatedString(new long[]{-5430100184381720016L, -4646818634280927413L}).toString(), VpnType.V2Ray.name()).apply();
    }

    private void clear_stats() {
        this.bytes_in_view.setText(new ObfuscatedString(new long[]{3441837992301183429L}).toString());
        this.bytes_out_view.setText(new ObfuscatedString(new long[]{4897177398766891730L}).toString());
        reset_conn_info();
    }

    private void clipImport() {
        try {
            ClipData primaryClip = ((ClipboardManager) getSystemService(new ObfuscatedString(new long[]{8498561437222041433L, 8005132383821243636L, -7893153211329673277L}).toString())).getPrimaryClip();
            Objects.requireNonNull(primaryClip);
            try {
                String d_01 = c_12.Parser.d_01((String) primaryClip.getItemAt(0).getText());
                FileOutputStream fileOutputStream = new FileOutputStream(new File(getFilesDir(), new ObfuscatedString(new long[]{5260539437337387280L, 5252789139325825676L, -5231949855979589065L}).toString()));
                fileOutputStream.write(d_01.getBytes());
                fileOutputStream.flush();
                fileOutputStream.close();
                showToast(new ObfuscatedString(new long[]{-8562652659653740457L, -7361250080107318491L, -8973953542056907089L, -7136992798347667161L}).toString());
                loadServers();
                c_12.restart_app(this);
            } catch (Exception e) {
                showToast(String.format(new ObfuscatedString(new long[]{7828542406809725031L, 5039918391211211234L, -965004279691564370L, -4385293885200780349L}).toString(), e.getClass().getName(), e.getMessage()));
            }
        } catch (Exception e2) {
            showToast(String.format(new ObfuscatedString(new long[]{-1389635262748571202L, 8249629833437746063L, 6091922223964374872L, 8849057834542349003L}).toString(), e2.getClass().getName(), e2.getMessage()));
        }
    }

    private void clipImport1() {
        try {
            try {
                String d_01 = c_12.Parser.d_01(((ClipboardManager) getSystemService(new ObfuscatedString(new long[]{-3214651483809032489L, -339162567849524207L, 4936132719668893534L}).toString())).getText().toString());
                if (TextUtils.isEmpty(d_01)) {
                    showToast(getString(R.string.message_invalid_file_content));
                } else {
                    processnetworkData(d_01);
                }
            } catch (Exception e) {
                showToast(String.format(new ObfuscatedString(new long[]{5329742745570953803L, -5304541949054927048L, -2678196040891596937L, -6890418371329233783L}).toString(), e.getClass().getName(), e.getMessage()));
            }
        } catch (Exception e2) {
            showToast(String.format(new ObfuscatedString(new long[]{-3742539465749508802L, -8916110219518422757L, -4277816244802334909L, -4079266301629409342L}).toString(), e2.getClass().getName(), e2.getMessage()));
        }
    }

    private void clipImport2() {
        try {
            try {
                String d_01 = c_12.Parser.d_01(((ClipboardManager) getSystemService(new ObfuscatedString(new long[]{-1276095898119216597L, 2609378510141594236L, -2703922113482567616L}).toString())).getText().toString());
                if (TextUtils.isEmpty(d_01)) {
                    showToast(getString(R.string.message_invalid_file_content));
                } else {
                    processserverData(d_01);
                }
            } catch (Exception e) {
                showToast(String.format(new ObfuscatedString(new long[]{-3564840059928373779L, 378888386552694382L, 7238046807187944514L, -4693664600327181980L}).toString(), e.getClass().getName(), e.getMessage()));
            }
        } catch (Exception e2) {
            showToast(String.format(new ObfuscatedString(new long[]{-7058906951310118957L, 7761422416587795383L, -4828827748965608737L, 3014444447646648053L}).toString(), e2.getClass().getName(), e2.getMessage()));
        }
    }

    private void dialogAddPayload() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.add_payload, (ViewGroup) null);
        this.v2 = inflate;
        ((RelativeLayout) inflate.findViewById(R.id.s1)).setBackgroundColor(this.myPrefs.getInt(new ObfuscatedString(new long[]{6995595829923839747L, -2400068601250014952L, 7781539468871144429L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-5356593792482189147L, 5275272090259635126L}).toString())));
        ((MaterialCardView) this.v2.findViewById(R.id.save)).setBackgroundTintList(ColorStateList.valueOf(this.myPrefs.getInt(new ObfuscatedString(new long[]{-805871086455321059L, 1522585252828328132L, -5865917060972195356L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-2917392460081657953L, 6790792611365846355L}).toString()))));
        this.ckMultiCert = (CheckBox) this.v2.findViewById(R.id.ckMultiCert);
        this.etCertificate = (TextInputEditText) this.v2.findViewById(R.id.etCertificate);
        this.l_pro = (RelativeLayout) this.v2.findViewById(R.id.l_pro);
        this.l_info = (MaterialCardView) this.v2.findViewById(R.id.l_info);
        this.proto_type = (Spinner) this.v2.findViewById(R.id.proto_type);
        this.proto_spin = (Spinner) this.v2.findViewById(R.id.proto_spin);
        this.server_type = (RadioGroup) this.v2.findViewById(R.id.server_type);
        this.l_add = (RelativeLayout) this.v2.findViewById(R.id.l_add);
        this.etSSLSNI = (TextInputEditText) this.v2.findViewById(R.id.etSSLSNI);
        this.etSSLPort = (TextInputEditText) this.v2.findViewById(R.id.etSSLPort);
        this.payload_type = (RadioGroup) this.v2.findViewById(R.id.payload_type);
        this.p_layout = (LinearLayout) this.v2.findViewById(R.id.p_layout);
        this.etNetworkName = (TextInputEditText) this.v2.findViewById(R.id.etNetworkName);
        this.etNetworkPayload = (TextInputEditText) this.v2.findViewById(R.id.etNetworkPayload);
        this.etNetworkInfo = (TextInputEditText) this.v2.findViewById(R.id.etNetworkInfo);
        this.ckUseDefProxy = (CheckBox) this.v2.findViewById(R.id.ckUseDefProxy);
        this.etSquidProxy = (TextInputEditText) this.v2.findViewById(R.id.etSquidProxy);
        this.etSquidPort = (TextInputEditText) this.v2.findViewById(R.id.etSquidPort);
        this.etNetworkFrontQuery = (TextInputEditText) this.v2.findViewById(R.id.etNetworkFrontQuery);
        this.etNetworkBackQuery = (TextInputEditText) this.v2.findViewById(R.id.etNetworkBackQuery);
        this.btnPayloadGen = (AppCompatImageView) this.v2.findViewById(R.id.btnPayloadGen);
        this.isReplace = (CheckBox) this.v2.findViewById(R.id.isReplace);
        ((TextView) this.v2.findViewById(R.id.pTitle)).setText(new ObfuscatedString(new long[]{2587989631388336169L, -2291117886842881798L, -8301984111726845554L}).toString());
        this.ckUseDefProxy.setChecked(true);
        this.etSquidProxy.setEnabled(false);
        this.server_type.check(R.id.cf_radio);
        this.payload_type.check(R.id.ovpn_radio);
        this.etNetworkInfo.setText(this.myPrefs.getString(new ObfuscatedString(new long[]{4506963386635278864L, -1196810457366183395L}).toString(), new ObfuscatedString(new long[]{3614445517956852487L}).toString()));
        this.proto_type.setAdapter((SpinnerAdapter) new ArrayAdapter(getApplicationContext(), android.R.layout.simple_dropdown_item_1line, new String[]{new ObfuscatedString(new long[]{4630509893742902700L, 7388116582070103879L}).toString(), new ObfuscatedString(new long[]{-3451041175087722627L, 4723139391387695663L, -7215562476649157793L}).toString(), new ObfuscatedString(new long[]{3093996199246264562L, 5341942644537825400L, 3990273166987545428L}).toString(), new ObfuscatedString(new long[]{-8186891651005171840L, 5224082953516864247L, -5640020642592648326L}).toString(), new ObfuscatedString(new long[]{5222464732967303616L, 204316461858506190L, -8273045950202910550L}).toString()}));
        this.proto_type.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tknetwork.tunnel.activities.ActivityUi.9
            public AnonymousClass9() {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 1) {
                    ActivityUi.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-3343007266429299382L, 8200651635098276621L, -1380181979658497018L, -6678624026953569163L, -7289969583390805145L, -819289213758962219L, 7218809227933750344L, -4502718169899835197L, 1312266682461762880L, -1442866204798999941L}).toString());
                } else if (i == 2) {
                    ActivityUi.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-105543130490972979L, -3701744857862945136L, 7312000896707717924L, -108370319957905552L, -6458592713575399997L, 2346181081681017880L, -7055588190406827311L, -6043228149049183148L, 5213768820448037241L, 9013423895868507938L, 1111069504557597622L, -3774232293396243903L, 1703263347174053493L, -5386584823521138725L}).toString());
                } else if (i == 3) {
                    ActivityUi.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{-2873496279599646714L, 7892140730460310838L, 8911214578451434635L, -8092643486079491609L, -692782287706493193L, 4796188022865954433L, 4467426708978201604L, 1841370796620394128L, 5031241414291207970L}).toString());
                } else if (i == 4) {
                    ActivityUi.this.etNetworkPayload.setText(new ObfuscatedString(new long[]{1862701723426135862L, -3923192547217947796L, 948038916066395459L, 4247139497613620411L, 7434001192864474773L, -1131554773907417356L, 1440993628714181250L, -8701791025473394532L, 6812612806946139113L, -9220522502585993202L, -5824568605328788899L, 6122306657668275023L, 99608077836120479L, -3422891354718941772L}).toString());
                }
                ActivityUi.this.proto_type.getSelectedItem();
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        this.proto_spin.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tknetwork.tunnel.activities.ActivityUi.10
            public AnonymousClass10() {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                    ActivityUi.this.btnPayloadGen.setVisibility(8);
                    ActivityUi.this.server_type.setVisibility(0);
                    ActivityUi.this.p_layout.setVisibility(0);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                    return;
                }
                if (i == 1) {
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-2447873105146806746L, 2133149114670655891L}).toString());
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                    ActivityUi.this.btnPayloadGen.setVisibility(0);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    ActivityUi.this.p_layout.setVisibility(0);
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                    return;
                }
                if (i == 2) {
                    ActivityUi.this.ckMultiCert.setVisibility(0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-7997055898038443856L, -5013625453788889822L}).toString());
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                    ActivityUi.this.btnPayloadGen.setVisibility(0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                    ActivityUi.this.p_layout.setVisibility(0);
                    ActivityUi.this.l_pro.setVisibility(0);
                    ActivityUi.this.l_info.setVisibility(0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                    return;
                }
                if (i == 3) {
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{337499258624730239L, -8573159172995313897L}).toString());
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                    ActivityUi.this.btnPayloadGen.setVisibility(8);
                    ActivityUi.this.p_layout.setVisibility(0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                    return;
                }
                if (i == 4) {
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{2045925932579962125L, -6318149169174757371L}).toString());
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                    ActivityUi.this.btnPayloadGen.setVisibility(0);
                    ActivityUi.this.p_layout.setVisibility(0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                    return;
                }
                if (i == 5) {
                    ActivityUi.this.ckMultiCert.setVisibility(0);
                    ActivityUi.this.l_pro.setVisibility(0);
                    ActivityUi.this.l_info.setVisibility(0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 0);
                    ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{-866793185397604316L, 1208195178936541943L}).toString());
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                    ActivityUi.this.btnPayloadGen.setVisibility(0);
                    ActivityUi.this.p_layout.setVisibility(0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 0);
                    return;
                }
                if (i == 6) {
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{8092286019525245201L, 4972018324207261223L}).toString());
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                    ActivityUi.this.btnPayloadGen.setVisibility(0);
                    ActivityUi.this.p_layout.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                    return;
                }
                if (i == 7) {
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                    ActivityUi.this.btnPayloadGen.setVisibility(8);
                    ActivityUi.this.p_layout.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                    return;
                }
                if (i == 8) {
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 0);
                    ActivityUi.this.btnPayloadGen.setVisibility(8);
                    ActivityUi.this.p_layout.setVisibility(8);
                    return;
                }
                if (i == 9) {
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{9166413124865451555L, -6238825610029314430L, 8160537903612755774L}).toString());
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 8);
                    ActivityUi.this.btnPayloadGen.setVisibility(8);
                    ActivityUi.this.p_layout.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                    return;
                }
                if (i == 10) {
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    ((TextInputLayout) ActivityUi.this.v2.findViewById(R.id.etNetworkPayloadInput)).setHint(new ObfuscatedString(new long[]{364871644106756695L, -3856783077213587073L, 9197406951529210111L}).toString());
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 0);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 8);
                    ActivityUi.this.btnPayloadGen.setVisibility(8);
                    ActivityUi.this.p_layout.setVisibility(8);
                    return;
                }
                if (i == 11) {
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 8);
                    ActivityUi.this.btnPayloadGen.setVisibility(8);
                    ActivityUi.this.p_layout.setVisibility(8);
                    return;
                }
                if (i == 12) {
                    ActivityUi.this.ckMultiCert.setVisibility(8);
                    ActivityUi.this.l_pro.setVisibility(8);
                    ActivityUi.this.l_info.setVisibility(8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.payload_type, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_add, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_SNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.l_PORTSNI, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.etNetworkPayloadInput, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.excluded_udp_layout, 8);
                    AbstractC0362x4440ab85.m2950xf0a984b7(ActivityUi.this, R.id.radio_type, 8);
                    ActivityUi.this.btnPayloadGen.setVisibility(8);
                    ActivityUi.this.p_layout.setVisibility(8);
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        this.ckMultiCert.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 0));
        this.ckUseDefProxy.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 1));
        this.btnPayloadGen.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 2));
        this.v2.findViewById(R.id.cancel).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 3));
        this.v2.findViewById(R.id.save).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 4));
        this.b.setView(this.v2);
        this.b.show();
        AppCompatImageView appCompatImageView = (AppCompatImageView) this.v2.findViewById(R.id.exit);
        this.exit = appCompatImageView;
        appCompatImageView.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 5));
    }

    private void dialogAddServer() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.add_server, (ViewGroup) null);
        this.v = inflate;
        ((RelativeLayout) inflate.findViewById(R.id.s1)).setBackgroundColor(this.myPrefs.getInt(new ObfuscatedString(new long[]{5099584414879493062L, -9156314208180126901L, 5923813439708797825L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-5154488389816564367L, 5066844949963418441L}).toString())));
        ((MaterialCardView) this.v.findViewById(R.id.save)).setBackgroundTintList(ColorStateList.valueOf(this.myPrefs.getInt(new ObfuscatedString(new long[]{3877377726870003688L, 788245231369106415L, 4294161847853145025L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{2010953931450553777L, -3773241168242023706L}).toString()))));
        this.sName = (TextInputEditText) this.v.findViewById(R.id.etServerName);
        this.etServerAddress = (TextInputEditText) this.v.findViewById(R.id.etServerAddress);
        this.etEndpoint = (TextInputEditText) this.v.findViewById(R.id.etEndpoint);
        this.etPublicKey = (TextInputEditText) this.v.findViewById(R.id.etPublicKey);
        this.etPrivateKey = (TextInputEditText) this.v.findViewById(R.id.etPrivateKey);
        this.etPreSharedKey = (TextInputEditText) this.v.findViewById(R.id.etPreSharedKey);
        this.etAllowedIPs = (TextInputEditText) this.v.findViewById(R.id.etAllowedIPs);
        this.category_type = (RadioGroup) this.v.findViewById(R.id.category_type);
        this.etTcpPort = (TextInputEditText) this.v.findViewById(R.id.etTcpPort);
        this.etServerIP = (TextInputEditText) this.v.findViewById(R.id.etServerIP);
        this.etServerCloudFront = (TextInputEditText) this.v.findViewById(R.id.etServerCloudFront);
        this.etServerHTTP = (TextInputEditText) this.v.findViewById(R.id.etServerHTTP);
        this.etTcpPort = (TextInputEditText) this.v.findViewById(R.id.etTcpPort);
        this.etSSLPort = (TextInputEditText) this.v.findViewById(R.id.etSSLPort);
        this.primary = (TextInputEditText) this.v.findViewById(R.id.primary);
        this.secondary = (TextInputEditText) this.v.findViewById(R.id.secondary);
        this.etCertificate = (TextInputEditText) this.v.findViewById(R.id.etCertificate);
        this.etUser = (TextInputEditText) this.v.findViewById(R.id.etUser);
        this.etPass = (TextInputEditText) this.v.findViewById(R.id.etPass);
        this.ckUseLogin = (CheckBox) this.v.findViewById(R.id.ckUseLogin);
        this.fakeV2ray = (CheckBox) this.v.findViewById(R.id.fakeV2ray);
        this.wire_full_conf = (CheckBox) this.v.findViewById(R.id.wire_full_conf);
        this.ckMultiCert = (CheckBox) this.v.findViewById(R.id.ckMultiCert);
        ((TextView) this.v.findViewById(R.id.sTitle)).setText(new ObfuscatedString(new long[]{1461061795121921945L, 7241007896800700539L, -2529993377930391485L}).toString());
        ((TextView) this.v.findViewById(R.id.save_tl)).setText(new ObfuscatedString(new long[]{6693206854439333050L, -8962811691195271717L}).toString());
        this.fakeV2ray.setTextSize(1, 8.0f);
        this.wire_full_conf.setTextSize(1, 8.0f);
        this.ckUseLogin.setTextSize(1, 8.0f);
        this.ckMultiCert.setTextSize(1, 8.0f);
        this.openvpn_udp_port = (TextInputEditText) this.v.findViewById(R.id.openvpn_udp_port);
        this.category_type.check(R.id.type_premium);
        this.primary.setText(new ObfuscatedString(new long[]{-8522183656672024638L, 1280638346802848193L}).toString());
        this.secondary.setText(new ObfuscatedString(new long[]{-4107102295817081240L, 8917016212911416232L, 2769742668734431560L}).toString());
        Spinner spinner = (Spinner) this.v.findViewById(R.id.server_sptype);
        this.serverType = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tknetwork.tunnel.activities.ActivityUi.8
            public AnonymousClass8() {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                int i2 = 0;
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 0);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 0);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort, 0);
                ActivityUi.this.ckMultiCert.setVisibility(8);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etCertificate_ly, 8);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.wire_ly, 8);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.wire_full_conf, 8);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerCloudFront_ly, 0);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerHTTP_ly, 0);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerIP_ly, 0);
                if (i != 0 && i != 1) {
                    if (i == 2) {
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                        ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{1149072790085690171L, 2796079960891342595L, 7551634843873955067L, -7401323629078416230L, -8990793338115921216L}).toString());
                        ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{2250990608871512418L, -1515458119751436664L, -2496545288058930520L}).toString());
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 8);
                        return;
                    }
                    if (i == 3) {
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 0);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerIP_ly, 0);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerCloudFront_ly, 0);
                        ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-6905279831929825157L, 2019794853149013021L, 8102592141316503024L}).toString());
                        ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{4392964282779057982L, 8200142028253530728L, -2158162263391022295L}).toString());
                        ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{-4568121734583246913L, 3310139984439172884L, -2296872382946357513L}).toString());
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 0);
                        return;
                    }
                    if (i == 4) {
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                        ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{2727831168182083235L, -5575974004885898253L, -2769017024202575932L, 6827631361117761380L}).toString());
                        ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{-1640770095704535252L, 8477956528387317472L, -464331276872773397L, -8347957831859266938L}).toString());
                        ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{951268194192962895L, 791025370219611218L, -8691554918360177720L, -8402204307288635055L}).toString());
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 0);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etPort_tv, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort_ly, 8);
                        return;
                    }
                    if (i == 5) {
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerIP_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etServerCloudFront_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 8);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.wire_ly, 0);
                        AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.wire_full_conf, 0);
                        ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-5169739512125790593L, -2733858340019244099L, -6269836175490489509L, 7188168382842920510L}).toString());
                        return;
                    }
                    return;
                }
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{2239467998783705186L, -3074754148439580678L, -8896480020610768889L, 6815030931607364167L}).toString());
                ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{8911127610293231922L, -524226134346697406L, 1541518778958657429L, -3379360249065821504L}).toString());
                ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{6622622359421885749L, 2540847432229860867L, -1779762162623785430L, 6837953274613239640L}).toString());
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.http_ly, 0);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etPort_tv, 0);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 0);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etTcpPort_ly, 0);
                AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etSSLPort_ly, 0);
                if (i == 0) {
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etUdpPort_ly)).setHint(new ObfuscatedString(new long[]{-4783785247063607129L, -1436530746547328765L}).toString());
                    ActivityUi.this.openvpn_udp_port.setText(new ObfuscatedString(new long[]{-4009088218239777162L, -4141067429365802984L}).toString());
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etTcpPort_ly)).setHint(new ObfuscatedString(new long[]{872829014003614688L, 775455214716865346L}).toString());
                    ActivityUi.this.etTcpPort.setText(new ObfuscatedString(new long[]{5236945415663677298L, -8339097602138538958L}).toString());
                    ActivityUi.this.etSSLPort.setText(new ObfuscatedString(new long[]{-7469848929862257483L, 4257386993620544856L}).toString());
                    ActivityUi.this.ckMultiCert.setVisibility(0);
                    View findViewById = ActivityUi.this.v.findViewById(R.id.etCertificate_ly);
                    if (!ActivityUi.this.ckMultiCert.isChecked()) {
                        i2 = 8;
                    }
                    findViewById.setVisibility(i2);
                }
                if (i == 1) {
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.fakeV2ray, 8);
                    AbstractC0362x4440ab85.m2954xe698d(ActivityUi.this, R.id.etUdpPort_ly, 8);
                    ((TextInputLayout) ActivityUi.this.v.findViewById(R.id.etTcpPort_ly)).setHint(new ObfuscatedString(new long[]{3095973099400010129L, -3667561581838220342L, 8148724348847661501L}).toString());
                    ActivityUi.this.etTcpPort.setText(new ObfuscatedString(new long[]{-6574529404276428117L, 703805048341658756L}).toString());
                    ActivityUi.this.etSSLPort.setText(new ObfuscatedString(new long[]{8865640527005443069L, 6215615058913491227L}).toString());
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        this.ckMultiCert.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 7));
        this.ckUseLogin.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 8));
        this.fakeV2ray.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 9));
        this.wire_full_conf.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 10));
        this.sName.getText().toString();
        this.v.findViewById(R.id.cancel).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 11));
        this.v.findViewById(R.id.save).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 12));
        this.a.setView(this.v);
        this.a.show();
        AppCompatImageView appCompatImageView = (AppCompatImageView) this.v.findViewById(R.id.exit);
        this.exit = appCompatImageView;
        appCompatImageView.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 13));
    }

    @SuppressLint({"SetTextI18n"})
    private void doUpdateLayout() {
        if (!TkLogStatus.isTunnelActive() && !isConnected) {
            AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.duration_view);
            AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
        } else {
            AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.connect_color, this.duration_view);
            AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.connect_color, this.status_view);
        }
    }

    public void do_connect(String str) {
        String username;
        String password;
        String obfuscatedString = new ObfuscatedString(new long[]{-4755414234904128356L, -1646379984703826968L, -5947219943626646986L, -4901259871846608571L, 1328659737674140069L}).toString();
        new ObfuscatedString(new long[]{-839435255330325025L}).toString();
        new ObfuscatedString(new long[]{-8012961328051237636L}).toString();
        if (this.f5771config.getEnableFreeServer()) {
            username = this.f5771config.getFreeServerUsername();
            password = this.f5771config.getFreeServerPassword();
        } else {
            username = this.f5771config.getUsername();
            password = this.f5771config.getPassword();
        }
        String str2 = username;
        String str3 = password;
        String selected_profile_name = selected_profile_name();
        String str4 = this.prefs.get_string(new ObfuscatedString(new long[]{-7789204021387861240L, 1026753988075772973L, -2965061431596814639L}).toString());
        String str5 = this.prefs.get_string(new ObfuscatedString(new long[]{-5406443659964551896L, 2090463492907343224L}).toString());
        String str6 = this.prefs.get_string(new ObfuscatedString(new long[]{5389573897046651181L, -9168443898971674158L, 1969196553803866924L}).toString());
        String str7 = this.prefs.get_string(new ObfuscatedString(new long[]{7956311123938679696L, -1010071932206363856L, -3778650653391816759L}).toString());
        clear_stats();
        submitConnectIntent(selected_profile_name, null, str4, str5, str6, str2, str3, false, null, null, str, str7, null, null, null, true, get_gui_version(obfuscatedString));
    }

    private void enableNetworks() {
    }

    private void enabledWidgets(boolean z) {
        if (z) {
            bg_banner(false);
            this.mDataGraph.stop();
            this.mDataChart.setVisibility(8);
            this.disconnect_button.setVisibility(8);
            this.connect_button.setVisibility(0);
        } else {
            this.mDataGraph.start();
            bg_banner(true);
            this.mDataChart.setVisibility(0);
            this.disconnect_button.setVisibility(0);
            this.connect_button.setVisibility(8);
        }
        this.user_name.setEnabled(z);
        this.user_pass.setEnabled(z);
        this.network_layout.setEnabled(z);
        this.server_layout.setEnabled(z);
        this.duration_view.setEnabled(z);
        this.custom_arrow.setEnabled(z);
        this.custom_na.setEnabled(z);
    }

    private void exit() {
        final AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.AlertDialogTheme);
        builder.setIcon(R.drawable.ic_launcher);
        builder.setTitle(new ObfuscatedString(new long[]{-2633220886277004157L, -900348648963002028L, -6063842775227328967L}).toString());
        builder.setMessage(new ObfuscatedString(new long[]{-485225706146236249L, -2693548265603598671L, 5753629866330085867L, 7801350083181373189L, -3710459554098204400L}).toString());
        final int i = 0;
        builder.setPositiveButton(new ObfuscatedString(new long[]{8743971347924979608L, 4071218828286346269L}).toString(), new DialogInterface.OnClickListener(this) { // from class: 뎹뒙땀듻돰땜뒐딽뒝딟뎹듰뎻뒻땀따뒻듟돝뒤땣뒐돸땪둥둠땟듟땡땬뒼듸될돨땨땹딞뒝돵돼든돨딹땍됐땔땯딜디땬둥딀땍뎡땪뒨땮뒘딎땨뒝뒬뎹된뒝뒷득들땧뒝딌딨땟돶딄딝뒵땫듸돛돼딄됫뎠돛듟땔딅돵따따땜뎰딃뒹둔듨돶땵듟뎸듰둘뒼땟돼땸뒤땧땲뒨땨땐땠디됩딞됨듻뒷됩땃딐듼됐땲딄딸뒐돨

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ActivityUi f3788x3271d0aa;

            {
                this.f3788x3271d0aa = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                switch (i) {
                    case 0:
                        this.f3788x3271d0aa.lambda$exit$45(builder, dialogInterface, i2);
                        return;
                    default:
                        this.f3788x3271d0aa.lambda$exit$46(builder, dialogInterface, i2);
                        return;
                }
            }
        });
        final int i2 = 1;
        builder.setNegativeButton(new ObfuscatedString(new long[]{-9082253436701093950L, -8937450007900451159L}).toString(), new DialogInterface.OnClickListener(this) { // from class: 뎹뒙땀듻돰땜뒐딽뒝딟뎹듰뎻뒻땀따뒻듟돝뒤땣뒐돸땪둥둠땟듟땡땬뒼듸될돨땨땹딞뒝돵돼든돨딹땍됐땔땯딜디땬둥딀땍뎡땪뒨땮뒘딎땨뒝뒬뎹된뒝뒷득들땧뒝딌딨땟돶딄딝뒵땫듸돛돼딄됫뎠돛듟땔딅돵따따땜뎰딃뒹둔듨돶땵듟뎸듰둘뒼땟돼땸뒤땧땲뒨땨땐땠디됩딞됨듻뒷됩땃딐듼됐땲딄딸뒐돨

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ActivityUi f3788x3271d0aa;

            {
                this.f3788x3271d0aa = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i22) {
                switch (i2) {
                    case 0:
                        this.f3788x3271d0aa.lambda$exit$45(builder, dialogInterface, i22);
                        return;
                    default:
                        this.f3788x3271d0aa.lambda$exit$46(builder, dialogInterface, i22);
                        return;
                }
            }
        });
        builder.show();
        builder.setCancelable(false);
    }

    private String getConfigVersion() {
        try {
            return getJSONObject().getString(new ObfuscatedString(new long[]{3645424393184214941L, 9034971476491351230L}).toString());
        } catch (JSONException unused) {
            return new ObfuscatedString(new long[]{5469284011016791298L, 5925083741894578596L}).toString();
        }
    }

    private String getDaysLeft(String str) {
        if (str.contains(new ObfuscatedString(new long[]{-446460958552372176L, 3841988348750406889L}).toString())) {
            str = str.split(new ObfuscatedString(new long[]{891972299875489297L, 350153761877837466L}).toString())[0];
        }
        String[] split = str.split(new ObfuscatedString(new long[]{-8444721477516266553L, -7429757658159635041L}).toString());
        Calendar calendar = Calendar.getInstance();
        calendar.set(Integer.parseInt(split[0]), Integer.parseInt(split[1]) - 1, Integer.parseInt(split[2]));
        return String.format(new ObfuscatedString(new long[]{8381720145565818123L, -382451643939835576L, 250127876342601054L}).toString(), Long.valueOf((calendar.getTimeInMillis() - Calendar.getInstance().getTimeInMillis()) / 86400000));
    }

    @SuppressLint({"SimpleDateFormat"})
    private String getExpireDate(String str) {
        try {
            return new SimpleDateFormat(new ObfuscatedString(new long[]{4665944031979960792L, -6072706012722901198L, 5940297096515025455L}).toString()).format(new SimpleDateFormat(new ObfuscatedString(new long[]{-3403774885310822837L, -790293108212763081L, 1314943768195230944L, 5389090023292939641L}).toString()).parse(str));
        } catch (ParseException unused) {
            return str;
        }
    }

    private void getJSONSettings(String str) {
        String string;
        try {
            JSONArray jSONArray = new JSONArray(str.trim());
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                this.f5771config.setLocalPort(jSONObject.getString(new ObfuscatedString(new long[]{7810826700276756966L, -1975590407440499398L, -1198111691017349007L}).toString()));
                this.f5771config.setAutoClearLog(jSONObject.getBoolean(new ObfuscatedString(new long[]{4085678197815294778L, -1036961483734528882L, 4236388112116217821L}).toString()));
                this.f5771config.setDisabledDelaySSH(jSONObject.getBoolean(new ObfuscatedString(new long[]{-1578735078981647766L, 6075081126350286188L, 5312199028169817266L, 8715381351550246340L}).toString()));
                this.f5771config.setCompression(jSONObject.getBoolean(new ObfuscatedString(new long[]{-7859724701772039478L, 8303559006857782644L, 5461088987870582092L}).toString()));
                this.f5771config.setdnsForward(jSONObject.getBoolean(new ObfuscatedString(new long[]{2211808417675785910L, -6187112756258659786L, 145011303288342716L}).toString()));
                this.f5771config.setVpnDnsResolver(jSONObject.getString(new ObfuscatedString(new long[]{344516710270140297L, 2279317435333354964L, -8101220360165478767L}).toString()));
                this.f5771config.setVpnUdpForward(jSONObject.getBoolean(new ObfuscatedString(new long[]{-2409826466188899962L, 6533026928895691056L, -4341603266327692362L}).toString()));
                this.f5771config.setVpnUdpResolver(jSONObject.getString(new ObfuscatedString(new long[]{1956543146822354292L, -6569511968283983312L, -8719324819535666918L}).toString()));
                ConfigUtil configUtil = this.f5771config;
                if (jSONObject.getString(new ObfuscatedString(new long[]{4711765599649949683L, -2367174792751303068L, -4214086464749812176L}).toString()).isEmpty()) {
                    string = new ObfuscatedString(new long[]{8626637002918560243L, -611945432229396440L}).toString();
                } else {
                    string = jSONObject.getString(new ObfuscatedString(new long[]{-7682742285917716418L, -7991882412230469074L, 4737321750829826001L}).toString());
                }
                configUtil.setPingThread(Integer.parseInt(string));
                this.f5771config.setPingServer(jSONObject.getString(new ObfuscatedString(new long[]{-7083607240193965500L, 6549947541886846635L, -5460611200111634194L}).toString()));
                this.f5771config.setIp_hunter(jSONObject.getString(new ObfuscatedString(new long[]{5423914265613675712L, -4325670937078633533L, -7472024026609202600L}).toString()));
                this.f5771config.setIp_hunter_ip(jSONObject.getString(new ObfuscatedString(new long[]{-3229508902195628154L, -1305892266320947757L, 4600071593939132932L}).toString()));
                this.f5771config.setProxyAddress(jSONObject.getString(new ObfuscatedString(new long[]{-527104447319773952L, 3311495709219668812L, 6231810093307135808L}).toString()));
                this.f5771config.setReconnTime(jSONObject.getInt(new ObfuscatedString(new long[]{3778886935621544851L, -2973411022774019531L, 1252351731666085868L}).toString()));
                this.f5771config.setTetheringSubnet(jSONObject.getBoolean(new ObfuscatedString(new long[]{7552484337994704441L, 5067023248620531201L, 1591934003343616030L, 794575345595999L}).toString()));
            }
        } catch (JSONException e) {
            showToast(new ObfuscatedString(new long[]{2902616006329061712L, -441917335227550153L, -3411555947335349162L, -6725952852211528318L}).toString() + e.getMessage());
        }
    }

    private JSONObject getNetworkSelectedJson() {
        for (int i = 0; i < this.listNetwork.size(); i++) {
            if (this.listNetwork.get(i).getString(new ObfuscatedString(new long[]{4877039190936867508L, -3241237656551388079L}).toString()).equals(this.f5771config.getNetworkSelectedName())) {
                return this.listNetwork.get(i);
            }
        }
        return this.listNetwork.get(0);
    }

    private JSONObject getServer() {
        String serverSelectedName = this.f5771config.getServerSelectedName();
        JSONArray serversArray = getServersArray(this.selectedServerType);
        for (int i = 0; i < serversArray.length(); i++) {
            JSONObject jSONObject = serversArray.getJSONObject(i);
            if (jSONObject.getString(new ObfuscatedString(new long[]{4040686505286295669L, -2824425292113575368L}).toString()).equals(serverSelectedName)) {
                return jSONObject;
            }
        }
        return serversArray.getJSONObject(0);
    }

    private JSONObject getServerSelectedJson() {
        String serverSelectedName = this.f5771config.getServerSelectedName();
        JSONArray serversArray = getServersArray(this.selectedServerType);
        for (int i = 0; i < serversArray.length(); i++) {
            JSONObject jSONObject = serversArray.getJSONObject(i);
            if (jSONObject.getString(new ObfuscatedString(new long[]{-5754004753010508905L, 5013149079181448256L}).toString()).equals(serverSelectedName)) {
                return jSONObject;
            }
        }
        return serversArray.getJSONObject(0);
    }

    private boolean hasPermission(String str) {
        if (ContextCompat.checkSelfPermission(this, str) == 0) {
            return true;
        }
        return false;
    }

    private void hide_status() {
        this.status_view.setVisibility(8);
    }

    private void import_config(String str) {
        try {
            File file = new File(str);
            if (file.getPath().endsWith(new ObfuscatedString(new long[]{-4778183604054635892L, -3722313279290025995L}).toString())) {
                ConfigParser configParser = new ConfigParser();
                configParser.parseConfig(new InputStreamReader(new FileInputStream(str)));
                VpnProfile convertProfile = configParser.convertProfile();
                convertProfile.mName = file.getName();
                Connection connection = convertProfile.mConnections[0];
                if (connection.mUseCustomConfig) {
                    connection.mCustomConfiguration = new ObfuscatedString(new long[]{1585511373632484792L, -6269572100931248666L, 166501414450085666L, 682676536026565534L, -7076268676913611609L, -6244408254115476588L, -2572688761426043321L}).toString();
                }
                String str2 = convertProfile.mName;
                String format = String.format(new ObfuscatedString(new long[]{5229394639315895796L, -8051405153041783962L, -7698567523248651008L}).toString(), convertProfile.getConfigFile(this, false));
                if (getOpenVPNService() != null) {
                    getOpenVPNService().addProfile(str2, format);
                }
                showToast(new ObfuscatedString(new long[]{-3602606769196445156L, 5904869787202382994L, 6307056866489603011L}).toString());
            }
        } catch (Exception e) {
            showToast(new ObfuscatedString(new long[]{9154169549301539782L, -3764768254203834515L, 9132018766218736205L, -1618250530458923699L}).toString() + e.getMessage());
        }
    }

    private void import_menu() {
        ((AppCompatImageView) findViewById(R.id.config_option)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 6));
    }

    private void inboxNotification(int i, String str) {
        Notification.Builder autoCancel = new Notification.Builder(this).setLargeIcon(BitmapFactory.decodeResource(getResources(), R.drawable.ic_launcher)).setSmallIcon(i).setContentTitle(new ObfuscatedString(new long[]{-6389339646265812034L, 7389723971771984365L, 1191084057028248109L}).toString()).setContentText(str).setAutoCancel(true);
        Notification.BigTextStyle bigTextStyle = new Notification.BigTextStyle();
        bigTextStyle.setBigContentTitle(new ObfuscatedString(new long[]{3896768160840176168L, 6968876063553452922L, -2518603420423998243L, 5490289962731087676L}).toString());
        bigTextStyle.bigText(str);
        autoCancel.setStyle(bigTextStyle);
        TaskStackBuilder.create(this).addNextIntent(getIntent());
        autoCancel.setContentIntent(ConfigUtil.getPendingIntent(this));
        NotificationManager notificationManager = (NotificationManager) getSystemService(new ObfuscatedString(new long[]{4549458785518682375L, 312966209758635887L, 8411192561167555963L}).toString());
        if (Build.VERSION.SDK_INT >= 26) {
            String string = getString(R.string.channel_name_userreq);
            AbstractC1319x9e4ecaa8.m4347x9738a56c();
            NotificationChannel m3170x34271fae = AbstractC0594x7175b0df.m3170x34271fae(new ObfuscatedString(new long[]{-589647229898070307L, -4644102573861604059L, 8537436021556752534L}).toString(), string);
            m3170x34271fae.setDescription(resString(R.string.channel_description_userreq));
            m3170x34271fae.enableVibration(true);
            m3170x34271fae.setLightColor(-16711681);
            autoCancel.setChannelId(new ObfuscatedString(new long[]{-3000419470581019820L, -1321748191186815280L, -5297423236747115249L}).toString());
            if (notificationManager != null) {
                notificationManager.createNotificationChannel(m3170x34271fae);
            }
        } else {
            autoCancel.setDefaults(7);
        }
        if (notificationManager != null) {
            notificationManager.notify(3, autoCancel.build());
        }
    }

    private boolean isNetworkAvailable() {
        Network activeNetwork;
        ConnectivityManager connectivityManager = (ConnectivityManager) getSystemService(new ObfuscatedString(new long[]{7832120203703625445L, 2763250140833287451L, -4992800059550897284L}).toString());
        if (connectivityManager == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            activeNetwork = connectivityManager.getActiveNetwork();
            NetworkCapabilities networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            if (networkCapabilities == null) {
                return false;
            }
            return networkCapabilities.hasCapability(12);
        }
        for (Network network : connectivityManager.getAllNetworks()) {
            NetworkInfo networkInfo = connectivityManager.getNetworkInfo(network);
            if (networkInfo != null && networkInfo.isConnected()) {
                return true;
            }
        }
        return false;
    }

    public /* synthetic */ void lambda$CheckingApi$78(ConfigUtil configUtil, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.getString(new ObfuscatedString(new long[]{3318964300168404416L, -5821156261706333141L}).toString()).equals(new ObfuscatedString(new long[]{4811129597687631667L, 515301667306824111L}).toString()) && !jSONObject.getString(new ObfuscatedString(new long[]{-7967882380805971201L, 1171027069126400L, -8608720892211150973L}).toString()).equals(new ObfuscatedString(new long[]{5464274204733661756L, 5057707772426432814L}).toString()) && !jSONObject.getString(new ObfuscatedString(new long[]{-4027910580693247462L, -2648060931582002403L}).toString()).equals(new ObfuscatedString(new long[]{5784659491777530904L, -8513535897686014810L}).toString())) {
                if (jSONObject.getString(new ObfuscatedString(new long[]{7794305546045614942L, -2975064096523750594L, 3673175015334624331L}).toString()).equals(new ObfuscatedString(new long[]{-8045419981520990180L, -1881482014581336536L}).toString())) {
                    Toast.makeText(this, new ObfuscatedString(new long[]{1545133078106508317L, -2027757452976459273L, 7739243013318930013L, -7184609223291378151L, -202684577499441821L, -2399278153781610257L}).toString(), 0).show();
                    this.mDataGraph.stop();
                    this.custom_progressBar.setProgressWithAnimation(0.0f);
                    this.custom_progressBar.setColor(ContextCompat.getColor(this, R.color.dataOut));
                    this.f5771config.setStartTimer(false);
                    if (configUtil.isUDP().booleanValue()) {
                        stopUdp();
                    } else {
                        stopVPN();
                    }
                }
                this.mConfig.setHasAccount(false);
                startActivity(new Intent(this, (Class<?>) LoginActivity.class));
                finishAffinity();
                return;
            }
            Toast.makeText(this, new ObfuscatedString(new long[]{-934307131356881730L, -8241247549915704960L, -5975552888364280981L, -5481461517968740022L}).toString(), 0).show();
            this.mDataGraph.stop();
            this.custom_progressBar.setProgressWithAnimation(0.0f);
            this.custom_progressBar.setColor(ContextCompat.getColor(this, R.color.dataOut));
            this.f5771config.setStartTimer(false);
            if (configUtil.isUDP().booleanValue()) {
                stopUdp();
            } else {
                stopVPN();
            }
            this.mConfig.setHasAccount(false);
            startActivity(new Intent(this, (Class<?>) LoginActivity.class));
            finishAffinity();
        } catch (Exception unused) {
        }
    }

    public static /* synthetic */ void lambda$CheckingApi$79(VolleyError volleyError) {
    }

    public /* synthetic */ void lambda$addStatus$6(String str) {
        if (str.contains(new ObfuscatedString(new long[]{-1493080063479619491L, -8557509117438775277L, -4287778939909245424L, -1562583762529361352L}).toString())) {
            showToast(str);
        }
    }

    public /* synthetic */ void lambda$callInAppUpdate$60(AppUpdateManager appUpdateManager, AppUpdateInfo appUpdateInfo) {
        if (appUpdateInfo.updateAvailability() == 2 && appUpdateInfo.isUpdateTypeAllowed(1)) {
            try {
                appUpdateManager.startUpdateFlowForResult(appUpdateInfo, 1, this, 11);
            } catch (IntentSender.SendIntentException e) {
                new ObfuscatedString(new long[]{-9062793846981627071L, -4083569318623532709L, -7102870607026811357L}).toString();
                new ObfuscatedString(new long[]{-7421497511499272414L, 1799354762886006518L, -3145093617162420612L, 7134103492896846017L}).toString();
                e.getMessage();
            }
        }
    }

    public /* synthetic */ void lambda$dialogAddPayload$89(View view) {
        if (this.ckMultiCert.isChecked()) {
            this.v2.findViewById(R.id.etCertificate_ly).setVisibility(0);
        } else {
            this.v2.findViewById(R.id.etCertificate_ly).setVisibility(8);
        }
    }

    public /* synthetic */ void lambda$dialogAddPayload$90(View view) {
        if (this.ckUseDefProxy.isChecked()) {
            this.etSquidProxy.setText(new ObfuscatedString(new long[]{-8357678138305417037L, -3932574279489695221L, -7285443361431261254L}).toString());
            this.etSquidProxy.setEnabled(false);
        } else {
            this.etSquidProxy.setText(new ObfuscatedString(new long[]{5463324241060403230L}).toString());
            this.etSquidProxy.setEnabled(true);
        }
    }

    public /* synthetic */ void lambda$dialogAddPayload$91(String str) {
        this.etNetworkPayload.setText(str);
    }

    public /* synthetic */ void lambda$dialogAddPayload$92(TextInputEditText textInputEditText, TextInputEditText textInputEditText2, TextInputEditText textInputEditText3, TextInputEditText textInputEditText4, TextInputEditText textInputEditText5, TextInputEditText textInputEditText6, TextInputEditText textInputEditText7, TextInputEditText textInputEditText8, DialogInterface dialogInterface, int i) {
        try {
            String obj = textInputEditText.getText().toString();
            this.etNetworkPayload.setText(String.format(new ObfuscatedString(new long[]{-7965399761274152790L, 835144827050565591L, 5796858347720641783L, -8765066432389677878L, 6703797915527340878L, 5658502220078953614L, 470499488617567652L, 4619272116480201561L, 2992214481579885187L, -1376864062299615099L, -2282760819759927713L, 6902383602726473012L, -5379519468011516696L, -4671578766766449056L, -8374069027133586844L, 460663421310018798L, 444735403776985582L, -5272710025796807524L, -472121242788087824L, 3187704142334384710L, -713539244684525371L, -7525678784169440663L, 6533279217252142131L, -276824636402631721L, -7427101104711024169L, -5231582946149512923L, 3653204070339326158L, 1869640214648769265L, 8928957002181930191L, 5952598753101971904L, 460142818999565311L, 3595118050426121507L, -1425757411716456648L, 4746227708184742345L, 8995577237575272766L, 837150923659624378L, -5108071300534877802L, -4263257309188471445L, 4176427217699668428L, -754140607228531280L}).toString(), new ObfuscatedString(new long[]{-8661973197533415269L, 5238517071556468311L}).toString() + textInputEditText2.getText().toString(), obj, new ObfuscatedString(new long[]{-661146764350524303L, -5055414607249174757L}).toString(), Integer.valueOf(Integer.parseInt(textInputEditText3.getText().toString())), Integer.valueOf(Integer.parseInt(textInputEditText4.getText().toString())), Integer.valueOf(Integer.parseInt(textInputEditText5.getText().toString())), Integer.valueOf(Integer.parseInt(textInputEditText6.getText().toString())), new ObfuscatedString(new long[]{6002129675194342095L, -5139673861151258632L, -1183975397406352190L}).toString(), new ObfuscatedString(new long[]{-4447262525573727498L, -8237976530579831860L, 4264897947886339064L}).toString(), Boolean.TRUE, new ObfuscatedString(new long[]{5928774563292292909L}).toString(), Integer.valueOf(Integer.parseInt(textInputEditText7.getText().toString())), Integer.valueOf(Integer.parseInt(textInputEditText8.getText().toString()))));
        } catch (Exception e) {
            Toast.makeText(this, e.getMessage(), 1).show();
        }
    }

    public /* synthetic */ void lambda$dialogAddPayload$93(View view) {
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
                textInputEditText2.setText(this.myPrefs.getString(new ObfuscatedString(new long[]{-4268509558710008275L, -3508064897124588636L}).toString(), new ObfuscatedString(new long[]{6514294078389206352L}).toString()));
                builder.setNegativeButton(new ObfuscatedString(new long[]{-1358028393447877760L, -8533255253046944580L}).toString(), (DialogInterface.OnClickListener) null);
                builder.setPositiveButton(new ObfuscatedString(new long[]{-7956229490964887312L, -4512430093435616563L}).toString(), new DialogInterfaceOnClickListenerC0387xcd6c59d4(this, textInputEditText2, textInputEditText, textInputEditText5, textInputEditText6, textInputEditText3, textInputEditText4, textInputEditText7, textInputEditText8, 0));
                builder.setTitle(new ObfuscatedString(new long[]{1871677092521733546L, 1356477018208976522L, 2635617637502428256L}).toString());
                builder.setView(inflate);
                builder.create().show();
                return;
            }
            return;
        }
        gen genVar = new gen(this);
        genVar.setCancelListener(new ObfuscatedString(new long[]{1474337771868134127L, 1651665670360019577L}).toString(), null);
        genVar.setGenerateListener(new ObfuscatedString(new long[]{1618204522377919867L, 2105807146111314809L}).toString(), new C0375x845d249c(this, 9));
        genVar.show();
    }

    public /* synthetic */ void lambda$dialogAddPayload$94(View view) {
        this.a.dismiss();
    }

    public /* synthetic */ void lambda$dialogAddPayload$95(View view) {
        String obj = this.etNetworkPayload.getText().toString();
        String obj2 = this.etSquidProxy.getText().toString();
        boolean isChecked = this.ckMultiCert.isChecked();
        String replace = obj.replace(new ObfuscatedString(new long[]{-5615280404484305164L, 3164639420760455812L}).toString(), new ObfuscatedString(new long[]{-1030236928932021560L, -1051848479002211855L}).toString()).replace(new ObfuscatedString(new long[]{395232153518148368L, -2829479365107910065L}).toString(), new ObfuscatedString(new long[]{5412028775548209121L, -2143551375562645756L}).toString()).replace(new ObfuscatedString(new long[]{2968913516371879757L, -8031067054342067591L}).toString(), new ObfuscatedString(new long[]{-3796523297043748014L, -5302421179197125347L}).toString()).replace(new ObfuscatedString(new long[]{-6100314246235305236L, 9094910996976461488L}).toString(), new ObfuscatedString(new long[]{259938982358109360L, -8591057666461907380L}).toString()).replace(new ObfuscatedString(new long[]{-3616746229806399924L, 5009347567529113977L}).toString(), new ObfuscatedString(new long[]{1773434815674917031L, 3245671752660175287L}).toString()).replace(new ObfuscatedString(new long[]{6395437400112678462L, 2392467681087413630L}).toString(), new ObfuscatedString(new long[]{115656243519639891L, 3775405659865956420L}).toString()).replace(new ObfuscatedString(new long[]{-3930941042917828581L, 8026468257045906220L}).toString(), new ObfuscatedString(new long[]{4706462835726502982L, -2829363337616468480L}).toString()).replace(new ObfuscatedString(new long[]{-8106203299911232602L, -7435222008997036215L}).toString(), new ObfuscatedString(new long[]{2799174082147462717L, 3393411285153206349L}).toString()).replace(new ObfuscatedString(new long[]{-2147203973768600281L, -1803686988258265976L}).toString(), new ObfuscatedString(new long[]{-6789148844488627666L, -1967147803627976923L}).toString()).replace(new ObfuscatedString(new long[]{-6204372362263041270L, -7510959777197673832L}).toString(), new ObfuscatedString(new long[]{7273391219759791759L, 686991002148194656L}).toString()).replace(new ObfuscatedString(new long[]{3996569921750209643L, 5603269597774583427L}).toString(), new ObfuscatedString(new long[]{-731581035551361227L, 8029805788663889565L}).toString()).replace(new ObfuscatedString(new long[]{634039599430354338L, -437271231957047237L}).toString(), new ObfuscatedString(new long[]{3946675249534899888L, -745386626086972255L}).toString()).replace(new ObfuscatedString(new long[]{8226308458331698697L, -546541453876767279L}).toString(), new ObfuscatedString(new long[]{2449245960394612067L, -704389812613379288L}).toString()).replace(new ObfuscatedString(new long[]{1728171633590529291L, 7770304761619904973L}).toString(), new ObfuscatedString(new long[]{-337012207254402227L, 7343771761343067353L}).toString()).replace(new ObfuscatedString(new long[]{-8048726885100730586L, 7590679841880666098L}).toString(), new ObfuscatedString(new long[]{644910031155584715L, -2527851072695876307L}).toString()).replace(new ObfuscatedString(new long[]{-2579712179137961748L, 4910441384729201276L}).toString(), new ObfuscatedString(new long[]{-8463572967260701711L, 1917035791616614326L}).toString()).replace(new ObfuscatedString(new long[]{-7102977101872103753L, 6009310995718286718L}).toString(), new ObfuscatedString(new long[]{7999167502857082353L, 7199980553063760994L}).toString()).replace(new ObfuscatedString(new long[]{-5345291205323532872L, 1487723061250793504L}).toString(), new ObfuscatedString(new long[]{3706007076319397737L, -8491655881874073506L}).toString()).replace(new ObfuscatedString(new long[]{-6335229464613552005L, 1767299841900869661L}).toString(), new ObfuscatedString(new long[]{-1594310984620108715L, -9038329845946952132L}).toString()).replace(new ObfuscatedString(new long[]{8763106226794091905L, 1424387717661354495L}).toString(), new ObfuscatedString(new long[]{7697132446036798757L, 5111974586941944624L}).toString()).replace(new ObfuscatedString(new long[]{8838022154693110616L, -4424121418907405963L}).toString(), new ObfuscatedString(new long[]{7468250309760373760L, -2599661798742132280L}).toString()).replace(new ObfuscatedString(new long[]{-7175766702341548487L, -5324239732415187090L}).toString(), new ObfuscatedString(new long[]{-1027965365017466313L, -5129430311331686741L}).toString()).replace(new ObfuscatedString(new long[]{-2536578597415102854L, 8916464595103324737L}).toString(), new ObfuscatedString(new long[]{-9219968479988854167L, 3232610600399246071L}).toString()).replace(new ObfuscatedString(new long[]{6721187903775496125L, 7694876334573563166L}).toString(), new ObfuscatedString(new long[]{-1082853549560735018L, -1109354847616245597L}).toString()).replace(new ObfuscatedString(new long[]{-2787773894153090213L, 975484854204150170L}).toString(), new ObfuscatedString(new long[]{7037362074048992166L, -760307926639980688L}).toString()).replace(new ObfuscatedString(new long[]{-8331190525296535230L, 6389438673567877510L}).toString(), new ObfuscatedString(new long[]{2970630045740453325L, 2922150664006374069L}).toString());
        String replace2 = obj2.replace(new ObfuscatedString(new long[]{4384764601088930557L, 4549211708063041986L}).toString(), new ObfuscatedString(new long[]{8688835775338344053L, 5246552784180969508L}).toString()).replace(new ObfuscatedString(new long[]{1965413097088100286L, 9207224246726058187L}).toString(), new ObfuscatedString(new long[]{575931132683105866L, -7998094847361090017L}).toString()).replace(new ObfuscatedString(new long[]{7747176879647476446L, -4609948067780024089L}).toString(), new ObfuscatedString(new long[]{-4976118791553866764L, 1908774346306005416L}).toString()).replace(new ObfuscatedString(new long[]{8070873015308817359L, -6043304855522161622L}).toString(), new ObfuscatedString(new long[]{1862761403535596973L, -8256061318530016599L}).toString()).replace(new ObfuscatedString(new long[]{-4909135464679210302L, 5001358763859622305L}).toString(), new ObfuscatedString(new long[]{8728511004133138665L, -3858869095381289957L}).toString()).replace(new ObfuscatedString(new long[]{7292982317508894205L, -6855412266836921580L}).toString(), new ObfuscatedString(new long[]{-8047224204735357494L, -3216922485262298036L}).toString()).replace(new ObfuscatedString(new long[]{1908862814281603745L, 6403034548099348929L}).toString(), new ObfuscatedString(new long[]{4139646763114238370L, 414100361227963801L}).toString()).replace(new ObfuscatedString(new long[]{-7936802206774548901L, 5544832056938956280L}).toString(), new ObfuscatedString(new long[]{2505393827604736075L, 7330425637277319548L}).toString()).replace(new ObfuscatedString(new long[]{6432282698929291978L, 8328417736639323924L}).toString(), new ObfuscatedString(new long[]{7516651079898251025L, -7912309451004924890L}).toString()).replace(new ObfuscatedString(new long[]{-5736001454949617202L, -7289910099782091404L}).toString(), new ObfuscatedString(new long[]{-6677369767857636589L, -649250138131030611L}).toString()).replace(new ObfuscatedString(new long[]{-3839127702688692176L, 6669647234084404085L}).toString(), new ObfuscatedString(new long[]{189181953781018640L, -6661881170110345823L}).toString()).replace(new ObfuscatedString(new long[]{-7084497929722610055L, -3761458831861525784L}).toString(), new ObfuscatedString(new long[]{2229313481242843115L, 1793219836280789023L}).toString()).replace(new ObfuscatedString(new long[]{7392513488378894286L, 8804893200947721048L}).toString(), new ObfuscatedString(new long[]{710103667205830058L, -8283371097921812882L}).toString()).replace(new ObfuscatedString(new long[]{-1080970626063480776L, 5251631530826350194L}).toString(), new ObfuscatedString(new long[]{-2439400278340931901L, 3655501018640299000L}).toString()).replace(new ObfuscatedString(new long[]{-4176205412952543195L, 2485515192221170177L}).toString(), new ObfuscatedString(new long[]{3299470234605704492L, 2665452729199911536L}).toString()).replace(new ObfuscatedString(new long[]{-5539715708680429458L, -824868488997605317L}).toString(), new ObfuscatedString(new long[]{8325589440408484559L, -3947431453417221497L}).toString()).replace(new ObfuscatedString(new long[]{-2793101425964346436L, 7741697123715961869L}).toString(), new ObfuscatedString(new long[]{8767115586536351123L, 439544336502241688L}).toString()).replace(new ObfuscatedString(new long[]{-3637540203131520525L, 1465599382752938801L}).toString(), new ObfuscatedString(new long[]{-5099844796651370763L, 6812260224864820395L}).toString()).replace(new ObfuscatedString(new long[]{6308054166603477875L, 8253905330211459768L}).toString(), new ObfuscatedString(new long[]{-123205328828963165L, 2690582961254360710L}).toString()).replace(new ObfuscatedString(new long[]{-2888031749703005845L, 6553414050583729859L}).toString(), new ObfuscatedString(new long[]{-5065351363443609335L, -6600064568497799787L}).toString()).replace(new ObfuscatedString(new long[]{5351989052732173640L, -8113190872275004832L}).toString(), new ObfuscatedString(new long[]{-4971213740452209501L, -8459597241242062473L}).toString()).replace(new ObfuscatedString(new long[]{-1227232680957503149L, -6076201194183888610L}).toString(), new ObfuscatedString(new long[]{-4427560156869010753L, -8313500262888461424L}).toString()).replace(new ObfuscatedString(new long[]{-2622100990803756980L, -6210967782998667754L}).toString(), new ObfuscatedString(new long[]{6089330971074138565L, 7665200814175400970L}).toString()).replace(new ObfuscatedString(new long[]{-960173324569280704L, -8814233717195008606L}).toString(), new ObfuscatedString(new long[]{8603898705114834701L, 8694963350908858178L}).toString()).replace(new ObfuscatedString(new long[]{7531506149412027944L, 3162736702703759968L}).toString(), new ObfuscatedString(new long[]{8414464988916067267L, -4124560724894474376L}).toString()).replace(new ObfuscatedString(new long[]{9090072523226874303L, -3971848183987039087L}).toString(), new ObfuscatedString(new long[]{8549004845838205719L, 8476548129237760726L}).toString());
        JSONObject jSONObject = new JSONObject();
        String obj3 = this.etNetworkName.getText().toString();
        if (this.proto_spin.getSelectedItemPosition() == 0) {
            try {
                int selectedItemPosition = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-1610268849991627612L, -6112686258316961884L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{4046839714796710506L, -5234787199505224149L, -7446138412367878354L}).toString(), selectedItemPosition);
                jSONObject.put(new ObfuscatedString(new long[]{-7112937471603385133L, 699549083424468747L, -1129248998788574737L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{6108930940346558358L, -707914050286846691L, -4842683171754667940L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{3373718285165858561L, 7206531914895914663L}).toString(), new ObfuscatedString(new long[]{2257285996450149709L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{8290332580895134832L, 8738833967257964931L, -414680721212637268L}).toString(), new ObfuscatedString(new long[]{8663664462530898919L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7407932938695546901L, 8999123288888391851L}).toString(), new ObfuscatedString(new long[]{-8953675467196333562L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5784696529695583135L, -804853538670367409L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5031595464000188909L, -8959794294586933103L, 5965255225016185934L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{8281766785703225941L, -1262341600859335575L, 4815416781591551613L}).toString(), new ObfuscatedString(new long[]{5173802267450463824L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{7919960651457440245L, -4637318641802528767L, -5985825956658935855L}).toString(), new ObfuscatedString(new long[]{-275503402075840313L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{1927094728897645365L, -4457595437170721044L, -3615802018002864160L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{2811619279386785174L, -3990122706010993610L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{6345344076870715554L, -6012253152824084751L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{8120730220049470522L, 7257986485153088240L, -6409461736248619254L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8570559362973339638L, 2035615030921571154L, 8712461623475033473L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{392714458112983715L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{2158022832470109609L, 2846272255463136131L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-4119243818359025518L, 5541062584561579479L, -8077192839050745811L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{7378818936691183218L, -7560807679854655516L, -4364175380981399897L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{-6354992863938699964L, -4813789749607947931L, -4978669949190739332L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i = 0; i < this.listNetwork.size(); i++) {
                    if (obj3.equals(this.listNetwork.get(i).getString(new ObfuscatedString(new long[]{-3999532279080501752L, 8875431245993797242L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-8021307973233411232L, -3767474656240854807L}).toString(), 0).show();
                this.b.dismiss();
                return;
            } catch (Exception e) {
                Toast.makeText(this, e.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 1) {
            try {
                int selectedItemPosition2 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-4605871700199075694L, 4495688736806645895L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-5949280991094380518L, -4268158348397803119L, -5871641278701503984L}).toString(), selectedItemPosition2);
                jSONObject.put(new ObfuscatedString(new long[]{-3129130559324318510L, -770900383408721048L, 7036492503625771843L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{5364500363295673667L, -5500981492573250312L, 2555353409585691167L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-5241687686816592011L, 3473383531032243413L}).toString(), new ObfuscatedString(new long[]{-5983941953750424288L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1684181394050378865L, 3489347381437268240L, -5380160084273847042L}).toString(), new ObfuscatedString(new long[]{-6275416378219096541L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-120089239694550092L, -2280519307209025883L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-4325196018569440043L, 8137872205328953621L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7855944282087986032L, -2068903620804307149L, 5147433925479649194L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{538444308293254158L, -3735834503453423319L, 6804048014085535477L}).toString(), new ObfuscatedString(new long[]{-4726589148932092857L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8791152528108941358L, 1128786089063233703L, 685770063063146901L}).toString(), new ObfuscatedString(new long[]{-6145156159569650501L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7777292784517269987L, -8210751355036978550L, 3299757911981720391L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8153602493890371390L, -6775427927240665018L, -4487586035276145093L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-4682083465997057255L, 311231999437207801L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{1527609522196616702L, 3696037608681295573L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{909158992610314651L, 2473973889185810904L, -5207026078087954792L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{3506066071481367156L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-7331376296765616296L, -7168801993722823778L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-3145081663679711678L, 6395100538690410281L, 4841444475759096861L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-6475279633010462256L, 6176016623755040972L, 4891038708852112590L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{-2906600711245645880L, 8159285189220356165L, -1341790082775999533L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i2 = 0; i2 < this.listNetwork.size(); i2++) {
                    if (obj3.equals(this.listNetwork.get(i2).getString(new ObfuscatedString(new long[]{-3270294601049067572L, -4133686462426552399L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-763104952011959757L, -9137133142408949133L}).toString(), 0).show();
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
                jSONObject.put(new ObfuscatedString(new long[]{-7652818916671277331L, -9148855772228557751L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-564012359109305432L, 8347143261031537115L, -8912405487901608963L}).toString(), selectedItemPosition3);
                jSONObject.put(new ObfuscatedString(new long[]{6008258496023274758L, 4271453796688816148L, -5607205258842151234L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{5237077230579892875L, 69068574244259998L, -5586661618476660927L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{2843299616749613443L, -6479484787086634905L}).toString(), VPNUtil.encrypt(this.etSSLSNI.getText().toString()));
                jSONObject.put(new ObfuscatedString(new long[]{9119202590268368956L, 2591664800280432490L, 5818173113491687741L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8556913388376063944L, 168718353568582658L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-9098578808004468570L, 8802579220335765863L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{2871781254023185400L, -6770056849779008103L, -8486227403668199925L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{1392226423686500764L, -2202157023348504856L, -2009557700282796108L}).toString(), this.etNetworkFrontQuery.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7373248513868531883L, 7844491500375929608L, 4801398944831861563L}).toString(), this.etNetworkBackQuery.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7277923148674745947L, -5636896282268464721L, -1313403871662905496L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{3492736187018428625L, 5822234883437146156L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{5513474685764535158L, 7801791062407897856L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-6276806895907712668L, 9036458043861908488L, 3258859451921087899L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{2303714869169164164L, 92854864840267833L, -5405003410333050003L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{3648916963606887068L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-8862771763979544990L, -4239458568936284505L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{675823767508256274L, -8587601718338577491L, 5824532588752678614L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-7217465508458178897L, -1800928718887153869L, 3351135990199313326L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{-4166289845238128418L, -4735775499055064649L, 4649352257052608775L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i3 = 0; i3 < this.listNetwork.size(); i3++) {
                    if (obj3.equals(this.listNetwork.get(i3).getString(new ObfuscatedString(new long[]{28706798937917894L, -2188052849029096163L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-9088043477125009390L, 7072058229468351728L}).toString(), 0).show();
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
                jSONObject.put(new ObfuscatedString(new long[]{-3502182589420203525L, 111270502419486854L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-3251681470430482079L, -2058348866129927817L, 781220961682099029L}).toString(), selectedItemPosition4);
                jSONObject.put(new ObfuscatedString(new long[]{-6867218389052823696L, 1069710781025634405L, 8201870692896496764L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-1284950482445747107L, 1529235980682217870L, -1646251858563042964L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{6594031271024537442L, 9085265894651764249L}).toString(), VPNUtil.encrypt(this.etSSLSNI.getText().toString()));
                jSONObject.put(new ObfuscatedString(new long[]{-7043457205932374149L, 9168688941960180357L, 6559133259738800637L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{1203918935570854052L, 6269468310785462366L}).toString(), new ObfuscatedString(new long[]{-3234727978480181722L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4344855135889906398L, 3133660209758090114L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8191590749866088526L, -1420766739913684098L, -8140168505995748641L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{8933522849290992106L, -4738139693334768643L, 8167503184780855131L}).toString(), new ObfuscatedString(new long[]{9220809133108850888L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{234293082633016194L, -5290174158422144436L, 159655535599166997L}).toString(), new ObfuscatedString(new long[]{2335101484495712168L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{3144238537675545246L, 5039847399613081809L, -267886903139988082L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{8439259411302599946L, -3447858581008963471L}).toString(), new ObfuscatedString(new long[]{3855040522250171876L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{5400804527711213397L, 2505502238562688914L}).toString(), new ObfuscatedString(new long[]{-4390000924435472999L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5335699728605986228L, -360725633778592948L, 9060681395241314948L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-3410168465115429551L, 1907276110080540883L, 6173596559542442103L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{6284264411595336855L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{4074592473266398458L, -3394727760424016799L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-1121209153284233871L, 6349352156387372316L, -519706527748722533L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{6267624860027976479L, -12697565543582264L, -7981984287624626358L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{1998099087347203595L, -4704945606610716043L, 4444828268450613951L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i4 = 0; i4 < this.listNetwork.size(); i4++) {
                    if (obj3.equals(this.listNetwork.get(i4).getString(new ObfuscatedString(new long[]{6260441507406532830L, 5886471702527293776L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{6259390041773222339L, -7607157058150254359L}).toString(), 0).show();
                this.b.dismiss();
                return;
            } catch (Exception e4) {
                Toast.makeText(this, e4.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 4) {
            try {
                int selectedItemPosition5 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{5195997076644352256L, 6724796582631230394L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-7543920705943578695L, -104841782011193592L, 9153219238374573805L}).toString(), selectedItemPosition5);
                jSONObject.put(new ObfuscatedString(new long[]{-5543639385047147751L, -554677927780084305L, -329938520263250358L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{8592481280585019339L, -9114358153440207898L, 5646408113657565844L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{1128579478004671574L, 459207642794199445L}).toString(), VPNUtil.encrypt(this.etSSLSNI.getText().toString()));
                jSONObject.put(new ObfuscatedString(new long[]{-3199811664111519520L, 3263698842604694598L, 7305154045709023999L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-153768566806975872L, -3080660563211659051L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-76415059519718738L, 154261663936592731L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-385271085420590668L, -3867739765070803077L, 8966594006570377086L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{7291080897676034708L, 918896620601840929L, -3228602274859196226L}).toString(), new ObfuscatedString(new long[]{-3112363559302717397L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{4624737640711783468L, -6796453923555086924L, -2509295254504266549L}).toString(), new ObfuscatedString(new long[]{5112785525037718476L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-6440731956222567403L, 5980560407544296119L, -6026164095036395808L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-701139259116643392L, 7060831584585582632L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{-7281484129424903532L, 4095323708525090183L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{3038156356449680800L, -8912408375152861839L, 3291551999069848990L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-1057355812745969362L, 6227160536137165702L, 6668093460831401712L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-4763581413231967663L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-4000984925169166639L, 8341498126016390026L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-104830049673989383L, -5519671022423778592L, -5582612909794152886L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-398034287704504158L, -2533637387143227938L, -7036537026105652711L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{-6015334729006494992L, 1901106043488827166L, 8601921906507317490L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i5 = 0; i5 < this.listNetwork.size(); i5++) {
                    if (obj3.equals(this.listNetwork.get(i5).getString(new ObfuscatedString(new long[]{-7137755262662652195L, 8247781474865291456L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-8582581563385767243L, 4829731026315834541L}).toString(), 0).show();
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
                jSONObject.put(new ObfuscatedString(new long[]{-5472503566077675811L, -2206839232851281788L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{316105400857557962L, 6191385734125079441L, -5188509142130488782L}).toString(), selectedItemPosition6);
                jSONObject.put(new ObfuscatedString(new long[]{5218341002248691800L, -5157891418980205220L, -3908288030939358079L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-1122026503908865276L, 2706021960038001767L, -1675234114754847898L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{7035596981673211014L, 4830173523453382165L}).toString(), VPNUtil.encrypt(this.etSSLSNI.getText().toString()));
                jSONObject.put(new ObfuscatedString(new long[]{1901521281949426505L, 3879324869768954512L, -9175760402854281366L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{8070733061647628264L, 6116116607369922089L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-2029359100434765241L, -5717280123736033319L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7808813770979713341L, -7631306539459564843L, -501556823264727583L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-6961335926778586920L, 938873090279398916L, -5547921602026759970L}).toString(), new ObfuscatedString(new long[]{6744569937279459527L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-933953103610428076L, -2877515172811251112L, 1262492407587767495L}).toString(), new ObfuscatedString(new long[]{8735953703407053272L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4847228933527833416L, -1104171886826967491L, 7884024360767588897L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8078978810416670302L, -5557884635927232851L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{5004860933501175793L, 835005958587922645L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{8484819892943651675L, 1229213071682113287L, -5675082176113094529L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-1562878647387621452L, -1039930907626652307L, 881211552066120660L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-4521276291955839175L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-2900734158727336656L, 7412727531540757877L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-6536911791363723817L, -3911688442100573891L, 3606376883523631378L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-4883490363861629149L, -4102412105995284124L, -4151483583128922238L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{498406349911831195L, -4430538185635234602L, -4910348592978307242L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i6 = 0; i6 < this.listNetwork.size(); i6++) {
                    if (obj3.equals(this.listNetwork.get(i6).getString(new ObfuscatedString(new long[]{2123382421635734050L, -3839388356430002182L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{2249492481118017722L, 6213200098953087629L}).toString(), 0).show();
                this.b.dismiss();
                return;
            } catch (Exception e6) {
                Toast.makeText(this, e6.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 6) {
            try {
                int selectedItemPosition7 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{1661603787806897500L, 3494012553041184900L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{3195091611772107237L, 9028333656543752849L, -3109462763684587605L}).toString(), selectedItemPosition7);
                jSONObject.put(new ObfuscatedString(new long[]{-8489951949508334252L, 6480383951539253672L, -6393429679259543291L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-7796115373277720629L, -1968356625743622828L, 6573253156174934181L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-6576057868861512499L, -5272641144138476530L}).toString(), new ObfuscatedString(new long[]{-8663843886629162277L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{8956793935814313753L, -1719707900329057052L, -5127692988311609479L}).toString(), new ObfuscatedString(new long[]{-3778890337012978690L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-2677540841540179405L, -1287887828637909015L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-3689226355783482687L, 6064154141369983297L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{704173228487257172L, 1642729116491019713L, -2972423143682738209L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{7502041495629851886L, -3608302943788797962L, -2679956440873210401L}).toString(), new ObfuscatedString(new long[]{977886332511799019L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{7557757788401316985L, 641194587379158620L, 3773495798445362679L}).toString(), new ObfuscatedString(new long[]{360452717212198493L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4674959538803937330L, 462183886672940187L, -4690846225577724062L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{7243139802094762067L, 5403799575888649654L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{-7355710445873638710L, -6169579971393501180L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{1576493056631633636L, 1945402133077835835L, 3079210045239806952L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{4825676209326093290L, 3483678500877815885L, 4415817471385078513L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{1996552823286113587L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{3441879121186141652L, -9053695707302144521L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-1527600415419213204L, -5832381296357216913L, 7316794701225033859L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-69096001863821810L, 2151530217953731001L, -6993262226405974632L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{-5202549780086892461L, -1211345193953524373L, 931910229589063983L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i7 = 0; i7 < this.listNetwork.size(); i7++) {
                    if (obj3.equals(this.listNetwork.get(i7).getString(new ObfuscatedString(new long[]{-4469171469697643893L, 982416926948032581L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{102939642839064779L, 54079308406804493L}).toString(), 0).show();
                this.b.dismiss();
                return;
            } catch (Exception e7) {
                Toast.makeText(this, e7.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 7) {
            try {
                int selectedItemPosition8 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{498290479635571907L, 8867273507684461553L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{-5963634657040324816L, 6895351950656343609L, -8193277754323739846L}).toString(), selectedItemPosition8);
                jSONObject.put(new ObfuscatedString(new long[]{-283379235513416047L, -6280197847587210026L, 8825364667411477114L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-4010768681078600331L, -7020064056370233485L, 3526990401583872314L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{6876607810100938958L, 1299909927615867482L}).toString(), new ObfuscatedString(new long[]{8557185958995422647L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1677028268175422533L, -529714363957759759L, 7190456428688256260L}).toString(), new ObfuscatedString(new long[]{-6772286889711288194L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5162524587716357296L, -592899217095171606L}).toString(), new ObfuscatedString(new long[]{2221749127609107623L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{6828977320686302693L, -4172780738395462430L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4672220022562994291L, 1527748662588882488L, 6992719052240553574L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-1441997450770943440L, -8184923018208372737L, 5127319960279552966L}).toString(), new ObfuscatedString(new long[]{7101135908613765274L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5066638812999149135L, 555542624764556964L, -415822433057055748L}).toString(), new ObfuscatedString(new long[]{-4446920575558525428L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5336177754764759758L, -7811690919173300172L, -140446439658572610L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-861266782701475587L, -2645331137577024329L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{-8979165150920285880L, 9208430326992553172L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4871270252287966958L, -280834469354555289L, -4024321054908743516L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-1899514274487264273L, 7380329173486153839L, 1554906753544644664L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-4443268247330294934L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{6462277403246871291L, -657538373630058325L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{7112596790791547281L, -8083991082813212485L, 433427854622400694L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{5612224818646553469L, -1776538568976926461L, -7051509064247631876L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{-9037269351686404950L, -8853734270612991164L, -4996434107589787145L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i8 = 0; i8 < this.listNetwork.size(); i8++) {
                    if (obj3.equals(this.listNetwork.get(i8).getString(new ObfuscatedString(new long[]{8718511837463658660L, -3958079054555070401L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{4936839269555228062L, -2781304735413803228L}).toString(), 0).show();
                this.b.dismiss();
                return;
            } catch (Exception e8) {
                Toast.makeText(this, e8.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 8) {
            try {
                int selectedItemPosition9 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-2096923010268159674L, -8447853873496267757L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{5187886489525834081L, -3109474937188504773L, 2040125665764115950L}).toString(), selectedItemPosition9);
                jSONObject.put(new ObfuscatedString(new long[]{780627059865577993L, -8926754217633527452L, 1070957356707026040L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{8705621157511733343L, -5100839391080400184L, 1655439421228709546L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-4568486293952674874L, 1498490447563161348L}).toString(), new ObfuscatedString(new long[]{-6844452907017173301L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{1879316640232324731L, 950440957920347733L, 1972585070810904757L}).toString(), new ObfuscatedString(new long[]{-4578901281156537223L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1698579910919825966L, 4316281720750029035L}).toString(), new ObfuscatedString(new long[]{5422449040125972095L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{6630778664783594952L, -2214993432795279582L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{511677286686974889L, 5037776314162306200L, 6811214584535287401L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-5350701794613234115L, -4361139422618911018L, -1927740179470565326L}).toString(), new ObfuscatedString(new long[]{-6461092260917347737L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{1837945404917245113L, 1102647924004491904L, -1958203665751481156L}).toString(), new ObfuscatedString(new long[]{-5855953811397132104L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4024361998600008762L, 1966633030465038985L, 6503111983990709324L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{4716400988163456124L, -8422411399288266072L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{2593817068552326332L, 8754838500607950958L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7876918138784627580L, 6398346110392513386L, 8215222255601987264L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{6711743666929002933L, 3218998145346321957L, 6088036914009624545L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-4287432476961829979L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{8662644897291820748L, -6518618254472451436L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-4429153026225736414L, 2294522285395035594L, 8135747479228062267L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-2433072078941373125L, 8608126475917437631L, 7015742896628092350L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{8009567466472188282L, -1727202637710029247L, -6654821792699347021L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i9 = 0; i9 < this.listNetwork.size(); i9++) {
                    if (obj3.equals(this.listNetwork.get(i9).getString(new ObfuscatedString(new long[]{-2646234053972474032L, -5480697048260212706L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{2351392305133822152L, 3776397085673924951L}).toString(), 0).show();
                this.b.dismiss();
                return;
            } catch (Exception e9) {
                Toast.makeText(this, e9.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 9) {
            try {
                int selectedItemPosition10 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-8087326305301463950L, 6770579926409205565L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{4843508942759732069L, 504835036793032712L, 5490671152088736386L}).toString(), selectedItemPosition10);
                jSONObject.put(new ObfuscatedString(new long[]{8459529558537710065L, 3868632025458025039L, 2564408076661460437L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-289345337964208078L, -5142172011292992134L, 7355047323707723584L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-5380524653405922032L, -6323164919246694858L}).toString(), new ObfuscatedString(new long[]{-2464257617130070308L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{4669870638299772665L, 9096018705908589315L, -3945439828986204800L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{8747227908864426745L, 5452168122579761338L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-5694044087281943503L, 7972056701012542252L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7785278780825481101L, 6757278111028725405L, 5056349070295495868L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8321984059273171811L, 5725446652255664463L, -6125716159245531002L}).toString(), new ObfuscatedString(new long[]{49421997602336389L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8541895711702749669L, -3778976467552687306L, 7006646331093898938L}).toString(), new ObfuscatedString(new long[]{4544256947278095480L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-182135165657697272L, 276594540926665173L, 2564371399739372437L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{4365430166436113449L, -4929156705997293451L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{-4743999877166040681L, -301054346309875632L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{1993731989506402825L, 2790932204495395369L, -9180902471528808473L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-3641601100124899876L, 5164115156275329847L, 4392720783684594552L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{7440206815226264714L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-6996919464284705604L, 8200822072509875996L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-7725203227688142538L, -2112339450487168139L, -5113795667261970464L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-2865245207088916931L, 7602703778279704777L, 3877878573255030484L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{-8683163789536984940L, -507669393676386680L, 6922312454526698552L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i10 = 0; i10 < this.listNetwork.size(); i10++) {
                    if (obj3.equals(this.listNetwork.get(i10).getString(new ObfuscatedString(new long[]{2435790675792698997L, 5604077401065248491L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{7902432252879609051L, -790832426055708719L}).toString(), 0).show();
                this.b.dismiss();
                return;
            } catch (Exception e10) {
                Toast.makeText(this, e10.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 10) {
            try {
                int selectedItemPosition11 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{6412849738745155893L, 747313841921811446L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{979851782034664547L, -549587512789729883L, -333784596656972827L}).toString(), selectedItemPosition11);
                jSONObject.put(new ObfuscatedString(new long[]{1012690193301134196L, -8395067412119131427L, -4431966486858206102L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-1405853159783001191L, 154858911446974872L, -2082509638005812576L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{7148474029255676953L, 3193552220664223921L}).toString(), new ObfuscatedString(new long[]{6131948691049950853L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7238905162006039584L, 6083694236444114950L, 926790611967044058L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7309154503286681175L, 2656730224993911606L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{-2725527577189323959L, 7905322075193777569L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1594818632868727462L, 3790855435640927492L, -3821172405093173961L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{8996364422623539323L, -8410472226717023912L, 2365260576013098011L}).toString(), new ObfuscatedString(new long[]{8924645141188975907L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4651089537431843654L, 8205538884738506519L, 3420833153759963906L}).toString(), new ObfuscatedString(new long[]{8242544874744316563L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{3784233771713700652L, 3066554348651441474L, -3304201093685645766L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-5863601593900742899L, -3458200779379923507L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{2887850475625271245L, 7086291551314126029L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-3937264332343378683L, -416250605830931362L, 6848824574688159588L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{8345212471955659180L, -4951812206656376058L, -8356823501555664877L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{4522817471007151159L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{6083008604972884835L, -8627508540238395691L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{7572684760312011622L, 9218531453237731817L, 5187734918578216901L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{3299126499726001264L, 6987029665686994569L, 2085898048873381086L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{-8863666605079761535L, -8886935284706767129L, -2650093839419667345L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i11 = 0; i11 < this.listNetwork.size(); i11++) {
                    if (obj3.equals(this.listNetwork.get(i11).getString(new ObfuscatedString(new long[]{6530532176659433198L, -1903793829256109091L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{5000830313839902861L, -6911208110030804428L}).toString(), 0).show();
                this.b.dismiss();
                return;
            } catch (Exception e11) {
                Toast.makeText(this, e11.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 11) {
            try {
                int selectedItemPosition12 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{-7835675592452646543L, -873897112961033330L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{7348335917652836179L, 3131645139015292836L, -4010194972839724072L}).toString(), selectedItemPosition12);
                jSONObject.put(new ObfuscatedString(new long[]{-8999985830372491211L, 3215603460271147069L, -4018324006225687908L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-5227364396618083585L, 6816978258054532833L, -7440393290329322043L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{-6641854022098635699L, 3314622106687659404L}).toString(), new ObfuscatedString(new long[]{-7441005587158028686L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{4249794201853148163L, 7633229764876486656L, -2628293176066991418L}).toString(), new ObfuscatedString(new long[]{-2646046624930447262L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{562740440350633707L, 1426966659386595044L}).toString(), new ObfuscatedString(new long[]{382646472279035897L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{4865909411468387718L, -1557725596643761712L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1887113301383429529L, -5689404327749760764L, 8406213864062107794L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{8249866735359997247L, 8863382154509556208L, 291099588605782600L}).toString(), new ObfuscatedString(new long[]{2392192304573745283L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-3004137871930119931L, 7630351221282755736L, -1921494511533768550L}).toString(), new ObfuscatedString(new long[]{1000364283073231349L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-7074261117618260284L, 2057510116147335665L, 1222996271754445353L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{1926939340597394990L, 5561975780185947729L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{7997901236803386383L, 4570364824635374552L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{5100005684940451660L, -870894669310549336L, 1352553352748087619L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{1465924493982677840L, -4590244157305092867L, -5547508928650205058L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-7701727055246560686L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-164719026069621565L, -1616558980668105414L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-1823640311422279066L, 6235138775580710374L, 7741309053478751596L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{-2362669049051972801L, -359190552068202398L, 1506126962776580259L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{2440190535871180303L, -5738242320515437891L, 200656806774103814L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i12 = 0; i12 < this.listNetwork.size(); i12++) {
                    if (obj3.equals(this.listNetwork.get(i12).getString(new ObfuscatedString(new long[]{8268199648797638503L, -1253707433934427471L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{-3288873897688192470L, -6669344956788181632L}).toString(), 0).show();
                this.b.dismiss();
                return;
            } catch (Exception e12) {
                Toast.makeText(this, e12.getMessage(), 0).show();
                return;
            }
        }
        if (this.proto_spin.getSelectedItemPosition() == 12) {
            try {
                int selectedItemPosition13 = this.proto_spin.getSelectedItemPosition();
                jSONObject.put(new ObfuscatedString(new long[]{7402091104432005075L, 6002794810163125538L}).toString(), obj3);
                jSONObject.put(new ObfuscatedString(new long[]{4626318532372718644L, 6855370155212382383L, 2420826393964396220L}).toString(), selectedItemPosition13);
                jSONObject.put(new ObfuscatedString(new long[]{6994164730314451898L, 8847034386540714880L, 3729737012139447165L}).toString(), mServerType());
                jSONObject.put(new ObfuscatedString(new long[]{-8121317938211074178L, -5993853394888642904L, -6272374576788166732L}).toString(), mProtoType());
                jSONObject.put(new ObfuscatedString(new long[]{936687316544531534L, 510133941748468801L}).toString(), new ObfuscatedString(new long[]{-708793688572851326L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-6484261554635051493L, 5444722289166332320L, 5305250701636266597L}).toString(), new ObfuscatedString(new long[]{8957164818720144306L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{5588511278231515057L, 518034371746846960L}).toString(), new ObfuscatedString(new long[]{-506791424298596252L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-8914568736920729050L, 3079767381302388459L}).toString(), this.etNetworkInfo.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5176112374338637647L, -3145201671438711347L, -3956291044557854595L}).toString(), this.isReplace.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-1929348152419649100L, 2952060098953103879L, -4317464681385392718L}).toString(), new ObfuscatedString(new long[]{6822269846552649315L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-5788452552107911686L, 9010244061457902534L, -7359928199822507623L}).toString(), new ObfuscatedString(new long[]{396681387053042682L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4330935505968838481L, 626820422794799236L, -5394534414479965615L}).toString(), this.ckUseDefProxy.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{1625114375303743032L, -2101886934407824751L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{6540804409513141354L, 2842630603626425469L}).toString(), this.etSquidPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-2824169893846106982L, 2174735670414254652L, -769860318103868675L}).toString(), this.ckMultiCert.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8843638432493304809L, 8480777240719029313L, 7800302960958055171L}).toString(), isChecked ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-9220443708610156164L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-5306213024371822593L, 4947788457962350552L}).toString(), obj3);
                this.prefs.set_string(new ObfuscatedString(new long[]{-359859766121904762L, 7146552152461990230L, -1079675329164489352L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.editor.putString(new ObfuscatedString(new long[]{5523833690232366267L, -4859333649830124448L, -3499377936734924311L}).toString(), replace);
                this.editor.apply();
                this.f5771config.setNetworkSelectedPosition(0);
                this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{2868491600425708667L, 3630346907770002673L, -2162703145548710424L}).toString());
                loadNetworks();
                setSelectedNetwork(true);
                reloadNetwork();
                for (int i13 = 0; i13 < this.listNetwork.size(); i13++) {
                    if (obj3.equals(this.listNetwork.get(i13).getString(new ObfuscatedString(new long[]{6155345688430130107L, 178507297612436545L}).toString()))) {
                        setSelectedNetwork(true);
                    }
                }
                Toast.makeText(this, this.etNetworkName.getText().toString() + new ObfuscatedString(new long[]{713905352379877400L, -4043129789566397588L}).toString(), 0).show();
                this.b.dismiss();
            } catch (Exception e13) {
                Toast.makeText(this, e13.getMessage(), 0).show();
            }
        }
    }

    public /* synthetic */ void lambda$dialogAddPayload$96(View view) {
        this.b.dismiss();
    }

    public /* synthetic */ void lambda$dialogAddServer$80(View view) {
        if (this.ckMultiCert.isChecked()) {
            this.v.findViewById(R.id.etCertificate_ly).setVisibility(0);
        } else {
            this.v.findViewById(R.id.etCertificate_ly).setVisibility(8);
        }
    }

    public /* synthetic */ void lambda$dialogAddServer$81(View view) {
        if (this.ckUseLogin.isChecked()) {
            this.v.findViewById(R.id.Account_ly).setVisibility(0);
        } else {
            this.v.findViewById(R.id.Account_ly).setVisibility(8);
        }
    }

    public /* synthetic */ void lambda$dialogAddServer$82(View view) {
        if (this.fakeV2ray.isChecked()) {
            this.editor.putBoolean(new ObfuscatedString(new long[]{-2202913902337733417L, 350769290136735511L}).toString(), true);
            this.fakeV2ray.setText(new ObfuscatedString(new long[]{-6608285703746448866L, 7395328879815772530L, -4459088965416298224L, 1286256369917965093L}).toString());
            SaveFile();
        } else {
            this.fakeV2ray.setText(new ObfuscatedString(new long[]{6769324770230998390L, 7027688090367084877L, -4870253672777403040L, 7701457339752735327L}).toString());
            this.editor.putBoolean(new ObfuscatedString(new long[]{3511212928658767248L, 1292118571656443165L}).toString(), false);
        }
    }

    public /* synthetic */ void lambda$dialogAddServer$83(View view) {
        if (this.wire_full_conf.isChecked()) {
            this.wire_full_conf.setText(new ObfuscatedString(new long[]{-6802452770176929740L, -6492394293240269156L, -5424710747870808502L}).toString());
            this.v.findViewById(R.id.wire_ly).setVisibility(8);
            this.v.findViewById(R.id.http_ly).setVisibility(8);
            this.v.findViewById(R.id.etServerCloudFront_ly).setVisibility(8);
            this.v.findViewById(R.id.etServerHTTP_ly).setVisibility(8);
            this.v.findViewById(R.id.etServerIP_ly).setVisibility(0);
            return;
        }
        this.wire_full_conf.setText(new ObfuscatedString(new long[]{7637445509937507961L, 4521661100048300498L, -4015059906671440396L}).toString());
        this.v.findViewById(R.id.http_ly).setVisibility(8);
        this.v.findViewById(R.id.etServerIP_ly).setVisibility(8);
        this.v.findViewById(R.id.etServerCloudFront_ly).setVisibility(8);
        this.v.findViewById(R.id.wire_ly).setVisibility(0);
    }

    public /* synthetic */ void lambda$dialogAddServer$84(View view) {
        this.a.dismiss();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x261a A[Catch: Exception -> 0x001d, TryCatch #0 {Exception -> 0x001d, blocks: (B:3:0x000a, B:5:0x0012, B:6:0x0033, B:8:0x003b, B:9:0x0058, B:11:0x247e, B:14:0x2489, B:16:0x248f, B:19:0x2496, B:20:0x24c7, B:22:0x261a, B:23:0x2639, B:25:0x27e6, B:26:0x27fc, B:28:0x2817, B:29:0x281a, B:33:0x27f1, B:34:0x2625, B:35:0x249f, B:37:0x0046, B:38:0x0021), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x27e6 A[Catch: Exception -> 0x001d, TryCatch #0 {Exception -> 0x001d, blocks: (B:3:0x000a, B:5:0x0012, B:6:0x0033, B:8:0x003b, B:9:0x0058, B:11:0x247e, B:14:0x2489, B:16:0x248f, B:19:0x2496, B:20:0x24c7, B:22:0x261a, B:23:0x2639, B:25:0x27e6, B:26:0x27fc, B:28:0x2817, B:29:0x281a, B:33:0x27f1, B:34:0x2625, B:35:0x249f, B:37:0x0046, B:38:0x0021), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:28:0x2817 A[Catch: Exception -> 0x001d, TryCatch #0 {Exception -> 0x001d, blocks: (B:3:0x000a, B:5:0x0012, B:6:0x0033, B:8:0x003b, B:9:0x0058, B:11:0x247e, B:14:0x2489, B:16:0x248f, B:19:0x2496, B:20:0x24c7, B:22:0x261a, B:23:0x2639, B:25:0x27e6, B:26:0x27fc, B:28:0x2817, B:29:0x281a, B:33:0x27f1, B:34:0x2625, B:35:0x249f, B:37:0x0046, B:38:0x0021), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x27f1 A[Catch: Exception -> 0x001d, TryCatch #0 {Exception -> 0x001d, blocks: (B:3:0x000a, B:5:0x0012, B:6:0x0033, B:8:0x003b, B:9:0x0058, B:11:0x247e, B:14:0x2489, B:16:0x248f, B:19:0x2496, B:20:0x24c7, B:22:0x261a, B:23:0x2639, B:25:0x27e6, B:26:0x27fc, B:28:0x2817, B:29:0x281a, B:33:0x27f1, B:34:0x2625, B:35:0x249f, B:37:0x0046, B:38:0x0021), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x2625 A[Catch: Exception -> 0x001d, TryCatch #0 {Exception -> 0x001d, blocks: (B:3:0x000a, B:5:0x0012, B:6:0x0033, B:8:0x003b, B:9:0x0058, B:11:0x247e, B:14:0x2489, B:16:0x248f, B:19:0x2496, B:20:0x24c7, B:22:0x261a, B:23:0x2639, B:25:0x27e6, B:26:0x27fc, B:28:0x2817, B:29:0x281a, B:33:0x27f1, B:34:0x2625, B:35:0x249f, B:37:0x0046, B:38:0x0021), top: B:2:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$dialogAddServer$85(View view) {
        String obfuscatedString;
        String obfuscatedString2;
        String str;
        JSONObject jSONObject = new JSONObject();
        try {
            String obj = this.ckUseLogin.isChecked() ? this.etUser.getText().toString() : new ObfuscatedString(new long[]{-8106231851457375186L}).toString();
            String obj2 = this.ckUseLogin.isChecked() ? this.etPass.getText().toString() : new ObfuscatedString(new long[]{-3266991553690260742L}).toString();
            String obj3 = this.etServerIP.getText().toString();
            String obj4 = this.etServerCloudFront.getText().toString();
            String obj5 = this.etServerHTTP.getText().toString();
            String replace = this.etServerAddress.getText().toString().replace(new ObfuscatedString(new long[]{3103256918921134148L, -2942490942513474267L}).toString(), new ObfuscatedString(new long[]{8579167297732516967L, -1626976241625414749L}).toString()).replace(new ObfuscatedString(new long[]{-680512647976579823L, 1210063996198914429L}).toString(), new ObfuscatedString(new long[]{-696310733229749772L, 3356033148310055570L}).toString()).replace(new ObfuscatedString(new long[]{-4775329938267427431L, -3011526787926454002L}).toString(), new ObfuscatedString(new long[]{7956296548718964671L, -3821097247231243192L}).toString()).replace(new ObfuscatedString(new long[]{6343431764155090226L, -1675000057697413582L}).toString(), new ObfuscatedString(new long[]{5456510877672631769L, 5590221381824865512L}).toString()).replace(new ObfuscatedString(new long[]{2688588605529671744L, 9100311223407365172L}).toString(), new ObfuscatedString(new long[]{2215254615237591189L, 4957817061109683261L}).toString()).replace(new ObfuscatedString(new long[]{7319996141741806608L, 8371559741982374336L}).toString(), new ObfuscatedString(new long[]{3802420780517095005L, -3890626679852392962L}).toString()).replace(new ObfuscatedString(new long[]{5911384930157011526L, 3540665901543031072L}).toString(), new ObfuscatedString(new long[]{7178083367399873231L, -2203649491058271780L}).toString()).replace(new ObfuscatedString(new long[]{-2548005076826092971L, 6355120495359693955L}).toString(), new ObfuscatedString(new long[]{7223528905946793292L, -13923295160457321L}).toString()).replace(new ObfuscatedString(new long[]{-7487933918448732314L, -8842641289272136615L}).toString(), new ObfuscatedString(new long[]{8564432074626907577L, 2107896416810758640L}).toString()).replace(new ObfuscatedString(new long[]{-5140808042065729177L, -5363181421385422075L}).toString(), new ObfuscatedString(new long[]{-8757778535850862980L, 7169426330613353220L}).toString()).replace(new ObfuscatedString(new long[]{2030550239927778161L, 2661245282288815772L}).toString(), new ObfuscatedString(new long[]{-7840227428183359496L, -8825060072857775458L}).toString()).replace(new ObfuscatedString(new long[]{5409510131004681228L, 2541614817531248183L}).toString(), new ObfuscatedString(new long[]{-5514348821416775605L, -7371621411637233656L}).toString()).replace(new ObfuscatedString(new long[]{-797087837084075384L, -8612490308507886150L}).toString(), new ObfuscatedString(new long[]{-3809020559502922189L, 8631409526747860057L}).toString()).replace(new ObfuscatedString(new long[]{-5745999064667673188L, -1649815345788476803L}).toString(), new ObfuscatedString(new long[]{-8387328420374372878L, 7988494513566242050L}).toString()).replace(new ObfuscatedString(new long[]{-7586034759962110296L, -4482013668438998778L}).toString(), new ObfuscatedString(new long[]{8094319199038162950L, 2789797163199376896L}).toString()).replace(new ObfuscatedString(new long[]{-7477836034655894501L, 4441307650712107035L}).toString(), new ObfuscatedString(new long[]{108807175454606751L, -7166849367235175475L}).toString()).replace(new ObfuscatedString(new long[]{4680651238384885189L, -8035858489158182360L}).toString(), new ObfuscatedString(new long[]{-621377325857797166L, -4530602675569449105L}).toString()).replace(new ObfuscatedString(new long[]{-8171804757749817693L, 5401964489365728028L}).toString(), new ObfuscatedString(new long[]{-2383249518551856333L, -6406507372006342512L}).toString()).replace(new ObfuscatedString(new long[]{-5160158455627382194L, -4611194701119500397L}).toString(), new ObfuscatedString(new long[]{6996477213324718321L, 7435139013161517042L}).toString()).replace(new ObfuscatedString(new long[]{4009141332939098730L, 7696186464981237341L}).toString(), new ObfuscatedString(new long[]{-3164084949779622335L, -7158727119655653146L}).toString()).replace(new ObfuscatedString(new long[]{-6674592797545519067L, -8233983064770869477L}).toString(), new ObfuscatedString(new long[]{-2904288533340480114L, -3074949774533849411L}).toString()).replace(new ObfuscatedString(new long[]{1113042128161756506L, -1529763864177360209L}).toString(), new ObfuscatedString(new long[]{8037690099209982875L, -6255386228326191579L}).toString()).replace(new ObfuscatedString(new long[]{-4658803623284542606L, 1196462382956430369L}).toString(), new ObfuscatedString(new long[]{-1432246495274779586L, -2161804681913857138L}).toString()).replace(new ObfuscatedString(new long[]{2972196848022675057L, 6296282917042847485L}).toString(), new ObfuscatedString(new long[]{-3058618866384370008L, 5177960799466793139L}).toString()).replace(new ObfuscatedString(new long[]{-48849002167768793L, -8684280775794396598L}).toString(), new ObfuscatedString(new long[]{-8095826319064086006L, 8402785128176587998L}).toString()).replace(new ObfuscatedString(new long[]{1317761382040732133L, 9058641340791442160L}).toString(), new ObfuscatedString(new long[]{306663857853713091L, 3634400753703799302L}).toString());
            String replace2 = this.etEndpoint.getText().toString().replace(new ObfuscatedString(new long[]{291976834450441440L, -1500618160908219487L}).toString(), new ObfuscatedString(new long[]{-5928120474929472762L, 2854111281690992377L}).toString()).replace(new ObfuscatedString(new long[]{-3395890350286637255L, 239904469533930176L}).toString(), new ObfuscatedString(new long[]{6472028291266198832L, -6620725615673768555L}).toString()).replace(new ObfuscatedString(new long[]{475760938256980474L, 96004078258377991L}).toString(), new ObfuscatedString(new long[]{-266030523742633483L, 3695018188882536837L}).toString()).replace(new ObfuscatedString(new long[]{3908993593813789414L, 6717113911753859920L}).toString(), new ObfuscatedString(new long[]{-2871831998009367649L, 539206070441345696L}).toString()).replace(new ObfuscatedString(new long[]{7637118476075618347L, -208309903939537721L}).toString(), new ObfuscatedString(new long[]{4920966371156682538L, 1091410843413485437L}).toString()).replace(new ObfuscatedString(new long[]{-271648514563684450L, 4842481224588201012L}).toString(), new ObfuscatedString(new long[]{-7381545376748964140L, 8262688605001925955L}).toString()).replace(new ObfuscatedString(new long[]{5109881531508495947L, -6057189348573204110L}).toString(), new ObfuscatedString(new long[]{5897794968830857829L, -2510471966217197251L}).toString()).replace(new ObfuscatedString(new long[]{-6947512633258356936L, 3268880449763825128L}).toString(), new ObfuscatedString(new long[]{-3508264901257820041L, -1805920586292959361L}).toString()).replace(new ObfuscatedString(new long[]{-3120462737398766469L, 285253052991823094L}).toString(), new ObfuscatedString(new long[]{566794234707712326L, -1051080909010404997L}).toString()).replace(new ObfuscatedString(new long[]{399406532470569031L, -1400266565288284125L}).toString(), new ObfuscatedString(new long[]{2764973631961751790L, 806842942370625230L}).toString()).replace(new ObfuscatedString(new long[]{-2875043106435026671L, 3809289018601949127L}).toString(), new ObfuscatedString(new long[]{2672581432698456720L, 1351673441749023626L}).toString()).replace(new ObfuscatedString(new long[]{-4115538212759565685L, -2033061834777735720L}).toString(), new ObfuscatedString(new long[]{-2585088262282835798L, 1762679841924429991L}).toString()).replace(new ObfuscatedString(new long[]{7302095274593862172L, 1795317402603875589L}).toString(), new ObfuscatedString(new long[]{3817730646781002243L, -6532279476646188921L}).toString()).replace(new ObfuscatedString(new long[]{813952092834408651L, -3782542193257555524L}).toString(), new ObfuscatedString(new long[]{487448762279337691L, 7084225444824885839L}).toString()).replace(new ObfuscatedString(new long[]{-5057076663330271648L, 1262501781864941476L}).toString(), new ObfuscatedString(new long[]{7963110808063748007L, 5225238523953570912L}).toString()).replace(new ObfuscatedString(new long[]{6755795403373151013L, 8319780335148364124L}).toString(), new ObfuscatedString(new long[]{5891656005099226414L, 8554212749059842754L}).toString()).replace(new ObfuscatedString(new long[]{-8403245631910681872L, -1203634517652348667L}).toString(), new ObfuscatedString(new long[]{3701949378189802676L, 6921797689778952071L}).toString()).replace(new ObfuscatedString(new long[]{-5690121916243069539L, -24121520058614491L}).toString(), new ObfuscatedString(new long[]{7172779847334835678L, -5532899738716385822L}).toString()).replace(new ObfuscatedString(new long[]{1778686632176522887L, 6015876828940438290L}).toString(), new ObfuscatedString(new long[]{7952747960648759077L, 1629574355358889678L}).toString()).replace(new ObfuscatedString(new long[]{3102871797223807030L, -8172528127857509989L}).toString(), new ObfuscatedString(new long[]{-1430798496003245197L, 2844719684221913761L}).toString()).replace(new ObfuscatedString(new long[]{-801085602632146889L, 3458119376831411933L}).toString(), new ObfuscatedString(new long[]{-3277085763327143490L, 6873348784966725917L}).toString()).replace(new ObfuscatedString(new long[]{1070886099140644936L, 5976251473363480065L}).toString(), new ObfuscatedString(new long[]{6476947866326024820L, 3330590261744847137L}).toString()).replace(new ObfuscatedString(new long[]{-1030958774685234540L, -3891174751192342283L}).toString(), new ObfuscatedString(new long[]{-9029557939702098202L, -8410610537964510327L}).toString()).replace(new ObfuscatedString(new long[]{4772744579210006233L, -236551275753736662L}).toString(), new ObfuscatedString(new long[]{-4421284112082055257L, -9094765459113218878L}).toString()).replace(new ObfuscatedString(new long[]{-1457142014264112224L, -3351470264013598574L}).toString(), new ObfuscatedString(new long[]{2703821196168505401L, -759237470433403589L}).toString()).replace(new ObfuscatedString(new long[]{6711470478041139359L, 9074807372213487059L}).toString(), new ObfuscatedString(new long[]{-1788629911774869137L, 2778849144702676091L}).toString());
            String replace3 = this.etPublicKey.getText().toString().replace(new ObfuscatedString(new long[]{-5359008801720270765L, 8868707121840309718L}).toString(), new ObfuscatedString(new long[]{-8517087332311450118L, -7098949513378692354L}).toString()).replace(new ObfuscatedString(new long[]{-3498586940696864455L, -8228158984907871640L}).toString(), new ObfuscatedString(new long[]{947967949446434942L, 4632380568181942884L}).toString()).replace(new ObfuscatedString(new long[]{-5605920385356077211L, 9064921325092796237L}).toString(), new ObfuscatedString(new long[]{3606683665798583607L, -2914683228625783461L}).toString()).replace(new ObfuscatedString(new long[]{-8926271938114077177L, 3189375655856861518L}).toString(), new ObfuscatedString(new long[]{1526194856775443234L, -1876988983231357358L}).toString()).replace(new ObfuscatedString(new long[]{-5159975200784534539L, 1476077645650976256L}).toString(), new ObfuscatedString(new long[]{3454676984632811671L, -5770316722851131730L}).toString()).replace(new ObfuscatedString(new long[]{2419133144342222170L, 7779334398661339497L}).toString(), new ObfuscatedString(new long[]{-7899452892964614855L, 7812142453972879612L}).toString()).replace(new ObfuscatedString(new long[]{-3823961882605418458L, -3300231821294464546L}).toString(), new ObfuscatedString(new long[]{-7072941834321839235L, -2824685429064636835L}).toString()).replace(new ObfuscatedString(new long[]{5768725480573782089L, 5300319574320284846L}).toString(), new ObfuscatedString(new long[]{184523435626667445L, -2055561923264950825L}).toString()).replace(new ObfuscatedString(new long[]{3382017043988177081L, -2511588754853188511L}).toString(), new ObfuscatedString(new long[]{2592807704751217142L, -5215652023267980262L}).toString()).replace(new ObfuscatedString(new long[]{6585200483895418478L, -7437433680007224872L}).toString(), new ObfuscatedString(new long[]{4551046683449177511L, -1701555548446550930L}).toString()).replace(new ObfuscatedString(new long[]{915701537245806144L, 8115026265355335262L}).toString(), new ObfuscatedString(new long[]{-1628945826714529083L, -3998458912391705290L}).toString()).replace(new ObfuscatedString(new long[]{3570082111960972786L, 2371208578637607795L}).toString(), new ObfuscatedString(new long[]{188974042185428256L, -2990220927872814580L}).toString()).replace(new ObfuscatedString(new long[]{-6341855709378302331L, 6025807393934755669L}).toString(), new ObfuscatedString(new long[]{4180610449303311146L, 984589955079666395L}).toString()).replace(new ObfuscatedString(new long[]{-2907273919056164733L, -7480720743560255552L}).toString(), new ObfuscatedString(new long[]{8260693129115527085L, 2987203765529395415L}).toString()).replace(new ObfuscatedString(new long[]{2787637582669865103L, 6197892433798270836L}).toString(), new ObfuscatedString(new long[]{5501958928485021950L, 4640257250402285891L}).toString()).replace(new ObfuscatedString(new long[]{7470458883644305442L, -2151974252896556395L}).toString(), new ObfuscatedString(new long[]{-4010494908246391110L, -5847200475257022471L}).toString()).replace(new ObfuscatedString(new long[]{-2876536795731527260L, -5757972520494729225L}).toString(), new ObfuscatedString(new long[]{-641889583299566557L, 2226686048446364780L}).toString()).replace(new ObfuscatedString(new long[]{-7944304517529550172L, 384286402510018342L}).toString(), new ObfuscatedString(new long[]{-4950427891683015001L, -7702045620349701453L}).toString()).replace(new ObfuscatedString(new long[]{-1087080751188655307L, 7103187624335866462L}).toString(), new ObfuscatedString(new long[]{5857077573380345148L, -6042604864118638169L}).toString()).replace(new ObfuscatedString(new long[]{-1208865532932552655L, 3224190048938603447L}).toString(), new ObfuscatedString(new long[]{5284308269547650491L, 2299833839977882024L}).toString()).replace(new ObfuscatedString(new long[]{-1622867389158946839L, -3622687873976491371L}).toString(), new ObfuscatedString(new long[]{8483004544882496844L, 751630936360233633L}).toString()).replace(new ObfuscatedString(new long[]{4543145019022611047L, -2254373670837384606L}).toString(), new ObfuscatedString(new long[]{-8483908657688869762L, 6050583233219348982L}).toString()).replace(new ObfuscatedString(new long[]{-5390387761922998919L, 5386223256736522594L}).toString(), new ObfuscatedString(new long[]{-1391241289738452605L, -5017207039446826738L}).toString()).replace(new ObfuscatedString(new long[]{-5461192835807852558L, -2131929019937217764L}).toString(), new ObfuscatedString(new long[]{6366727809492183258L, 8928366449324760536L}).toString()).replace(new ObfuscatedString(new long[]{2244920632983450078L, -7902037720351620074L}).toString(), new ObfuscatedString(new long[]{-7433877685059210587L, 2307274908457723828L}).toString()).replace(new ObfuscatedString(new long[]{7326319821885864811L, -1137792384630100560L}).toString(), new ObfuscatedString(new long[]{-8524482561365026129L, -2168572758109057898L}).toString());
            String replace4 = this.etPrivateKey.getText().toString().replace(new ObfuscatedString(new long[]{-7050477152422500039L, -593686788034406641L}).toString(), new ObfuscatedString(new long[]{-242425442753251135L, 5113698746550036040L}).toString()).replace(new ObfuscatedString(new long[]{3344846691832117722L, -8279583501812354089L}).toString(), new ObfuscatedString(new long[]{4634347768674580050L, -3330129662154861106L}).toString()).replace(new ObfuscatedString(new long[]{5197193696868311386L, -5294586008571995772L}).toString(), new ObfuscatedString(new long[]{-8432370612060390773L, 1117324020209591734L}).toString()).replace(new ObfuscatedString(new long[]{-3698416307960829126L, -5241838004064431658L}).toString(), new ObfuscatedString(new long[]{-1379550671490358497L, 4437228170032271986L}).toString()).replace(new ObfuscatedString(new long[]{8755494001339024994L, -4416811872499732215L}).toString(), new ObfuscatedString(new long[]{-7095524547712998662L, -8138073883209110520L}).toString()).replace(new ObfuscatedString(new long[]{3010641699363642875L, -8309249064316955304L}).toString(), new ObfuscatedString(new long[]{-4250939393411922279L, 2205219106580690419L}).toString()).replace(new ObfuscatedString(new long[]{-3996200253263619972L, -3649159705048644146L}).toString(), new ObfuscatedString(new long[]{195315708149247789L, 5947240609760715417L}).toString()).replace(new ObfuscatedString(new long[]{3921324403740811348L, 8840363411378557574L}).toString(), new ObfuscatedString(new long[]{6849402138937436690L, -3469837437094399803L}).toString()).replace(new ObfuscatedString(new long[]{3316805459236592327L, -4736259983459811373L}).toString(), new ObfuscatedString(new long[]{-6794688720032983019L, -6330289705570069279L}).toString()).replace(new ObfuscatedString(new long[]{19074959101267752L, 2752000386861343460L}).toString(), new ObfuscatedString(new long[]{8065833676680716027L, 3917099772788270608L}).toString()).replace(new ObfuscatedString(new long[]{2241295113444057341L, -4138701223462886483L}).toString(), new ObfuscatedString(new long[]{-8855404198883418915L, 3922809759419608643L}).toString()).replace(new ObfuscatedString(new long[]{-1909093507112370981L, -2540123678581727364L}).toString(), new ObfuscatedString(new long[]{7257329475121348515L, 2865929216031681548L}).toString()).replace(new ObfuscatedString(new long[]{-6345838370586881110L, 7434359456829972763L}).toString(), new ObfuscatedString(new long[]{4819071184165624787L, 5699850911279616839L}).toString()).replace(new ObfuscatedString(new long[]{4288943852739301272L, -3795705558972327592L}).toString(), new ObfuscatedString(new long[]{-6157987043202548698L, -8933843860229147027L}).toString()).replace(new ObfuscatedString(new long[]{-6641918156647623168L, 9007232174272191800L}).toString(), new ObfuscatedString(new long[]{5979406013120318697L, -8633174547675898426L}).toString()).replace(new ObfuscatedString(new long[]{-2350242522066652844L, -6868750325324325909L}).toString(), new ObfuscatedString(new long[]{-8563919011547200462L, 5934177255368182111L}).toString()).replace(new ObfuscatedString(new long[]{-7610619704010106196L, 222611078564517024L}).toString(), new ObfuscatedString(new long[]{-1071430993609401193L, -6083945296088630231L}).toString()).replace(new ObfuscatedString(new long[]{-3744433146284655206L, -39182085730966500L}).toString(), new ObfuscatedString(new long[]{-4400868284947994644L, -7141124180189968514L}).toString()).replace(new ObfuscatedString(new long[]{-8248414872342208577L, 324298218815922359L}).toString(), new ObfuscatedString(new long[]{-576422280537084141L, -8049741883295004162L}).toString()).replace(new ObfuscatedString(new long[]{6141338776759596650L, -3288924564307613863L}).toString(), new ObfuscatedString(new long[]{7575235694515468090L, 5799486611275099471L}).toString()).replace(new ObfuscatedString(new long[]{-2982844625461424776L, 6830951305650541141L}).toString(), new ObfuscatedString(new long[]{6479626250167948491L, 7897846943127670444L}).toString()).replace(new ObfuscatedString(new long[]{-3077105863550313497L, -389390381393450331L}).toString(), new ObfuscatedString(new long[]{472032107342913855L, 5058777037301023651L}).toString()).replace(new ObfuscatedString(new long[]{-9032790051347148875L, 3661030073943653002L}).toString(), new ObfuscatedString(new long[]{2468764604946202390L, -993671258622707980L}).toString()).replace(new ObfuscatedString(new long[]{384514965511996254L, -4275974746720252485L}).toString(), new ObfuscatedString(new long[]{-7645882620397024120L, -4820767811592621830L}).toString()).replace(new ObfuscatedString(new long[]{-6436171480206828775L, 3432698733462394359L}).toString(), new ObfuscatedString(new long[]{3535035318182533914L, -7303103956631191948L}).toString()).replace(new ObfuscatedString(new long[]{3997990347371701064L, -3045558923171473322L}).toString(), new ObfuscatedString(new long[]{-3828769375744702216L, -4915607076325720894L}).toString());
            String replace5 = this.etPreSharedKey.getText().toString().replace(new ObfuscatedString(new long[]{-8546485985822657232L, -6002925790601579683L}).toString(), new ObfuscatedString(new long[]{-5505880068531459117L, 3904113503406495409L}).toString()).replace(new ObfuscatedString(new long[]{7750364782418029551L, -4619841748803307330L}).toString(), new ObfuscatedString(new long[]{-7105484783600531375L, 9061032026231666776L}).toString()).replace(new ObfuscatedString(new long[]{8166906859617501097L, -4972944380617715208L}).toString(), new ObfuscatedString(new long[]{5565247471962328683L, -2597399539586117653L}).toString()).replace(new ObfuscatedString(new long[]{1740027929409175371L, 4014186202554682451L}).toString(), new ObfuscatedString(new long[]{2685550091365462752L, 5933377299914436386L}).toString()).replace(new ObfuscatedString(new long[]{7623793029064709796L, -3719585822867549377L}).toString(), new ObfuscatedString(new long[]{-7558067522836703600L, -5224983066507592498L}).toString()).replace(new ObfuscatedString(new long[]{6533488259792110196L, 4282097783985220062L}).toString(), new ObfuscatedString(new long[]{8263538283148476301L, 7959466346751991642L}).toString()).replace(new ObfuscatedString(new long[]{-1223056649501538384L, -2805141290117297226L}).toString(), new ObfuscatedString(new long[]{-5551986681376870217L, 3195652898371672632L}).toString()).replace(new ObfuscatedString(new long[]{5677718753656323756L, 6486143451909956740L}).toString(), new ObfuscatedString(new long[]{7319821114641531589L, 1589140160590167166L}).toString()).replace(new ObfuscatedString(new long[]{-1134287037289385996L, -3003449043802985324L}).toString(), new ObfuscatedString(new long[]{6967613903423833737L, 416939102736215827L}).toString()).replace(new ObfuscatedString(new long[]{4774877081184637644L, 2077398481780935558L}).toString(), new ObfuscatedString(new long[]{-1546001067123871851L, 6604009958439755336L}).toString()).replace(new ObfuscatedString(new long[]{7594808936047639313L, -3335559350977878535L}).toString(), new ObfuscatedString(new long[]{497958846054622979L, 7167786087579874949L}).toString()).replace(new ObfuscatedString(new long[]{-3152549656943981984L, -6784787158127844260L}).toString(), new ObfuscatedString(new long[]{3171034304290685729L, 3648149094398099516L}).toString()).replace(new ObfuscatedString(new long[]{1289028330926646647L, 2522138609741419295L}).toString(), new ObfuscatedString(new long[]{-7622967524064508952L, -1039896124745941896L}).toString()).replace(new ObfuscatedString(new long[]{2081124215314010806L, -8010277191941748743L}).toString(), new ObfuscatedString(new long[]{-7766690770082354645L, -4412240699250248919L}).toString()).replace(new ObfuscatedString(new long[]{2200382524248125077L, -8677905787446380407L}).toString(), new ObfuscatedString(new long[]{783819436135133931L, 9052018807792029654L}).toString()).replace(new ObfuscatedString(new long[]{595318225297820982L, -7381345668576089460L}).toString(), new ObfuscatedString(new long[]{-1470335662530511316L, 9020222050215319714L}).toString()).replace(new ObfuscatedString(new long[]{8842288281724127277L, 2597993668813458721L}).toString(), new ObfuscatedString(new long[]{2130924437344470012L, 7926184820182481161L}).toString()).replace(new ObfuscatedString(new long[]{-7284199337553929943L, 725183897114943863L}).toString(), new ObfuscatedString(new long[]{-1875973619081731779L, 6805119284411258681L}).toString()).replace(new ObfuscatedString(new long[]{4635629785120317794L, -845709741055308030L}).toString(), new ObfuscatedString(new long[]{2674504638502703865L, -6704639593648268781L}).toString()).replace(new ObfuscatedString(new long[]{3684571681739339263L, -4536002865820992207L}).toString(), new ObfuscatedString(new long[]{-5091624600345166480L, -7958203905988465979L}).toString()).replace(new ObfuscatedString(new long[]{7485833241675034267L, -7418740952434845725L}).toString(), new ObfuscatedString(new long[]{3199963129527389829L, -1871590326950811061L}).toString()).replace(new ObfuscatedString(new long[]{-3964911706703450998L, -6667025078304554435L}).toString(), new ObfuscatedString(new long[]{-6920963320522585959L, 2116185304764562056L}).toString()).replace(new ObfuscatedString(new long[]{-7926722330437413063L, -5917436209077507516L}).toString(), new ObfuscatedString(new long[]{4700907729053908898L, -8736639292475792027L}).toString()).replace(new ObfuscatedString(new long[]{-9151760824089284715L, 1800726497636759638L}).toString(), new ObfuscatedString(new long[]{2348767809579973302L, -6487339798734073636L}).toString()).replace(new ObfuscatedString(new long[]{7554271346850126424L, -7898350377706359326L}).toString(), new ObfuscatedString(new long[]{-2378304331658738126L, 5244840692362793779L}).toString()).replace(new ObfuscatedString(new long[]{2929893974734345132L, 5556232412133932025L}).toString(), new ObfuscatedString(new long[]{1312606630055149724L, 3603058828007881724L}).toString());
            String replace6 = this.etAllowedIPs.getText().toString().replace(new ObfuscatedString(new long[]{5880652905689728004L, -2755810566314475924L}).toString(), new ObfuscatedString(new long[]{-481311642567200872L, 2645566960889323717L}).toString()).replace(new ObfuscatedString(new long[]{-3831291075956650911L, 490119152466878427L}).toString(), new ObfuscatedString(new long[]{6644160270483176043L, -2872642916924694051L}).toString()).replace(new ObfuscatedString(new long[]{-7983381501523157169L, 2557778099228832948L}).toString(), new ObfuscatedString(new long[]{-1407459936129903286L, 8441903242153331716L}).toString()).replace(new ObfuscatedString(new long[]{7653994251248400929L, -8768742712634983522L}).toString(), new ObfuscatedString(new long[]{-5304671350551240590L, 8640015852043836413L}).toString()).replace(new ObfuscatedString(new long[]{-8981742974221165724L, -3494777082114919759L}).toString(), new ObfuscatedString(new long[]{8141996182507546804L, -8894725609081157731L}).toString()).replace(new ObfuscatedString(new long[]{-4101574806055269020L, 2119594208925411318L}).toString(), new ObfuscatedString(new long[]{8601727776309359300L, 5101022077127209734L}).toString()).replace(new ObfuscatedString(new long[]{-3388011089590310579L, 1064021241093136404L}).toString(), new ObfuscatedString(new long[]{5592330999905560414L, 6630950759071292357L}).toString()).replace(new ObfuscatedString(new long[]{-3741360190870328842L, -2597473742383320810L}).toString(), new ObfuscatedString(new long[]{-6073815664252693485L, -3020811042080929433L}).toString()).replace(new ObfuscatedString(new long[]{3318593464582813727L, -5803403546246786056L}).toString(), new ObfuscatedString(new long[]{-7724740561780518049L, -3275870214637624522L}).toString()).replace(new ObfuscatedString(new long[]{-4003006827368777054L, 8115239396533474834L}).toString(), new ObfuscatedString(new long[]{7608005339154104730L, 5089456379677493809L}).toString()).replace(new ObfuscatedString(new long[]{-6531048368250197534L, -3824603538994739700L}).toString(), new ObfuscatedString(new long[]{2907713324257390986L, -6038111741719562766L}).toString()).replace(new ObfuscatedString(new long[]{-4526263382181121919L, 2202503173956824899L}).toString(), new ObfuscatedString(new long[]{6791801092425511222L, 8092015468749779645L}).toString()).replace(new ObfuscatedString(new long[]{-780835814366782068L, -108197081707547097L}).toString(), new ObfuscatedString(new long[]{1223602775910818184L, 7256095552109754405L}).toString()).replace(new ObfuscatedString(new long[]{-5497868622751110679L, 8519073593126890914L}).toString(), new ObfuscatedString(new long[]{-4405574155844739220L, 3947810112390371139L}).toString()).replace(new ObfuscatedString(new long[]{-5058026969384830447L, -195607988843046335L}).toString(), new ObfuscatedString(new long[]{713082640155987720L, 5098223245207839994L}).toString()).replace(new ObfuscatedString(new long[]{-5762185973254617941L, -5226639668958038089L}).toString(), new ObfuscatedString(new long[]{1412587517266668226L, -1858304183702139647L}).toString()).replace(new ObfuscatedString(new long[]{1613658597388822485L, 1710045576165091540L}).toString(), new ObfuscatedString(new long[]{7600751336668952426L, -4094312899636983139L}).toString()).replace(new ObfuscatedString(new long[]{4843677405582260180L, -6596457841648987382L}).toString(), new ObfuscatedString(new long[]{2992381114404655524L, 8668352195483711828L}).toString()).replace(new ObfuscatedString(new long[]{-1965725887517497217L, 4588151935273292975L}).toString(), new ObfuscatedString(new long[]{-1029333645621500004L, -1510519690604809049L}).toString()).replace(new ObfuscatedString(new long[]{-5971659671925633116L, -7191331012931925890L}).toString(), new ObfuscatedString(new long[]{-4748013304317613057L, 3456352488240075750L}).toString()).replace(new ObfuscatedString(new long[]{-5082045733427918006L, 4783885255635620218L}).toString(), new ObfuscatedString(new long[]{-5692968413994415591L, -4527405807982373126L}).toString()).replace(new ObfuscatedString(new long[]{5847002787305887444L, -2069162504283753075L}).toString(), new ObfuscatedString(new long[]{5879358602628359746L, -4939840632064351222L}).toString()).replace(new ObfuscatedString(new long[]{186465980816490993L, -6100882388090468174L}).toString(), new ObfuscatedString(new long[]{4826293677468578441L, 6745433821900923748L}).toString()).replace(new ObfuscatedString(new long[]{-4683170534285141117L, -8236573904511374603L}).toString(), new ObfuscatedString(new long[]{-5197703676370956176L, -9101882879897520493L}).toString()).replace(new ObfuscatedString(new long[]{-245015966221056798L, 5359533183832350481L}).toString(), new ObfuscatedString(new long[]{4695749777556686349L, -7576210049374328741L}).toString()).replace(new ObfuscatedString(new long[]{3314597344640691934L, -7759895199464846090L}).toString(), new ObfuscatedString(new long[]{1238662915611979487L, -8576124595232021969L}).toString());
            String replace7 = obj.replace(new ObfuscatedString(new long[]{-4969001411377364279L, -7944609880765518137L}).toString(), new ObfuscatedString(new long[]{-9218830361435603183L, 8466280012229001551L}).toString()).replace(new ObfuscatedString(new long[]{-6679724846794494111L, -1324333849934001694L}).toString(), new ObfuscatedString(new long[]{-10816902551093550L, -952049655943783572L}).toString()).replace(new ObfuscatedString(new long[]{-8571540974479506294L, -2471639662511452917L}).toString(), new ObfuscatedString(new long[]{-2580359550606369512L, 6834150963224409310L}).toString()).replace(new ObfuscatedString(new long[]{3539081462001693088L, -7964431534480883556L}).toString(), new ObfuscatedString(new long[]{-2410709678307593191L, -3932230827150919310L}).toString()).replace(new ObfuscatedString(new long[]{2601347647896487581L, 7433888765717598919L}).toString(), new ObfuscatedString(new long[]{219235032826229812L, 6369602353528271291L}).toString()).replace(new ObfuscatedString(new long[]{8698403487479217076L, 5619062709923386119L}).toString(), new ObfuscatedString(new long[]{6406416418704845042L, 8048439434589962399L}).toString()).replace(new ObfuscatedString(new long[]{2847771435363635825L, -41302259663203781L}).toString(), new ObfuscatedString(new long[]{-7048734162967994886L, 4923083242102302884L}).toString()).replace(new ObfuscatedString(new long[]{7100391491848927377L, 8322514509194754028L}).toString(), new ObfuscatedString(new long[]{3673923017809570185L, -1091352896264214551L}).toString()).replace(new ObfuscatedString(new long[]{-8381320468366203723L, 2710069433799554135L}).toString(), new ObfuscatedString(new long[]{-9151161258224825419L, 8897492951962229263L}).toString()).replace(new ObfuscatedString(new long[]{2933906173245924914L, -7237640579121823798L}).toString(), new ObfuscatedString(new long[]{1421116573336972805L, -6865416819828417189L}).toString()).replace(new ObfuscatedString(new long[]{-1988621883575245108L, 7528315883897872540L}).toString(), new ObfuscatedString(new long[]{2880512969437561673L, 4774698922529065855L}).toString()).replace(new ObfuscatedString(new long[]{-4040323077556175935L, -4624057524783634388L}).toString(), new ObfuscatedString(new long[]{-177005077770669127L, -2382931322249644395L}).toString()).replace(new ObfuscatedString(new long[]{-1283609231038041133L, 3696263563364667557L}).toString(), new ObfuscatedString(new long[]{-1352499580784186135L, -4517455095140950566L}).toString()).replace(new ObfuscatedString(new long[]{475793834142095794L, 3317590760068397999L}).toString(), new ObfuscatedString(new long[]{-6075233766166715735L, 3859253192871901394L}).toString()).replace(new ObfuscatedString(new long[]{-8148266645639602515L, 1600223053387114217L}).toString(), new ObfuscatedString(new long[]{-6820163551544400618L, -8675407738453399375L}).toString()).replace(new ObfuscatedString(new long[]{-839164141885543444L, -6841283962066772980L}).toString(), new ObfuscatedString(new long[]{4021710506384633197L, -8692431087792372973L}).toString()).replace(new ObfuscatedString(new long[]{-8740555236538838973L, 503266803163502487L}).toString(), new ObfuscatedString(new long[]{-2352970710857009183L, 3896241159578638083L}).toString()).replace(new ObfuscatedString(new long[]{2560574785701903356L, 1341873693652669695L}).toString(), new ObfuscatedString(new long[]{-7742337727195669544L, 9152070182701972671L}).toString()).replace(new ObfuscatedString(new long[]{7014282701492447775L, 830247011549969139L}).toString(), new ObfuscatedString(new long[]{4774042817551318783L, 1490253672431803911L}).toString()).replace(new ObfuscatedString(new long[]{8324334374242267666L, 9181431123778090219L}).toString(), new ObfuscatedString(new long[]{-2697687533802117375L, -6772610497471896107L}).toString()).replace(new ObfuscatedString(new long[]{-1731964286423778274L, 881858918462006884L}).toString(), new ObfuscatedString(new long[]{4891798152626252033L, -5956756845417903759L}).toString()).replace(new ObfuscatedString(new long[]{-3595587462263013072L, 4759631332618884069L}).toString(), new ObfuscatedString(new long[]{-8036068766174227891L, 2079608663058984991L}).toString()).replace(new ObfuscatedString(new long[]{7416536348580720144L, -4841015426561372173L}).toString(), new ObfuscatedString(new long[]{-4970891294837028443L, -869605894026081966L}).toString()).replace(new ObfuscatedString(new long[]{7047069568194427256L, 3942977931469350270L}).toString(), new ObfuscatedString(new long[]{3927882195970318440L, 8403524648804301741L}).toString()).replace(new ObfuscatedString(new long[]{-3873519578327562192L, 1641842413321544664L}).toString(), new ObfuscatedString(new long[]{-3391950187867733449L, -7357586751332438167L}).toString()).replace(new ObfuscatedString(new long[]{-581336464117373074L, 4290165109232925157L}).toString(), new ObfuscatedString(new long[]{-6222433299156816209L, 8129873710334810818L}).toString());
            String replace8 = obj2.replace(new ObfuscatedString(new long[]{-4715856325140078394L, 4386545949498690268L}).toString(), new ObfuscatedString(new long[]{698186743240911052L, -3818786213877125151L}).toString()).replace(new ObfuscatedString(new long[]{-2449246836236457781L, 6424062201668797716L}).toString(), new ObfuscatedString(new long[]{-8698219058871054076L, -5928335771298766047L}).toString()).replace(new ObfuscatedString(new long[]{2300907761578474840L, -4722876608634253916L}).toString(), new ObfuscatedString(new long[]{7993339885033955512L, -7066902129147980453L}).toString()).replace(new ObfuscatedString(new long[]{-2388499784084052772L, -6099030748299227706L}).toString(), new ObfuscatedString(new long[]{-7777897668792212032L, -3208522087953777944L}).toString()).replace(new ObfuscatedString(new long[]{-7634117929848882482L, 1086815786719903421L}).toString(), new ObfuscatedString(new long[]{5433949011572157388L, -7045239164845942747L}).toString()).replace(new ObfuscatedString(new long[]{4916069294146787429L, 6922101731304021871L}).toString(), new ObfuscatedString(new long[]{-1641017377744154768L, 4020940445210909673L}).toString()).replace(new ObfuscatedString(new long[]{7868352441020874407L, 6648122400821005671L}).toString(), new ObfuscatedString(new long[]{-5243037283473440496L, 4439285404700358536L}).toString()).replace(new ObfuscatedString(new long[]{2672874936634236143L, 8555929295731923906L}).toString(), new ObfuscatedString(new long[]{-3327010409272012377L, 1066142645396353805L}).toString()).replace(new ObfuscatedString(new long[]{6707325341271499904L, 5500257760913487817L}).toString(), new ObfuscatedString(new long[]{-550831053035612352L, 992660508497281236L}).toString()).replace(new ObfuscatedString(new long[]{5114291221358527758L, -55790023889367361L}).toString(), new ObfuscatedString(new long[]{4880835131048712583L, 1226599150666707055L}).toString()).replace(new ObfuscatedString(new long[]{4567784937456275730L, 3647850186093278825L}).toString(), new ObfuscatedString(new long[]{-8937152107191949128L, 4366055103132550037L}).toString()).replace(new ObfuscatedString(new long[]{2085182304862726392L, 4392216284437043860L}).toString(), new ObfuscatedString(new long[]{-6090394434402180886L, -1652791386481795410L}).toString()).replace(new ObfuscatedString(new long[]{-7284910253778918840L, 123367800004317128L}).toString(), new ObfuscatedString(new long[]{-2695373733807840352L, 7367367843766248263L}).toString()).replace(new ObfuscatedString(new long[]{-7403166949155775515L, 6716310615685778082L}).toString(), new ObfuscatedString(new long[]{2389653143684801496L, -4894162845021823448L}).toString()).replace(new ObfuscatedString(new long[]{6280049653467100526L, 89129985703239495L}).toString(), new ObfuscatedString(new long[]{-2747098323738519854L, 3405800734139038369L}).toString()).replace(new ObfuscatedString(new long[]{-1001542515653096429L, 8212841420971776641L}).toString(), new ObfuscatedString(new long[]{-5889184090846164624L, 1725191237303868196L}).toString()).replace(new ObfuscatedString(new long[]{4375420276130337705L, -7497016214307007537L}).toString(), new ObfuscatedString(new long[]{-7183354184401183651L, -7398937628868076232L}).toString()).replace(new ObfuscatedString(new long[]{6554313652150230898L, 8128912560658236561L}).toString(), new ObfuscatedString(new long[]{-2241595951589252657L, 8988602162377067256L}).toString()).replace(new ObfuscatedString(new long[]{-3226406277609022178L, -7546337554848967192L}).toString(), new ObfuscatedString(new long[]{1170803380769731662L, 2322069685471263822L}).toString()).replace(new ObfuscatedString(new long[]{-6105129929111539395L, -4273633036309489114L}).toString(), new ObfuscatedString(new long[]{-7186906631681237811L, 4340019082281699717L}).toString()).replace(new ObfuscatedString(new long[]{6435324170069081093L, 2590122115226687516L}).toString(), new ObfuscatedString(new long[]{2436752347626594509L, 7998766769490155298L}).toString()).replace(new ObfuscatedString(new long[]{-6197187091539834657L, -8364904795954515323L}).toString(), new ObfuscatedString(new long[]{-8847476740898638452L, 4923924105039000170L}).toString()).replace(new ObfuscatedString(new long[]{-348485892699695426L, 1224975174623085941L}).toString(), new ObfuscatedString(new long[]{-6148477458629735309L, -6947435003156877323L}).toString()).replace(new ObfuscatedString(new long[]{-2560950622604345598L, 3266327472476117797L}).toString(), new ObfuscatedString(new long[]{-7056386508730441174L, -1127283061537820655L}).toString()).replace(new ObfuscatedString(new long[]{2074130717295692613L, 8669522995018839534L}).toString(), new ObfuscatedString(new long[]{3976206020751418747L, 4945569462353466689L}).toString()).replace(new ObfuscatedString(new long[]{4875541254896930998L, -5759281849246538080L}).toString(), new ObfuscatedString(new long[]{8502679725596630758L, -3609303063192978350L}).toString());
            String replace9 = obj3.replace(new ObfuscatedString(new long[]{-689388297750377617L, 1811845609075441797L}).toString(), new ObfuscatedString(new long[]{199655362612976337L, 3998341669706699487L}).toString()).replace(new ObfuscatedString(new long[]{-5629858235845787716L, 5794201711675912360L}).toString(), new ObfuscatedString(new long[]{-1592779234229247031L, 7862037497093150998L}).toString()).replace(new ObfuscatedString(new long[]{7841788124432303997L, -304655835717778887L}).toString(), new ObfuscatedString(new long[]{6241251284847814115L, -7230676913742296720L}).toString()).replace(new ObfuscatedString(new long[]{-3739739462850110060L, -1781767669370881389L}).toString(), new ObfuscatedString(new long[]{8966655314275328624L, -5749678602738384224L}).toString()).replace(new ObfuscatedString(new long[]{-5890905031520031423L, -7508172221467525464L}).toString(), new ObfuscatedString(new long[]{3975030976392197700L, -7134637054482262926L}).toString()).replace(new ObfuscatedString(new long[]{-3139925738957848665L, -2822626186429321639L}).toString(), new ObfuscatedString(new long[]{4800954723447904251L, 5334770671720820100L}).toString()).replace(new ObfuscatedString(new long[]{2851444756755705903L, 395879186513027892L}).toString(), new ObfuscatedString(new long[]{-3238662155689899373L, 1887245853139080503L}).toString()).replace(new ObfuscatedString(new long[]{810140231499165841L, 7907573489206028077L}).toString(), new ObfuscatedString(new long[]{2829659209665774744L, -221598478985635057L}).toString()).replace(new ObfuscatedString(new long[]{-4573766362223819088L, -1248365608713706571L}).toString(), new ObfuscatedString(new long[]{-6970358877672882022L, 8724294320091213302L}).toString()).replace(new ObfuscatedString(new long[]{-7834474025673180750L, -2408010660210189408L}).toString(), new ObfuscatedString(new long[]{-350143244816854886L, -8975922481214254945L}).toString()).replace(new ObfuscatedString(new long[]{-1548007573537537779L, -5446951739320426129L}).toString(), new ObfuscatedString(new long[]{2664663443925555643L, 4452080629249661195L}).toString()).replace(new ObfuscatedString(new long[]{-2122626034219088532L, 9023005673564451927L}).toString(), new ObfuscatedString(new long[]{619926005294076443L, -2015538186276852599L}).toString()).replace(new ObfuscatedString(new long[]{-6256307645038112907L, 3564675709201669776L}).toString(), new ObfuscatedString(new long[]{419985178456351457L, -8893959316089167607L}).toString()).replace(new ObfuscatedString(new long[]{-1049530325629041634L, -4637628814373441593L}).toString(), new ObfuscatedString(new long[]{1274138502875946562L, -3131109248169518563L}).toString()).replace(new ObfuscatedString(new long[]{693465714436603767L, -2330437712335617261L}).toString(), new ObfuscatedString(new long[]{3521766742553823117L, 6218341953979878308L}).toString()).replace(new ObfuscatedString(new long[]{-7382076632888672198L, 2834351815336911454L}).toString(), new ObfuscatedString(new long[]{-8344044071329209646L, -9028695151695303881L}).toString()).replace(new ObfuscatedString(new long[]{4639914218705313021L, -8249312178528150114L}).toString(), new ObfuscatedString(new long[]{880340098780213926L, -329295173716156429L}).toString()).replace(new ObfuscatedString(new long[]{-5788053521278126259L, -5184273137454146294L}).toString(), new ObfuscatedString(new long[]{3125956055830918674L, -3242292701567623914L}).toString()).replace(new ObfuscatedString(new long[]{8737697287561391008L, -3846167265843036583L}).toString(), new ObfuscatedString(new long[]{-4193171986500931041L, -4470440032909574763L}).toString()).replace(new ObfuscatedString(new long[]{5320825176955977848L, -933168387641840320L}).toString(), new ObfuscatedString(new long[]{6497829179185837017L, -2108498574642210862L}).toString()).replace(new ObfuscatedString(new long[]{3338316427520042582L, -8885668915083772535L}).toString(), new ObfuscatedString(new long[]{-7306371026110406012L, 2869340643531967151L}).toString()).replace(new ObfuscatedString(new long[]{-4467160322447200481L, 2569364882660385258L}).toString(), new ObfuscatedString(new long[]{-420688034742119189L, 2296608365571467977L}).toString()).replace(new ObfuscatedString(new long[]{4659270618233029899L, -2663131523343606034L}).toString(), new ObfuscatedString(new long[]{1354800504952474773L, -919134181944558226L}).toString()).replace(new ObfuscatedString(new long[]{9155834959165959953L, -3259604336788196216L}).toString(), new ObfuscatedString(new long[]{5479439796663652429L, 8256367183054609489L}).toString()).replace(new ObfuscatedString(new long[]{-3950956076104904252L, 4714557305514971536L}).toString(), new ObfuscatedString(new long[]{-3687608434028010063L, -8319401378647918451L}).toString()).replace(new ObfuscatedString(new long[]{3923113051675302700L, -3033156370129897284L}).toString(), new ObfuscatedString(new long[]{-1216516524858012517L, 5385741701799622958L}).toString());
            String replace10 = obj4.replace(new ObfuscatedString(new long[]{-8995260574981097622L, 1561277404380418574L}).toString(), new ObfuscatedString(new long[]{1773405277396992963L, 6226069188320407016L}).toString()).replace(new ObfuscatedString(new long[]{-6053504247963911041L, -6131123963803381087L}).toString(), new ObfuscatedString(new long[]{200310271869954605L, -7509228066023131517L}).toString()).replace(new ObfuscatedString(new long[]{-5214239819995170881L, -6015252221327789943L}).toString(), new ObfuscatedString(new long[]{8943851115242026671L, 5795334396972763348L}).toString()).replace(new ObfuscatedString(new long[]{6329572241993702955L, 6386812790530025907L}).toString(), new ObfuscatedString(new long[]{3855690761142523873L, -4412645176970929257L}).toString()).replace(new ObfuscatedString(new long[]{-2324139338250241464L, 7585129705044797463L}).toString(), new ObfuscatedString(new long[]{-8424199798951247167L, -3516201048734045595L}).toString()).replace(new ObfuscatedString(new long[]{-8309116232326565364L, 6135140188651387620L}).toString(), new ObfuscatedString(new long[]{-6221488484661145942L, 3566060468771053924L}).toString()).replace(new ObfuscatedString(new long[]{4012977988579628443L, -2020679059205915054L}).toString(), new ObfuscatedString(new long[]{4514053651444744245L, -1462606291697735237L}).toString()).replace(new ObfuscatedString(new long[]{-2765773093019168836L, -1443869202532705301L}).toString(), new ObfuscatedString(new long[]{3335449548852994918L, 114342417103351099L}).toString()).replace(new ObfuscatedString(new long[]{6438804709022590081L, 5442113708433878586L}).toString(), new ObfuscatedString(new long[]{-6083539489830737782L, 3592858134762050411L}).toString()).replace(new ObfuscatedString(new long[]{6949099350776245302L, 6060681790214854484L}).toString(), new ObfuscatedString(new long[]{-3435049342498250459L, 5954390514493222485L}).toString()).replace(new ObfuscatedString(new long[]{4368834632296895846L, 4132544353775475838L}).toString(), new ObfuscatedString(new long[]{5882610656723999343L, -6398494946243875524L}).toString()).replace(new ObfuscatedString(new long[]{1176112932291515300L, -2152939777756708036L}).toString(), new ObfuscatedString(new long[]{1999389208010238790L, -5376431256598478857L}).toString()).replace(new ObfuscatedString(new long[]{6528310903875169077L, -4365284488036037498L}).toString(), new ObfuscatedString(new long[]{6968616492077757950L, 291344901765589422L}).toString()).replace(new ObfuscatedString(new long[]{-1514771559502431578L, -8443179983596496434L}).toString(), new ObfuscatedString(new long[]{-1685467092676088252L, 2071501569525126530L}).toString()).replace(new ObfuscatedString(new long[]{-3199312834744623488L, -844094257922113911L}).toString(), new ObfuscatedString(new long[]{-3995798525139219091L, 246950197887974520L}).toString()).replace(new ObfuscatedString(new long[]{3542283534691160031L, 4433271157648879909L}).toString(), new ObfuscatedString(new long[]{-4155727252119483920L, 7537160723993120399L}).toString()).replace(new ObfuscatedString(new long[]{593709197948562210L, 6290971551297679761L}).toString(), new ObfuscatedString(new long[]{-1240217166008096610L, -5747768082981156241L}).toString()).replace(new ObfuscatedString(new long[]{7765691683269684608L, -8224328297749845394L}).toString(), new ObfuscatedString(new long[]{2818850324954304999L, 7486211012284879089L}).toString()).replace(new ObfuscatedString(new long[]{8170376960590876931L, -630825725417683130L}).toString(), new ObfuscatedString(new long[]{6466336518164964472L, -8586890982040769324L}).toString()).replace(new ObfuscatedString(new long[]{-626062378690001047L, 7997215791340616930L}).toString(), new ObfuscatedString(new long[]{-279989963674762426L, 6855594451499715759L}).toString()).replace(new ObfuscatedString(new long[]{-3705192536905105503L, -8073597875060252052L}).toString(), new ObfuscatedString(new long[]{-3961331968224990958L, 4098130412772234282L}).toString()).replace(new ObfuscatedString(new long[]{7008927926190113578L, -3502395644124599884L}).toString(), new ObfuscatedString(new long[]{-1331737196396084803L, 4223826738067910375L}).toString()).replace(new ObfuscatedString(new long[]{3302789479852245136L, -3555464723075265318L}).toString(), new ObfuscatedString(new long[]{-1926078810305466277L, 7088356344150162643L}).toString()).replace(new ObfuscatedString(new long[]{6241638618382395732L, 121919541130737644L}).toString(), new ObfuscatedString(new long[]{4843727886837496607L, -271122353540265551L}).toString()).replace(new ObfuscatedString(new long[]{6856433972371792625L, 7550439733753727963L}).toString(), new ObfuscatedString(new long[]{-8537711753680010326L, 1000710769853305939L}).toString()).replace(new ObfuscatedString(new long[]{469849266066317462L, -3010565840625347061L}).toString(), new ObfuscatedString(new long[]{-674283701113417693L, -2322615491638321350L}).toString());
            String replace11 = obj5.replace(new ObfuscatedString(new long[]{-5029877715934397413L, 535199133548860035L}).toString(), new ObfuscatedString(new long[]{-8256132020780252111L, -4189978500215380709L}).toString()).replace(new ObfuscatedString(new long[]{-8413405938561342578L, -3422862649385086338L}).toString(), new ObfuscatedString(new long[]{-7888253827858310691L, -312392736528996722L}).toString()).replace(new ObfuscatedString(new long[]{8504414719239157780L, 467674171802849814L}).toString(), new ObfuscatedString(new long[]{5243064283391422247L, 7069089899397298767L}).toString()).replace(new ObfuscatedString(new long[]{2635044786132962076L, 5030268702061758630L}).toString(), new ObfuscatedString(new long[]{2279307926576841069L, -5407519177973620177L}).toString()).replace(new ObfuscatedString(new long[]{3320838774124870771L, -2277321014066185135L}).toString(), new ObfuscatedString(new long[]{-4797030817273235812L, 7158531913737657668L}).toString()).replace(new ObfuscatedString(new long[]{4972916581768445321L, 2231067149816548841L}).toString(), new ObfuscatedString(new long[]{-6212622333040596404L, 5981546726185334912L}).toString()).replace(new ObfuscatedString(new long[]{-508639264525783268L, -7998681963056458324L}).toString(), new ObfuscatedString(new long[]{-5883218144109419959L, -4912365932977194949L}).toString()).replace(new ObfuscatedString(new long[]{-4571896072130440182L, 8736232211823479908L}).toString(), new ObfuscatedString(new long[]{-7940345020946759442L, 402618688999978265L}).toString()).replace(new ObfuscatedString(new long[]{7638726224811046821L, -1484108828343280554L}).toString(), new ObfuscatedString(new long[]{-2388422992312892263L, -4808579357543719237L}).toString()).replace(new ObfuscatedString(new long[]{-487890849697637858L, -6272750017500207966L}).toString(), new ObfuscatedString(new long[]{-4694858507886123554L, -132403432876073364L}).toString()).replace(new ObfuscatedString(new long[]{6522357080254782133L, -3368215521693986360L}).toString(), new ObfuscatedString(new long[]{-1226761986714488752L, 5730042091249348221L}).toString()).replace(new ObfuscatedString(new long[]{5831999301435166931L, -6096378752493781210L}).toString(), new ObfuscatedString(new long[]{2981642337978823110L, 7520804587369685022L}).toString()).replace(new ObfuscatedString(new long[]{-820507397975737738L, -4215118591600482978L}).toString(), new ObfuscatedString(new long[]{-8200224675101921161L, 8540685412673441773L}).toString()).replace(new ObfuscatedString(new long[]{-3082435222859330289L, 4238440389231667983L}).toString(), new ObfuscatedString(new long[]{7648457210088028824L, 2590117651871462006L}).toString()).replace(new ObfuscatedString(new long[]{-3780347234237189051L, 5735968332014479369L}).toString(), new ObfuscatedString(new long[]{8614321578217879022L, -5333648568359866765L}).toString()).replace(new ObfuscatedString(new long[]{3466880452084100016L, -1851774992797226473L}).toString(), new ObfuscatedString(new long[]{7177120863322094827L, 8514907136998203854L}).toString()).replace(new ObfuscatedString(new long[]{-9105180364757810644L, -1213500315952264587L}).toString(), new ObfuscatedString(new long[]{-2720347049996512734L, 2072157097723010306L}).toString()).replace(new ObfuscatedString(new long[]{-6940180058107290173L, 6969232058458568394L}).toString(), new ObfuscatedString(new long[]{-7180271892671074703L, -6512177725559435748L}).toString()).replace(new ObfuscatedString(new long[]{1191171757126940205L, 4704474787417003015L}).toString(), new ObfuscatedString(new long[]{8708184009929472960L, -981438886989469868L}).toString()).replace(new ObfuscatedString(new long[]{4898205574471660366L, -1488586835101065006L}).toString(), new ObfuscatedString(new long[]{965104409664052267L, -6855260530027379493L}).toString()).replace(new ObfuscatedString(new long[]{-154332203151947534L, -7946081106080358335L}).toString(), new ObfuscatedString(new long[]{-6814274521631636725L, 5331469981807050024L}).toString()).replace(new ObfuscatedString(new long[]{-1173810063177069923L, 5642166140354760339L}).toString(), new ObfuscatedString(new long[]{-4108826690029775031L, -6238282291862701127L}).toString()).replace(new ObfuscatedString(new long[]{-5300503727119314960L, 6398232855321784127L}).toString(), new ObfuscatedString(new long[]{4808575355679931842L, -1878218377376951460L}).toString()).replace(new ObfuscatedString(new long[]{-3300241948124291666L, 1007152829600656031L}).toString(), new ObfuscatedString(new long[]{-5838101364161005180L, -1843966464559642415L}).toString()).replace(new ObfuscatedString(new long[]{5986160980318424158L, -2325494751526405983L}).toString(), new ObfuscatedString(new long[]{-9057611221066268500L, -7064241772613052726L}).toString()).replace(new ObfuscatedString(new long[]{700262203084108830L, -4495100658273441090L}).toString(), new ObfuscatedString(new long[]{-8106182305300367729L, 8292484708514760665L}).toString());
            boolean z = this.serverType.getSelectedItemPosition() == 0 && this.ckMultiCert.isChecked();
            if (!replace7.isEmpty() && !replace8.isEmpty()) {
                obfuscatedString = VPNUtil.encrypt(replace7);
                obfuscatedString2 = VPNUtil.encrypt(replace8);
                jSONObject.put(new ObfuscatedString(new long[]{-8911710488480507726L, -3091959224197935995L, -7840917265970197647L}).toString(), this.serverType.getSelectedItemPosition());
                jSONObject.put(new ObfuscatedString(new long[]{-9113744891587385762L, -1669669763998896529L}).toString(), this.sName.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{641723617604392880L, -2588908174819189102L, -6136994618107284110L}).toString(), VPNUtil.encrypt(replace9));
                jSONObject.put(new ObfuscatedString(new long[]{8150190685933865981L, 8968960652863070288L, 8405282414965336925L, -6835005240528831203L}).toString(), VPNUtil.encrypt(replace10));
                jSONObject.put(new ObfuscatedString(new long[]{-690321172965744482L, 4104266047629259617L, 3499062798497302204L}).toString(), VPNUtil.encrypt(replace11));
                jSONObject.put(new ObfuscatedString(new long[]{7646280086115753447L, -8693875861584354206L}).toString(), CategoryType());
                jSONObject.put(new ObfuscatedString(new long[]{624619565613088659L, 8942523544113298195L, 1851259524073159291L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7534930976051983745L, -614280765306197452L, 6071827206162395020L}).toString(), obfuscatedString);
                jSONObject.put(new ObfuscatedString(new long[]{-4173856374790374210L, 778122365284716562L, 3339946271826691238L}).toString(), obfuscatedString2);
                jSONObject.put(new ObfuscatedString(new long[]{7578380474667387306L, -2414834514324066776L, 4957114836461445237L}).toString(), z);
                jSONObject.put(new ObfuscatedString(new long[]{8585530587580696002L, -1566550701541360409L, -4665667456765521842L}).toString(), this.ckUseLogin.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-8153643924495993410L, 300783793691058594L}).toString(), this.fakeV2ray.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-2286368399665705733L, -4063052852428643137L, -8440811766237874290L}).toString(), this.wire_full_conf.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-4194032159127114977L, -5058205640125103735L, 5343533797855670700L}).toString(), this.etTcpPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{8510682056639643621L, 6273369254090536949L}).toString(), !z ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-5689102643917597955L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-6560506696541754716L, 5295494990901080347L}).toString(), this.primary.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-4658955007024678957L, -7834526148750839527L}).toString(), this.secondary.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7176874262471158647L, -6173716546564056011L}).toString(), this.openvpn_udp_port.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7294245519478633302L, -8073614013818979342L, -6935787669660965212L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{3266023335732612068L, -8833218422990581267L, -8096923611909698915L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{5635995325146445443L, -5001320233206375692L, -5788527202076132880L}).toString(), VPNUtil.encrypt(replace3));
                jSONObject.put(new ObfuscatedString(new long[]{936056133186371704L, 1396364320748552461L, 4786452633548802642L}).toString(), VPNUtil.encrypt(replace4));
                jSONObject.put(new ObfuscatedString(new long[]{-6737034140094306456L, 995407641139184774L, 1832261170383879734L}).toString(), VPNUtil.encrypt(replace5));
                jSONObject.put(new ObfuscatedString(new long[]{707619911285608185L, -6567217017266819706L, 3442323017532750647L}).toString(), VPNUtil.encrypt(replace6));
                this.prefs.set_string(new ObfuscatedString(new long[]{4009046088890332879L, -5179011363623174724L, -4855904048461356947L}).toString(), this.sName.getText().toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{427244492369747361L, -3487726056645213445L, 6547394949352449431L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.prefs.set_string(new ObfuscatedString(new long[]{154557257194816576L, -6753793872098445125L, -383290893069116323L}).toString(), this.sName.getText().toString());
                loadServers();
                this.f5771config.setServerSelectedPosition(1);
                this.f5771config.setServerSelectedName(this.listProfiles.get(1));
                this.prefs.get_string(new ObfuscatedString(new long[]{-893291787636724635L, 2519383885012538740L, 4488196410386523155L}).toString());
                setSelectedServer();
                this.prefs.set_string(new ObfuscatedString(new long[]{4190039097221436195L, -2011943303113952866L, -7084255124713462096L}).toString(), new ObfuscatedString(new long[]{4965923032467096186L, 5949631855323312937L}).toString());
                str = this.prefs.get_string(new ObfuscatedString(new long[]{-7842950641223030265L, -3092404268432389780L, 6082327747175285927L}).toString());
                loadServers();
                setSelectedServer();
                loadNetworks();
                setSelectedNetwork(false);
                if (str.isEmpty()) {
                    this.custom_server.setVisibility(0);
                    this.server_layout.setVisibility(8);
                } else {
                    this.custom_server.setVisibility(8);
                    this.server_layout.setVisibility(0);
                }
                if (!this.prefs.get_string(new ObfuscatedString(new long[]{6544236110393014834L, -5510187979570033420L, -4158495700987537699L}).toString()).isEmpty()) {
                    c_12.restart_app(this);
                }
                ((TextView) findViewById(R.id.custom_s_name)).setText(this.prefs.get_string(new ObfuscatedString(new long[]{3345878915487384331L, 8622723854564562792L, -5330083940358196083L}).toString()));
                Toast.makeText(this, this.sName.getText().toString() + new ObfuscatedString(new long[]{-8945717877790029128L, 6401430671397532970L}).toString(), 0).show();
                this.a.dismiss();
            }
            obfuscatedString = new ObfuscatedString(new long[]{2736405261950442496L}).toString();
            obfuscatedString2 = new ObfuscatedString(new long[]{-1667077340616358214L}).toString();
            jSONObject.put(new ObfuscatedString(new long[]{-8911710488480507726L, -3091959224197935995L, -7840917265970197647L}).toString(), this.serverType.getSelectedItemPosition());
            jSONObject.put(new ObfuscatedString(new long[]{-9113744891587385762L, -1669669763998896529L}).toString(), this.sName.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{641723617604392880L, -2588908174819189102L, -6136994618107284110L}).toString(), VPNUtil.encrypt(replace9));
            jSONObject.put(new ObfuscatedString(new long[]{8150190685933865981L, 8968960652863070288L, 8405282414965336925L, -6835005240528831203L}).toString(), VPNUtil.encrypt(replace10));
            jSONObject.put(new ObfuscatedString(new long[]{-690321172965744482L, 4104266047629259617L, 3499062798497302204L}).toString(), VPNUtil.encrypt(replace11));
            jSONObject.put(new ObfuscatedString(new long[]{7646280086115753447L, -8693875861584354206L}).toString(), CategoryType());
            jSONObject.put(new ObfuscatedString(new long[]{624619565613088659L, 8942523544113298195L, 1851259524073159291L}).toString(), this.etSSLPort.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{7534930976051983745L, -614280765306197452L, 6071827206162395020L}).toString(), obfuscatedString);
            jSONObject.put(new ObfuscatedString(new long[]{-4173856374790374210L, 778122365284716562L, 3339946271826691238L}).toString(), obfuscatedString2);
            jSONObject.put(new ObfuscatedString(new long[]{7578380474667387306L, -2414834514324066776L, 4957114836461445237L}).toString(), z);
            jSONObject.put(new ObfuscatedString(new long[]{8585530587580696002L, -1566550701541360409L, -4665667456765521842L}).toString(), this.ckUseLogin.isChecked());
            jSONObject.put(new ObfuscatedString(new long[]{-8153643924495993410L, 300783793691058594L}).toString(), this.fakeV2ray.isChecked());
            jSONObject.put(new ObfuscatedString(new long[]{-2286368399665705733L, -4063052852428643137L, -8440811766237874290L}).toString(), this.wire_full_conf.isChecked());
            jSONObject.put(new ObfuscatedString(new long[]{-4194032159127114977L, -5058205640125103735L, 5343533797855670700L}).toString(), this.etTcpPort.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{8510682056639643621L, 6273369254090536949L}).toString(), !z ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-5689102643917597955L}).toString());
            jSONObject.put(new ObfuscatedString(new long[]{-6560506696541754716L, 5295494990901080347L}).toString(), this.primary.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{-4658955007024678957L, -7834526148750839527L}).toString(), this.secondary.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{7176874262471158647L, -6173716546564056011L}).toString(), this.openvpn_udp_port.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{7294245519478633302L, -8073614013818979342L, -6935787669660965212L}).toString(), VPNUtil.encrypt(replace));
            jSONObject.put(new ObfuscatedString(new long[]{3266023335732612068L, -8833218422990581267L, -8096923611909698915L}).toString(), VPNUtil.encrypt(replace2));
            jSONObject.put(new ObfuscatedString(new long[]{5635995325146445443L, -5001320233206375692L, -5788527202076132880L}).toString(), VPNUtil.encrypt(replace3));
            jSONObject.put(new ObfuscatedString(new long[]{936056133186371704L, 1396364320748552461L, 4786452633548802642L}).toString(), VPNUtil.encrypt(replace4));
            jSONObject.put(new ObfuscatedString(new long[]{-6737034140094306456L, 995407641139184774L, 1832261170383879734L}).toString(), VPNUtil.encrypt(replace5));
            jSONObject.put(new ObfuscatedString(new long[]{707619911285608185L, -6567217017266819706L, 3442323017532750647L}).toString(), VPNUtil.encrypt(replace6));
            this.prefs.set_string(new ObfuscatedString(new long[]{4009046088890332879L, -5179011363623174724L, -4855904048461356947L}).toString(), this.sName.getText().toString());
            this.prefs.set_string(new ObfuscatedString(new long[]{427244492369747361L, -3487726056645213445L, 6547394949352449431L}).toString(), c_12.Parser.parse(jSONObject.toString()));
            this.prefs.set_string(new ObfuscatedString(new long[]{154557257194816576L, -6753793872098445125L, -383290893069116323L}).toString(), this.sName.getText().toString());
            loadServers();
            this.f5771config.setServerSelectedPosition(1);
            this.f5771config.setServerSelectedName(this.listProfiles.get(1));
            this.prefs.get_string(new ObfuscatedString(new long[]{-893291787636724635L, 2519383885012538740L, 4488196410386523155L}).toString());
            setSelectedServer();
            this.prefs.set_string(new ObfuscatedString(new long[]{4190039097221436195L, -2011943303113952866L, -7084255124713462096L}).toString(), new ObfuscatedString(new long[]{4965923032467096186L, 5949631855323312937L}).toString());
            str = this.prefs.get_string(new ObfuscatedString(new long[]{-7842950641223030265L, -3092404268432389780L, 6082327747175285927L}).toString());
            loadServers();
            setSelectedServer();
            loadNetworks();
            setSelectedNetwork(false);
            if (str.isEmpty()) {
            }
            if (!this.prefs.get_string(new ObfuscatedString(new long[]{6544236110393014834L, -5510187979570033420L, -4158495700987537699L}).toString()).isEmpty()) {
            }
            ((TextView) findViewById(R.id.custom_s_name)).setText(this.prefs.get_string(new ObfuscatedString(new long[]{3345878915487384331L, 8622723854564562792L, -5330083940358196083L}).toString()));
            Toast.makeText(this, this.sName.getText().toString() + new ObfuscatedString(new long[]{-8945717877790029128L, 6401430671397532970L}).toString(), 0).show();
            this.a.dismiss();
        } catch (Exception e) {
            Toast.makeText(this, e.getMessage(), 0).show();
        }
    }

    public /* synthetic */ void lambda$dialogAddServer$86(View view) {
        this.a.dismiss();
    }

    public /* synthetic */ void lambda$exit$45(AlertDialog.Builder builder, DialogInterface dialogInterface, int i) {
        if (TkLogStatus.isTunnelActive()) {
            Toast.makeText(this, new ObfuscatedString(new long[]{-3627953247403491775L, -8255742282922702498L, -8611717497654170808L, 3304899498129810101L, 6474714047396866894L}).toString(), 0).show();
        } else {
            System.exit(0);
        }
        builder.setCancelable(true);
    }

    public /* synthetic */ void lambda$exit$46(AlertDialog.Builder builder, DialogInterface dialogInterface, int i) {
        Intent intent = new Intent(new ObfuscatedString(new long[]{-6843975260358060667L, -8389979204549154520L, -8461345896661629717L, 2912806361617967086L, 8858109445658480932L}).toString());
        intent.addCategory(new ObfuscatedString(new long[]{-8072335849020810462L, -2628625128709128847L, -4081775424364125070L, 3596685196301137040L, 4099213843491910028L}).toString());
        intent.setFlags(268435456);
        startActivity(intent);
        builder.setCancelable(true);
    }

    public /* synthetic */ boolean lambda$import_menu$40(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.item_checkupdates) {
            this.showNoUpdate = true;
            this.checkupdate.setVisibility(0);
            this.checkupdate.setText(new ObfuscatedString(new long[]{5950559491256682538L, 6406184236730593082L, 9029321878234070343L}).toString());
            c_01();
            return true;
        }
        if (itemId == R.id.nav_server_export) {
            showLINKserver();
            return true;
        }
        if (itemId == R.id.nav_network_export) {
            showLINKnetwork();
            return true;
        }
        if (itemId == R.id.server_import) {
            if (!TkLogStatus.isTunnelActive()) {
                server();
            } else {
                Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{-3123877807537895791L, 3374989291154479983L, -1512598105862944710L, -9135972303879082177L}).toString(), 1).show();
            }
        } else if (itemId == R.id.network_import) {
            if (!TkLogStatus.isTunnelActive()) {
                network();
            } else {
                Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{-8217445069862530576L, 6935347376019769066L, -5841209536769388754L, 5013220634198275716L}).toString(), 1).show();
            }
        }
        return false;
    }

    public /* synthetic */ void lambda$import_menu$41(View view) {
        PopupMenu popupMenu = new PopupMenu(new ContextThemeWrapper(this, R.style.myPopupMenuStyle), view);
        popupMenu.getMenuInflater().inflate(R.menu.poupup_import, popupMenu.getMenu());
        popupMenu.setOnMenuItemClickListener(new C0375x845d249c(this, 0));
        popupMenu.show();
    }

    public /* synthetic */ void lambda$loadAdview$18(View view) {
        dialogAddServer();
    }

    public /* synthetic */ void lambda$loadAdview$19(View view) {
        dialogAddPayload();
    }

    public /* synthetic */ void lambda$loadAdview$20() {
        loadServers();
        loadNetworks();
        setSelectedNetwork(true);
        setSelectedServer();
        this.f5771config.setCustomN(false);
        this.f5771config.setServerSelectedPosition(0);
        Toast.makeText(this, new ObfuscatedString(new long[]{-2725772330923198121L, -4157867012960830542L, 599541043034112344L, -4026833593094686597L}).toString(), 0).show();
    }

    public /* synthetic */ void lambda$loadAdview$21(View view) {
        this.prefs.set_string(new ObfuscatedString(new long[]{4406976748875346907L, -1489830493240515102L, 4669699770851146059L}).toString(), new ObfuscatedString(new long[]{-6566830799241957016L}).toString());
        this.prefs.set_string(new ObfuscatedString(new long[]{-3126502494768489525L, 6045582487585365027L, -8176592705694105226L}).toString(), new ObfuscatedString(new long[]{3962576671489687831L}).toString());
        this.custom_server.setVisibility(8);
        this.server_layout.setVisibility(0);
        this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 5), 1000L);
    }

    public /* synthetic */ void lambda$loadAdview$22() {
        loadServers();
        loadNetworks();
        setSelectedNetwork(true);
        setSelectedServer();
        this.f5771config.setCustomN(false);
        this.f5771config.setNetworkSelectedPosition(0);
        Toast.makeText(this, new ObfuscatedString(new long[]{5111913732678882764L, -8624479217375851635L, 4389664277290068693L, 2604336971109770081L}).toString(), 0).show();
    }

    public /* synthetic */ void lambda$loadAdview$23(View view) {
        this.prefs.set_string(new ObfuscatedString(new long[]{-2927450350766282199L, -5174609100173763755L, 52793841787828026L}).toString(), new ObfuscatedString(new long[]{7573519219214707355L}).toString());
        this.custom_network.setVisibility(8);
        this.network_layout.setVisibility(0);
        this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 1), 1000L);
    }

    public /* synthetic */ void lambda$loadAdview$24(View view) {
        if (!TkLogStatus.isTunnelActive()) {
            showClearDataDialog();
        } else {
            Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{1812436008049186638L, 4977546181700451942L, 6357719731343459991L, 2155424730847918625L}).toString(), 1).show();
        }
    }

    public /* synthetic */ void lambda$loadAdview$25(View view) {
        this.showNoUpdate = true;
        this.checkupdate.setVisibility(0);
        this.checkupdate.setText(new ObfuscatedString(new long[]{-1499814076392118108L, -4397513850846918329L, -3329856643197164770L}).toString());
        c_01();
    }

    public /* synthetic */ void lambda$loadAdview$26(View view) {
        exit();
    }

    public /* synthetic */ void lambda$loadAdview$27(View view) {
        startActivity(new Intent(this, (Class<?>) JcLogs.class));
    }

    public /* synthetic */ void lambda$loadAdview$28() {
        loadServers();
        loadNetworks();
        setSelectedNetwork(true);
        setSelectedServer();
        this.f5771config.setCustomN(false);
        this.f5771config.setNetworkSelectedPosition(0);
        Toast.makeText(this, new ObfuscatedString(new long[]{3271113363890580016L, 108954857139569759L, 1403863107838715951L, 5220348441073426902L}).toString(), 0).show();
    }

    public /* synthetic */ void lambda$loadAdview$29(View view) {
        if (!TkLogStatus.isTunnelActive()) {
            this.prefs.set_string(new ObfuscatedString(new long[]{3849065024995480937L, -2885145915548116692L, -808361508420783119L}).toString(), new ObfuscatedString(new long[]{-6011145785558880795L}).toString());
            this.prefs.set_string(new ObfuscatedString(new long[]{-3871704818182161803L, 1993455038365328324L, 6204104686367783697L}).toString(), new ObfuscatedString(new long[]{4733438828195546376L}).toString());
            this.prefs.set_string(new ObfuscatedString(new long[]{-6776510242277682440L, 4837062391818932043L, 2499590073671557237L}).toString(), new ObfuscatedString(new long[]{-7470360899474551428L}).toString());
            this.prefs.set_string(new ObfuscatedString(new long[]{7236107912798924576L, 4659177914513754460L, -1686177557524813985L}).toString(), new ObfuscatedString(new long[]{3621665473817105203L}).toString());
            this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 2), 1000L);
            return;
        }
        Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{4530117347551054268L, 2644152973373688866L, 699144439203706078L, -949129600207444420L}).toString(), 1).show();
    }

    public /* synthetic */ void lambda$loadAdview$30(View view) {
        this.ServerSelectActivityLauncher.launch(new Intent(this, (Class<?>) ServerActivity.class));
        overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
    }

    public /* synthetic */ void lambda$loadAdview$31(View view) {
        this.NetworkSelectActivityLauncher.launch(new Intent(this, (Class<?>) NetworkActivity.class));
        overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
    }

    public /* synthetic */ void lambda$loadAdview$32(View view) {
        showNoticeDialog();
    }

    public /* synthetic */ void lambda$loadAdview$33() {
        if (this.f5771config.getOVPN().booleanValue()) {
            this.f5771config.setOVPN(true);
            this.f5771config.setSSH(false);
            this.f5771config.setConnectionType(new ObfuscatedString(new long[]{-4894103063932175878L, 8904399326919445498L}).toString());
        } else {
            this.f5771config.setOVPN(false);
            this.f5771config.setSSH(true);
            this.f5771config.setConnectionType(new ObfuscatedString(new long[]{-2785110073955540697L, -7645919243531302861L}).toString());
        }
    }

    public /* synthetic */ void lambda$loadAdview$34(String str) {
        this.notice.setVisibility(0);
        inboxNotification(R.drawable.ic_launcher, str);
    }

    public /* synthetic */ void lambda$loadAdview$35() {
        this.notice.setVisibility(8);
    }

    public /* synthetic */ void lambda$loadAdview$36(View view) {
        this.drawer.openDrawer(GravityCompat.START);
    }

    public /* synthetic */ void lambda$loadAdview$37(CompoundButton compoundButton, boolean z) {
        if (!TkLogStatus.isTunnelActive()) {
            this.editor.putBoolean(new ObfuscatedString(new long[]{4941880911388728254L, 2189722074907175113L, -5309167611644171125L}).toString(), z).apply();
        } else {
            this.pingbox.setChecked(this.myPrefs.getBoolean(new ObfuscatedString(new long[]{-8173972268243031706L, -3487987367859269607L, -1679903850570540454L}).toString(), false));
        }
    }

    public /* synthetic */ void lambda$loadAdview$38() {
        this.notice.setVisibility(0);
    }

    public /* synthetic */ void lambda$loadAdview$39() {
        this.notice.setVisibility(8);
    }

    public /* synthetic */ void lambda$mIphunt$75(TextView textView, TextView textView2) {
        try {
            String ip_hunter = this.mConfig.getIp_hunter();
            String ip_hunter_ip = this.mConfig.getIp_hunter_ip();
            URL url = new URL(ip_hunter);
            String obfuscatedString = new ObfuscatedString(new long[]{-8844811839209155492L, 3966621798452716483L, -8787033719429938369L, 2543292316165082390L, -7157940050284285832L, 7796176524853191019L, -1033798107951585996L, -4783026844432378646L}).toString();
            String obfuscatedString2 = new ObfuscatedString(new long[]{-146000649214998433L, -2487242178055598052L, 285616448517679976L, -2192699085808809481L, -7489150494033025676L, 598603390836068474L, 6193031467852734039L, 3878372910184672999L, -1916976927906373409L, -585685484662953904L}).toString();
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, new InetSocketAddress(ip_hunter_ip, 80)));
                httpURLConnection.setRequestMethod(new ObfuscatedString(new long[]{711786202277082271L, 8015661302518985465L}).toString());
                httpURLConnection.connect();
                httpURLConnection.getContentLength();
                httpURLConnection.setConnectTimeout(PathInterpolatorCompat.MAX_NUM_POINTS);
                InputStream inputStream = httpURLConnection.getInputStream();
                byte[] bArr = new byte[4096];
                int i = 0;
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read == -1) {
                        break;
                    } else {
                        i += read;
                    }
                }
                inputStream.markSupported();
                if (i == 333) {
                    textView.setText(obfuscatedString);
                    textView2.setText(new ObfuscatedString(new long[]{-7613064647071649035L, 2795675174248188124L, 848490556974175958L}).toString());
                    textView2.setEnabled(true);
                } else if (httpURLConnection.getResponseCode() == 200) {
                    textView.setText(obfuscatedString);
                    textView2.setText(new ObfuscatedString(new long[]{-7271961338908012092L, 2283027223555286065L, 4290081979947573374L}).toString());
                    textView2.setEnabled(true);
                } else {
                    inputStream.close();
                    textView.setText(obfuscatedString2);
                    textView2.setText(new ObfuscatedString(new long[]{5003554047235755424L, 6688460448994452491L, 683663262023713216L}).toString());
                    textView2.setEnabled(true);
                }
            } catch (IOException unused) {
                textView2.setText(new ObfuscatedString(new long[]{3206521359986357747L, 6803137870881509225L, 6517848800582174907L}).toString());
                textView2.setEnabled(true);
                textView.setText(obfuscatedString2);
            }
        } catch (MalformedURLException unused2) {
        }
    }

    public /* synthetic */ void lambda$mIphunt$76(TextView textView, TextView textView2, View view) {
        textView.setText(new ObfuscatedString(new long[]{1486496123914088873L, -6201341171773922115L, 8192365033124678833L, -9107221616532940087L, -6285587333217221220L, -652540754465203349L, 306321617247256270L}).toString());
        textView2.setEnabled(false);
        textView2.setText(new ObfuscatedString(new long[]{-1850324621938157985L, 8204422973395739411L, -2116677197046732353L}).toString());
        new Handler().postDelayed(new RunnableC0384x149e5abd(this, 1, textView, textView2), 1000L);
    }

    public /* synthetic */ void lambda$menu$42() {
        loadServers();
        loadNetworks();
        setSelectedNetwork(true);
        setSelectedServer();
        Toast.makeText(this, new ObfuscatedString(new long[]{-6203732785162290755L, 6736177776023215106L, 1850137960884795817L, -5451187357318086502L}).toString(), 0).show();
    }

    public /* synthetic */ boolean lambda$menu$43(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.item_import_config) {
            if (!TkLogStatus.isTunnelActive()) {
                tk12();
            } else {
                Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{-1846963900622584297L, 8919731305310018766L, -2703873815883143254L, 2431225368381299620L}).toString(), 1).show();
            }
            return true;
        }
        if (itemId == R.id.item_restore_custom) {
            if (!TkLogStatus.isTunnelActive()) {
                this.f5771config.setCustomN(false);
                this.prefs.set_string(new ObfuscatedString(new long[]{-2410906569662674089L, 295046866529527464L, -7467530695157466109L}).toString(), new ObfuscatedString(new long[]{7132772420173704364L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{7339481723757207127L, -1697415651993093387L, 8645137093392783127L}).toString(), new ObfuscatedString(new long[]{1469383228049741460L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{3937389102802749288L, 4250410847917613706L, 6572248479335213838L}).toString(), new ObfuscatedString(new long[]{493927821614084478L}).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-7762941052165234623L, 6106268024829342421L, 4286971562975030229L}).toString(), new ObfuscatedString(new long[]{4074402537153750569L}).toString());
                this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 4), 1000L);
            } else {
                Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{4347827136219907342L, -2975548415024478110L, -3770727525065214065L, -8973636582499713602L}).toString(), 1).show();
            }
            return true;
        }
        if (itemId == R.id.item_restore_default) {
            if (!TkLogStatus.isTunnelActive()) {
                showClearDataDialog();
            } else {
                Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{-6633699358754677316L, -1355615526912443672L, -4168758651356794774L, 8327908594602650568L}).toString(), 1).show();
            }
            return true;
        }
        if (itemId != R.id.item_restart) {
            return false;
        }
        c_12.restart_app(this);
        return true;
    }

    public /* synthetic */ void lambda$menu$44(View view) {
        PopupMenu popupMenu = new PopupMenu(new ContextThemeWrapper(this, R.style.myPopupMenuStyle), view);
        popupMenu.getMenuInflater().inflate(R.menu.poupup_menu, popupMenu.getMenu());
        popupMenu.setOnMenuItemClickListener(new C0375x845d249c(this, 1));
        popupMenu.show();
    }

    public /* synthetic */ boolean lambda$nav_Button$17(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.a_update) {
            this.showNoUpdate = true;
            this.checkupdate.setVisibility(0);
            this.checkupdate.setText(new ObfuscatedString(new long[]{-6527579996992396264L, -2205974400587953428L, -5444485654659249908L}).toString());
            c_01();
        } else if (itemId == R.id.a_tele) {
            if (!TkLogStatus.isTunnelActive()) {
                showClearDataDialog();
            } else {
                Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{-2675783716486733373L, 1767926240971904652L, -1330481570648266490L, -1429370199333264986L}).toString(), 1).show();
            }
        } else if (itemId == R.id.a_exit) {
            exit();
        }
        return true;
    }

    public /* synthetic */ void lambda$network$71(DialogInterface dialogInterface, int i) {
        clipImport1();
        dialogInterface.dismiss();
    }

    public /* synthetic */ void lambda$new$0() {
        show_stats();
        schedule_stats();
    }

    public /* synthetic */ void lambda$new$1() {
        if (!is_active()) {
            ui_setup(false, 65536, null);
        }
    }

    public /* synthetic */ void lambda$new$2(ActivityResult activityResult) {
        if (activityResult.getResultCode() == -1) {
            Intent data = activityResult.getData();
            String str = this.prefs.get_string(new ObfuscatedString(new long[]{3314115877009680007L, 6116226251618493724L, 8844425796223684975L}).toString());
            if (data != null && data.getBooleanExtra(new ObfuscatedString(new long[]{-6875452633871002130L, 6082552510407907783L, -7818187738633065907L}).toString(), false)) {
                loadNetworks();
                setSelectedNetwork(false);
                setSelectedServer();
                loadServers();
            }
            if (!str.isEmpty()) {
                this.custom_network.setVisibility(0);
                this.network_layout.setVisibility(8);
            } else {
                this.custom_network.setVisibility(8);
                this.network_layout.setVisibility(0);
            }
            ((TextView) findViewById(R.id.custom_tweak_name)).setText(this.prefs.get_string(new ObfuscatedString(new long[]{-5164634092480108979L, 6734670625218944188L}).toString()));
        }
    }

    public /* synthetic */ void lambda$new$3(ActivityResult activityResult) {
        Intent data;
        if (activityResult.getResultCode() == -1 && (data = activityResult.getData()) != null) {
            String str = this.prefs.get_string(new ObfuscatedString(new long[]{-5804038591340301612L, 1595648216930821688L, -722124063880311466L}).toString());
            if (data.getBooleanExtra(new ObfuscatedString(new long[]{1236560666160659882L, 4533820628436776101L, 2334877683222917564L}).toString(), false)) {
                loadServers();
                setSelectedServer();
                loadNetworks();
                setSelectedNetwork(false);
                if (!str.isEmpty()) {
                    this.custom_server.setVisibility(0);
                    this.server_layout.setVisibility(8);
                } else {
                    this.custom_server.setVisibility(8);
                    this.server_layout.setVisibility(0);
                }
                if (!this.prefs.get_string(new ObfuscatedString(new long[]{6635401979146169833L, -4014141787814286497L, 728213232975655939L}).toString()).isEmpty()) {
                    c_12.restart_app(this);
                }
                ((TextView) findViewById(R.id.custom_s_name)).setText(this.prefs.get_string(new ObfuscatedString(new long[]{-3443489234393403091L, -950509012353239166L, -8359819729927508651L}).toString()));
            }
        }
    }

    public /* synthetic */ void lambda$new$4(ActivityResult activityResult) {
        Intent data;
        if (activityResult.getResultCode() == -1 && (data = activityResult.getData()) != null) {
            if (data.getBooleanExtra(new ObfuscatedString(new long[]{8099722590936089784L, -2546568408907619770L, -6638396933829157840L, 5313942326486124110L}).toString(), false)) {
                if (this.f5771config.getOVPN().booleanValue()) {
                    this.f5771config.setOVPN(true);
                    this.f5771config.setSSH(false);
                    this.f5771config.setConnectionType(new ObfuscatedString(new long[]{7544403173595662057L, -3240120211754251516L}).toString());
                } else {
                    this.f5771config.setOVPN(false);
                    this.f5771config.setSSH(true);
                    this.f5771config.setConnectionType(new ObfuscatedString(new long[]{-6749311942793402642L, -3684574130859346531L}).toString());
                }
            }
            setSelectedNetwork(false);
            loadNetworks();
            setSelectedServer();
            loadServers();
        }
    }

    public /* synthetic */ void lambda$new$64(ActivityResult activityResult) {
        if (activityResult.getResultCode() == -1) {
            Intent data = activityResult.getData();
            if (data == null) {
                showToast(getString(R.string.message_file_read_error));
                return;
            }
            Uri data2 = data.getData();
            if (data2 == null) {
                showToast(getString(R.string.message_file_read_error));
                return;
            }
            String readFromFile = FileUtilKt.readFromFile(this, data2);
            if (TextUtils.isEmpty(readFromFile)) {
                showToast(getString(R.string.message_invalid_file));
                return;
            }
            String d_01 = c_12.Parser.d_01(readFromFile);
            if (TextUtils.isEmpty(d_01)) {
                showToast(getString(R.string.message_invalid_file_content));
            } else {
                processImportData(d_01);
            }
        }
    }

    public /* synthetic */ void lambda$new$65(DialogInterface dialogInterface, int i) {
        attemptImport();
    }

    public /* synthetic */ void lambda$new$66(Boolean bool) {
        if (bool.booleanValue()) {
            showToast(getString(R.string.toast_thank_you));
            attemptImport();
        } else {
            showToast(getString(R.string.message_permission_denied));
            new AlertDialog.Builder(this, R.style.AlertDialogTheme).setTitle(getString(R.string.title_important)).setMessage(getString(R.string.dialog_message_read_storage_permission_request)).setNegativeButton(getString(R.string.cr_cancel), (DialogInterface.OnClickListener) null).setPositiveButton(getString(R.string.ok), new DialogInterfaceOnClickListenerC0378xba782511(this, 2)).create().show();
        }
    }

    public /* synthetic */ void lambda$onClick$61() {
        String username = this.f5771config.getUsername();
        String password = this.f5771config.getPassword();
        if (username.equals(new ObfuscatedString(new long[]{-9191255287377882250L, -8512537067829154462L}).toString()) || password.equals(new ObfuscatedString(new long[]{1030332273500846587L, -2547769036358683272L}).toString())) {
            if (new ConfigUtil(this).isUDP().booleanValue()) {
                stopUdp();
            } else {
                stopVPN();
            }
        }
        String format = String.format(VPNUtil.decrypt(this.f5771config.getApi()).replace(new ObfuscatedString(new long[]{-5532650872351015875L, -4040555962171376336L}).toString(), new ObfuscatedString(new long[]{7809506238813554450L, 3491569434381863650L}).toString()).replace(new ObfuscatedString(new long[]{-5032480017595639938L, -4882344740463339672L}).toString(), new ObfuscatedString(new long[]{-852228800402110598L, 2891317815785461332L}).toString()).replace(new ObfuscatedString(new long[]{-1784526777483252919L, 7344498810551381354L}).toString(), new ObfuscatedString(new long[]{-8165926532504401348L, 5823862305085537861L}).toString()).replace(new ObfuscatedString(new long[]{-7293641557864556287L, -8305993004910998919L}).toString(), new ObfuscatedString(new long[]{2060998124009687592L, 4055734364077560649L}).toString()).replace(new ObfuscatedString(new long[]{-233615041738869049L, 5730021752625361161L}).toString(), new ObfuscatedString(new long[]{4648746764837155766L, -1467109549936466869L}).toString()).replace(new ObfuscatedString(new long[]{1622257595449075300L, -3273585524039791479L}).toString(), new ObfuscatedString(new long[]{9041489490936429814L, 7399003682568486282L}).toString()).replace(new ObfuscatedString(new long[]{-6688466093441599848L, -2774656437496813113L}).toString(), new ObfuscatedString(new long[]{3240733935719547426L, -1763863639307537809L}).toString()).replace(new ObfuscatedString(new long[]{-5786114542028851173L, 2627431775198560889L}).toString(), new ObfuscatedString(new long[]{-3677570912506392640L, -5692725248815674169L}).toString()).replace(new ObfuscatedString(new long[]{1945594948496959430L, -5278913692802692550L}).toString(), new ObfuscatedString(new long[]{4260536892588199749L, 533202475667872147L}).toString()).replace(new ObfuscatedString(new long[]{2791776057171007093L, -5692169868075904644L}).toString(), new ObfuscatedString(new long[]{4899149689736077487L, 7588264952612764366L}).toString()).replace(new ObfuscatedString(new long[]{-4337352116138786193L, 5227441174373674652L}).toString(), new ObfuscatedString(new long[]{4642556563374673731L, 15978054851435737L}).toString()).replace(new ObfuscatedString(new long[]{-5094122400769448537L, -5697541150279285084L}).toString(), new ObfuscatedString(new long[]{5082383881320717947L, 7264712406056301225L}).toString()).replace(new ObfuscatedString(new long[]{1293898509013676804L, -6537523108828529591L}).toString(), new ObfuscatedString(new long[]{-6080612583775660843L, -7348037392359479501L}).toString()).replace(new ObfuscatedString(new long[]{-6478764084959257599L, -3473723377253110120L}).toString(), new ObfuscatedString(new long[]{1980379076209423918L, -36683210512398567L}).toString()).replace(new ObfuscatedString(new long[]{-1346967875956332913L, -9126195740708147317L}).toString(), new ObfuscatedString(new long[]{2469925873335000042L, -5733141141622131566L}).toString()).replace(new ObfuscatedString(new long[]{-6392592115065023918L, 493980741925917731L}).toString(), new ObfuscatedString(new long[]{6623436665676356717L, 6397788209940290722L}).toString()).replace(new ObfuscatedString(new long[]{3565215810850819494L, -3741659011712562090L}).toString(), new ObfuscatedString(new long[]{-4533580931779488342L, -5544123239667993916L}).toString()).replace(new ObfuscatedString(new long[]{3491721534624755495L, 3213612965879797649L}).toString(), new ObfuscatedString(new long[]{-526735754785963172L, 3700674851767748413L}).toString()).replace(new ObfuscatedString(new long[]{8481440372552254999L, 5767520262133904788L}).toString(), new ObfuscatedString(new long[]{7772589475173749324L, -3608476690082788446L}).toString()).replace(new ObfuscatedString(new long[]{-5450694899726994502L, -4940297973836531873L}).toString(), new ObfuscatedString(new long[]{4156055493233389309L, 9140995388769916379L}).toString()).replace(new ObfuscatedString(new long[]{-8723572239915017494L, -123669820460014125L}).toString(), new ObfuscatedString(new long[]{-2556779660763831051L, 2840519889908827944L}).toString()).replace(new ObfuscatedString(new long[]{-3263455376781253633L, 7998978904664655952L}).toString(), new ObfuscatedString(new long[]{-6403391427863859631L, -2835534679202469111L}).toString()).replace(new ObfuscatedString(new long[]{-7982842663661414744L, 1647560850544537808L}).toString(), new ObfuscatedString(new long[]{7632908107475085712L, -3210225331277203943L}).toString()).replace(new ObfuscatedString(new long[]{-4164737260385650655L, -4729506735727169815L}).toString(), new ObfuscatedString(new long[]{-6459582104430223933L, -2536133705164229812L}).toString()).replace(new ObfuscatedString(new long[]{-242762234257963260L, 5512093928113027236L}).toString(), new ObfuscatedString(new long[]{-48696582907778715L, -1477231895812802058L}).toString()).replace(new ObfuscatedString(new long[]{8211236753501146327L, 6137733238158213699L}).toString(), new ObfuscatedString(new long[]{893587381298944566L, 894368396784623226L}).toString()), username, password, CommonUtils.getAndroidId(this), Build.MODEL);
        Bundle bundle = new Bundle();
        bundle.putString(new ObfuscatedString(new long[]{-6079765961156747L, 8353014988853203399L}).toString(), format);
        DataAuth.setBundle(bundle);
    }

    public /* synthetic */ void lambda$onNoUpdateAvailable$56() {
        this.checkupdate.setVisibility(8);
    }

    public /* synthetic */ void lambda$onShowUpdate$55(String str) {
        this.editor.putBoolean(new ObfuscatedString(new long[]{5286597001699974313L, 7622645203512861475L}).toString(), true).apply();
        showToast(new ObfuscatedString(new long[]{-2194337084943156946L, 3826852648858311166L, 2612235240041402785L}).toString());
        this.f5771config.setConfigVersion(str);
        ((TextView) findViewById(R.id.config_version)).setText(new ObfuscatedString(new long[]{9051644864188212058L, -4345704939454298142L, 3788456280733830311L, -771415772586106280L}).toString() + getConfigVersion());
        loadServers();
        loadNetworks();
        c_12.restart_app(this);
    }

    public /* synthetic */ void lambda$onUpdateError$57() {
        this.checkupdate.setVisibility(8);
    }

    public /* synthetic */ void lambda$pingDialog$15(EditText editText, EditText editText2, EditText editText3, AlertDialog alertDialog, View view) {
        String trim = editText.getText().toString().trim();
        this.pingbox.setChecked(true);
        this.editor.putBoolean(new ObfuscatedString(new long[]{7378843209643388605L, -1089555663009225740L, -810338186159718512L}).toString(), true).apply();
        this.editor.putString(new ObfuscatedString(new long[]{6660871430194858437L, -3747764558989578632L, -4715849884331730348L}).toString(), editText2.getText().toString().trim()).apply();
        this.editor.putString(new ObfuscatedString(new long[]{-7525237273868860869L, -5948098963048615846L, 7815938103569670610L}).toString(), editText3.getText().toString().trim()).apply();
        ConfigUtil configUtil = this.f5771config;
        if (trim.isEmpty()) {
            trim = new ObfuscatedString(new long[]{-2725014325373092405L, -8767671760894308550L}).toString();
        }
        configUtil.setPingThread(Integer.parseInt(trim));
        alertDialog.dismiss();
    }

    public /* synthetic */ void lambda$pingDialog$16(AlertDialog alertDialog, View view) {
        this.pingbox.setChecked(false);
        this.editor.putBoolean(new ObfuscatedString(new long[]{-6527114183969595245L, -3057698201262773164L, 3289182959152096932L}).toString(), false).apply();
        alertDialog.dismiss();
    }

    public /* synthetic */ void lambda$render_event$58(AppCompatActivity appCompatActivity) {
        FinishOnConnect finishOnConnect = this.delayed_finish_on_connect;
        if (finishOnConnect != FinishOnConnect.PENDING && finishOnConnect != FinishOnConnect.DISABLED) {
            appCompatActivity.finish();
        }
        this.delayed_finish_on_connect = FinishOnConnect.DISABLED;
    }

    public /* synthetic */ void lambda$render_event$59() {
        if (this.finish_on_connect != FinishOnConnect.DISABLED) {
            finish();
        }
    }

    public /* synthetic */ void lambda$server$73(DialogInterface dialogInterface, int i) {
        clipImport2();
        dialogInterface.dismiss();
    }

    public /* synthetic */ void lambda$showClearDataDialog$62(DialogInterface dialogInterface, int i) {
        ((ActivityManager) getSystemService(new ObfuscatedString(new long[]{1465721482694848655L, -47847604059906326L}).toString())).clearApplicationUserData();
        dialogInterface.dismiss();
    }

    public /* synthetic */ void lambda$showLINKnetwork$69(DialogInterface dialogInterface, int i) {
        attemptExportNetwork();
        dialogInterface.dismiss();
    }

    public /* synthetic */ void lambda$showLINKserver$67(DialogInterface dialogInterface, int i) {
        attemptExportServer();
        dialogInterface.dismiss();
    }

    public /* synthetic */ void lambda$showLogoutDialog$51(AlertDialog alertDialog, View view) {
        this.mConfig.setHasAccount(true);
        alertDialog.dismiss();
    }

    public /* synthetic */ void lambda$showLogoutDialog$52(AlertDialog alertDialog, View view) {
        this.f5771config.setUsername(new ObfuscatedString(new long[]{4496581939532381579L}).toString());
        this.f5771config.setPassword(new ObfuscatedString(new long[]{6536134193091371851L}).toString());
        this.mConfig.setHasAccount(false);
        startActivity(new Intent(this, (Class<?>) LoginActivity.class));
        finishAffinity();
        alertDialog.dismiss();
    }

    public /* synthetic */ void lambda$showNoticeDialog$47(TextView textView, String str) {
        try {
            textView.setText(str.substring(0, this.i4 + 1));
        } catch (Exception unused) {
        }
    }

    public /* synthetic */ void lambda$showNoticeDialog$48(String str, TextView textView) {
        int i = 0;
        while (true) {
            this.i4 = i;
            if (this.i4 < str.length()) {
                this.mHandler.post(new RunnableC0389x4e99d4e(this, textView, str));
                try {
                    Thread.sleep(30L);
                } catch (InterruptedException unused) {
                }
                i = this.i4 + 1;
            } else {
                return;
            }
        }
    }

    public /* synthetic */ void lambda$showNoticeDialog$49() {
        this.notice.setVisibility(8);
        this.f5771config.setNotice_s(false);
    }

    public /* synthetic */ void lambda$showNoticeDialog$50(AlertDialog alertDialog, View view) {
        this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 3), 500L);
        alertDialog.dismiss();
    }

    public static /* synthetic */ void lambda$startSocksOpenVPN$5() {
    }

    public /* synthetic */ void lambda$stopSocksOpenVPN$7() {
        enabledWidgets(true);
        stopUdp();
        stopVPN();
    }

    public /* synthetic */ void lambda$tk12$53(DialogInterface dialogInterface, int i) {
        clipImport();
        dialogInterface.dismiss();
    }

    public /* synthetic */ void lambda$updateByteCount$8(String str, String str2) {
        this.bytes_in_view.setText(str);
        this.bytes_out_view.setText(str2);
    }

    public /* synthetic */ void lambda$updateConnectionTime$9(long j) {
        this.duration_view.setText(VpnUtils.convertToTime(j));
    }

    public /* synthetic */ void lambda$updateState$10(String str, int i) {
        int tunnelType;
        setStarterButton();
        this.f5771config.setBytesIn(0L);
        this.f5771config.setBytesOut(0L);
        isConnected = str.equalsIgnoreCase(new ObfuscatedString(new long[]{6773343199304002403L, 6743214987703712541L, 4687530763818652940L}).toString());
        this.status_view.setText(str);
        if (TkLogStatus.isTunnelActive() && !isConnected) {
            this.custom_progressBar.setProgressWithAnimation(i);
            AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
            this.btn_icon.setBackground(ContextCompat.getDrawable(this, R.drawable.ic_off));
        }
        if (isConnected && ((tunnelType = this.f5771config.getTunnelType()) == 8 || tunnelType == 11)) {
            updateByteCount();
        }
        doUpdateLayout();
    }

    public /* synthetic */ void lambda$updateState$11() {
        showInterstitial();
        int tunnelType = this.f5771config.getTunnelType();
        if (tunnelType != 8 && tunnelType != 11) {
            this.tv_test_state.setVisibility(8);
        } else {
            this.tv_test_state.setVisibility(0);
            teststate1();
            setTestState(getString(R.string.connection_test_testing));
            showExpireDate();
        }
        this.btn_icon.setBackground(ContextCompat.getDrawable(this, R.drawable.ic_on));
        this.custom_progressBar.setColor(ContextCompat.getColor(getApplicationContext(), R.color.connect_color));
        this.custom_progressBar.setProgress(100.0f);
        AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.connect_color, this.status_view);
        SharedPreferences sharedPreferences = this.myPrefs;
        if (sharedPreferences != null && sharedPreferences.getBoolean(new ObfuscatedString(new long[]{-4825977379829602553L, -537344715584817928L, -3666102082503605676L}).toString(), false)) {
            startPingStatus();
        }
    }

    public /* synthetic */ void lambda$updateState$12() {
        AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
    }

    public /* synthetic */ void lambda$updateState$13() {
        this.custom_progressBar.setProgress(0.0f);
        AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
        this.custom_progressBar.setColor(ContextCompat.getColor(this, R.color.dataOut));
        this.btn_icon.setBackground(ContextCompat.getDrawable(this, R.drawable.ic_off));
    }

    public /* synthetic */ void lambda$updateState$14() {
        this.custom_progressBar.setProgress(0.0f);
        this.status_view.setText(R.string.auth_failed);
        AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
        this.custom_progressBar.setColor(ContextCompat.getColor(this, R.color.dataOut));
        this.btn_icon.setBackground(ContextCompat.getDrawable(this, R.drawable.ic_off));
    }

    private void launchMarket() {
        try {
            startActivity(new Intent(new ObfuscatedString(new long[]{-3375086041332908739L, 7625560322763349535L, 3203965766397267860L, 5993802566500273652L, -1515860527122866948L}).toString(), Uri.parse(new ObfuscatedString(new long[]{-1884985963189917273L, -106813831873165614L, -9189410901385609146L, 5702896332783130144L}).toString() + getPackageName())));
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(this, new ObfuscatedString(new long[]{-8542144971784505363L, -3661855286055393981L, 1466399744868990558L, 8426447960020363122L, 3550276913498737677L}).toString(), 1).show();
        }
    }

    private void launchVPN() {
        Intent prepare = VpnService.prepare(this);
        if (prepare != null) {
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{1122181269760329303L, 9197909889820138219L, 2753500602153195918L, 5770213765260785017L}).toString(), new ObfuscatedString(new long[]{1108189886750968751L}).toString());
            try {
                startActivityForResult(prepare, 65);
                return;
            } catch (ActivityNotFoundException unused) {
                TkLogStatus.logError(R.string.no_vpn_support_image);
                return;
            }
        }
        onActivityResult(65, -1, null);
    }

    private void loadAdview() {
        if (!this.myPrefs.getBoolean(new ObfuscatedString(new long[]{6446668730420272977L, 9132546414568321862L, 5952072071069014484L}).toString(), false)) {
            showTelegramGroupDialog();
        }
        TextView textView = (TextView) findViewById(R.id.checkupdate);
        this.checkupdate = textView;
        textView.setText(new ObfuscatedString(new long[]{-2136247612658872147L, -2338917037511721832L, 7441713282278082403L}).toString());
        this.tv_test_state = (TextView) findViewById(R.id.tv_test_state);
        if (!this.myPrefs.getBoolean(new ObfuscatedString(new long[]{2428943807443174751L, -2172829072413416069L, -5761151955640576098L}).toString(), false)) {
            this.prefs.set_string(new ObfuscatedString(new long[]{-62762233375755986L, -2181376738956096524L, 7851701304426883567L}).toString(), new ObfuscatedString(new long[]{-9187467794337967992L}).toString());
            this.prefs.set_string(new ObfuscatedString(new long[]{2816192072173605179L, 6077186654854754213L, -6580025532341822065L}).toString(), new ObfuscatedString(new long[]{350802720025480226L}).toString());
        }
        this.editor.putBoolean(new ObfuscatedString(new long[]{6742160149737368176L, 218262306944947664L, -8685861252739911599L}).toString(), true).apply();
        this.custom_network = (RelativeLayout) findViewById(R.id.custom_network);
        this.custom_server = (RelativeLayout) findViewById(R.id.custom_s);
        ((TextView) findViewById(R.id.custom_s_name)).setText(this.prefs.get_string(new ObfuscatedString(new long[]{-1239200002416955009L, -3376660768842079179L, 6891851540627221349L}).toString()));
        ((TextView) findViewById(R.id.custom_tweak_name)).setText(this.prefs.get_string(new ObfuscatedString(new long[]{6826346724479813361L, 2935519265547003862L}).toString()));
        ImageView imageView = (ImageView) findViewById(R.id.s_arrow);
        this.custom_arrow = imageView;
        imageView.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 15));
        ImageView imageView2 = (ImageView) findViewById(R.id.n_arrow);
        this.custom_na = imageView2;
        imageView2.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 19));
        ((ImageView) findViewById(R.id.custom_s_arrow)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 20));
        ((ImageView) findViewById(R.id.custom_n_arrow)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 21));
        this.showNoUpdate = false;
        this.f5771config = ConfigUtil.getInstance(this);
        this.listProfiles = new ArrayList<>();
        this.server_adapter = new ServerAdapter(this, this.listProfiles);
        this.listNetwork = new ArrayList<>();
        this.networkAdapter = new NetworkAdapter(this, this.listNetwork);
        this.btn_icon = (AppCompatImageView) findViewById(R.id.btn_connect_icon);
        this.banner = (RelativeLayout) findViewById(R.id.banner);
        this.s_spinner = (LinearLayoutCompat) findViewById(R.id.s_spinner);
        this.user = (LinearLayoutCompat) findViewById(R.id.n_spinner);
        this.s_spinner = (LinearLayoutCompat) findViewById(R.id.user);
        this.pass = (LinearLayoutCompat) findViewById(R.id.pass);
        this.mDataChart = (LineChart) findViewById(R.id.chart);
        this.mDataGraph = GraphHelper.getHelper().with(this).color(ContextCompat.getColor(this, R.color.colorPrimary)).chart(this.mDataChart);
        EditText editText = (EditText) findViewById(R.id.user_name);
        this.user_name = editText;
        editText.setText(this.f5771config.getUsername());
        MaterialEditText materialEditText = (MaterialEditText) findViewById(R.id.user_pass);
        this.user_pass = materialEditText;
        materialEditText.setText(this.f5771config.getPassword());
        this.mExpireDate = (TextView) findViewById(R.id.profile_days_remaining);
        ((AppCompatImageView) findViewById(R.id.priv)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 22));
        ((AppCompatImageView) findViewById(R.id.x_update)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 23));
        ((AppCompatImageView) findViewById(R.id.x_exit)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 24));
        ((AppCompatImageView) findViewById(R.id.logs)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 25));
        ((ImageView) findViewById(R.id.n_item_checked)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 26));
        if (this.f5771config.getCustomI()) {
            loadNetworks();
            setSelectedNetwork(true);
            setSelectedServer();
            loadServers();
        }
        this.server_layout = (RelativeLayout) findViewById(R.id.select_server);
        this.network_layout = (RelativeLayout) findViewById(R.id.select_network);
        this.server_layout.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 27));
        this.network_layout.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 16));
        this.custom_progressBar = (CircleProgressBar) findViewById(R.id.custom_progressBar);
        LottieAnimationView lottieAnimationView = (LottieAnimationView) findViewById(R.id.notice);
        this.notice = lottieAnimationView;
        lottieAnimationView.setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 17));
        if (Build.VERSION.SDK_INT >= 33 && ContextCompat.checkSelfPermission(this, new ObfuscatedString(new long[]{1180959117494442400L, -942814989262484660L, -7950634858482420383L, -5340378405573007137L, 5625080450382147197L, 8403946158207759863L}).toString()) != 0) {
            requestPermissions(new String[]{new ObfuscatedString(new long[]{-239653901746291714L, 2237153085219463901L, -1981201067416939027L, 6066148769557148558L, -6576504778542164498L, -5673574081544408950L}).toString()}, 1234);
        }
        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback(true) { // from class: com.tknetwork.tunnel.activities.ActivityUi.6
            public AnonymousClass6(boolean z) {
                super(z);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                Intent intent = new Intent(new ObfuscatedString(new long[]{-4749642092926878575L, -1845845093106412929L, -20767686146078966L, -9210610186744486937L, 6083940113754741027L}).toString());
                intent.addCategory(new ObfuscatedString(new long[]{8407645368833801895L, -2525967103029696369L, 830162883634448161L, 1778844201282448468L, 9208382120009656948L}).toString());
                intent.setFlags(268435456);
                ActivityUi.this.startActivity(intent);
            }
        });
        menu();
        this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 11), 1000L);
        JSONObject jSONObject = getJSONObject();
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.has(new ObfuscatedString(new long[]{8103135488838417004L, -6288889970124934540L, -2315237387258248217L}).toString())) {
                this.f5771config.setSupport(jSONObject.getString(new ObfuscatedString(new long[]{1177240109969711530L, -4888559711020941804L, 5493079988350259127L}).toString()));
            }
            if (jSONObject.has(new ObfuscatedString(new long[]{4120060311229689441L, 6428458783768252935L, 6971861514034899742L}).toString())) {
                this.f5771config.setUpdateApi(jSONObject.getString(new ObfuscatedString(new long[]{730483167100571583L, 5545268533080971502L, -3778440119013791048L}).toString()));
            }
            if (jSONObject.has(new ObfuscatedString(new long[]{-6461077565226524945L, -1509703533634272202L, 1987587570177894483L}).toString())) {
                this.f5771config.setApi(jSONObject.getString(new ObfuscatedString(new long[]{9002539279820851984L, -8596446152991421070L, 7729629709539317239L}).toString()));
            }
            if (this.f5771config.getNotice_s()) {
                this.mHandler.postDelayed(new RunnableC0376xa1ab12f(this, jSONObject.getString(new ObfuscatedString(new long[]{-4016569096793997351L, 8956358160032512258L}).toString()), 2), 500L);
            } else {
                this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 12), 500L);
            }
            if (jSONObject.has(new ObfuscatedString(new long[]{-8805531486903059789L, -5548216218377299500L, 4281330077125738648L}).toString())) {
                getJSONSettings(jSONObject.getJSONArray(new ObfuscatedString(new long[]{-6970186874781123283L, -3194345898831911590L, -8009009080960904966L}).toString()).toString());
            }
            if (jSONObject.has(new ObfuscatedString(new long[]{6051281876712529060L, 3275757705001686510L, 3195976759058014754L}).toString())) {
                if (jSONObject.getString(new ObfuscatedString(new long[]{-36558817068411081L, -4369201445768665044L, 3903801984518235642L}).toString()).equals(new ObfuscatedString(new long[]{5897655995655281688L, 4899618427567076800L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-6629945169305082711L, 229523292411354121L, -3336977444550487896L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-2130966903651485944L, 2448069397474075881L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-1316641493361674899L, 5729645251648051018L, 491817364742655022L}).toString()).equals(new ObfuscatedString(new long[]{-8088479272197167737L, -7925139903566364076L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{3737641714562226530L, 6367251119018066548L, 984253812590749847L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{1207894241035772598L, -734719422428627458L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-6758522224817340140L, -4222175173896846102L, 3871842298273179672L}).toString()).equals(new ObfuscatedString(new long[]{-3327808353457024135L, 6782998544969269576L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{1261749077111389654L, -8288153386194865795L, 6102980208200231404L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-2415820589116088152L, -5611336883127478189L, -2396701685604085706L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-6545530613577752088L, -6654096032983961973L, -6375015822575726169L}).toString()).equals(new ObfuscatedString(new long[]{-344434157827051631L, 7149686391135491978L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-3741522241130046694L, -6797955083113114071L, 1608455138975566823L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-6989086495230962937L, -8648279213502406062L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-6967192252577967384L, 4548090812138209913L, -2441949250411814203L}).toString()).equals(new ObfuscatedString(new long[]{3458085786271440763L, -8742196196743942653L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-7010684116776810855L, 1046584237104065537L, -3306367082940886717L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{4924741226621857848L, -6446240178904526607L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{321133528831612183L, 6817216510297383745L, -2585124489361520945L}).toString()).equals(new ObfuscatedString(new long[]{8379631912899768595L, 1324961812965647790L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{2080737403725393437L, 4383820147989985185L, -3371900580150283731L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{147735168107511851L, 7975405615761134536L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-3993435430321079017L, 3959397979059864401L, -9129103241421061807L}).toString()).equals(new ObfuscatedString(new long[]{8597548622972391660L, 445033045394246039L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-4748898655075908402L, 5308491503946650471L, 6083741475100217272L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-4443982218864749234L, -8407675010937675771L}).toString())).apply();
                }
            }
        } catch (JSONException unused) {
        }
        NavigationView navigationView = (NavigationView) findViewById(R.id.navigation_view);
        this.navigation_view = navigationView;
        navigationView.setNavigationItemSelectedListener(this);
        this.navigation_view.inflateHeaderView(R.layout.nav_header);
        ((AppCompatImageView) findViewById(R.id.right_top2)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 18));
        this.contentView = (RelativeLayout) findViewById(R.id.main_content);
        this.drawer = (DrawerLayout) findViewById(R.id.drawer);
        this.navigation_view.getHeaderView(0);
        ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, this.drawer, R.string.navigation_drawer_open, R.string.navigation_drawer_close);
        this.drawer.addDrawerListener(actionBarDrawerToggle);
        actionBarDrawerToggle.setDrawerIndicatorEnabled(true);
        actionBarDrawerToggle.syncState();
        CheckBox checkBox = (CheckBox) this.navigation_view.getMenu().findItem(R.id.boosting).setActionView(new CheckBox(this)).getActionView();
        this.pingbox = checkBox;
        checkBox.setChecked(this.myPrefs.getBoolean(new ObfuscatedString(new long[]{6242463125946976453L, 8400954501517605614L, 6422991670930419513L}).toString(), false));
        this.pingbox.setOnCheckedChangeListener(new C0390x994ec581(this, 0));
        this.drawer.addDrawerListener(new DrawerLayout.SimpleDrawerListener() { // from class: com.tknetwork.tunnel.activities.ActivityUi.7
            public AnonymousClass7() {
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerClosed(View view) {
                try {
                    if (ActivityUi.this.drawer.getRotation() == 0.0f) {
                        ActivityUi.this.drawer.animate().setDuration(200L).rotation(0.0f);
                    } else {
                        ActivityUi.this.drawer.animate().setDuration(200L).rotation(0.0f);
                    }
                } catch (Exception unused2) {
                }
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerOpened(View view) {
                try {
                    if (ActivityUi.this.drawer.getRotation() == 0.0f) {
                        ActivityUi.this.drawer.animate().setDuration(200L).rotation(0.0f);
                    } else {
                        ActivityUi.this.drawer.animate().setDuration(200L).rotation(0.0f);
                    }
                } catch (Exception unused2) {
                }
            }

            @Override // androidx.drawerlayout.widget.DrawerLayout.SimpleDrawerListener, androidx.drawerlayout.widget.DrawerLayout.DrawerListener
            public void onDrawerSlide(View view, float f) {
                float f2 = 0.3f * f;
                float f3 = 1.0f - f2;
                ActivityUi.this.contentView.setScaleX(f3);
                ActivityUi.this.contentView.setScaleY(f3);
                ActivityUi.this.contentView.setTranslationX((view.getWidth() * f) - ((ActivityUi.this.contentView.getWidth() * f2) / 2.0f));
            }
        });
        this.navigation_view.setNavigationItemSelectedListener(this);
        c_01();
        import_menu();
        loadServers();
        loadNetworks();
        setSelectedServer();
        setSelectedNetwork(false);
        if (!this.myPrefs.getBoolean(new ObfuscatedString(new long[]{-1880133458281825184L, 3818720112867552135L}).toString(), false)) {
            setSelectedNetwork(true);
        }
        if (!this.prefs.get_string(new ObfuscatedString(new long[]{-1910845275646721917L, -4050318584682978346L, 5680457839081296903L}).toString()).isEmpty()) {
            this.custom_server.setVisibility(0);
            this.server_layout.setVisibility(8);
            this.f5771config.setServerSelectedPosition(1);
            this.f5771config.setServerSelectedName(this.listProfiles.get(1));
        } else {
            this.custom_server.setVisibility(8);
            this.server_layout.setVisibility(0);
        }
        if (!this.prefs.get_string(new ObfuscatedString(new long[]{3887146356286654658L, -1042547028888108850L, -4197331995270149986L}).toString()).isEmpty()) {
            this.custom_network.setVisibility(0);
            this.network_layout.setVisibility(8);
        } else {
            this.custom_network.setVisibility(8);
            this.network_layout.setVisibility(0);
        }
        if (this.f5771config.getNotice_s()) {
            this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 13), 500L);
        } else {
            this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 14), 500L);
        }
    }

    private void loadAppColors(int i) {
        setStatusBarColor(i);
        setNavBarColor(i);
        this.navigation_view.getHeaderView(0).findViewById(R.id.nav).setBackgroundColor(i);
        this.navigation_view.getHeaderView(0).findViewById(R.id.nav_logo).setBackgroundTintList(ColorStateList.valueOf(i));
        ((ImageView) findViewById(R.id.s_arrow)).setColorFilter(i);
        ((ImageView) findViewById(R.id.n_arrow)).setColorFilter(i);
        ((TextView) findViewById(R.id.duration)).setTextColor(i);
        ((ImageView) findViewById(R.id.custom_n_arrow)).setColorFilter(i);
        ((ImageView) findViewById(R.id.custom_s_arrow)).setColorFilter(i);
        ((TextView) findViewById(R.id.app_name)).setTextColor(i);
        ((AppCompatImageView) findViewById(R.id.x_update)).setColorFilter(i);
        ((AppCompatImageView) findViewById(R.id.priv)).setColorFilter(i);
        ((AppCompatImageView) findViewById(R.id.x_exit)).setColorFilter(i);
        findViewById(R.id.map).setBackgroundTintList(ColorStateList.valueOf(i));
        findViewById(R.id.s_spinner).setBackgroundTintList(ColorStateList.valueOf(i));
        findViewById(R.id.n_spinner).setBackgroundTintList(ColorStateList.valueOf(i));
        findViewById(R.id.user).setBackgroundTintList(ColorStateList.valueOf(i));
        findViewById(R.id.pass).setBackgroundTintList(ColorStateList.valueOf(i));
        ((AppCompatImageView) findViewById(R.id.right_top2)).setColorFilter(i);
        ((AppCompatImageView) findViewById(R.id.config_option)).setColorFilter(i);
        ((AppCompatImageView) findViewById(R.id.right_top)).setColorFilter(i);
    }

    private void load_ui_elements() {
        this.status_view = (TextView) findViewById(R.id.status);
        this.connect_button = (AppCompatButton) findViewById(R.id.connect);
        this.disconnect_button = (AppCompatButton) findViewById(R.id.disconnect);
        this.duration_view = (TextView) findViewById(R.id.duration);
        this.bytes_in_view = (TextView) findViewById(R.id.bytes_in);
        this.bytes_out_view = (TextView) findViewById(R.id.bytes_out);
        this.connect_button.setOnClickListener(this);
        this.disconnect_button.setOnClickListener(this);
        if (!AppUtils.m1554()) {
            onDestroy();
            try {
                ((ActivityManager) getSystemService(new ObfuscatedString(new long[]{1807836329254876997L, -2178997659111374792L}).toString())).clearApplicationUserData();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private void mIphunt() {
        Dialog dialog = new Dialog(this, R.style.AlertDialogTheme);
        dialog.setContentView(R.layout.iphunter);
        dialog.show();
        TextView textView = (TextView) dialog.findViewById(R.id.notiftext1);
        TextView textView2 = (TextView) dialog.findViewById(R.id.confimsg);
        RelativeLayout relativeLayout = (RelativeLayout) dialog.findViewById(R.id.appButton2);
        TextView textView3 = (TextView) dialog.findViewById(R.id.appButton1);
        TextView textView4 = (TextView) dialog.findViewById(R.id.appButton2txt);
        textView2.setTextColor(ContextCompat.getColor(getApplicationContext(), R.color.text_color));
        textView4.setTextColor(ContextCompat.getColor(getApplicationContext(), R.color.white));
        textView3.setTextColor(ContextCompat.getColor(getApplicationContext(), R.color.text_color));
        dialog.findViewById(R.id.color_bg).setBackgroundColor(ContextCompat.getColor(getApplicationContext(), R.color.colorPrimary));
        relativeLayout.setBackgroundTintList(ColorStateList.valueOf(ContextCompat.getColor(getApplicationContext(), R.color.colorPrimary)));
        textView.setText(new ObfuscatedString(new long[]{-3843482257959853089L, 1881680535090334915L, 7549008756273423394L}).toString());
        textView2.setText(new ObfuscatedString(new long[]{-9084385714342968246L, -5590355498440665474L, -1284646227228238803L, -7250446355384262556L, -2457903134705913782L, -5951334773111520056L}).toString());
        textView4.setText(new ObfuscatedString(new long[]{-6330440517432142656L, 2356355783635300681L, 8965070934399808086L}).toString());
        textView3.setText(new ObfuscatedString(new long[]{-7773374319547459165L, -9009819315943417201L}).toString());
        relativeLayout.setOnClickListener(new ViewOnClickListenerC0385x83592480(this, textView2, textView4, 0));
        textView3.setOnClickListener(new ViewOnClickListenerC0386x3d250025(dialog, 0));
        dialog.setCancelable(false);
        dialog.show();
    }

    private String mProtoType() {
        if (this.payload_type.getCheckedRadioButtonId() == R.id.ovpn_radio) {
            return new ObfuscatedString(new long[]{-5395344066490199465L, 7773566357890576736L}).toString();
        }
        if (this.payload_type.getCheckedRadioButtonId() == R.id.ssh_radio) {
            return new ObfuscatedString(new long[]{8757765851522481378L, -2417202749080109053L}).toString();
        }
        if (this.payload_type.getCheckedRadioButtonId() == R.id.ocs_radio) {
            return new ObfuscatedString(new long[]{-5319666316564151172L, -2505118423860217687L}).toString();
        }
        return new ObfuscatedString(new long[]{-3374706717271662715L, 6834811261456044381L}).toString();
    }

    private String mServerType() {
        if (this.server_type.getCheckedRadioButtonId() == R.id.cf_radio) {
            return new ObfuscatedString(new long[]{-2045557368947938310L, -5413866408431261576L}).toString();
        }
        if (this.server_type.getCheckedRadioButtonId() == R.id.ws_radio) {
            return new ObfuscatedString(new long[]{-1128117706112954786L, 3923850693490237165L}).toString();
        }
        return new ObfuscatedString(new long[]{-150175206658849822L, 570927901100129668L}).toString();
    }

    private void menu() {
        ((AppCompatImageView) findViewById(R.id.right_top)).setOnClickListener(new ViewOnClickListenerC0377x690937ba(this, 14));
    }

    private int n_profiles_loaded() {
        c_05.ProfileList profile_list = profile_list();
        if (profile_list != null) {
            return profile_list.size();
        }
        return 0;
    }

    private void nav_Button() {
        ((BottomNavigationView) findViewById(R.id.navigationView)).setOnItemSelectedListener(new C0375x845d249c(this, 2));
    }

    private void network() {
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        create.setIcon(R.drawable.ic_launcher);
        create.setTitle(R.string.app_name);
        create.setMessage(new ObfuscatedString(new long[]{-8308481807549542480L, -1782357707206124929L, -8760775248381254737L, -2446204024038646912L, 7591981177010924510L, -8317171591771798389L}).toString());
        create.setButton(-1, new ObfuscatedString(new long[]{8247431420366210029L, 5008573171668350194L}).toString(), new DialogInterfaceOnClickListenerC0378xba782511(this, 4));
        create.setButton(-2, new ObfuscatedString(new long[]{-6591838955629988877L, 714074077498500761L}).toString(), new DialogInterfaceOnClickListenerC0372xe698d(5));
        create.show();
    }

    @SuppressLint({"MissingInflatedId"})
    private void pingDialog() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.ping_dialog, (ViewGroup) null);
        final AlertDialog create = new AlertDialog.Builder(this).create();
        ((LinearLayout) inflate.findViewById(R.id.color_bg)).setBackgroundColor(this.myPrefs.getInt(new ObfuscatedString(new long[]{6250525327272966035L, 2026662166774910971L, 1793994422510814401L}).toString(), Color.parseColor(this.f5771config.getColor())));
        final EditText editText = (EditText) inflate.findViewById(R.id.ed_destination);
        final EditText editText2 = (EditText) inflate.findViewById(R.id.ed_timeout);
        final EditText editText3 = (EditText) inflate.findViewById(R.id.ed_thread);
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.save);
        relativeLayout.setBackgroundTintList(ColorStateList.valueOf(this.myPrefs.getInt(new ObfuscatedString(new long[]{-5626110310020169598L, -2984500907103459109L, -7401819251685518440L}).toString(), Color.parseColor(this.f5771config.getColor()))));
        inflate.findViewById(R.id.appButton1);
        inflate.findViewById(R.id.savetv);
        editText.setText(this.myPrefs.getString(new ObfuscatedString(new long[]{1027336824627435249L, 98631487227822502L, 221975477390608238L}).toString(), new ObfuscatedString(new long[]{4731753284091876439L, 6509674172334500035L, -2409795182502446116L}).toString()));
        editText2.setText(this.myPrefs.getString(new ObfuscatedString(new long[]{-3170813476990280250L, 583499019858058326L, -1329498441497881753L}).toString(), new ObfuscatedString(new long[]{-2115214732871586573L, -4979779076996359326L}).toString()));
        editText3.setText(String.valueOf(this.f5771config.getPingThread()));
        relativeLayout.setOnClickListener(new View.OnClickListener() { // from class: 뎹뎹땀둔땯됨뒋딝듟땁딞땭땠뒷뎡듼딠됩뒋땃돶두됴돨땨딤땄뎰딀뎡듼땀뒀돝땲땋뒵뎠돳득딤땪땔딁듸돤뒵돷땦될듔땧돼되든딄뒨둬땱돳딨듻듽뒛뎸듬땜뒝뒉도땄땪따딃뒻듌뒘땭듰딐뒹두딞뒨딸됩듻땋땪딎든뒾둬땣딻딜듨땡뒷땭둡딅들뒾땲땧딐땃뒻딤돛딄둣두둣돵듟돛땥딄돷돴뒵뒈됐뒛땍뒤땱뒨
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                EditText editText4 = editText2;
                ActivityUi.this.lambda$pingDialog$15(editText3, editText, editText4, create, view);
            }
        });
        inflate.findViewById(R.id.appButton0).setOnClickListener(new ViewOnClickListenerC0382x306fc053(this, create, 0));
        create.setView(inflate);
        create.setCancelable(false);
        create.getWindow().getAttributes().windowAnimations = R.style.AlertDialogTheme;
        create.show();
    }

    private void processImportData(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(new ObfuscatedString(new long[]{-8152875079687026409L, -2861682036333342867L}).toString());
            if (!optString.isEmpty()) {
                this.prefs.set_string(new ObfuscatedString(new long[]{3719362614178116387L, 7053211997933513265L, -3086976278335689883L}).toString(), c_12.Parser.parse(optString));
            }
            String optString2 = jSONObject.optString(new ObfuscatedString(new long[]{-4359674325377558631L, -5895409088758753963L}).toString());
            if (!optString2.isEmpty()) {
                this.prefs.set_string(new ObfuscatedString(new long[]{5101202429531885993L, -471111775859879118L, -4565522539177936229L}).toString(), c_12.Parser.parse(optString2));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        int i = !TextUtils.isEmpty(this.prefs.get_string(new ObfuscatedString(new long[]{5584466583845415711L, -1970754777237217574L, 9055688612763915636L}).toString())) ? 1 : 0;
        if (!TextUtils.isEmpty(this.prefs.get_string(new ObfuscatedString(new long[]{4622584454387823248L, 2676765498821036060L, -8685933147796980131L}).toString()))) {
            i = 1;
        }
        this.f5771config.setNetworkSelectedPosition(i);
        this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{148887319518996479L, -4223224681873064990L, -2747672536312566085L}).toString());
        this.f5771config.setServerSelectedPosition(i);
        this.f5771config.setServerSelectedName(new ObfuscatedString(new long[]{-1818550844068317273L, -7455332584174239702L, 3155136355878236962L}).toString());
        loadNetworks();
        setSelectedNetwork(true);
        loadServers();
        showToast(getString(R.string.message_import_successful));
    }

    private boolean process_autostart_intent(boolean z) {
        Intent intent;
        String obfuscatedString;
        String stringExtra;
        if ((this.startup_state & 3) == 3 && (stringExtra = (intent = getIntent()).getStringExtra((obfuscatedString = new ObfuscatedString(new long[]{-6646322939415419037L, -637083811535007282L, 4406865115170778408L, 7363307800279770765L, 9146279303302670945L, 5688535744647424446L, -1822127057847617575L}).toString()))) != null) {
            this.autostart_profile_name = null;
            new ObfuscatedString(new long[]{-1207573866885431205L, -1151519124494886969L, -2015830373166768363L}).toString();
            String.format(new ObfuscatedString(new long[]{4188376290892504211L, 5662709650230933683L, 8670854285707596479L, 8069464077144115778L}).toString(), stringExtra);
            intent.removeExtra(obfuscatedString);
            if (!z) {
                c_05.ProfileList profile_list = profile_list();
                if (profile_list != null && profile_list.get_profile_by_name(stringExtra) != null) {
                    this.autostart_profile_name = stringExtra;
                    return true;
                }
                ok_dialog(resString(R.string.profile_not_found), stringExtra);
            } else if (!current_profile().get_name().equals(stringExtra)) {
                this.autostart_profile_name = stringExtra;
                submitDisconnectIntent(false);
            }
        }
        return false;
    }

    private void processnetworkData(String str) {
        try {
            String optString = new JSONObject(str).optString(new ObfuscatedString(new long[]{4557898979103288171L, -6061572258465901465L}).toString());
            if (!optString.isEmpty()) {
                this.prefs.set_string(new ObfuscatedString(new long[]{7999986899861231618L, 2832604859441349349L, -6722834918389267317L}).toString(), c_12.Parser.parse(optString));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.f5771config.setNetworkSelectedPosition(!TextUtils.isEmpty(this.prefs.get_string(new ObfuscatedString(new long[]{-6943109177505683693L, 4459888716195332038L, -3906012805498783722L}).toString())) ? 1 : 0);
        this.f5771config.setNetworkSelectedName(new ObfuscatedString(new long[]{-8107803318741254242L, 3898384315669368658L, -603438513037614532L}).toString());
        loadNetworks();
        setSelectedNetwork(true);
        showToast(getString(R.string.message_import_successful));
    }

    private void processserverData(String str) {
        try {
            String optString = new JSONObject(str).optString(new ObfuscatedString(new long[]{5994605186489252865L, 6883477024704463536L}).toString());
            if (!optString.isEmpty()) {
                this.prefs.set_string(new ObfuscatedString(new long[]{6079778822710627090L, 5620662736882296847L, 6683125879012329833L}).toString(), c_12.Parser.parse(optString));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.f5771config.setServerSelectedPosition(1);
        this.f5771config.setServerSelectedName(new ObfuscatedString(new long[]{3389405860662083309L, 4036836604287281808L, -5811473870329309895L}).toString());
        loadServers();
        this.f5771config.setServerSelectedName(this.listProfiles.get(1));
        this.f5771config.setServerSelectedPosition(1);
        this.prefs.get_string(new ObfuscatedString(new long[]{-32017273624492400L, 6851761335180284761L, 2681114940385358090L}).toString());
        setSelectedServer();
        showToast(getString(R.string.message_import_successful));
    }

    private void pushServer() {
        String str = this.prefs.get_string(new ObfuscatedString(new long[]{7884996476232420852L, -4825154837662034771L, 4888748379259205482L}).toString());
        if (TextUtils.isEmpty(str)) {
            showToast(getString(R.string.nothing_to_export));
            return;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(new ObfuscatedString(new long[]{7150138702057189544L, 1713023935030641506L}).toString(), new JSONObject(c_12.Parser.d_01(str)).toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-4771163725699358878L, 3194156191373330313L, -9010632420907106591L}).toString(), c_12.Parser.parse(jSONObject.toString()));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        try {
            try {
                String d_01 = c_12.Parser.d_01(this.prefs.get_string(new ObfuscatedString(new long[]{6262912035682898340L, -4820938864204754582L, -1342661457642453134L}).toString()));
                if (TextUtils.isEmpty(d_01)) {
                    showToast(getString(R.string.message_invalid_file_content));
                } else {
                    processserverData(d_01);
                }
            } catch (Exception e2) {
                showToast(String.format(new ObfuscatedString(new long[]{-3997790506345482588L, -5024721142688253027L, 2495947694044437292L, 8069944644974349412L}).toString(), e2.getClass().getName(), e2.getMessage()));
            }
        } catch (Exception e3) {
            showToast(String.format(new ObfuscatedString(new long[]{-8256055805693440043L, 190025244187982350L, 457047896891341348L, 417314513075865791L}).toString(), e3.getClass().getName(), e3.getMessage()));
        }
    }

    private void reloadNetwork() {
        String str = this.prefs.get_string(new ObfuscatedString(new long[]{-8297342867173547685L, -4556097239112741280L, 1533954553013195529L}).toString());
        loadNetworks();
        setSelectedNetwork(false);
        setSelectedServer();
        loadServers();
        if (!str.isEmpty()) {
            this.custom_network.setVisibility(0);
            this.network_layout.setVisibility(8);
        } else {
            this.custom_network.setVisibility(8);
            this.network_layout.setVisibility(0);
        }
        try {
            ConfigUtil configUtil = ConfigUtil.getInstance(this);
            configUtil.setCustomPayload(false);
            JSONObject networkSelectedJson = getNetworkSelectedJson();
            if (!networkSelectedJson.getBoolean(new ObfuscatedString(new long[]{8472451747553392667L, 8553170134599304231L, 4898895812027506375L}).toString())) {
                configUtil.setCustomCertificate(new ObfuscatedString(new long[]{-8807916785716881583L}).toString());
            } else {
                configUtil.setCustomCertificate(networkSelectedJson.optString(new ObfuscatedString(new long[]{-2097612000308232060L, 6888766653305949733L, 1752190565791715319L}).toString(), new ObfuscatedString(new long[]{3326294785886856236L}).toString()).trim());
            }
            ((TextView) findViewById(R.id.custom_tweak_name)).setText(this.prefs.get_string(new ObfuscatedString(new long[]{1213039954610819295L, 6332256815214711137L}).toString()));
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    @SuppressLint({"DefaultLocale"})
    private static String render_bandwidth(long j) {
        String obfuscatedString;
        float f;
        float f2 = (float) j;
        if (f2 >= 1.0E12f) {
            obfuscatedString = new ObfuscatedString(new long[]{5015040998701855883L, -333065497920456210L}).toString();
            f = 1.09951163E12f;
        } else if (f2 >= 1.0E9f) {
            obfuscatedString = new ObfuscatedString(new long[]{-2694036810457148274L, -3518264588639251363L}).toString();
            f = 1.07374182E9f;
        } else if (f2 >= 1000000.0f) {
            obfuscatedString = new ObfuscatedString(new long[]{212137181635451532L, -1139384426071554456L}).toString();
            f = 1048576.0f;
        } else if (f2 >= 1000.0f) {
            obfuscatedString = new ObfuscatedString(new long[]{-1978296633648348221L, 5952102918805726289L}).toString();
            f = 1024.0f;
        } else {
            return String.format(new ObfuscatedString(new long[]{-7528215607157918211L, -5226905815935642052L}).toString(), Float.valueOf(f2));
        }
        return String.format(new ObfuscatedString(new long[]{-4725012868597384754L, -2139707273886337900L}).toString(), Float.valueOf(f2 / f), obfuscatedString);
    }

    @SuppressLint({"SetTextI18n", "NonConstantResourceId", "QueryPermissionsNeeded"})
    private void render_event(c_05.EventMsg eventMsg, boolean z, boolean z2, boolean z3) {
        int i = eventMsg.flags;
        if (eventMsg.is_reflected(this)) {
            i |= 131072;
        }
        if (!z && (i & 8) == 0 && eventMsg.profile_override == null) {
            int i2 = eventMsg.res_id;
            if (i2 == R.string.core_thread_active) {
                this.custom_progressBar.setProgressWithAnimation(65.0f);
                ui_setup(true, i, null);
                enabledWidgets(false);
            } else if (i2 == R.string.core_thread_inactive) {
                ui_setup(false, i, null);
                if (this.f5771config.getTunnelType() != 7) {
                    enabledWidgets(!TunnelVPN.isRunning);
                } else {
                    enabledWidgets(true);
                }
            }
        } else {
            ui_setup(z2, i | 65536, eventMsg.profile_override);
        }
        switch (eventMsg.res_id) {
            case R.string.auth_failed /* 2131951666 */:
                stopVPN();
                this.status_view.setTextColor(SupportMenu.CATEGORY_MASK);
                this.status_view.setText(new ObfuscatedString(new long[]{-6736654155560429090L, -4456652578375528271L, 5725529320284846254L}).toString());
                break;
            case R.string.info_msg /* 2131951829 */:
                if (eventMsg.info.startsWith(new ObfuscatedString(new long[]{-8748738205947550469L, -4504975396854076227L, 2667752170621558807L}).toString())) {
                    Intent intent = new Intent(new ObfuscatedString(new long[]{-1002717970333383609L, 2845477247687389916L, 6784403733230485137L, 2599378425510326683L, 3530075135042790576L}).toString(), Uri.parse(eventMsg.info.substring(9)));
                    intent.putExtra(new ObfuscatedString(new long[]{2576919400653440213L, 728028531030313494L, 2088866291241265208L, 8485530244158805014L, -5258528700944463396L, -4846079599243209386L}).toString(), getPackageName());
                    if (intent.resolveActivity(getPackageManager()) != null) {
                        startActivity(intent);
                        break;
                    }
                }
                break;
            case R.string.tap_not_supported /* 2131952275 */:
                if (!z3) {
                    ok_dialog(resString(R.string.tap_unsupported_title), resString(R.string.tap_unsupported_error));
                    break;
                }
                break;
            case R.string.tun_face_create /* 2131952399 */:
                if (!z3) {
                    ok_dialog(resString(R.string.tun_ko_title), resString(R.string.tun_ko_error));
                    break;
                }
                break;
            case R.string.warn_msg /* 2131952443 */:
                this.delayed_finish_on_connect = FinishOnConnect.PENDING;
                ok_dialog(resString(R.string.warning_title), eventMsg.info, new RunnableC0371x742e2fda(this, this, 1));
                break;
        }
        if (eventMsg.priority >= 1) {
            int i3 = eventMsg.res_id;
            if (i3 == R.string.connected) {
                this.showNoUpdate = false;
                show_status(i3);
                ClientAPI_ConnectionInfo clientAPI_ConnectionInfo = eventMsg.conn_info;
                if (clientAPI_ConnectionInfo != null) {
                    show_conn_info(clientAPI_ConnectionInfo);
                }
            } else if (eventMsg.info.length() > 0) {
                show_status(String.format(new ObfuscatedString(new long[]{5651192853699242770L, -1865208573537745800L}).toString(), resString(eventMsg.res_id), eventMsg.info));
            } else {
                show_status(eventMsg.res_id);
            }
        }
        show_stats();
        int tunnelType = this.f5771config.getTunnelType();
        if (tunnelType == 6 || tunnelType == 8 || tunnelType == 9 || tunnelType == 11) {
            enabledWidgets(!TunnelVPN.isRunning);
            if (c_06.isRunning) {
                AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.connect_color, this.status_view);
                this.status_view.setText(getResources().getString(R.string.connected));
                this.status_view.setText(new ObfuscatedString(new long[]{2162717449230022091L, 1159770893395964353L, 3523709962049248836L}).toString());
                enabledWidgets(false);
                if (this.isConnecting) {
                    AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
                    this.status_view.setText(getResources().getString(R.string.connecting));
                    this.status_view.setText(new ObfuscatedString(new long[]{6657561385308049599L, -5251905307890819341L, 6152245333389801838L}).toString());
                }
            } else {
                this.status_view.setTextColor(getResources().getColor(R.color.disconnected));
                this.status_view.setText(getResources().getString(R.string.disconnected));
                this.status_view.setText(new ObfuscatedString(new long[]{6892236151139616608L, 5390802333822634266L, 545334693098342736L}).toString());
            }
        }
        if (tunnelType == 8 || tunnelType == 11) {
            enabledWidgets(!TunnelVPN.isRunning);
            if (TunnelVPN.isRunning) {
                AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.connect_color, this.status_view);
                this.status_view.setText(getResources().getString(R.string.connected));
                this.status_view.setText(new ObfuscatedString(new long[]{-190103662897925904L, 4093776947842531023L, 2616479674878458133L}).toString());
                enabledWidgets(false);
                if (this.isConnecting) {
                    AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
                    this.status_view.setText(getResources().getString(R.string.connecting));
                    this.status_view.setText(new ObfuscatedString(new long[]{-7022873294100076272L, 8819641476439306670L, -1953980926780534579L}).toString());
                }
            } else {
                this.status_view.setTextColor(ContextCompat.getColor(this, R.color.disconnected));
                this.status_view.setText(getResources().getString(R.string.disconnected));
                this.status_view.setText(new ObfuscatedString(new long[]{-7048261914583023586L, -5229329681153398033L, 3633419560029745274L}).toString());
            }
        }
        if (this.f5771config.getConnectionType().equals(new ObfuscatedString(new long[]{-5070070392040794736L, -2518297249585431822L}).toString())) {
            enabledWidgets(!TunnelVPN.isRunning);
            if (TunnelVPN.isRunning) {
                AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.connect_color, this.status_view);
                this.status_view.setText(getResources().getString(R.string.connected));
                this.status_view.setText(new ObfuscatedString(new long[]{-6041727128010762111L, 8133000245075286928L, -374976164685508411L}).toString());
                enabledWidgets(false);
                if (this.isConnecting) {
                    AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
                    this.status_view.setText(getResources().getString(R.string.connecting));
                    this.status_view.setText(new ObfuscatedString(new long[]{4876686304126426723L, 7198102678658590219L, 433901936535397158L}).toString());
                }
            } else {
                this.status_view.setTextColor(ContextCompat.getColor(this, R.color.disconnected));
                this.status_view.setText(getResources().getString(R.string.disconnected));
                this.status_view.setText(new ObfuscatedString(new long[]{-2966210400969769932L, -4408015409822923102L, -7912013722201925558L}).toString());
            }
        }
        if (eventMsg.res_id == R.string.connected) {
            FinishOnConnect finishOnConnect = this.finish_on_connect;
            FinishOnConnect finishOnConnect2 = FinishOnConnect.DISABLED;
            if (finishOnConnect != finishOnConnect2) {
                if (this.prefs.get_boolean(new ObfuscatedString(new long[]{-7790903505999187952L, -6248502822931406815L, -4957291296775665976L, 6580193746757515525L, 661617387895144905L}).toString(), false)) {
                    if (this.delayed_finish_on_connect == FinishOnConnect.PENDING) {
                        this.delayed_finish_on_connect = this.finish_on_connect;
                        return;
                    } else {
                        new Handler().postDelayed(new RunnableC0373xbc544024(this, 0), 1000L);
                        return;
                    }
                }
                this.finish_on_connect = finishOnConnect2;
            }
        }
    }

    private void render_last_event() {
        boolean is_active = is_active();
        c_05.EventMsg eventMsg = get_last_event();
        if (eventMsg != null) {
            render_event(eventMsg, true, is_active, true);
        } else if (n_profiles_loaded() > 0) {
            render_event(c_05.EventMsg.disconnected(), true, is_active, true);
        } else {
            hide_status();
            ui_setup(is_active, 65536, null);
        }
        c_05.EventMsg eventMsg2 = get_last_event_prof_manage();
        if (eventMsg2 != null) {
            render_event(eventMsg2, true, is_active, true);
        }
    }

    private void reset_conn_info() {
        show_conn_info(new ClientAPI_ConnectionInfo());
    }

    private void resolve_epki_alias_then_connect() {
        resolveExternalPkiAlias(selected_profile(), new C0375x845d249c(this, 3));
    }

    private void schedule_stats() {
        cancel_stats();
        this.stats_timer_handler.postDelayed(this.stats_timer_task, 1000L);
    }

    private c_05.Profile selected_profile() {
        c_05.ProfileList profile_list = profile_list();
        if (profile_list != null) {
            return profile_list.get_profile_by_name(selected_profile_name());
        }
        return null;
    }

    private String selected_profile_name() {
        String str;
        c_05.ProfileList profile_list = profile_list();
        String serverSelectedName = this.f5771config.getServerSelectedName();
        if (serverSelectedName.contains(new ObfuscatedString(new long[]{6119666260054860312L, -2914767564278459978L}).toString()) || serverSelectedName.isEmpty()) {
            try {
                JSONArray serversArray = getServersArray(this.selectedServerType);
                int i = this.randomIndex;
                if (i == 0) {
                    i = 1;
                }
                return serversArray.getJSONObject(i).getString(new ObfuscatedString(new long[]{2874661284420046869L, 8026372377196445098L}).toString());
            } catch (JSONException unused) {
            }
        }
        if (profile_list != null && profile_list.size() > 0) {
            if (profile_list.size() == 1) {
                str = profile_list.get(0).get_name();
            } else {
                str = this.f5771config.getServerSelectedName();
            }
        } else {
            str = null;
        }
        if (str == null) {
            return new ObfuscatedString(new long[]{-3361140649538224702L, 2750644468840749834L, -3903679924054537155L, 7337039519550089663L}).toString();
        }
        return str;
    }

    private void server() {
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        create.setIcon(R.drawable.ic_launcher);
        create.setTitle(R.string.app_name);
        create.setMessage(new ObfuscatedString(new long[]{4221832821856656180L, 7888067894957352093L, 5720326937327217460L, 3385868592950310137L, -2488751512753979110L, 7763276590222344325L}).toString());
        create.setButton(-1, new ObfuscatedString(new long[]{-6058180005053676786L, 2303732835105783613L}).toString(), new DialogInterfaceOnClickListenerC0378xba782511(this, 0));
        create.setButton(-2, new ObfuscatedString(new long[]{-6864300431223009468L, 6170011712649845107L}).toString(), new DialogInterfaceOnClickListenerC0372xe698d(2));
        create.show();
    }

    private void setSelectedNetwork(boolean z) {
        ImageView imageView = (ImageView) findViewById(R.id.tweak_icon);
        TextView textView = (TextView) findViewById(R.id.tweak_name);
        TextView textView2 = (TextView) findViewById(R.id.tvNetworkgInfo);
        try {
            JSONObject networkSelectedJson = getNetworkSelectedJson();
            String string = networkSelectedJson.getString(new ObfuscatedString(new long[]{-731589174492034018L, -8715427817612871L}).toString());
            String string2 = networkSelectedJson.getString(new ObfuscatedString(new long[]{9125356931725460418L, 2063409106969397212L}).toString());
            textView.setText(string);
            textView2.setText(string2);
            imageView.setImageResource(this.networkAdapter.getIcon(string.toLowerCase()));
            int i = getNetworkSelectedJson().getInt(new ObfuscatedString(new long[]{6611082040548751059L, 4110808184463368303L, -182547514037937921L}).toString());
            this.selectedServerType = ServerType.OPENVPN;
            if (i == 0) {
                if (this.f5771config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_normal);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_direct);
                }
            } else if (i == 1) {
                if (this.f5771config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_payload);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_payload);
                }
            } else if (i == 2) {
                if (this.f5771config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_proxy);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_proxy);
                }
            } else if (i == 3) {
                if (this.f5771config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_ssl_tls);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_tls);
                }
            } else if (i == 4) {
                if (this.f5771config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv_payload);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_payload);
                }
            } else if (i == 5) {
                if (this.f5771config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_ssl_proxy);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_ssl_proxy);
                }
            } else if (i == 6) {
                ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_hysteria);
                this.selectedServerType = ServerType.HYSTERIA_UDP;
            } else if (i == 7) {
                if (this.f5771config.getOVPN().booleanValue()) {
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
            }
            if (z) {
                this.f5771config.setServerSelectedPosition(0);
                this.f5771config.setServerSelectedName(new ObfuscatedString(new long[]{-572713616652541561L, 6308968458847279076L}).toString());
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
            JSONObject serverSelectedJson = getServerSelectedJson();
            String string = serverSelectedJson.getString(new ObfuscatedString(new long[]{1164862618217721271L, 1375914923970677632L}).toString());
            textView2.setText(serverSelectedJson.getString(new ObfuscatedString(new long[]{-6632287581789178067L, 6314803154076509740L}).toString()));
            textView.setText(string);
            Drawable flag = this.server_adapter.getFlag(string);
            if (flag != null) {
                imageView.setImageDrawable(flag);
            } else {
                imageView.setImageResource(R.drawable.ic_server);
            }
            String lowerCase = string.toLowerCase();
            if (lowerCase.contains(new ObfuscatedString(new long[]{-2236220789554060310L, -5488998693794698359L, -7350117759878988299L}).toString())) {
                textView3.setText(getString(R.string.best_performance));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{447221569587750910L, -896625195122791170L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-7333180994719779203L, 6243203761110771709L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{1288497214833086358L, 6336622162907457528L, -1402811814895889500L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-8059210398612642184L, -2701319307631893999L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{139986401221959935L, 4459869427572156731L, 4848201195255920541L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6529463626277641165L, -9008790718944396526L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{6803605997522234553L, 7886531615017212281L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6901664182527932391L, -8396866551195134046L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-2938272432472262450L, -3607205981628464202L}).toString())) {
                textView3.setText(getString(R.string.china));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorAccent));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-5132925910221027619L, 7246693410922682464L, 6702954889203096287L}).toString())) {
                textView3.setText(getString(R.string.china));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorAccent));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6150017926273198018L, -6377245207671888758L}).toString())) {
                textView3.setText(getString(R.string.china));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorAccent));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6436495952944012805L, 6692233079717829510L, -4062329271466653457L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6065939501938997534L, 1300152862843151169L, 3596909715250686964L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-2875627475501809274L, -4507843247102696511L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{88696768014987988L, -6634946334018340378L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{8578138211236356221L, -8729396666858309576L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{238241809301630592L, -7043593234199934398L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{7461307233630101053L, 1293658147019800894L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{1983944863948737600L, 6179362688450887123L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{6825865756411181303L, -677690250229942601L, -3276605654232402787L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6139468046356526886L, 1500763675462041092L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-656181782465567897L, -6809349239159585779L}).toString())) {
                textView3.setText(getString(R.string.north_america));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.purple_200));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{3857465014709795365L, -7507361617219197784L, 1770888354804026696L}).toString())) {
                textView3.setText(getString(R.string.america));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.purple_200));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{8880726021518563151L, 5299193837254033016L}).toString())) {
                textView3.setText(getString(R.string.america));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{4045793560125944204L, 3310667649832594117L}).toString())) {
                textView3.setText(getString(R.string.europe));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-3989616456715606906L, 8108089565170576268L, -1099132655967830662L}).toString())) {
                textView3.setText(getString(R.string.europe));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-5189366364487025514L, 1694817915241255011L, -9009389543274856190L}).toString())) {
                textView3.setText(getString(R.string.europe));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-794052537997648529L, -7692492553736584812L}).toString())) {
                textView3.setText(getString(R.string.saudi_arabia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{2161283031727350341L, 3038168878509366806L, -5213987185698256790L, 4568079716024763104L}).toString())) {
                textView3.setText(getString(R.string.united_arab_emirates));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-6947876082840799438L, 4849804553443033217L}).toString())) {
                textView3.setText(getString(R.string.saudi_arabia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-5975904019411368907L, 8655493314011689641L}).toString())) {
                textView3.setText(getString(R.string.saudi_arabia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{1196656825127228587L, 2181481621657839692L}).toString())) {
                textView3.setText(getString(R.string.south_korea_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
            } else if (lowerCase.contains(new ObfuscatedString(new long[]{-5903851260333023259L, -725087770061714684L}).toString())) {
                textView3.setText(getString(R.string.east_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
            } else if (lowerCase.contains(new ObfuscatedString(new long[]{-3180129008152431664L, -1139878320768662387L}).toString())) {
                textView3.setText(R.string.custom);
            } else {
                textView3.setText(R.string.app_name);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void set_visibility_stats_expansion_group() {
        this.prefs.get_boolean(new ObfuscatedString(new long[]{8397774190292957689L, -3899351777411224071L, 7932473948781146224L}).toString(), false);
    }

    private void showClearDataDialog() {
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        create.setIcon(R.drawable.ic_launcher);
        create.setTitle(R.string.app_name);
        create.setMessage(new ObfuscatedString(new long[]{8441058591503365767L, -6756502515093812944L, 3359203983556022253L, 729932531381545642L, 7198198618612473350L, 1649729353756223821L}).toString());
        create.setButton(-1, new ObfuscatedString(new long[]{-4481902267312418070L, -8945233229707952987L}).toString(), new DialogInterfaceOnClickListenerC0378xba782511(this, 1));
        create.setButton(-2, new ObfuscatedString(new long[]{8822413213767795013L, -5400685288265096356L}).toString(), new DialogInterfaceOnClickListenerC0372xe698d(3));
        create.show();
    }

    private void showExpireDate() {
        String replace = VPNUtil.decrypt(new ObfuscatedString(new long[]{5616385513332873689L, -4974535944228565823L, -5319307669223239883L}).toString()).replace(new ObfuscatedString(new long[]{2037154594201724113L, 1905314616123010301L}).toString(), new ObfuscatedString(new long[]{-4779317056669411953L, 1079757271643068924L}).toString()).replace(new ObfuscatedString(new long[]{-6101416460971405032L, -3020946472331677904L}).toString(), new ObfuscatedString(new long[]{-2320564921364106929L, 9214499439734306415L}).toString()).replace(new ObfuscatedString(new long[]{3483406950977360071L, -7483300102066571056L}).toString(), new ObfuscatedString(new long[]{4293000637837157351L, -8446991564691223454L}).toString()).replace(new ObfuscatedString(new long[]{-6733822561609431124L, -4836011567900174308L}).toString(), new ObfuscatedString(new long[]{7947617725215749476L, -4417173325200852873L}).toString()).replace(new ObfuscatedString(new long[]{-1544348589695673628L, 7454854360373003583L}).toString(), new ObfuscatedString(new long[]{-632074563711363284L, -7465698951555409507L}).toString()).replace(new ObfuscatedString(new long[]{4458631242846082248L, -5151456699224253261L}).toString(), new ObfuscatedString(new long[]{2263624559116278590L, 8065886076743898207L}).toString()).replace(new ObfuscatedString(new long[]{6422795545484289124L, -4063692015908576693L}).toString(), new ObfuscatedString(new long[]{6714673168050536567L, 620952325750729714L}).toString()).replace(new ObfuscatedString(new long[]{-3846806742957943325L, -2256273523155310674L}).toString(), new ObfuscatedString(new long[]{633343850800844158L, -3222034966328868147L}).toString()).replace(new ObfuscatedString(new long[]{9133745733534362199L, -707540656846198522L}).toString(), new ObfuscatedString(new long[]{6247537199855067217L, 67156953906437252L}).toString()).replace(new ObfuscatedString(new long[]{-375145385459378966L, -4514267117541897462L}).toString(), new ObfuscatedString(new long[]{-877930780223797509L, -578867072887777708L}).toString()).replace(new ObfuscatedString(new long[]{-588472371862228597L, 6441256396302669869L}).toString(), new ObfuscatedString(new long[]{-5728594233081094988L, -558335096820815320L}).toString()).replace(new ObfuscatedString(new long[]{-6001712209506966766L, -3217507411441020850L}).toString(), new ObfuscatedString(new long[]{-8867934236540649240L, -7351793779319248155L}).toString()).replace(new ObfuscatedString(new long[]{-1131887797460347006L, -2854542025254065692L}).toString(), new ObfuscatedString(new long[]{1461658435276422769L, 8220567251560238538L}).toString()).replace(new ObfuscatedString(new long[]{1934182989760105317L, 481508454662048557L}).toString(), new ObfuscatedString(new long[]{2303305538880432602L, -7911501269116986515L}).toString()).replace(new ObfuscatedString(new long[]{136478482935391761L, -3949282892559548198L}).toString(), new ObfuscatedString(new long[]{-8865029760502781328L, 2719981704389755656L}).toString()).replace(new ObfuscatedString(new long[]{8370462984057780112L, 2211432228441969579L}).toString(), new ObfuscatedString(new long[]{600608845133076567L, -269285454423781403L}).toString()).replace(new ObfuscatedString(new long[]{-8607773597312349954L, -15230354115172977L}).toString(), new ObfuscatedString(new long[]{-1657785998650017473L, -8081162457264491710L}).toString()).replace(new ObfuscatedString(new long[]{6963607932607574715L, -7479421310012167693L}).toString(), new ObfuscatedString(new long[]{-8495652317118767158L, 8415537958589708815L}).toString()).replace(new ObfuscatedString(new long[]{4095603802979251975L, 678934886658721808L}).toString(), new ObfuscatedString(new long[]{996340307175817970L, 1482431165576916776L}).toString()).replace(new ObfuscatedString(new long[]{-6481153285361144823L, 4841332047747536661L}).toString(), new ObfuscatedString(new long[]{-1382827811138098052L, 2747888544357433100L}).toString()).replace(new ObfuscatedString(new long[]{1839718707534447415L, -830922550788852685L}).toString(), new ObfuscatedString(new long[]{1649432027001484275L, 7261478694740014065L}).toString()).replace(new ObfuscatedString(new long[]{926293179450794173L, -8110366346416343006L}).toString(), new ObfuscatedString(new long[]{-3229031214677287315L, 8904292094489020326L}).toString()).replace(new ObfuscatedString(new long[]{-6709122751931976128L, -780779152619945291L}).toString(), new ObfuscatedString(new long[]{497753803152093240L, -7941002473376427503L}).toString()).replace(new ObfuscatedString(new long[]{-8627904129918839419L, -7873992820736839039L}).toString(), new ObfuscatedString(new long[]{1500767047244906595L, -1859234514510776873L}).toString()).replace(new ObfuscatedString(new long[]{5276848737259399046L, 7872884256543999103L}).toString(), new ObfuscatedString(new long[]{9156380732838283272L, 4298630539740355154L}).toString()).replace(new ObfuscatedString(new long[]{7545233727657778400L, -6504645384605644364L}).toString(), new ObfuscatedString(new long[]{-3796910986599872149L, -6151635468573933342L}).toString());
        String username = this.f5771config.getUsername();
        String password = this.f5771config.getPassword();
        if (!username.isEmpty() && !password.isEmpty()) {
            String string = Settings.Secure.getString(getContentResolver(), new ObfuscatedString(new long[]{-8520255038663201299L, -2484162313554134652L, -8628000592326683012L}).toString());
            JsonManager.ExpiryUpdate expiryUpdate = new JsonManager.ExpiryUpdate(this);
            expiryUpdate.setURL(String.format(replace, username, password, string, Build.MODEL));
            expiryUpdate.setExpireDateListener(this);
            expiryUpdate.start();
        }
    }

    private void showLINKnetwork() {
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        create.setIcon(R.drawable.ic_launcher);
        create.setTitle(R.string.app_network);
        create.setMessage(new ObfuscatedString(new long[]{-4823305566346366832L, 3843231176492971828L, -6852856108222130449L, 4847882548761016702L, 9066483180479623692L, 6348726814933516739L}).toString());
        create.setButton(-1, new ObfuscatedString(new long[]{4536540184413389627L, -2489679923462647219L}).toString(), new DialogInterfaceOnClickListenerC0378xba782511(this, 6));
        create.setButton(-2, new ObfuscatedString(new long[]{5561218615925815687L, -2971504791871613658L}).toString(), new DialogInterfaceOnClickListenerC0372xe698d(1));
        create.show();
    }

    private void showLINKserver() {
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        create.setIcon(R.drawable.ic_launcher);
        create.setTitle(R.string.app_server);
        create.setMessage(new ObfuscatedString(new long[]{1800756824151922148L, 3775702487191368122L, -6051686516619408488L, 9203198826880841106L, -2166543403850780101L, 2912075476304140192L}).toString());
        create.setButton(-1, new ObfuscatedString(new long[]{6290127409254790325L, -5400220142091183353L}).toString(), new DialogInterfaceOnClickListenerC0378xba782511(this, 3));
        create.setButton(-2, new ObfuscatedString(new long[]{-4038709111777000786L, 324995220189704571L}).toString(), new DialogInterfaceOnClickListenerC0372xe698d(4));
        create.show();
    }

    private void showLogoutDialog() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.dialog_layout, (ViewGroup) null);
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        LottieAnimationView lottieAnimationView = (LottieAnimationView) inflate.findViewById(R.id.main_animation);
        ((TextView) inflate.findViewById(R.id.title_text)).setText(new ObfuscatedString(new long[]{-2204104324784325310L, -6343275965614355593L}).toString());
        ((TextView) inflate.findViewById(R.id.desc_text)).setText(new ObfuscatedString(new long[]{-5550854683948350260L, -7056857114723256878L, 3693535881449578852L, -6778024718872481134L, -8012180169323749059L}).toString());
        lottieAnimationView.setAnimation(R.raw.logout);
        lottieAnimationView.setRepeatCount(2);
        lottieAnimationView.playAnimation();
        ((TextView) inflate.findViewById(R.id.positive_text)).setText(new ObfuscatedString(new long[]{7028696081957396015L, -4825036864536150563L}).toString());
        inflate.findViewById(R.id.negative_button).setVisibility(8);
        inflate.findViewById(R.id.close_icon).setOnClickListener(new ViewOnClickListenerC0382x306fc053(this, create, 1));
        inflate.findViewById(R.id.positive_text).setOnClickListener(new ViewOnClickListenerC0382x306fc053(this, create, 2));
        create.setView(inflate);
        create.setCancelable(false);
        create.show();
    }

    private void showNoticeDialog() {
        try {
            AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
            View inflate = getLayoutInflater().inflate(R.layout.notification_layout, (ViewGroup) null);
            TextView textView = (TextView) inflate.findViewById(R.id.notice);
            create.setView(inflate);
            new Thread(new RunnableC0389x4e99d4e(this, getJSONObject().getString(new ObfuscatedString(new long[]{-7178837574993883096L, 4990158113350939760L}).toString()), textView)).start();
            inflate.findViewById(R.id.notif_dismiss_btn).setOnClickListener(new ViewOnClickListenerC0382x306fc053(this, create, 3));
            create.setCancelable(false);
            create.show();
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void showTelegramGroupDialog() {
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        create.setIcon(R.drawable.ic_telegram);
        create.setTitle(new ObfuscatedString(new long[]{1065675955360575319L, -6573351306785622709L, -3325939285590073588L, -1885464412273285283L}).toString());
        create.setMessage(new ObfuscatedString(new long[]{4747282918827998586L, -5917088864198467516L, -2095235392558265244L, 9117122389206558013L, 5177286435467598055L, -624414407665463051L, -3521740033023890505L, -6293130959923188265L, -7249109869061064704L, -7704103671249355600L, -2582506112096324018L, 5399615364341246609L, -6402381029151368182L, 7409182714473415339L, 354904170957468668L, 47137335951773710L, -6291529437950619067L, 9164308227358336617L, 3668336550666739747L, -4238978023866659435L}).toString());
        create.setButton(-1, new ObfuscatedString(new long[]{516096132372853648L, 6782539706657893965L, -707865202250800261L}).toString(), new DialogInterface.OnClickListener() { // from class: com.tknetwork.tunnel.activities.ActivityUi.4
            public AnonymousClass4() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                ActivityUi.this.editor.putBoolean(new ObfuscatedString(new long[]{-185855504426279956L, 8016300848568638006L, -381882516335006038L}).toString(), true).apply();
                ActivityUi.this.startActivity(new Intent(new ObfuscatedString(new long[]{6670721184981053653L, 352705186240286156L, 2867124883780295030L, -5067284271459195160L, 8598130102319705864L}).toString(), Uri.parse(new ObfuscatedString(new long[]{-5542939349403916741L, -843745523766599099L, -672273586356282602L, 8149247770995037456L}).toString())));
                dialogInterface.dismiss();
            }
        });
        create.setButton(-2, new ObfuscatedString(new long[]{-1610507592528956860L, 1352770661207728212L}).toString(), new DialogInterface.OnClickListener() { // from class: com.tknetwork.tunnel.activities.ActivityUi.5
            public AnonymousClass5() {
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
            }
        });
        create.setCancelable(false);
        create.show();
    }

    private void show_conn_info(ClientAPI_ConnectionInfo clientAPI_ConnectionInfo) {
        set_visibility_stats_expansion_group();
    }

    private void show_stats() {
        if (is_active()) {
            c_05.ConnectionStats connectionStats = get_connection_stats();
            this.bytes_in_view.setText(render_bandwidth(connectionStats.bytes_in));
            this.bytes_out_view.setText(render_bandwidth(connectionStats.bytes_out));
        }
    }

    private void show_status(String str) {
        this.status_view.setVisibility(0);
        if (!str.contains(new ObfuscatedString(new long[]{-6107129521635771277L, 7877438944131765112L, 1282049024226778496L}).toString())) {
            this.status_view.setText(str);
        }
        if (str.equals(getString(R.string.auth_failed))) {
            this.status_view.setTextColor(SupportMenu.CATEGORY_MASK);
            return;
        }
        if (!str.equals(getString(R.string.disconnected)) && !str.equals(getString(R.string.auth_failed))) {
            if (str.equals(getString(R.string.connected))) {
                AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.connect_color, this.status_view);
                return;
            } else {
                AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
                return;
            }
        }
        AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
        this.status_view.setText(R.string.disconnected);
    }

    private void startPingStatus() {
        if (TkLogStatus.isTunnelActive() && isConnected) {
            this.editor.putBoolean(new ObfuscatedString(new long[]{2410610034293963611L, -1829114546562462809L, -3008175782238678365L, 7463416298559112319L}).toString(), true).apply();
            try {
                startPinger();
            } catch (Exception e) {
                TkLogStatus.logInfo(new ObfuscatedString(new long[]{-3396548177570599829L, -4474052969181423281L, 1817993761476468329L}).toString() + e.getMessage());
            }
        }
    }

    private void startPinger() {
        this.TIMEOUT_TRIES = 0;
        int pingThread = this.mConfig.getPingThread();
        if (TkLogStatus.isTunnelActive() && !isConnected) {
            throw new Exception();
        }
        TkLogStatus.logInfo(new ObfuscatedString(new long[]{8435915505709206887L, 8721410526558531505L, 5299391128878719765L, -8918671865283255709L}).toString());
        AnonymousClass2 anonymousClass2 = new Thread() { // from class: com.tknetwork.tunnel.activities.ActivityUi.2
            final /* synthetic */ int val$timePing;

            public AnonymousClass2(int pingThread2) {
                r2 = pingThread2;
            }

            /* JADX WARN: Removed duplicated region for block: B:17:0x00f5 A[DONT_GENERATE] */
            /* JADX WARN: Removed duplicated region for block: B:20:0x00f7  */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            private synchronized void MakePinger() {
                int i;
                long ping;
                String str;
                try {
                    try {
                        ping = SpeedtestUtil.getPing(ActivityUi.this.myPrefs.getString(new ObfuscatedString(new long[]{-804863557811000227L, -582350205489449174L, -5476416440605125235L}).toString(), new ObfuscatedString(new long[]{-1885181684857837276L, -8608005511505456195L, 1972932675448278542L}).toString()), String.valueOf(ActivityUi.this.mConfig.getPingThread()));
                    } catch (Exception unused) {
                        new ObfuscatedString(new long[]{-3338698905867323194L, -2066609910745104530L, 2870408601039828343L}).toString();
                        new ObfuscatedString(new long[]{-1333531743680052628L, -1823931651817430741L, -4440101905927984987L}).toString();
                    }
                    if (ping < 400 && ping != 0 && ping != 1 && ping != -1) {
                        str = new ObfuscatedString(new long[]{94423986749540943L, -8837219329973933550L, -5558401457839406657L, 5811555029588530562L, -2046802049970825198L, 5373664318011464020L}).toString() + ping + new ObfuscatedString(new long[]{162908869022977769L, -4942738581845818013L, 5779484582428676775L}).toString();
                        ActivityUi.this.myPrefs.edit().putBoolean(new ObfuscatedString(new long[]{-6582724850930998003L, -6185807755801993058L, -4931946641734793311L, 5202976614302261517L}).toString(), false).apply();
                        TkLogStatus.logInfo(str);
                        i = r2;
                        if (i != 0) {
                            return;
                        }
                        if (i > 0) {
                            Thread.sleep(i * 1000);
                            return;
                        } else {
                            TkLogStatus.logInfo(new ObfuscatedString(new long[]{9213839095165146748L, -580458786808603662L, 5986797825655623147L}).toString());
                            throw new InterruptedException();
                        }
                    }
                    str = new ObfuscatedString(new long[]{-8148759948429608962L, 8439664366719215491L, 6835553000491386792L, -1983647174878530117L, -364514230546261953L, -3060215409113167246L}).toString() + ping + new ObfuscatedString(new long[]{6793831997058553910L, -7679979953045322259L, 7522039790107145029L}).toString();
                    ActivityUi.this.myPrefs.edit().putBoolean(new ObfuscatedString(new long[]{-6582724850930998003L, -6185807755801993058L, -4931946641734793311L, 5202976614302261517L}).toString(), false).apply();
                    TkLogStatus.logInfo(str);
                    i = r2;
                    if (i != 0) {
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                while (true) {
                    if (!TkLogStatus.isTunnelActive() || !ActivityUi.isConnected) {
                        break;
                    }
                    ActivityUi.this.TIMEOUT_TRIES++;
                    if (ActivityUi.this.myPrefs.getBoolean(new ObfuscatedString(new long[]{15323299566285160L, -5119119293761355335L, -6930399379455835076L, -5914866608234827506L}).toString(), false) && ActivityUi.this.TIMEOUT_TRIES == Integer.parseInt(ActivityUi.this.myPrefs.getString(new ObfuscatedString(new long[]{2092290887017793024L, 2797576281556764824L, -8484351332433508813L}).toString(), new ObfuscatedString(new long[]{-721701115330359927L, 7280585076425756869L}).toString()))) {
                        TkLogStatus.logInfo(new ObfuscatedString(new long[]{4735930213541929937L, -1873370980226033987L, 7811194466056994529L, 2277186974642795498L, -4587328274511389119L, -1546258737699344289L}).toString());
                        ActivityUi.this.thPing.interrupt();
                        ActivityUi.this.thPing = null;
                        break;
                    }
                    try {
                        MakePinger();
                    } catch (InterruptedException unused) {
                    }
                }
                ActivityUi.this.TIMEOUT_TRIES = 0;
                ActivityUi.this.myPrefs.edit().putBoolean(new ObfuscatedString(new long[]{-1411927317104507649L, -5084261003545025755L, -5741426318109799557L, 7783054065310957004L}).toString(), true).apply();
                TkLogStatus.logInfo(new ObfuscatedString(new long[]{4314557931527464566L, 6046075390469216761L, -9116274476412714233L}).toString());
            }
        };
        this.thPing = anonymousClass2;
        anonymousClass2.start();
    }

    private void start_connect() {
        cancel_ui_reset();
        Intent prepare = VpnService.prepare(this);
        if (prepare != null) {
            try {
                new ObfuscatedString(new long[]{-6338365196078753757L, -4152774141143495759L, -5721757717402320500L}).toString();
                new ObfuscatedString(new long[]{8263000520355699831L, 2645721385041029341L, 7926479300151064698L, 5077190387983494315L, 905078765234420288L}).toString();
                startActivityForResult(prepare, 1);
                return;
            } catch (ActivityNotFoundException unused) {
                new ObfuscatedString(new long[]{-1792615829122989422L, 4528247510748368485L, 2116319510190447591L}).toString();
                new ObfuscatedString(new long[]{3783596351718161961L, -7067981398774312298L, -7545553013106769553L, -7704258121205960507L, 7693425072461121573L, -4027151447498130634L}).toString();
                ok_dialog(resString(R.string.vpn_permission_dialog_missing_title), resString(R.string.vpn_permission_dialog_missing_text));
                return;
            }
        }
        new ObfuscatedString(new long[]{7245719582517717230L, 4729748032547315061L, 8187159755933187346L}).toString();
        new ObfuscatedString(new long[]{-6034995679568130903L, -6545253688269196333L, -3690151214395065486L, 96959880739132540L, -9056398756540830700L, -3798029522455261179L, 1267289535400727369L}).toString();
        resolve_epki_alias_then_connect();
    }

    private void stop() {
        cancel_stats();
        doUnbindService();
        unbindInjector();
    }

    private void stopInjector() {
        StatisticsGraphData.getStatisticData().getDataTransferStats().stop();
        TunnelVPN tunnelVPN = this.mInjector;
        if (tunnelVPN != null && TunnelVPN.isRunning) {
            tunnelVPN.stopInjector();
        }
        stopService(new Intent(this, (Class<?>) TunnelVPN.class));
    }

    public void stopVPN() {
        this.status_view.setTextColor(SupportMenu.CATEGORY_MASK);
        show_status(new ObfuscatedString(new long[]{-8769861944437349245L, -7100475892566724336L, 2812441038687425692L}).toString());
        stopInjector();
        stopUdp();
        stoptV2Ray();
        enabledWidgets(true);
        submitDisconnectIntent(true);
    }

    private void stop_service() {
        submitDisconnectIntent(true);
    }

    private void tk12() {
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        create.setIcon(R.drawable.ic_launcher);
        create.setTitle(R.string.app_name);
        create.setMessage(new ObfuscatedString(new long[]{-3897407355610497920L, -762987209279611175L, 8107709936693407133L, -3779028179424951962L, 7519269348492079332L, 8246698634531122501L, 1820836094638647332L, -5687285905926966775L, -8384056195611995175L, -442321893692433471L}).toString());
        create.setButton(-1, new ObfuscatedString(new long[]{-7977142247039816532L, -7108521047662501049L}).toString(), new DialogInterfaceOnClickListenerC0378xba782511(this, 5));
        create.setButton(-2, new ObfuscatedString(new long[]{-4235333905326729667L, 7051811641345561882L}).toString(), new DialogInterfaceOnClickListenerC0372xe698d(0));
        create.show();
    }

    private void ui_setup(boolean z, int i, String str) {
        boolean z2;
        String str2;
        cancel_ui_reset();
        int i2 = 65536 & i;
        boolean z3 = false;
        if (i2 != 0 || z != this.last_active) {
            c_05.Profile profile = null;
            int i3 = 1;
            if (!z && (str2 = this.autostart_profile_name) != null) {
                this.autostart_profile_name = null;
                str = str2;
                z2 = true;
            } else {
                z2 = false;
            }
            c_05.ProfileList profile_list = profile_list();
            if (profile_list != null && profile_list.size() != 0) {
                ProfileSource profileSource = ProfileSource.UNDEF;
                if (z) {
                    profileSource = ProfileSource.SERVICE;
                    profile = current_profile();
                }
                if (profile == null && str != null) {
                    profileSource = ProfileSource.PRIORITY;
                    profile = profile_list.get_profile_by_name(str);
                    if (profile == null) {
                        new ObfuscatedString(new long[]{2735708489666489481L, -2859526397556200569L, -2457883587412981274L}).toString();
                        new ObfuscatedString(new long[]{5968177438217299650L, -6837859371807085523L, -8155473404237152663L, -2166819061590415103L, 1142475795697186132L}).toString();
                        z2 = false;
                    }
                }
                JSONArray serversArray = getServersArray(this.selectedServerType);
                try {
                    int i4 = this.randomIndex;
                    if (i4 != 0) {
                        i3 = i4;
                    }
                    profile = profile_list.get_profile_by_name(serversArray.getJSONObject(i3).getString(new ObfuscatedString(new long[]{-6518612305856975643L, 1447094897453347830L}).toString()));
                } catch (JSONException e) {
                    e.printStackTrace();
                }
                String serverSelectedName = this.f5771config.getServerSelectedName();
                if (!serverSelectedName.startsWith(new ObfuscatedString(new long[]{-6959309400769462453L, 1401431138483720036L}).toString()) && !serverSelectedName.isEmpty()) {
                    profile = profile_list.get_profile_by_name(serverSelectedName);
                }
                if (profile == null) {
                    profileSource = ProfileSource.LIST0;
                    profile = profile_list.get(0);
                }
                if (profileSource != ProfileSource.PREFERENCES && (i & 131072) == 0) {
                    this.prefs.set_string(new ObfuscatedString(new long[]{7139578608466301895L, -4501687409169903146L}).toString(), profile.get_name());
                    gen_ui_reset_event();
                }
            }
            z3 = z2;
            if (profile != null && i2 != 0) {
                profile.reset_dynamic_challenge();
            }
            if (z) {
                schedule_stats();
            } else {
                cancel_stats();
            }
        }
        this.last_active = z;
        if (z3 && !z) {
            this.finish_on_connect = FinishOnConnect.ENABLED;
            start_connect();
        }
        if (new ConfigUtil(this).isUDP().booleanValue()) {
            setStarterButton();
        }
    }

    @Override // com.tknetwork.tunnel.thread.UDPTunnelThread.SocksListener
    public void addStatus(String str) {
        runOnUiThread(new RunnableC0376xa1ab12f(this, str, 0));
    }

    public void c_01() {
        JsonManager.ServerUpdate serverUpdate = new JsonManager.ServerUpdate(this);
        serverUpdate.setURL(VPNUtil.decrypt(this.f5771config.getUpdateApi()).replace(new ObfuscatedString(new long[]{5740526999299848290L, -1108274107089284920L}).toString(), new ObfuscatedString(new long[]{-7931164389727864974L, -8066240591650703385L}).toString()).replace(new ObfuscatedString(new long[]{-226828208245013097L, 3110479622173676867L}).toString(), new ObfuscatedString(new long[]{4571464457176242748L, -4062056406948099488L}).toString()).replace(new ObfuscatedString(new long[]{9136461295406848214L, -8394148623449422970L}).toString(), new ObfuscatedString(new long[]{731162682580446743L, 3454545491884002965L}).toString()).replace(new ObfuscatedString(new long[]{3187489316574483978L, -3722626839407364649L}).toString(), new ObfuscatedString(new long[]{4979767397156517800L, 1740142212423058259L}).toString()).replace(new ObfuscatedString(new long[]{-418278803120492825L, 4068774162445844495L}).toString(), new ObfuscatedString(new long[]{2017922373827399981L, -7955435633725954637L}).toString()).replace(new ObfuscatedString(new long[]{-7530741839746168060L, 3760668499546860791L}).toString(), new ObfuscatedString(new long[]{7421876253453796479L, -126074755163968736L}).toString()).replace(new ObfuscatedString(new long[]{2095648040673390740L, 8344779695345240484L}).toString(), new ObfuscatedString(new long[]{1088262355285894368L, 6061289505549888125L}).toString()).replace(new ObfuscatedString(new long[]{252875855869001960L, 7527694355991978050L}).toString(), new ObfuscatedString(new long[]{9158780978755975797L, -6966124682313799766L}).toString()).replace(new ObfuscatedString(new long[]{8479706187453877125L, 148034375071670374L}).toString(), new ObfuscatedString(new long[]{3520393511292798190L, -4705366656401906588L}).toString()).replace(new ObfuscatedString(new long[]{-7711248538132042027L, -9149693250742708308L}).toString(), new ObfuscatedString(new long[]{-8981672780205710598L, 7275098463403896507L}).toString()).replace(new ObfuscatedString(new long[]{-2501981427608151907L, -6973976104278265594L}).toString(), new ObfuscatedString(new long[]{869550722974760421L, -4283356604135977138L}).toString()).replace(new ObfuscatedString(new long[]{-3287370868058022505L, -6883262697719292669L}).toString(), new ObfuscatedString(new long[]{-2920725960612435103L, -4997704318116829731L}).toString()).replace(new ObfuscatedString(new long[]{-280060430960698907L, 4707003677109745987L}).toString(), new ObfuscatedString(new long[]{4100266872877980065L, -2532717131218614554L}).toString()).replace(new ObfuscatedString(new long[]{1559827280279275247L, -925346741537287789L}).toString(), new ObfuscatedString(new long[]{-7303338481651972217L, -4286761150122016662L}).toString()).replace(new ObfuscatedString(new long[]{-2018595337756221703L, 5789351672245137529L}).toString(), new ObfuscatedString(new long[]{4537657281026474112L, 7165904428324091346L}).toString()).replace(new ObfuscatedString(new long[]{2240843881360617847L, 6687801072546255108L}).toString(), new ObfuscatedString(new long[]{-8482345085658434769L, -6876975123099042887L}).toString()).replace(new ObfuscatedString(new long[]{3426286843171751847L, -2168261371375702715L}).toString(), new ObfuscatedString(new long[]{2271211549585716629L, -4968299623772821667L}).toString()).replace(new ObfuscatedString(new long[]{5810360519946011527L, 4502623107550378869L}).toString(), new ObfuscatedString(new long[]{-645458356504964816L, -2720772983366911024L}).toString()).replace(new ObfuscatedString(new long[]{-6797689062927727953L, -3586995334900086814L}).toString(), new ObfuscatedString(new long[]{5139117320247980548L, -7530578882600967612L}).toString()).replace(new ObfuscatedString(new long[]{7601828264791718691L, 6270067179435891150L}).toString(), new ObfuscatedString(new long[]{-5184900327101911781L, 378939569278009257L}).toString()).replace(new ObfuscatedString(new long[]{-33624550246206734L, 6399307058121624724L}).toString(), new ObfuscatedString(new long[]{-5842068646707367609L, 4431858621668977093L}).toString()).replace(new ObfuscatedString(new long[]{2663419154285225716L, -1216590974324335307L}).toString(), new ObfuscatedString(new long[]{4617770632887755116L, 8341882400273600940L}).toString()).replace(new ObfuscatedString(new long[]{-532699889773552190L, 3493491176534421046L}).toString(), new ObfuscatedString(new long[]{-5930718551974220903L, 6271485305761651929L}).toString()).replace(new ObfuscatedString(new long[]{-6495137127802016798L, -1877276760186005989L}).toString(), new ObfuscatedString(new long[]{8305366828638758895L, -876618924595677465L}).toString()).replace(new ObfuscatedString(new long[]{-332463302426035012L, -3940257437188842724L}).toString(), new ObfuscatedString(new long[]{-6522634912488047318L, -4880832662499677215L}).toString()).replace(new ObfuscatedString(new long[]{8560771317498099688L, -5298640205163839278L}).toString(), new ObfuscatedString(new long[]{1356247226149504877L, 7869837769763273616L}).toString()));
        serverUpdate.setUpdateListener(this);
        serverUpdate.start();
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, com.tknetwork.tunnel.service.c_05.EventReceiver
    public void event(c_05.EventMsg eventMsg) {
        render_event(eventMsg, false, is_active(), false);
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity
    public JSONArray getNetworksArray() {
        return super.getNetworksArray();
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, com.tknetwork.tunnel.service.c_05.EventReceiver
    @SuppressLint({"WrongConstant"})
    public PendingIntent get_configure_intent(int i) {
        int i2;
        if (Build.VERSION.SDK_INT >= 31) {
            i2 = 301989888;
        } else {
            i2 = 268435456;
        }
        return PendingIntent.getActivity(this, i, getIntent(), i2);
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
            String str = this.prefs.get_string(new ObfuscatedString(new long[]{8439084963337923934L, -439934901140609089L, 410527972951690667L}).toString());
            if (!TextUtils.isEmpty(str)) {
                this.listNetwork.add(0, new JSONObject(c_12.Parser.d_01(str)));
            }
            String str2 = this.prefs.get_string(new ObfuscatedString(new long[]{4303175771854128607L, -6800873059185258544L, 8445199225809589812L}).toString());
            if (!TextUtils.isEmpty(str2)) {
                this.listNetwork.add(0, new JSONObject(c_12.Parser.d_01(str2)));
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<JSONObject> it = this.listNetwork.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
        } catch (JSONException unused) {
            Toast.makeText(this, new ObfuscatedString(new long[]{-8146178521174677910L, 7838230226019613136L}).toString(), 0).show();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006e A[Catch: Exception -> 0x0014, TryCatch #5 {Exception -> 0x0014, blocks: (B:3:0x0006, B:5:0x000e, B:6:0x0017, B:8:0x0029, B:13:0x0041, B:14:0x0061, B:15:0x0068, B:17:0x006e, B:19:0x0086, B:22:0x008d, B:25:0x0420, B:33:0x005d, B:37:0x005c, B:45:0x0054), top: B:2:0x0006 }] */
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
            String obfuscatedString = new ObfuscatedString(new long[]{1221292375130359167L}).toString();
            try {
                openRawResource = getResources().openRawResource(R.raw.f5784config);
                try {
                    byte[] bArr = new byte[openRawResource.available()];
                    openRawResource.read(bArr);
                    str = new String(bArr);
                } catch (Throwable th) {
                    if (openRawResource == null) {
                        throw th;
                    }
                    try {
                        openRawResource.close();
                        throw th;
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                        throw th;
                    }
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
                String string = jSONObject.getString(new ObfuscatedString(new long[]{-5629957204542434539L, -8060158949554567264L}).toString());
                if (i == 0) {
                    this.listProfiles.add(string);
                } else {
                    String replace = VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{3067737021420779734L, 5333026797156559350L, 8175419392172444691L}).toString())).replace(new ObfuscatedString(new long[]{4526829190796692287L, 6851086172435216009L}).toString(), new ObfuscatedString(new long[]{7953399261916870394L, -2126315914678378743L}).toString()).replace(new ObfuscatedString(new long[]{6938285828315284544L, -2762690639302843371L}).toString(), new ObfuscatedString(new long[]{3143494111603907291L, -8988776355848137019L}).toString()).replace(new ObfuscatedString(new long[]{5948541646499233517L, 5640026082758603128L}).toString(), new ObfuscatedString(new long[]{-6501948907784134855L, -3300472884006205702L}).toString()).replace(new ObfuscatedString(new long[]{7491102899886074433L, 5669999814925580918L}).toString(), new ObfuscatedString(new long[]{-7649879516595349610L, -2111875059901498000L}).toString()).replace(new ObfuscatedString(new long[]{-3384491845213874648L, -7797078655735766870L}).toString(), new ObfuscatedString(new long[]{-8741133507785471848L, 3202983725812095421L}).toString()).replace(new ObfuscatedString(new long[]{8998072210938635135L, -1839280462377645965L}).toString(), new ObfuscatedString(new long[]{-4550956027105146934L, -4443491756479001003L}).toString()).replace(new ObfuscatedString(new long[]{-6927404467813229363L, -7235622942173511658L}).toString(), new ObfuscatedString(new long[]{-8207589541763836188L, -1766257886804597810L}).toString()).replace(new ObfuscatedString(new long[]{-7505440499543006784L, -6713491884456298119L}).toString(), new ObfuscatedString(new long[]{-2507505792966855590L, 3146088739545491216L}).toString()).replace(new ObfuscatedString(new long[]{4489568787902498252L, 1051478357876450132L}).toString(), new ObfuscatedString(new long[]{5572954598247339437L, 7732197117231203286L}).toString()).replace(new ObfuscatedString(new long[]{8142451131250063702L, -7916681128245291091L}).toString(), new ObfuscatedString(new long[]{676927467487136598L, 1692028647031069769L}).toString()).replace(new ObfuscatedString(new long[]{7187670216628536767L, 5030880397190476790L}).toString(), new ObfuscatedString(new long[]{8051668294916259287L, -2866226893085107494L}).toString()).replace(new ObfuscatedString(new long[]{8713103755766667469L, -8344113390809454089L}).toString(), new ObfuscatedString(new long[]{-2870138054595759794L, 8030446614524638436L}).toString()).replace(new ObfuscatedString(new long[]{412749792165575817L, -1746314964213570322L}).toString(), new ObfuscatedString(new long[]{-2549277735396934674L, 217879809912446648L}).toString()).replace(new ObfuscatedString(new long[]{8706597343465121300L, 1327703835521601973L}).toString(), new ObfuscatedString(new long[]{-2513701076367219132L, -7432282695876366727L}).toString()).replace(new ObfuscatedString(new long[]{-181899796474747793L, -2185542502557972463L}).toString(), new ObfuscatedString(new long[]{-6034429975761000303L, -3157376939988984019L}).toString()).replace(new ObfuscatedString(new long[]{6934727364433671624L, 5260125892334211200L}).toString(), new ObfuscatedString(new long[]{7897160520396293119L, 4464084887268793168L}).toString()).replace(new ObfuscatedString(new long[]{5013043457751313310L, -3135834641850960021L}).toString(), new ObfuscatedString(new long[]{-2890441091076203254L, 6961783065083283550L}).toString()).replace(new ObfuscatedString(new long[]{-6202498053459221000L, 1758570352708429493L}).toString(), new ObfuscatedString(new long[]{1599757318788779296L, 344425455373987282L}).toString()).replace(new ObfuscatedString(new long[]{5007947116756103126L, 7532030716514384581L}).toString(), new ObfuscatedString(new long[]{3667505255613976732L, 3343110141304712893L}).toString()).replace(new ObfuscatedString(new long[]{-1318424337174018849L, 2493666861443878388L}).toString(), new ObfuscatedString(new long[]{6257063383912175791L, 7714038578908182401L}).toString()).replace(new ObfuscatedString(new long[]{-385418376320740787L, 3143063044841402925L}).toString(), new ObfuscatedString(new long[]{7532044748924764064L, 5884371521677266306L}).toString()).replace(new ObfuscatedString(new long[]{2461713614730819762L, -2371329020402797307L}).toString(), new ObfuscatedString(new long[]{5025908318143814908L, 4642145401156982653L}).toString()).replace(new ObfuscatedString(new long[]{4063432003569390219L, -251111571480324607L}).toString(), new ObfuscatedString(new long[]{-8819122988011725180L, -4457706199759849561L}).toString()).replace(new ObfuscatedString(new long[]{-4361374133621647550L, 8786430389528292879L}).toString(), new ObfuscatedString(new long[]{-547177519023322699L, 8115771315220518197L}).toString()).replace(new ObfuscatedString(new long[]{-412299260732404710L, -3961171048110180434L}).toString(), new ObfuscatedString(new long[]{-1228986130728263802L, -3182749012484664169L}).toString()).replace(new ObfuscatedString(new long[]{-5414542462766400436L, -8282155793442169947L}).toString(), new ObfuscatedString(new long[]{5965010072203801435L, 637483918861086389L}).toString());
                    String string2 = jSONObject.getString(new ObfuscatedString(new long[]{-2709466364957891722L, 5123443061464738384L, -3862641790606482935L}).toString());
                    String optString = jSONObject.optString(new ObfuscatedString(new long[]{2954543818054297524L, -8308941170045921381L}).toString(), new ObfuscatedString(new long[]{4027109441590805557L}).toString());
                    if (optString.isEmpty()) {
                        optString = str;
                    }
                    StringReader stringReader = new StringReader(optString);
                    ConfigParser configParser = new ConfigParser();
                    configParser.parseConfig(stringReader);
                    VpnProfile convertProfile = configParser.convertProfile();
                    Connection connection = convertProfile.mConnections[0];
                    connection.mServerName = replace;
                    connection.mServerPort = string2;
                    connection.mUseCustomConfig = true;
                    String format = String.format(new ObfuscatedString(new long[]{-2687264032036498381L, -3060219886694437832L}).toString(), URLEncoder.encode(string, new ObfuscatedString(new long[]{4949662978944386319L, -8803657104265259802L}).toString()));
                    String configFile = convertProfile.getConfigFile(this, true);
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(getFilesDir(), format));
                    fileOutputStream.write(configFile.getBytes());
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    this.listProfiles.add(jSONObject.getString(new ObfuscatedString(new long[]{3030860886095572140L, 6169277180001237308L}).toString()));
                    this.server_adapter.notifyDataSetChanged();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            showToast(new ObfuscatedString(new long[]{-155383154148722733L, -598461067958417619L, -3928794372513931321L}).toString() + e4.getMessage());
        }
    }

    public void mColors() {
        new ColorChooserFragment().preselect(this.myPrefs.getInt(new ObfuscatedString(new long[]{2769709748488091919L, -2112296851916548020L, -7073518059236532710L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{1683195186583626982L, 6977861770430618673L}).toString()))).show(getSupportFragmentManager(), new ObfuscatedString(new long[]{33225743703808699L, 8574546677305636749L, 4896061314590488029L, 2571261114709909905L}).toString());
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity
    public void ok_dialog(String str, String str2, Runnable runnable) {
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        new ObfuscatedString(new long[]{-325476304926718192L, 2438856901040139981L, 656907821226667832L}).toString();
        String.format(new ObfuscatedString(new long[]{-7901886044476392628L, 448806485202870222L, 8921733331514379523L, 5824492738849288047L, -1734629758451151436L, 2741392381656526234L, -3523817027073352668L}).toString(), Integer.valueOf(i), Integer.valueOf(i2));
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 65) {
                        super.onActivityResult(i, i2, intent);
                        return;
                    } else {
                        c_09.startSocksHttp(this);
                        return;
                    }
                }
                if (i2 == -1) {
                    String stringExtra = intent.getStringExtra(new ObfuscatedString(new long[]{6143695008152526663L, -3021210629630788994L, -3600085252567697547L}).toString());
                    new ObfuscatedString(new long[]{5341564703865330822L, 5610322556732182666L, 7257744521312894531L}).toString();
                    String.format(new ObfuscatedString(new long[]{-2462208782909276361L, -2834500279314961859L, -5424194070168483604L, 809039231399659636L}).toString(), stringExtra);
                    import_pkcs12(stringExtra);
                    return;
                }
                return;
            }
            if (i2 == -1) {
                String stringExtra2 = intent.getStringExtra(new ObfuscatedString(new long[]{-2023094235328213647L, 3905237332297942714L, -3287981919066670265L}).toString());
                new ObfuscatedString(new long[]{3260609707953129984L, -8776187111137411577L, -3225562016560052415L}).toString();
                String.format(new ObfuscatedString(new long[]{-1378164248561594966L, -5971373596143460597L, -3565530676009518358L, 7599034413982090634L}).toString(), stringExtra2);
                import_config(stringExtra2);
                return;
            }
            return;
        }
        if (i2 == -1) {
            resolve_epki_alias_then_connect();
            return;
        }
        if (i2 == 0) {
            FinishOnConnect finishOnConnect = this.finish_on_connect;
            FinishOnConnect finishOnConnect2 = FinishOnConnect.ENABLED;
            if (finishOnConnect == finishOnConnect2) {
                finish();
            } else if (finishOnConnect == FinishOnConnect.ENABLED_ACROSS_ONSTART) {
                this.finish_on_connect = finishOnConnect2;
                start_connect();
            }
        }
    }

    @Override // com.tknetwork.tunnel.json.JsonManager.ExpiryUpdate.ExpireDateListener
    public void onAuthFailed(String str) {
        Toast.makeText(this, new ObfuscatedString(new long[]{4861401496893476043L, -5843560954848726332L, -2484886910577620529L}).toString(), 0).show();
        stopVPN();
        this.mConfig.setHasAccount(false);
        startActivity(new Intent(this, (Class<?>) LoginActivity.class));
        finishAffinity();
    }

    @Override // com.tknetwork.tunnel.helper.GeneratorHelper.GeneratorListener
    public void onCancel() {
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
    }

    @Override // android.view.View.OnClickListener
    @SuppressLint({"Range"})
    public void onClick(View view) {
        JSONObject serverSelectedJson;
        boolean z = true;
        cancel_ui_reset();
        int tunnelType = this.f5771config.getTunnelType();
        this.autostart_profile_name = null;
        this.finish_on_connect = FinishOnConnect.DISABLED;
        int id = view.getId();
        if (id != R.id.connect) {
            if (id == R.id.disconnect) {
                loadInterstitial();
                this.tv_test_state.setVisibility(8);
                if (tunnelType == 8 || tunnelType == 11) {
                    TkLogStatus.stopNetStat();
                    stoptV2Ray();
                    setTestState(new ObfuscatedString(new long[]{-6767897631361099400L}).toString());
                    this.mainViewModel.removeAllServer();
                }
                this.mDataGraph.stop();
                this.custom_progressBar.setProgressWithAnimation(0.0f);
                this.custom_progressBar.setColor(ContextCompat.getColor(this, R.color.dataOut));
                this.f5771config.setStartTimer(false);
                if (new ConfigUtil(this).isUDP().booleanValue()) {
                    stopUdp();
                    return;
                } else {
                    stopVPN();
                    return;
                }
            }
            return;
        }
        if (!isNetworkAvailable()) {
            Toast.makeText(this, new ObfuscatedString(new long[]{-8494163305719292266L, -236318802956962096L, 1773733794145828385L}).toString(), 1).show();
            return;
        }
        this.f5771config.setCustomI(false);
        this.mHandler.post(new RunnableC0373xbc544024(this, 7));
        try {
            String serverSelectedName = this.f5771config.getServerSelectedName();
            if (serverSelectedName.contains(new ObfuscatedString(new long[]{-852956660218586574L, 3388521138438684626L}).toString())) {
                JSONArray serversArray = getServersArray(this.selectedServerType);
                int nextInt = new Random().nextInt(serversArray.length());
                this.randomIndex = nextInt;
                if (nextInt == 0) {
                    this.randomIndex = nextInt + 1;
                }
                serverSelectedJson = serversArray.getJSONObject(this.randomIndex);
            } else if (serverSelectedName.contains(new ObfuscatedString(new long[]{7744843947057183752L, -4052974404847008464L}).toString())) {
                serverSelectedJson = new JSONObject(this.f5771config.getCustomServer().isEmpty() ? new ObfuscatedString(new long[]{-7456515501194376424L, -1105253760576299487L, -5565801334518923826L, -4292207274459046947L, 2024948984074687408L, -331252718517629286L, -4051112485957041429L, 7813567947000604976L, 4983926540496155994L, -8519775057823015183L, -4264465130962622889L}).toString() : this.f5771config.getCustomServer());
            } else {
                serverSelectedJson = getServerSelectedJson();
            }
            if (serverSelectedJson == null) {
                showToast(new ObfuscatedString(new long[]{1539413027221660600L, 6368470781796803267L, 5951831048285282420L, 6360757890187754510L}).toString());
                return;
            }
            if (!serverSelectedJson.has(new ObfuscatedString(new long[]{-2308235107645878793L, -2909109265652040653L, 3223719343952056561L}).toString()) && !serverSelectedJson.has(new ObfuscatedString(new long[]{-655330358893977251L, -7911322374422506222L, 5975149783760406943L}).toString())) {
                this.f5771config.setEnableFreeServer(false);
                showExpireDate();
                c_02();
            }
            String decrypt = VPNUtil.decrypt(serverSelectedJson.getString(new ObfuscatedString(new long[]{-5325377310833806814L, 5281373537797789951L, -2493464891408534785L}).toString()));
            String decrypt2 = VPNUtil.decrypt(serverSelectedJson.getString(new ObfuscatedString(new long[]{-4620828762426872134L, 5225836272998623382L, -335252416841930565L}).toString()));
            ConfigUtil configUtil = this.f5771config;
            if (decrypt2.isEmpty() || decrypt.isEmpty()) {
                z = false;
            }
            configUtil.setEnableFreeServer(z);
            String replace = decrypt.replace(new ObfuscatedString(new long[]{-7811052105630670774L, -6669220510353961980L}).toString(), new ObfuscatedString(new long[]{-3676514897354462316L, 4767765537190518009L}).toString()).replace(new ObfuscatedString(new long[]{2039563150505382040L, 6479188373086118212L}).toString(), new ObfuscatedString(new long[]{-5523650428103789203L, 4962656434444372246L}).toString()).replace(new ObfuscatedString(new long[]{4071483961751118779L, 3591491466337619086L}).toString(), new ObfuscatedString(new long[]{-472396095632584632L, 7459291222637880221L}).toString()).replace(new ObfuscatedString(new long[]{6788418994478290141L, 1350395313028321660L}).toString(), new ObfuscatedString(new long[]{6628483740814311260L, -3263653723507578192L}).toString()).replace(new ObfuscatedString(new long[]{-9066511012203643586L, -57692800036561633L}).toString(), new ObfuscatedString(new long[]{4160364035244560234L, -1843744116662895978L}).toString()).replace(new ObfuscatedString(new long[]{7448164559739574693L, 4117405897947500584L}).toString(), new ObfuscatedString(new long[]{5389813773524272614L, -5870996874503626696L}).toString()).replace(new ObfuscatedString(new long[]{3277105220963979748L, -4184073860114200411L}).toString(), new ObfuscatedString(new long[]{7074343933520855946L, 1091740258295466740L}).toString()).replace(new ObfuscatedString(new long[]{2792932872376468221L, -6588949331444096979L}).toString(), new ObfuscatedString(new long[]{-4384174701771859762L, -8443288254348788172L}).toString()).replace(new ObfuscatedString(new long[]{6706429977078028540L, -4334072274513591458L}).toString(), new ObfuscatedString(new long[]{-1705598089083499066L, -7819975938526374210L}).toString()).replace(new ObfuscatedString(new long[]{-4234897174031017047L, 476553152942811801L}).toString(), new ObfuscatedString(new long[]{-9006228419110732937L, 2316988190953623309L}).toString()).replace(new ObfuscatedString(new long[]{5722909314012333707L, -2553278748575576159L}).toString(), new ObfuscatedString(new long[]{6880770193415895485L, 514910203311660134L}).toString()).replace(new ObfuscatedString(new long[]{5884283267779604635L, 4425045651510169381L}).toString(), new ObfuscatedString(new long[]{-1828934558654921950L, 8472779591176438271L}).toString()).replace(new ObfuscatedString(new long[]{8904695602912846052L, 1920386812433089415L}).toString(), new ObfuscatedString(new long[]{250805318086408394L, -1645087513607586737L}).toString()).replace(new ObfuscatedString(new long[]{-7145866603060229405L, -4664640538620959404L}).toString(), new ObfuscatedString(new long[]{-9140295094915168653L, -2473008823770772560L}).toString()).replace(new ObfuscatedString(new long[]{-6527105737488761333L, -6473359944875282943L}).toString(), new ObfuscatedString(new long[]{5558394713961586220L, -4136468295912872444L}).toString()).replace(new ObfuscatedString(new long[]{8551015178613949789L, 7093427604439949869L}).toString(), new ObfuscatedString(new long[]{-3542573161335429935L, 7930299966939073620L}).toString()).replace(new ObfuscatedString(new long[]{3058657474722892209L, -5906900607034246507L}).toString(), new ObfuscatedString(new long[]{2246455466688081604L, -1183510488762770782L}).toString()).replace(new ObfuscatedString(new long[]{3358905933097281554L, -2026269975632242974L}).toString(), new ObfuscatedString(new long[]{3433505862669829483L, 6843253529379593189L}).toString()).replace(new ObfuscatedString(new long[]{5618864464002943197L, 571987016099567466L}).toString(), new ObfuscatedString(new long[]{-3873557626356218421L, -681376803671464720L}).toString()).replace(new ObfuscatedString(new long[]{-4954321029684315793L, -5446503359098732360L}).toString(), new ObfuscatedString(new long[]{-3723783296108914690L, -106669357883607365L}).toString()).replace(new ObfuscatedString(new long[]{-8332577272364759945L, -2433048546007813018L}).toString(), new ObfuscatedString(new long[]{5623041543715613515L, -7393707485487507421L}).toString()).replace(new ObfuscatedString(new long[]{5497746356450889643L, 6766725146793043362L}).toString(), new ObfuscatedString(new long[]{4132953544795652387L, 2621718356218938909L}).toString()).replace(new ObfuscatedString(new long[]{2063443597629907721L, -8734044977491624113L}).toString(), new ObfuscatedString(new long[]{-8523762492322591377L, 4992997542391316883L}).toString()).replace(new ObfuscatedString(new long[]{-7998282706286034821L, -1191559675667348995L}).toString(), new ObfuscatedString(new long[]{7381978845023055056L, -2193858745627996606L}).toString()).replace(new ObfuscatedString(new long[]{1560048419268973986L, 1908909128251321795L}).toString(), new ObfuscatedString(new long[]{3595301136248989182L, 7854834548400839795L}).toString()).replace(new ObfuscatedString(new long[]{-6702406964076676329L, 3524339104793432545L}).toString(), new ObfuscatedString(new long[]{-9074979008435683834L, -1874547336461309524L}).toString());
            String replace2 = decrypt2.replace(new ObfuscatedString(new long[]{-7479061826663492713L, 5213714875828070761L}).toString(), new ObfuscatedString(new long[]{1932857309745696802L, 1455137026385613718L}).toString()).replace(new ObfuscatedString(new long[]{-5223946840182066828L, 8754578262685245143L}).toString(), new ObfuscatedString(new long[]{4888708049339934350L, 8348360510290814096L}).toString()).replace(new ObfuscatedString(new long[]{9137295288072453859L, -8737724550243729984L}).toString(), new ObfuscatedString(new long[]{6616686101450806050L, -6551741288706559531L}).toString()).replace(new ObfuscatedString(new long[]{1295618446119395436L, -8839077096530152048L}).toString(), new ObfuscatedString(new long[]{-1037167092643949L, 6761432503092840037L}).toString()).replace(new ObfuscatedString(new long[]{-4375443239059225703L, -2487354852268011225L}).toString(), new ObfuscatedString(new long[]{3925411431395319487L, -5624456048080623683L}).toString()).replace(new ObfuscatedString(new long[]{2040387989957035925L, 686760610403314011L}).toString(), new ObfuscatedString(new long[]{-6971129120512820289L, 3184169991927845827L}).toString()).replace(new ObfuscatedString(new long[]{-7497062842719143614L, -4290894986376008420L}).toString(), new ObfuscatedString(new long[]{2025471236354597795L, 4915393843007791634L}).toString()).replace(new ObfuscatedString(new long[]{-2258200248861337698L, 5445221335931287505L}).toString(), new ObfuscatedString(new long[]{-4867939830666846258L, 7540388741518639316L}).toString()).replace(new ObfuscatedString(new long[]{-1152573024942736106L, 942197146798412358L}).toString(), new ObfuscatedString(new long[]{6010151900334668546L, 3034835257979680736L}).toString()).replace(new ObfuscatedString(new long[]{-6944824595108184757L, 6999488697808858380L}).toString(), new ObfuscatedString(new long[]{909692476981460134L, 2238412599232000186L}).toString()).replace(new ObfuscatedString(new long[]{7864457420089649966L, 5154274181053882344L}).toString(), new ObfuscatedString(new long[]{-4312711625952084398L, 5917908509358353452L}).toString()).replace(new ObfuscatedString(new long[]{8614238834344346063L, -6992880493805732455L}).toString(), new ObfuscatedString(new long[]{9180099564283285231L, -6509487395208085149L}).toString()).replace(new ObfuscatedString(new long[]{3462873735559225556L, -8739552059469433680L}).toString(), new ObfuscatedString(new long[]{-4076903450788456883L, 9219886687179076762L}).toString()).replace(new ObfuscatedString(new long[]{8474086789540185855L, -1044342828624194643L}).toString(), new ObfuscatedString(new long[]{-1097151292196751572L, 6154182523744060902L}).toString()).replace(new ObfuscatedString(new long[]{-4355957270626562956L, 5926985479305758056L}).toString(), new ObfuscatedString(new long[]{1029061678680167732L, -1096273253942184617L}).toString()).replace(new ObfuscatedString(new long[]{7681408028045243251L, 2164297257998801623L}).toString(), new ObfuscatedString(new long[]{8122287798643494068L, 1877436369283385474L}).toString()).replace(new ObfuscatedString(new long[]{1024587196004171814L, -756265162929099735L}).toString(), new ObfuscatedString(new long[]{8526263415731891113L, -2531678463258935743L}).toString()).replace(new ObfuscatedString(new long[]{2952287516077813128L, 9220107217156256449L}).toString(), new ObfuscatedString(new long[]{1212897009688302803L, 5731279204289410700L}).toString()).replace(new ObfuscatedString(new long[]{-8171099139951082605L, 3191737458900497254L}).toString(), new ObfuscatedString(new long[]{3889439712025460762L, -574910870561373760L}).toString()).replace(new ObfuscatedString(new long[]{6549506645436213733L, 7575315625558981037L}).toString(), new ObfuscatedString(new long[]{-8342293692813941474L, 6352942161328445134L}).toString()).replace(new ObfuscatedString(new long[]{1359194516717285571L, 2532227832132051330L}).toString(), new ObfuscatedString(new long[]{-2607462720767243098L, -4166514363548739656L}).toString()).replace(new ObfuscatedString(new long[]{6572057735278525086L, -7546070900203787960L}).toString(), new ObfuscatedString(new long[]{3988366162275352739L, 5529195192978943050L}).toString()).replace(new ObfuscatedString(new long[]{1526537168125478187L, 8897535231772285144L}).toString(), new ObfuscatedString(new long[]{-4486808126769111912L, -3803324512805730698L}).toString()).replace(new ObfuscatedString(new long[]{8559246334040617925L, 6491512154325087220L}).toString(), new ObfuscatedString(new long[]{8244989321835064542L, -2789631692706325920L}).toString()).replace(new ObfuscatedString(new long[]{2652416703189430316L, 7419001710899337156L}).toString(), new ObfuscatedString(new long[]{-3611298069348019024L, 7154886622313338304L}).toString()).replace(new ObfuscatedString(new long[]{-4872918921472745183L, -2053418191551537249L}).toString(), new ObfuscatedString(new long[]{7821504855658597260L, 517690390590845380L}).toString());
            this.f5771config.setFreeServerUsername(replace);
            this.f5771config.setFreeServerPassword(replace2);
            showExpireDate();
            c_02();
        } catch (JSONException unused) {
            if (new ConfigUtil(this).isUDP().booleanValue()) {
                stopUdp();
            } else {
                stopVPN();
            }
            showToast(new ObfuscatedString(new long[]{1891661751076283712L, 8139459206325551140L, 6034840185569345829L, 4633730539711643267L, -4443481359455331497L, -6136307499000077985L}).toString());
        }
    }

    @Override // org.polaric.md_colorfragment.ColorChooserFragment.ColorFragmentCallback
    public void onColorSelection(int i) {
        this.selectedColor = i;
        loadAppColors(i);
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @RequiresApi(api = 33)
    @SuppressLint({"UnspecifiedRegisterReceiverFlag"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_drawer);
        Intent intent = getIntent();
        Object[] objArr = {intent.toString()};
        new ObfuscatedString(new long[]{-2408964088560510413L, -9135020558347490204L, -6329803232327109575L}).toString();
        String.format(new ObfuscatedString(new long[]{-6494441103942145014L, -5116418723965912534L, 7389014191568019225L, -4637918908191920526L}).toString(), objArr);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.prefs = new PrefUtil(this.myPrefs);
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        this.mBundle = intent.getExtras();
        ReviewManagerFactory.create(this).requestReviewFlow().addOnCompleteListener(new C0370x5ac5058d(3));
        MainViewModel mainViewModel = (MainViewModel) new ViewModelProvider(this).get(MainViewModel.class);
        this.mainViewModel = mainViewModel;
        mainViewModel.reloadServerList();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(new ObfuscatedString(new long[]{4715724424567424791L, 3091672133533305282L}).toString());
        intentFilter.addAction(new ObfuscatedString(new long[]{1662161341168500109L, -7355216882092619862L, 2324954243223174776L}).toString());
        if (Build.VERSION.SDK_INT >= 33) {
            registerReceiver(this.broadcastReceiver, intentFilter, 4);
        } else {
            registerReceiver(this.broadcastReceiver, intentFilter);
        }
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        this.a = create;
        create.setCancelable(false);
        AlertDialog create2 = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        this.b = create2;
        create2.setCancelable(false);
        ((TextView) findViewById(R.id.graph_net_type)).setText(VPNUtil.networkStateChange(this));
        load_ui_elements();
        loadAdview();
        doBindService();
        dobindInjector();
        nav_Button();
        recquestConsentform();
        loadAdsView();
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.poupup_menu, menu);
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        stop();
        TkLogStatus.removeStateListener(this);
        TkLogStatus.removeByteCountListener(this);
        TkLogStatus.removeConnectionTimeListener(this);
        unregisterReceiver(this.broadcastReceiver);
        new ObfuscatedString(new long[]{-8961121039214622785L, 9217332924834361890L, -6156238556423531928L}).toString();
        new ObfuscatedString(new long[]{1214917216542361262L, 5066910490378365319L, -8510376473624891149L, 6905548850173123350L}).toString();
        super.onDestroy();
    }

    @Override // com.tknetwork.tunnel.json.JsonManager.ExpiryUpdate.ExpireDateListener
    public void onDeviceNotMatch(String str) {
        Toast.makeText(this, new ObfuscatedString(new long[]{2597733302152010146L, 2995353792706401941L, -1627825132878164781L, 6388251740466888085L}).toString(), 0).show();
        showToast(str);
        stopVPN();
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        return true;
    }

    @Override // com.tknetwork.tunnel.json.JsonManager.ExpiryUpdate.ExpireDateListener
    public void onError(String str) {
    }

    @Override // com.tknetwork.tunnel.json.JsonManager.ExpiryUpdate.ExpireDateListener
    public void onExpireDate(String str) {
        if (!str.equals(new ObfuscatedString(new long[]{635521081318962745L, 5415166660194195562L}).toString())) {
            this.date = new ObfuscatedString(new long[]{-5541597426419048616L, -5635385165514665270L}).toString() + getExpireDate(str) + new ObfuscatedString(new long[]{-4795492898131081814L, -7595425543563913686L}).toString() + getDaysLeft(str);
            this.f5771config.setDuration(str);
            this.mExpireDate.setText(this.date);
        }
    }

    @Override // org.polaric.md_colorfragment.ColorChooserFragment.ColorFragmentCallback
    public void onFragmentDone(String str) {
        if (str.equals(new ObfuscatedString(new long[]{-8175287620197614313L, 6047665040269886206L}).toString())) {
            this.editor.putInt(new ObfuscatedString(new long[]{-1272721363602881637L, -6530835504995827560L, 7858804448847971479L}).toString(), this.selectedColor).apply();
            loadAppColors(this.selectedColor);
        } else {
            loadAppColors(this.myPrefs.getInt(new ObfuscatedString(new long[]{-3715421311335993377L, -6510689610883014093L, -3981883804742745873L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{2815827821739529796L, 4209733803754011814L}).toString())));
        }
    }

    @Override // com.tknetwork.tunnel.helper.GeneratorHelper.GeneratorListener
    public void onGenerate(String str) {
    }

    @Override // com.tknetwork.tunnel.utils.Generator.GeneratorListener
    public void onGeneratePayload(String str) {
    }

    @Override // com.tknetwork.tunnel.utils.Generator.GeneratorListener
    public void onGeneratorClose() {
        enableNetworks();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        cancel_ui_reset();
        ui_setup(is_active(), 327680, null);
        try {
            this.f5771config.setServerSelectedName(this.listProfiles.get(i));
        } catch (Exception unused) {
        }
    }

    @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
    public boolean onNavigationItemSelected(MenuItem menuItem) {
        int itemId = menuItem.getItemId();
        if (itemId == R.id.item_app) {
            launchMarket();
        } else if (itemId == R.id.boosting) {
            if (!TkLogStatus.isTunnelActive()) {
                pingDialog();
            }
        } else if (itemId == R.id.item_update) {
            if (!TkLogStatus.isTunnelActive()) {
                tk12();
            } else {
                Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{2283451700989798344L, -7735158802526895589L, 125881983215422206L, -4118991029350132810L}).toString(), 1).show();
            }
        } else if (itemId == R.id.item_iphunt) {
            mIphunt();
        } else if (itemId == R.id.item_checkupdates) {
            this.showNoUpdate = true;
            this.checkupdate.setVisibility(0);
            this.checkupdate.setText(new ObfuscatedString(new long[]{3609808275801065277L, 3490167383088758055L, 5441049953024322251L}).toString());
            c_01();
        } else if (itemId == R.id.options) {
            this.ProtocolActivityLauncher.launch(new Intent(this, (Class<?>) SshActivity.class));
            overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
        } else if (itemId == R.id.item_logout) {
            if (!TkLogStatus.isTunnelActive()) {
                showLogoutDialog();
            } else {
                Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{8085462138957419826L, -4986549633129506478L, 5853341847814991148L, -7650971519709317667L, 3445461932066276439L}).toString(), 1).show();
            }
        }
        this.drawer.closeDrawer(GravityCompat.START);
        return true;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Object[] objArr = {intent.toString()};
        new ObfuscatedString(new long[]{-5644978022368240132L, -5494809822755014149L, 2896222581168327036L}).toString();
        String.format(new ObfuscatedString(new long[]{7971780713135117963L, 6385724269851398408L, 5249302346698480266L, 9127451478436233879L, -7804620561945913031L}).toString(), objArr);
        setIntent(intent);
    }

    @Override // com.tknetwork.tunnel.json.JsonManager.ServerUpdate.OnUpdateListener
    public void onNoUpdateAvailable(String str) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle(new ObfuscatedString(new long[]{-4040064558830088954L, 8371374651878138391L, -3308668329145218972L}).toString());
        builder.setMessage(new ObfuscatedString(new long[]{-2186104816052596031L, -5171470826356675643L, -7931761744873063309L, -8144372059263336588L, 7040995128911820178L, -2916830577273500572L, -3007991156081836480L, -2560359834252801550L, -2241742788594853509L, 7517242927716859506L}).toString() + str);
        builder.setPositiveButton(new ObfuscatedString(new long[]{560600777981007857L, 7718019050424090794L}).toString(), (DialogInterface.OnClickListener) null);
        if (this.showNoUpdate) {
            this.checkupdate.setText(new ObfuscatedString(new long[]{-7387984966173219992L, 4836292345716871215L, -8441552981008361558L, 1722046757973920145L}).toString());
        }
        this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 8), 2000L);
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    @Override // android.app.Activity
    @SuppressLint({"NonConstantResourceId"})
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        switch (menuItem.getItemId()) {
            case R.id.item_import_config /* 2131362300 */:
                if (!TkLogStatus.isTunnelActive()) {
                    tk12();
                    break;
                } else {
                    Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{3684734152610833513L, 630418956175598185L, 6898988071252021671L, 7622197981998803785L}).toString(), 1).show();
                    break;
                }
            case R.id.item_restart /* 2131362303 */:
                c_12.restart_app(this);
                break;
            case R.id.item_restore_default /* 2131362305 */:
                if (!TkLogStatus.isTunnelActive()) {
                    showClearDataDialog();
                    break;
                } else {
                    Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{-2950933771412598191L, -2610304691650432862L, 4477691059564599848L, -7854694577451019657L}).toString(), 1).show();
                    break;
                }
            case R.id.nav_server_export /* 2131362447 */:
                showLINKserver();
                break;
            case R.id.telegram /* 2131362751 */:
                showTelegramGroupDialog();
                break;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.view.Window.Callback
    public void onPointerCaptureChanged(boolean z) {
        super.onPointerCaptureChanged(z);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        if (iArr.length != 0 && i == 99) {
            for (int i2 : iArr) {
                if (i2 != 0) {
                    showToast(new ObfuscatedString(new long[]{204635524925989142L, 6568158327208291268L, -8244274915698492525L, 8946865386888192588L, 233508846055614349L, 7400536298371157775L, 2279041986084783428L, -6574201847826218312L}).toString());
                }
            }
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    @SuppressLint({"SetTextI18n"})
    public void onResume() {
        loadAppColors(this.myPrefs.getInt(new ObfuscatedString(new long[]{-1770474024203324756L, -4275559300210243791L, -1113343901869847527L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-6797315301884635368L, 6438974458685389817L}).toString())));
        showExpireDate();
        schedule_stats();
        this.mainViewModel.reloadServerList();
        TkLogStatus.addStateListener(this);
        TkLogStatus.addByteCountListener(this);
        TkLogStatus.addConnectionTimeListener(this);
        doUpdateLayout();
        callInAppUpdate();
        UDPTunnelThread.setSocksListener(this);
        this.mExpireDate.setText(this.f5771config.getDuration());
        c_01();
        ((TextView) findViewById(R.id.config_version)).setText(new ObfuscatedString(new long[]{2768830245287389520L, -3125626706761488504L, 2287885847601758990L, 7641158324941958003L}).toString() + getConfigVersion());
        super.onResume();
    }

    @Override // com.tknetwork.tunnel.json.JsonManager.ServerUpdate.OnUpdateListener
    public void onShowUpdate(String str, String str2) {
        JSONObject jSONObject = getJSONObject();
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.has(new ObfuscatedString(new long[]{-662608174814115901L, -2671683220226398113L, 1468852375716153754L}).toString())) {
                if (jSONObject.getString(new ObfuscatedString(new long[]{4096373446497384445L, 999898422285533408L, -487535847087052373L}).toString()).equals(new ObfuscatedString(new long[]{8080436965095244340L, -2376053421235841119L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{4294748478719689277L, 4253661141238845261L, 5565288132120181082L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-2416641681738438426L, 4399181729338625247L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-4362219155372925355L, -4562524372526676761L, 3725487160166220100L}).toString()).equals(new ObfuscatedString(new long[]{6726607532893701343L, -7280079525574070020L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-2434736562897584608L, -4342535426495963649L, 1555520480222358807L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-1590885554013719693L, 3322009435293924641L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{4914862412380858910L, -8819957346976235461L, 3230026409689175805L}).toString()).equals(new ObfuscatedString(new long[]{6256584785695521427L, -4664233418132983440L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-8667198194312385060L, -8526636836437979011L, 657744882993199401L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{348045575035605246L, 743170333656934445L, -3591931987451606492L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-1603503811837088469L, -4468535034540880346L, 4412482902467162340L}).toString()).equals(new ObfuscatedString(new long[]{8546416092642390117L, -7738489283883184083L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{2342410984753305512L, -3581862248693364724L, -2745668912460294974L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-6251377401703450288L, 1113158954644391083L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-7254445674295606998L, 710724009900730492L, -4967209773621852641L}).toString()).equals(new ObfuscatedString(new long[]{-1299473813554559837L, -5959950834396847180L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-2692955011175507255L, 8092196799859682982L, -191350011674458808L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-4876143342557676278L, -6755152630385270516L, -5001766419892366820L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-4350542115482848915L, 2577530842007742460L, -1169352677706702261L}).toString()).equals(new ObfuscatedString(new long[]{-6919554984102788459L, -6260755230976493000L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-7970662873934007455L, 4289230421270884526L, 4371965244144099842L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{8755166870276936544L, -369584163069416813L, 8903878521933775804L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-4513911074031141561L, -2144859027499545276L, 140125078688197562L}).toString()).equals(new ObfuscatedString(new long[]{-3728334532274599245L, -5395431095044710584L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{2027706432835329255L, 376459435955029686L, -5296491710546865231L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-8955062467326178631L, -6938356199770185503L}).toString())).apply();
                }
            }
        } catch (JSONException unused) {
        }
        this.f5771config.setNotice_s(true);
        this.mHandler.postDelayed(new RunnableC0376xa1ab12f(this, str, 1), 500L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStart() {
        super.onStart();
        new ObfuscatedString(new long[]{-2021920079748128993L, -6813577463205951471L, -6858035747253570503L}).toString();
        new ObfuscatedString(new long[]{6528553142967486506L, -4693950230177099027L, 1517838414941003262L}).toString();
        this.startup_state |= 2;
        if (this.finish_on_connect == FinishOnConnect.ENABLED) {
            this.finish_on_connect = FinishOnConnect.ENABLED_ACROSS_ONSTART;
        }
        boolean is_active = is_active();
        if (is_active) {
            schedule_stats();
        }
        if (process_autostart_intent(is_active)) {
            ui_setup(is_active, 65536, null);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        new ObfuscatedString(new long[]{8027938537995208661L, -962196655403616685L, 624515609809051716L}).toString();
        new ObfuscatedString(new long[]{4140252709329958939L, 1291832667329035951L, 6496865770488919153L}).toString();
        cancel_stats();
        super.onStop();
    }

    @Override // android.view.View.OnTouchListener
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouch(View view, MotionEvent motionEvent) {
        this.prefs.set_boolean(new ObfuscatedString(new long[]{-8319240752369557309L, -6542796167213384456L, 4854130819493848307L}).toString(), !this.prefs.get_boolean(new ObfuscatedString(new long[]{-8005075518239656836L, 7487073508083238551L, -4395078708589772439L}).toString(), false));
        set_visibility_stats_expansion_group();
        return true;
    }

    @Override // com.tknetwork.tunnel.json.JsonManager.ServerUpdate.OnUpdateListener
    public void onUpdateError(String str) {
        this.checkupdate.setText(new ObfuscatedString(new long[]{295567001010398822L, -4886019929243246322L, 4278956007412820950L}).toString());
        this.mHandler.postDelayed(new RunnableC0373xbc544024(this, 6), 2000L);
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity
    public void post_bind() {
        new ObfuscatedString(new long[]{2687873521362813011L, -1645659490456549233L, -3013228397310516573L}).toString();
        new ObfuscatedString(new long[]{3051339106605221768L, 2030261715313569678L, 8306610141996053005L}).toString();
        this.startup_state |= 1;
        process_autostart_intent(is_active());
        render_last_event();
    }

    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void setStarterButton() {
        String lastState = TkLogStatus.getLastState();
        boolean isTunnelActive = TkLogStatus.isTunnelActive();
        TextView textView = (TextView) findViewById(R.id.status);
        if (new ObfuscatedString(new long[]{-2215567656587743000L, 3414813141022102442L, -2892793471855910317L, -9149000892092009684L}).toString().equals(lastState)) {
            show_status(new ObfuscatedString(new long[]{-8762937003673699141L, 6142676336432553108L, 3302869805916408549L}).toString());
        } else if (new ObfuscatedString(new long[]{3455809637681385602L, -493432322517039288L, -2960096736613747851L}).toString().equals(lastState)) {
            show_status(new ObfuscatedString(new long[]{2268182805112389498L, -4372799168322356431L, 526446602582799377L}).toString());
        } else if (new ObfuscatedString(new long[]{-7858582170657305428L, 1019772046958840341L, 2289730552858639571L}).toString().equals(lastState)) {
            show_status(new ObfuscatedString(new long[]{-4190709975919347794L, 857927330625700382L, -828390747150591592L}).toString());
        }
        if (TkLogStatus.getLastState().equals(new ObfuscatedString(new long[]{-3033287170170100915L, -5326292282410838385L, -8014036222746486295L}).toString())) {
            show_status(TkLogStatus.getLocalizedState(new ObfuscatedString(new long[]{-9219543418867238858L, -6161591821379470444L, 6359039346173469117L}).toString()));
        } else {
            textView.setText(TkLogStatus.getLocalizedState(TkLogStatus.getLastState()));
        }
        enabledWidgets(!isTunnelActive);
    }

    public void setTestState(String str) {
        this.tv_test_state.setText(str);
        TkLogStatus.logInfo(str);
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity
    public void showToast(String str) {
        super.showToast(str);
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, com.tknetwork.tunnel.service.TunnelVPN.InjectorListener
    public void startOpenVPN() {
        start_connect();
        super.startOpenVPN();
    }

    @Override // com.tknetwork.tunnel.thread.UDPTunnelThread.SocksListener
    public void startSocksOpenVPN() {
        runOnUiThread(new RunnableC0374x3cd97916(0));
    }

    public void startUDP() {
        String username;
        String password;
        try {
            new ObfuscatedString(new long[]{-6870349979032046587L}).toString();
            new ObfuscatedString(new long[]{-2182600938866579007L}).toString();
            if (this.f5771config.getEnableFreeServer()) {
                username = this.f5771config.getFreeServerUsername();
                password = this.f5771config.getFreeServerPassword();
            } else {
                username = this.f5771config.getUsername();
                password = this.f5771config.getPassword();
            }
            ConfigUtil.getInstance(this).setUDPConfig(VPNUtil.decrypt(getNetworkSelectedJson().getString(new ObfuscatedString(new long[]{-4508999495218337441L, 4189630446524636292L}).toString())).replace(new ObfuscatedString(new long[]{4989265820707095335L, 3623581086612553163L}).toString(), new ObfuscatedString(new long[]{5998967614285169024L, 1850817889438869385L}).toString()).replace(new ObfuscatedString(new long[]{-8730016625826321821L, -6310941257587061927L}).toString(), new ObfuscatedString(new long[]{-7144784559633539116L, -7540533052176086648L}).toString()).replace(new ObfuscatedString(new long[]{5785711167074690949L, -5398215732614622934L}).toString(), new ObfuscatedString(new long[]{-2982725278393344197L, -3253274747450843881L}).toString()).replace(new ObfuscatedString(new long[]{2384067433336181853L, 8296228779134744553L}).toString(), new ObfuscatedString(new long[]{-7991077230785002328L, -2690449111899666505L}).toString()).replace(new ObfuscatedString(new long[]{-6200028479318092258L, -2517521918495643977L}).toString(), new ObfuscatedString(new long[]{-2703116502286702584L, 3401458786232209349L}).toString()).replace(new ObfuscatedString(new long[]{8718375292090389520L, -4112368245636046151L}).toString(), new ObfuscatedString(new long[]{6160551704200160003L, 117191355538734254L}).toString()).replace(new ObfuscatedString(new long[]{-6203332641864958958L, -5338768504567212497L}).toString(), new ObfuscatedString(new long[]{-601391915603936301L, 3796712321660467212L}).toString()).replace(new ObfuscatedString(new long[]{5615466899813815259L, 5442673252315311059L}).toString(), new ObfuscatedString(new long[]{-1132722693561437810L, 5161130035208416664L}).toString()).replace(new ObfuscatedString(new long[]{7474219083963869766L, 608653776360319293L}).toString(), new ObfuscatedString(new long[]{3647000873762211103L, -3686017397471977755L}).toString()).replace(new ObfuscatedString(new long[]{-4906980723201495517L, -2104436730403167751L}).toString(), new ObfuscatedString(new long[]{-5526280251640920268L, -8797388696816980652L}).toString()).replace(new ObfuscatedString(new long[]{2551838514459517307L, -3960653986300265348L}).toString(), new ObfuscatedString(new long[]{8322538551951505805L, -7863684288200984507L}).toString()).replace(new ObfuscatedString(new long[]{-7654837609779922733L, 746603654818445217L}).toString(), new ObfuscatedString(new long[]{-8111780666217713007L, 6824124238461442211L}).toString()).replace(new ObfuscatedString(new long[]{-181693744872689132L, -5625920435044786703L}).toString(), new ObfuscatedString(new long[]{-227997650800679720L, 6558496757211373735L}).toString()).replace(new ObfuscatedString(new long[]{4877062201191351206L, 8567518099614441810L}).toString(), new ObfuscatedString(new long[]{-1954921378995562781L, 4186099000165604125L}).toString()).replace(new ObfuscatedString(new long[]{7510875873912516452L, 4823883304300769035L}).toString(), new ObfuscatedString(new long[]{1117739202817375011L, 8610754116394069067L}).toString()).replace(new ObfuscatedString(new long[]{6519024833690880392L, 7435710518584453549L}).toString(), new ObfuscatedString(new long[]{-8863738757231490079L, 1273949753588023368L}).toString()).replace(new ObfuscatedString(new long[]{-308077638054646845L, 8540735356848800254L}).toString(), new ObfuscatedString(new long[]{-4727537235582339679L, 6607519071449356111L}).toString()).replace(new ObfuscatedString(new long[]{-7410597833777382900L, -25792722402556244L}).toString(), new ObfuscatedString(new long[]{7221582154573580626L, 7169051284083550559L}).toString()).replace(new ObfuscatedString(new long[]{4486915117927541285L, -3731244613920167164L}).toString(), new ObfuscatedString(new long[]{5656665276814685695L, -2688350739704566868L}).toString()).replace(new ObfuscatedString(new long[]{4709504970746259697L, -8482940340850579580L}).toString(), new ObfuscatedString(new long[]{6605110204365227759L, -4537693387964080939L}).toString()).replace(new ObfuscatedString(new long[]{8752098195674178740L, -6824998508904043488L}).toString(), new ObfuscatedString(new long[]{-4792133753270686331L, 5081376016465961963L}).toString()).replace(new ObfuscatedString(new long[]{-1434248424061300264L, -7828768547426181796L}).toString(), new ObfuscatedString(new long[]{-312853746323003169L, -8062614793780441521L}).toString()).replace(new ObfuscatedString(new long[]{-5843811053570920503L, -3644635570754208084L}).toString(), new ObfuscatedString(new long[]{-4189705807317339975L, -5219305454980513284L}).toString()).replace(new ObfuscatedString(new long[]{1709248364099071231L, -6205099330479360427L}).toString(), new ObfuscatedString(new long[]{3767058964158861426L, 6488106981711082502L}).toString()).replace(new ObfuscatedString(new long[]{-6549641147253344388L, 6893862851825129228L}).toString(), new ObfuscatedString(new long[]{-3389954085318236579L, -7564629900543173172L}).toString()).replace(new ObfuscatedString(new long[]{-463266705031081919L, -8812418071653679934L}).toString(), new ObfuscatedString(new long[]{5830792177160080168L, 8665371084402728321L}).toString()).replace(new ObfuscatedString(new long[]{-6184905578107040960L, -1176858323520907058L}).toString(), String.format(new ObfuscatedString(new long[]{-4534353805474613023L, 8720615291263538445L}).toString(), username, password)));
            launchVPN();
        } catch (Exception e) {
            Toast.makeText(this, e.toString(), 1).show();
        }
    }

    @Override // com.tknetwork.tunnel.thread.UDPTunnelThread.SocksListener
    public void stopSocksOpenVPN() {
        runOnUiThread(new RunnableC0373xbc544024(this, 19));
    }

    public void stopUdp() {
        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{4773306167078547880L, -717120472894112782L, 2827268393282767726L}).toString(), new ObfuscatedString(new long[]{4463411225802459555L, -1384522430129507532L, 8837963822948576924L}).toString());
        ((TextView) findViewById(R.id.status)).setText(R.string.disconnected);
        c_09.stopSocksHttp(this);
    }

    public void testConnectivity() {
        this.mainViewModel.getUpdateTestResultAction().getValue();
        if (new ObfuscatedString(new long[]{6776524449233144945L, 5180064695967141463L, 4636097700760387430L}).toString().equals(TkLogStatus.getLastState())) {
            setTestState(getString(R.string.connection_test_testing));
            this.mainViewModel.testCurrentServerRealPing();
        }
    }

    public void teststate1() {
        this.mainViewModel.getUpdateTestResultAction().observe(this, new Observer() { // from class: 뎻둥됴듟돴들뎽땦딨땟땡땁듌딎둥듼도땭딃든뎸뎻둔땨둡뒬됩땜땄땸둘땔딁뒘땃뎨딃둑땔된딻듸뎡뒉듸딨딁듰땬딝딸뒻둣뒝뒵딄돵땪땨뒬땲둔딎뒐딌뒐땟땧뒵땧땪땳딜딞듬돛땣돼딻딐듐된된딌들땻되둑듻뒼땀돰뒨됴딁뒬땅뎰딎뎻딜득딐땝뒋뒙뒝뎸둘딐뎽둣뒼땵뎠돵딌돨돸돨딻땤딌뎹들땟뒀됫듰듔
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                ActivityUi.this.setTestState((String) obj);
            }
        });
        this.mainViewModel.startListenBroadcast();
    }

    @Override // de.blinkt.openvpn.core.TkLogStatus.ByteCountListener
    public void updateByteCount(long j, long j2, long j3, long j4) {
        Resources resources = getResources();
        runOnUiThread(new RunnableC0384x149e5abd(this, 0, CoreAppUtils.humanReadableByteCount(j, false, resources), CoreAppUtils.humanReadableByteCount(j2, false, resources)));
    }

    @Override // de.blinkt.openvpn.core.TkLogStatus.ConnectionTimeListener
    public void updateConnectionTime(long j) {
        runOnUiThread(new RunnableC0704x26897e44(this, j, 2));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00cd, code lost:
    
        if (r4.equals(new com.panda912.muddy.ObfuscatedString(new long[]{5679071587545597837L, -7538437533406095199L, -7792373295944166025L, 8755471591207879929L}).toString()) != false) goto L113;
     */
    @Override // de.blinkt.openvpn.core.TkLogStatus.StateListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void updateState(String str, String str2, int i, ConnectionStatus connectionStatus, int i2) {
        char c = 2;
        this.mHandler.post(new RunnableC0391x31381f22(this, str, i2, 0));
        switch (str.hashCode()) {
            case -1983731909:
                if (str.equals(new ObfuscatedString(new long[]{6871867037177774034L, -3140299672806915637L, -1879976645093544064L}).toString())) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -1217068453:
                if (str.equals(new ObfuscatedString(new long[]{-4490220603450651198L, 534881700725403162L, -2046185524565280206L}).toString())) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -1216069043:
                if (str.equals(new ObfuscatedString(new long[]{-4950849267762618870L, 6229150992211828543L, -7940442514623816182L, -2088901400741581399L}).toString())) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -759023479:
                if (str.equals(new ObfuscatedString(new long[]{3158964819787693547L, -6947228190379264639L, 4623714803969773980L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -571560334:
                if (str.equals(new ObfuscatedString(new long[]{-7754413709074725955L, 3805799626747279778L, -2151660981489578410L}).toString())) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case 115735883:
                if (str.equals(new ObfuscatedString(new long[]{-5063823182360003873L, 9048463349064480244L, -7006727831365330980L}).toString())) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 399157596:
                if (str.equals(new ObfuscatedString(new long[]{6636530916996111889L, -1753565477181566409L, -1714904750115048954L, -7465277458409466346L}).toString())) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case 689754497:
                break;
            case 929492837:
                if (str.equals(new ObfuscatedString(new long[]{4675865055150395388L, -98513775659805153L, -4450898324405494631L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1092004470:
                if (str.equals(new ObfuscatedString(new long[]{-1393337167985563579L, -2973300163087757766L, -1048130948436488463L, -1930923914105160995L}).toString())) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 1155674821:
                if (str.equals(new ObfuscatedString(new long[]{-918346022887086155L, 3957694288584639054L, -1447595158924644477L, 5352986863061360721L}).toString())) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case 1217813208:
                if (str.equals(new ObfuscatedString(new long[]{-7587150599674993757L, -21439264151108621L, 6284745097495209892L}).toString())) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 1424757481:
                if (str.equals(new ObfuscatedString(new long[]{7678695990636878959L, -8673387653999959853L, 4707680384905353875L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1780292756:
                if (str.equals(new ObfuscatedString(new long[]{-648396279796001108L, -8226326910944735300L}).toString())) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case 1846740935:
                if (str.equals(new ObfuscatedString(new long[]{5831412629837865687L, -5867803643683075089L, 8430082933410658791L, 6520593456857401075L}).toString())) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                this.mHandler.post(new RunnableC0373xbc544024(this, 15));
                return;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case '\b':
            case '\t':
            case '\n':
            case 11:
                this.mHandler.post(new RunnableC0373xbc544024(this, 16));
                return;
            case '\f':
            case '\r':
                this.mHandler.post(new RunnableC0373xbc544024(this, 17));
                return;
            case 14:
                this.mHandler.post(new RunnableC0373xbc544024(this, 18));
                return;
            default:
                return;
        }
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity
    public void ok_dialog(String str) {
        ok_dialog(null, str);
    }

    public void showToast(String str, String str2) {
        Toast toast = new Toast(getApplicationContext());
        toast.setDuration(1);
        View inflate = LayoutInflater.from(getApplicationContext()).inflate(R.layout.snackbar, (ViewGroup) null);
        inflate.findViewById(R.id.toast_bg).setBackgroundResource(R.color.black);
        TextView textView = (TextView) inflate.findViewById(R.id.itemtoastTv1);
        TextView textView2 = (TextView) inflate.findViewById(R.id.itemtoastTv2);
        textView.setTextColor(ContextCompat.getColor(getApplicationContext(), R.color.white));
        textView2.setTextColor(ContextCompat.getColor(getApplicationContext(), R.color.white));
        textView.setTextSize(1, 12.0f);
        textView2.setTextSize(1, 10.0f);
        textView.setText(str);
        textView2.setText(str2);
        toast.setView(inflate);
        toast.show();
    }

    public void ok_dialog(String str, String str2) {
        ok_dialog(str, str2, null);
    }

    private void updateByteCount() {
        this.mLastReceived = this.myPrefs.getLong(new ObfuscatedString(new long[]{-4811671625683359081L, -8567891563833495899L, -9120743249946800115L}).toString(), 0L);
        this.mLastSent = this.myPrefs.getLong(new ObfuscatedString(new long[]{-4915365377132230859L, -7990785999124559701L, 2348920709474066065L}).toString(), 0L);
        TkLogStatus.startNetStat();
        this.timer = new Timer();
        this.timer.schedule(new TimerTask() { // from class: com.tknetwork.tunnel.activities.ActivityUi.3
            public AnonymousClass3() {
            }

            @Override // java.util.TimerTask, java.lang.Runnable
            public void run() {
                long j;
                long totalRxBytes = TrafficStats.getTotalRxBytes();
                ActivityUi activityUi = ActivityUi.this;
                activityUi.mReceived = totalRxBytes - activityUi.mLastReceived;
                ActivityUi.this.mLastReceived = totalRxBytes;
                SharedPreferences.Editor edit = ActivityUi.this.myPrefs.edit();
                String obfuscatedString = new ObfuscatedString(new long[]{4249015604629326705L, -1000433626618290311L, 4114147834882935211L}).toString();
                long j2 = 0;
                if (ActivityUi.this.mLastReceived <= totalRxBytes) {
                    j = ActivityUi.this.mLastReceived;
                } else {
                    j = 0;
                }
                edit.putLong(obfuscatedString, j).apply();
                long totalTxBytes = TrafficStats.getTotalTxBytes();
                ActivityUi activityUi2 = ActivityUi.this;
                activityUi2.mSent = totalTxBytes - activityUi2.mLastSent;
                ActivityUi.this.mLastSent = totalTxBytes;
                SharedPreferences.Editor edit2 = ActivityUi.this.myPrefs.edit();
                String obfuscatedString2 = new ObfuscatedString(new long[]{-4053149925456786467L, 8983035946308702756L, 3836159040231479923L}).toString();
                if (ActivityUi.this.mLastSent <= totalTxBytes) {
                    j2 = ActivityUi.this.mLastSent;
                }
                edit2.putLong(obfuscatedString2, j2).apply();
                TrafficData.addBytesDownload(ActivityUi.this.mReceived);
                TrafficData.addBytesSend(ActivityUi.this.mSent);
            }
        }, 0L, 1000L);
    }

    private void show_status(int i) {
        this.status_view.setVisibility(0);
        if (!getString(i).contains(new ObfuscatedString(new long[]{774082218831912013L, 5012960565721685736L, 5399405008062821526L}).toString())) {
            this.status_view.setText(i);
        }
        if (i == R.string.auth_failed) {
            this.status_view.setTextColor(SupportMenu.CATEGORY_MASK);
            return;
        }
        if (i == R.string.disconnected) {
            AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
            this.status_view.setText(R.string.disconnected);
        } else if (i == R.string.connected) {
            AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.connect_color, this.status_view);
        } else {
            AbstractC0362x4440ab85.m2951x6246a3ee(this, R.color.disconnected, this.status_view);
        }
    }
}
