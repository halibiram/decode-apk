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
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.Spinner;
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
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.ServerActivity;
import com.tknetwork.tunnel.adapter.NetworkAdapter;
import com.tknetwork.tunnel.adapter.ServerAdapter;
import com.tknetwork.tunnel.core.ConfigParser;
import com.tknetwork.tunnel.core.Connection;
import com.tknetwork.tunnel.core.VpnProfile;
import com.tknetwork.tunnel.utils.ServerType;
import com.tknetwork.tunnel.utils.VPNUtil;
import com.tknetwork.tunnel.utils.c_12;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0749x8313616e;
import defpackage.C1001x2241e83c;
import defpackage.DialogInterfaceOnClickListenerC0372xe698d;
import defpackage.DialogInterfaceOnClickListenerC0519xdc2f50a1;
import defpackage.RunnableC0460x8df12640;
import defpackage.RunnableC1000x19d68b8b;
import defpackage.RunnableC1044x8c43c726;
import defpackage.ViewOnClickListenerC0380x79b970bd;
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
public class ServerActivity extends MainBaseActivity {
    public static final int ASK_QUESTION_REQUEST = 4003;
    private static final int S_BIND_CALLED = 1;
    private static final String TAG = new ObfuscatedString(new long[]{-7315047163273207013L, -1527547837774410962L, -6381816331460764000L}).toString();
    public static final int TIME_FORMAT_ISO = 2;
    public static final int TIME_FORMAT_NONE = 0;
    public static final int TIME_FORMAT_SHORT = 1;
    private static SharedPreferences mPref;
    private AlertDialog a;
    private RadioGroup category_type;
    private CheckBox ckMultiCert;
    private CheckBox ckUseLogin;

    /* renamed from: config */
    private ConfigUtil f5775config;
    private SharedPreferences.Editor editor;
    private TextInputEditText etAllowedIPs;
    private TextInputEditText etCertificate;
    private TextInputEditText etEndpoint;
    private TextInputEditText etPass;
    private TextInputEditText etPreSharedKey;
    private TextInputEditText etPrivateKey;
    private TextInputEditText etPublicKey;
    private TextInputEditText etSSLPort;
    private TextInputEditText etServerAddress;
    private TextInputEditText etServerCloudFront;
    private TextInputEditText etServerHTTP;
    private TextInputEditText etServerIP;
    private TextInputEditText etTcpPort;
    private TextInputEditText etUser;
    private AppCompatImageView exit;
    private CheckBox fakeV2ray;
    private ArrayList<JSONObject> listNetwork;
    public ArrayList<String> listProfiles;
    private SharedPreferences.Editor mEditor;
    private Handler mHandler;
    private SharedPreferences myPrefs;
    public NetworkAdapter networkAdapter;
    private TextInputEditText openvpn_udp_port;
    private PrefUtil prefs;
    private TextInputEditText primary;
    private TextInputEditText sName;
    private TextInputEditText secondary;
    private Spinner serverType;
    public ServerAdapter server_adapter;
    private ListView server_listview;
    private View v;
    private CheckBox wire_full_conf;
    private int selectedServerType = ServerType.OPENVPN;
    private final int mTimeFormat = -100;
    private long mValidade = 0;

    /* renamed from: com.tknetwork.tunnel.activities.ServerActivity$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends OnBackPressedCallback {
        public AnonymousClass1(boolean z) {
            super(z);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            ServerActivity.this.setResult(0, false);
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ServerActivity$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements AdapterView.OnItemSelectedListener {
        public AnonymousClass2() {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            int i2 = 0;
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 0);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 0);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort, 0);
            ServerActivity.this.ckMultiCert.setVisibility(8);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etCertificate_ly, 8);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.wire_ly, 8);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.wire_full_conf, 8);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerCloudFront_ly, 0);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerHTTP_ly, 0);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerIP_ly, 0);
            if (i != 0 && i != 1) {
                if (i == 2) {
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{1743990434605285003L, -7652120192544842959L, 6874624780806490287L, 5935028261992379210L, 3683543688317008343L}).toString());
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{3288833961348175698L, -288283624438490521L, 4778076990400912444L}).toString());
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 8);
                    return;
                }
                if (i == 3) {
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 0);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerIP_ly, 0);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerCloudFront_ly, 0);
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-1861485060150823307L, -253440814589121946L, 8361259062943636776L}).toString());
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{-6170845219407867717L, 2778560981317157140L, 924572586812527965L}).toString());
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{4088236939057022214L, 5823886066170501407L, 3063093854074218268L}).toString());
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 0);
                    return;
                }
                if (i == 4) {
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-5044379011448010185L, -8007015226300391490L, -4147452719009343359L, -1108867318631286751L}).toString());
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{-6640521993434184613L, 4341467834465818510L, -5204477997073817637L, 7210867020329662147L}).toString());
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{4244119959553679082L, -8996238573199202001L, 5702322727675791443L, 1901820914394612911L}).toString());
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 0);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etPort_tv, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort_ly, 8);
                    return;
                }
                if (i == 5) {
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerIP_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerCloudFront_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.wire_ly, 0);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.wire_full_conf, 0);
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-7942643894872773857L, -7862209572829599268L, 4889620212039107288L, 5931392475798612865L}).toString());
                    return;
                }
                return;
            }
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
            ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{2659981290599569352L, -499381332723210015L, -112860755477940821L, -3739793956678472836L}).toString());
            ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{3893061885412161314L, 7110915690470508481L, -3241841829132686833L, 1232257519896980774L}).toString());
            ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{5165393956063004725L, 776580641601926521L, 3080564736996389077L, -3249955823172471959L}).toString());
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 0);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etPort_tv, 0);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 0);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 0);
            AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort_ly, 0);
            if (i == 0) {
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etUdpPort_ly)).setHint(new ObfuscatedString(new long[]{882665464413781578L, 1542554450872324209L}).toString());
                ServerActivity.this.openvpn_udp_port.setText(new ObfuscatedString(new long[]{660884214970712545L, -3034448530511993781L}).toString());
                ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etTcpPort_ly)).setHint(new ObfuscatedString(new long[]{-4544464280928222475L, 1801822760628330471L}).toString());
                ServerActivity.this.etTcpPort.setText(new ObfuscatedString(new long[]{2416820257306798022L, 3142004932973368829L}).toString());
                ServerActivity.this.etSSLPort.setText(new ObfuscatedString(new long[]{-7168611616621664195L, 4851647571514784264L}).toString());
                ServerActivity.this.ckMultiCert.setVisibility(0);
                View findViewById = ServerActivity.this.v.findViewById(R.id.etCertificate_ly);
                if (!ServerActivity.this.ckMultiCert.isChecked()) {
                    i2 = 8;
                }
                findViewById.setVisibility(i2);
            }
            if (i == 1) {
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 8);
                ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etTcpPort_ly)).setHint(new ObfuscatedString(new long[]{-1697241079889942792L, -6908354265391753796L, -3869944009820076953L}).toString());
                ServerActivity.this.etTcpPort.setText(new ObfuscatedString(new long[]{1759389836384681132L, -3687178185292322231L}).toString());
                ServerActivity.this.etSSLPort.setText(new ObfuscatedString(new long[]{887054884989262936L, 6992360812368379023L}).toString());
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.ServerActivity$3 */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements SearchView.OnQueryTextListener {
        public AnonymousClass3() {
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            ServerActivity.this.ServerList(str.toLowerCase());
            return true;
        }

        @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            return false;
        }
    }

    private String CategoryType() {
        if (this.category_type.getCheckedRadioButtonId() == R.id.type_premium) {
            return new ObfuscatedString(new long[]{1105883267067029731L, -8116959309218428068L}).toString();
        }
        if (this.category_type.getCheckedRadioButtonId() == R.id.type_vip) {
            return new ObfuscatedString(new long[]{1488455937929517277L, 812151713261360559L}).toString();
        }
        if (this.category_type.getCheckedRadioButtonId() == R.id.type_private) {
            return new ObfuscatedString(new long[]{-3719610884461672512L, -8516909768746449312L}).toString();
        }
        return new ObfuscatedString(new long[]{-6821531411909525568L, -4846775691264773063L}).toString();
    }

    private void SaveFile() {
        AlertDialog create = new AlertDialog.Builder(this.a.getContext()).create();
        View inflate = LayoutInflater.from(this.a.getContext()).inflate(R.layout.dialog_v2, (ViewGroup) null);
        inflate.findViewById(R.id.save_setup).setOnClickListener(new ViewOnClickListenerC0380x79b970bd(create, 2));
        inflate.findViewById(R.id.close_setup).setOnClickListener(new ViewOnClickListenerC0380x79b970bd(create, 3));
        create.setView(inflate);
        create.setCancelable(true);
        create.show();
    }

    public void ServerList(String str) {
    }

    private void clipImport1() {
        try {
            try {
                String d_01 = c_12.Parser.d_01(((ClipboardManager) getSystemService(new ObfuscatedString(new long[]{-6235226393710753105L, 7413491906667034206L, -1004241893781419093L}).toString())).getText().toString());
                if (TextUtils.isEmpty(d_01)) {
                    showToast(getString(R.string.message_invalid_file_content));
                } else {
                    processImportData(d_01);
                }
            } catch (Exception e) {
                showToast(String.format(new ObfuscatedString(new long[]{-5015074248249909374L, 8809089261877227035L, 2747518395507197568L, 241990350415943992L}).toString(), e.getClass().getName(), e.getMessage()));
            }
        } catch (Exception e2) {
            showToast(String.format(new ObfuscatedString(new long[]{5587961616541683028L, 877671854592811367L, 5606372611543431432L, 4384287757488908592L}).toString(), e2.getClass().getName(), e2.getMessage()));
        }
    }

    private void dialogAddServer() {
        View inflate = LayoutInflater.from(this).inflate(R.layout.add_server, (ViewGroup) null);
        this.v = inflate;
        final int i = 3;
        final int i2 = 2;
        ((RelativeLayout) inflate.findViewById(R.id.s1)).setBackgroundColor(this.myPrefs.getInt(new ObfuscatedString(new long[]{-4973728531565864285L, 1050290017191716680L, -519170569972719036L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-5258552993089585671L, -1928371170023358208L}).toString())));
        ((MaterialCardView) this.v.findViewById(R.id.save)).setBackgroundTintList(ColorStateList.valueOf(this.myPrefs.getInt(new ObfuscatedString(new long[]{4183910448420028499L, 6479495154709822250L, 5658171993425626463L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{8758550636336811362L, 1955630117820613111L}).toString()))));
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
        ((TextView) this.v.findViewById(R.id.sTitle)).setText(new ObfuscatedString(new long[]{-5982827041904521489L, -1376676055065622219L, -8424523290379613549L}).toString());
        ((TextView) this.v.findViewById(R.id.save_tl)).setText(new ObfuscatedString(new long[]{8668984975368309095L, -5062955066668700784L}).toString());
        final int i3 = 1;
        this.fakeV2ray.setTextSize(1, 8.0f);
        this.wire_full_conf.setTextSize(1, 8.0f);
        this.ckUseLogin.setTextSize(1, 8.0f);
        this.ckMultiCert.setTextSize(1, 8.0f);
        this.openvpn_udp_port = (TextInputEditText) this.v.findViewById(R.id.openvpn_udp_port);
        this.category_type.check(R.id.type_premium);
        this.primary.setText(new ObfuscatedString(new long[]{-8401406404917407684L, -205227421027169693L}).toString());
        this.secondary.setText(new ObfuscatedString(new long[]{3471234163056978815L, -872213130408884842L, -406265462542848950L}).toString());
        Spinner spinner = (Spinner) this.v.findViewById(R.id.server_sptype);
        this.serverType = spinner;
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tknetwork.tunnel.activities.ServerActivity.2
            public AnonymousClass2() {
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j) {
                int i22 = 0;
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 0);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 0);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort, 0);
                ServerActivity.this.ckMultiCert.setVisibility(8);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etCertificate_ly, 8);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.wire_ly, 8);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.wire_full_conf, 8);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerCloudFront_ly, 0);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerHTTP_ly, 0);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerIP_ly, 0);
                if (i4 != 0 && i4 != 1) {
                    if (i4 == 2) {
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                        ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{1743990434605285003L, -7652120192544842959L, 6874624780806490287L, 5935028261992379210L, 3683543688317008343L}).toString());
                        ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{3288833961348175698L, -288283624438490521L, 4778076990400912444L}).toString());
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 8);
                        return;
                    }
                    if (i4 == 3) {
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 0);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerIP_ly, 0);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerCloudFront_ly, 0);
                        ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-1861485060150823307L, -253440814589121946L, 8361259062943636776L}).toString());
                        ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{-6170845219407867717L, 2778560981317157140L, 924572586812527965L}).toString());
                        ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{4088236939057022214L, 5823886066170501407L, 3063093854074218268L}).toString());
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 0);
                        return;
                    }
                    if (i4 == 4) {
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                        ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-5044379011448010185L, -8007015226300391490L, -4147452719009343359L, -1108867318631286751L}).toString());
                        ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{-6640521993434184613L, 4341467834465818510L, -5204477997073817637L, 7210867020329662147L}).toString());
                        ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{4244119959553679082L, -8996238573199202001L, 5702322727675791443L, 1901820914394612911L}).toString());
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 0);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etPort_tv, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort_ly, 8);
                        return;
                    }
                    if (i4 == 5) {
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerIP_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etServerCloudFront_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 8);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.wire_ly, 0);
                        AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.wire_full_conf, 0);
                        ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{-7942643894872773857L, -7862209572829599268L, 4889620212039107288L, 5931392475798612865L}).toString());
                        return;
                    }
                    return;
                }
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerIP_ly)).setHint(new ObfuscatedString(new long[]{2659981290599569352L, -499381332723210015L, -112860755477940821L, -3739793956678472836L}).toString());
                ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerCloudFront_ly)).setHint(new ObfuscatedString(new long[]{3893061885412161314L, 7110915690470508481L, -3241841829132686833L, 1232257519896980774L}).toString());
                ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etServerHTTP_ly)).setHint(new ObfuscatedString(new long[]{5165393956063004725L, 776580641601926521L, 3080564736996389077L, -3249955823172471959L}).toString());
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.http_ly, 0);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etPort_tv, 0);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 0);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etTcpPort_ly, 0);
                AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etSSLPort_ly, 0);
                if (i4 == 0) {
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etUdpPort_ly)).setHint(new ObfuscatedString(new long[]{882665464413781578L, 1542554450872324209L}).toString());
                    ServerActivity.this.openvpn_udp_port.setText(new ObfuscatedString(new long[]{660884214970712545L, -3034448530511993781L}).toString());
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etTcpPort_ly)).setHint(new ObfuscatedString(new long[]{-4544464280928222475L, 1801822760628330471L}).toString());
                    ServerActivity.this.etTcpPort.setText(new ObfuscatedString(new long[]{2416820257306798022L, 3142004932973368829L}).toString());
                    ServerActivity.this.etSSLPort.setText(new ObfuscatedString(new long[]{-7168611616621664195L, 4851647571514784264L}).toString());
                    ServerActivity.this.ckMultiCert.setVisibility(0);
                    View findViewById = ServerActivity.this.v.findViewById(R.id.etCertificate_ly);
                    if (!ServerActivity.this.ckMultiCert.isChecked()) {
                        i22 = 8;
                    }
                    findViewById.setVisibility(i22);
                }
                if (i4 == 1) {
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.fakeV2ray, 8);
                    AbstractC0749x8313616e.m3349x6246a3ee(ServerActivity.this, R.id.etUdpPort_ly, 8);
                    ((TextInputLayout) ServerActivity.this.v.findViewById(R.id.etTcpPort_ly)).setHint(new ObfuscatedString(new long[]{-1697241079889942792L, -6908354265391753796L, -3869944009820076953L}).toString());
                    ServerActivity.this.etTcpPort.setText(new ObfuscatedString(new long[]{1759389836384681132L, -3687178185292322231L}).toString());
                    ServerActivity.this.etSSLPort.setText(new ObfuscatedString(new long[]{887054884989262936L, 6992360812368379023L}).toString());
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        final int i4 = 0;
        this.ckMultiCert.setOnClickListener(new View.OnClickListener(this) { // from class: 땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5491x3271d0aa;

            {
                this.f5491x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i4) {
                    case 0:
                        this.f5491x3271d0aa.lambda$dialogAddServer$2(view);
                        return;
                    case 1:
                        this.f5491x3271d0aa.lambda$dialogAddServer$3(view);
                        return;
                    case 2:
                        this.f5491x3271d0aa.lambda$dialogAddServer$4(view);
                        return;
                    case 3:
                        this.f5491x3271d0aa.lambda$dialogAddServer$5(view);
                        return;
                    case 4:
                        this.f5491x3271d0aa.lambda$dialogAddServer$6(view);
                        return;
                    case 5:
                        this.f5491x3271d0aa.lambda$dialogAddServer$7(view);
                        return;
                    default:
                        this.f5491x3271d0aa.lambda$dialogAddServer$8(view);
                        return;
                }
            }
        });
        this.ckUseLogin.setOnClickListener(new View.OnClickListener(this) { // from class: 땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5491x3271d0aa;

            {
                this.f5491x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i3) {
                    case 0:
                        this.f5491x3271d0aa.lambda$dialogAddServer$2(view);
                        return;
                    case 1:
                        this.f5491x3271d0aa.lambda$dialogAddServer$3(view);
                        return;
                    case 2:
                        this.f5491x3271d0aa.lambda$dialogAddServer$4(view);
                        return;
                    case 3:
                        this.f5491x3271d0aa.lambda$dialogAddServer$5(view);
                        return;
                    case 4:
                        this.f5491x3271d0aa.lambda$dialogAddServer$6(view);
                        return;
                    case 5:
                        this.f5491x3271d0aa.lambda$dialogAddServer$7(view);
                        return;
                    default:
                        this.f5491x3271d0aa.lambda$dialogAddServer$8(view);
                        return;
                }
            }
        });
        this.fakeV2ray.setOnClickListener(new View.OnClickListener(this) { // from class: 땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5491x3271d0aa;

            {
                this.f5491x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i2) {
                    case 0:
                        this.f5491x3271d0aa.lambda$dialogAddServer$2(view);
                        return;
                    case 1:
                        this.f5491x3271d0aa.lambda$dialogAddServer$3(view);
                        return;
                    case 2:
                        this.f5491x3271d0aa.lambda$dialogAddServer$4(view);
                        return;
                    case 3:
                        this.f5491x3271d0aa.lambda$dialogAddServer$5(view);
                        return;
                    case 4:
                        this.f5491x3271d0aa.lambda$dialogAddServer$6(view);
                        return;
                    case 5:
                        this.f5491x3271d0aa.lambda$dialogAddServer$7(view);
                        return;
                    default:
                        this.f5491x3271d0aa.lambda$dialogAddServer$8(view);
                        return;
                }
            }
        });
        this.wire_full_conf.setOnClickListener(new View.OnClickListener(this) { // from class: 땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5491x3271d0aa;

            {
                this.f5491x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i) {
                    case 0:
                        this.f5491x3271d0aa.lambda$dialogAddServer$2(view);
                        return;
                    case 1:
                        this.f5491x3271d0aa.lambda$dialogAddServer$3(view);
                        return;
                    case 2:
                        this.f5491x3271d0aa.lambda$dialogAddServer$4(view);
                        return;
                    case 3:
                        this.f5491x3271d0aa.lambda$dialogAddServer$5(view);
                        return;
                    case 4:
                        this.f5491x3271d0aa.lambda$dialogAddServer$6(view);
                        return;
                    case 5:
                        this.f5491x3271d0aa.lambda$dialogAddServer$7(view);
                        return;
                    default:
                        this.f5491x3271d0aa.lambda$dialogAddServer$8(view);
                        return;
                }
            }
        });
        this.sName.getText().toString();
        final int i5 = 4;
        this.v.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener(this) { // from class: 땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5491x3271d0aa;

            {
                this.f5491x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i5) {
                    case 0:
                        this.f5491x3271d0aa.lambda$dialogAddServer$2(view);
                        return;
                    case 1:
                        this.f5491x3271d0aa.lambda$dialogAddServer$3(view);
                        return;
                    case 2:
                        this.f5491x3271d0aa.lambda$dialogAddServer$4(view);
                        return;
                    case 3:
                        this.f5491x3271d0aa.lambda$dialogAddServer$5(view);
                        return;
                    case 4:
                        this.f5491x3271d0aa.lambda$dialogAddServer$6(view);
                        return;
                    case 5:
                        this.f5491x3271d0aa.lambda$dialogAddServer$7(view);
                        return;
                    default:
                        this.f5491x3271d0aa.lambda$dialogAddServer$8(view);
                        return;
                }
            }
        });
        final int i6 = 5;
        this.v.findViewById(R.id.save).setOnClickListener(new View.OnClickListener(this) { // from class: 땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5491x3271d0aa;

            {
                this.f5491x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i6) {
                    case 0:
                        this.f5491x3271d0aa.lambda$dialogAddServer$2(view);
                        return;
                    case 1:
                        this.f5491x3271d0aa.lambda$dialogAddServer$3(view);
                        return;
                    case 2:
                        this.f5491x3271d0aa.lambda$dialogAddServer$4(view);
                        return;
                    case 3:
                        this.f5491x3271d0aa.lambda$dialogAddServer$5(view);
                        return;
                    case 4:
                        this.f5491x3271d0aa.lambda$dialogAddServer$6(view);
                        return;
                    case 5:
                        this.f5491x3271d0aa.lambda$dialogAddServer$7(view);
                        return;
                    default:
                        this.f5491x3271d0aa.lambda$dialogAddServer$8(view);
                        return;
                }
            }
        });
        this.a.setView(this.v);
        this.a.show();
        AppCompatImageView appCompatImageView = (AppCompatImageView) this.v.findViewById(R.id.exit);
        this.exit = appCompatImageView;
        final int i7 = 6;
        appCompatImageView.setOnClickListener(new View.OnClickListener(this) { // from class: 땜딠뎨듨듬땡뒋뒤둔땫땐돝뒙듽뎡땳돝땲땻뎡뒼땱딜딝땔땪딅듼땸된딻되뒘땸둡땍뒼돛딞뎡뒉땤땱돷땬딨뒘돼듸둬듸땰듔땔딐뒐땧땵딝돳뒙땀돸뎹땸드땪돵땭든땔뎰돛뒝뒛됐땡됴땻딻든뒾땪뎠땱둣딐땧뒤돳땨뒹뒀디따든돳땥돰딞땭들되딞딀뒻땮듻뒷땃땔둠땨뒘땣뒋뎻듸따둘딃둥뒀듼딀땋땅뎰딸딅

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5491x3271d0aa;

            {
                this.f5491x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i7) {
                    case 0:
                        this.f5491x3271d0aa.lambda$dialogAddServer$2(view);
                        return;
                    case 1:
                        this.f5491x3271d0aa.lambda$dialogAddServer$3(view);
                        return;
                    case 2:
                        this.f5491x3271d0aa.lambda$dialogAddServer$4(view);
                        return;
                    case 3:
                        this.f5491x3271d0aa.lambda$dialogAddServer$5(view);
                        return;
                    case 4:
                        this.f5491x3271d0aa.lambda$dialogAddServer$6(view);
                        return;
                    case 5:
                        this.f5491x3271d0aa.lambda$dialogAddServer$7(view);
                        return;
                    default:
                        this.f5491x3271d0aa.lambda$dialogAddServer$8(view);
                        return;
                }
            }
        });
    }

    private JSONObject getNetworkSelectedJson() {
        for (int i = 0; i < this.listNetwork.size(); i++) {
            if (this.listNetwork.get(i).getString(new ObfuscatedString(new long[]{-1905686506726145752L, -6867233036936942350L}).toString()).equals(this.f5775config.getNetworkSelectedName())) {
                return this.listNetwork.get(i);
            }
        }
        return this.listNetwork.get(0);
    }

    private JSONObject getServer() {
        String serverSelectedName = this.f5775config.getServerSelectedName();
        JSONArray serversArray = getServersArray(this.selectedServerType);
        for (int i = 0; i < serversArray.length(); i++) {
            JSONObject jSONObject = serversArray.getJSONObject(i);
            if (jSONObject.getString(new ObfuscatedString(new long[]{6578734391421273111L, 7967433448630556036L}).toString()).equals(serverSelectedName)) {
                return jSONObject;
            }
        }
        return serversArray.getJSONObject(0);
    }

    private JSONObject getServerSelectedJson() {
        String serverSelectedName = this.f5775config.getServerSelectedName();
        JSONArray serversArray = getServersArray(this.selectedServerType);
        for (int i = 0; i < serversArray.length(); i++) {
            JSONObject jSONObject = serversArray.getJSONObject(i);
            if (jSONObject.getString(new ObfuscatedString(new long[]{3591953964109611553L, -1085720069409552519L}).toString()).equals(serverSelectedName)) {
                return jSONObject;
            }
        }
        return serversArray.getJSONObject(0);
    }

    public /* synthetic */ void lambda$dialogAddServer$2(View view) {
        if (this.ckMultiCert.isChecked()) {
            this.v.findViewById(R.id.etCertificate_ly).setVisibility(0);
        } else {
            this.v.findViewById(R.id.etCertificate_ly).setVisibility(8);
        }
    }

    public /* synthetic */ void lambda$dialogAddServer$3(View view) {
        if (this.ckUseLogin.isChecked()) {
            this.v.findViewById(R.id.Account_ly).setVisibility(0);
        } else {
            this.v.findViewById(R.id.Account_ly).setVisibility(8);
        }
    }

    public /* synthetic */ void lambda$dialogAddServer$4(View view) {
        if (this.fakeV2ray.isChecked()) {
            this.mEditor.putBoolean(new ObfuscatedString(new long[]{3147991829040250378L, -3380112700633672730L}).toString(), true);
            this.fakeV2ray.setText(new ObfuscatedString(new long[]{-7586460891944830757L, 8623865196601360282L, 4947754226736368L, 8659574908985598415L}).toString());
            SaveFile();
        } else {
            this.fakeV2ray.setText(new ObfuscatedString(new long[]{2303691152737632048L, -5007766129339238459L, 8360209446629591467L, -7025673405510405495L}).toString());
            this.mEditor.putBoolean(new ObfuscatedString(new long[]{-2214294148400589237L, -7957575217358827040L}).toString(), false);
        }
    }

    public /* synthetic */ void lambda$dialogAddServer$5(View view) {
        if (this.wire_full_conf.isChecked()) {
            this.wire_full_conf.setText(new ObfuscatedString(new long[]{3717093645873897893L, 3798022128963103352L, 1150657439762023342L}).toString());
            this.v.findViewById(R.id.wire_ly).setVisibility(8);
            this.v.findViewById(R.id.http_ly).setVisibility(8);
            this.v.findViewById(R.id.etServerCloudFront_ly).setVisibility(8);
            this.v.findViewById(R.id.etServerHTTP_ly).setVisibility(8);
            this.v.findViewById(R.id.etServerIP_ly).setVisibility(0);
            return;
        }
        this.wire_full_conf.setText(new ObfuscatedString(new long[]{-754747261015969029L, 3079311739918571399L, -8308431295985299552L}).toString());
        this.v.findViewById(R.id.http_ly).setVisibility(8);
        this.v.findViewById(R.id.etServerIP_ly).setVisibility(8);
        this.v.findViewById(R.id.etServerCloudFront_ly).setVisibility(8);
        this.v.findViewById(R.id.wire_ly).setVisibility(0);
    }

    public /* synthetic */ void lambda$dialogAddServer$6(View view) {
        this.a.dismiss();
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x261a A[Catch: Exception -> 0x001d, TryCatch #0 {Exception -> 0x001d, blocks: (B:3:0x000a, B:5:0x0012, B:6:0x0033, B:8:0x003b, B:9:0x0058, B:11:0x247e, B:14:0x2489, B:16:0x248f, B:19:0x2496, B:20:0x24c7, B:22:0x261a, B:23:0x2639, B:27:0x2625, B:28:0x249f, B:30:0x0046, B:31:0x0021), top: B:2:0x000a }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x2625 A[Catch: Exception -> 0x001d, TryCatch #0 {Exception -> 0x001d, blocks: (B:3:0x000a, B:5:0x0012, B:6:0x0033, B:8:0x003b, B:9:0x0058, B:11:0x247e, B:14:0x2489, B:16:0x248f, B:19:0x2496, B:20:0x24c7, B:22:0x261a, B:23:0x2639, B:27:0x2625, B:28:0x249f, B:30:0x0046, B:31:0x0021), top: B:2:0x000a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ void lambda$dialogAddServer$7(View view) {
        String obfuscatedString;
        String obfuscatedString2;
        JSONObject jSONObject = new JSONObject();
        try {
            String obj = this.ckUseLogin.isChecked() ? this.etUser.getText().toString() : new ObfuscatedString(new long[]{1781401123007471840L}).toString();
            String obj2 = this.ckUseLogin.isChecked() ? this.etPass.getText().toString() : new ObfuscatedString(new long[]{-2544393450530074302L}).toString();
            String obj3 = this.etServerIP.getText().toString();
            String obj4 = this.etServerCloudFront.getText().toString();
            String obj5 = this.etServerHTTP.getText().toString();
            String replace = this.etServerAddress.getText().toString().replace(new ObfuscatedString(new long[]{7607704728046973964L, 8333588620401601206L}).toString(), new ObfuscatedString(new long[]{1753310836495700532L, 540952139471049831L}).toString()).replace(new ObfuscatedString(new long[]{-2388160965467618626L, 2022293736135911820L}).toString(), new ObfuscatedString(new long[]{-2023930939281045686L, 5118250983286450113L}).toString()).replace(new ObfuscatedString(new long[]{-964000822968060339L, 903153212400195949L}).toString(), new ObfuscatedString(new long[]{4762635482623239872L, 1276701243387891222L}).toString()).replace(new ObfuscatedString(new long[]{-2311286064019846600L, 2808889617271938312L}).toString(), new ObfuscatedString(new long[]{6658719710880581611L, -7930589210943688496L}).toString()).replace(new ObfuscatedString(new long[]{-589072399673858393L, -4740042319741782248L}).toString(), new ObfuscatedString(new long[]{5579227285220755677L, -7739970514149483515L}).toString()).replace(new ObfuscatedString(new long[]{3420162191424960522L, -7135843321327408354L}).toString(), new ObfuscatedString(new long[]{4514969073213994901L, 4086014581009035256L}).toString()).replace(new ObfuscatedString(new long[]{2207703850260525439L, -7250847625342223009L}).toString(), new ObfuscatedString(new long[]{5547966270007823593L, -2166851575544470599L}).toString()).replace(new ObfuscatedString(new long[]{-7212123265682922008L, -5705072246080306933L}).toString(), new ObfuscatedString(new long[]{4010996742803079681L, 918056998323400646L}).toString()).replace(new ObfuscatedString(new long[]{-2330697053496042758L, 9024871504500266586L}).toString(), new ObfuscatedString(new long[]{-8018155468876710421L, -8504012316823880672L}).toString()).replace(new ObfuscatedString(new long[]{-5013990630840467961L, -8653076459300532107L}).toString(), new ObfuscatedString(new long[]{-6226657624672670082L, -4581969299692497121L}).toString()).replace(new ObfuscatedString(new long[]{4073602219921867547L, -4945732346859423128L}).toString(), new ObfuscatedString(new long[]{-1037885426164634137L, 4560166047993012331L}).toString()).replace(new ObfuscatedString(new long[]{-2152952712861056303L, 675198727106327921L}).toString(), new ObfuscatedString(new long[]{6723745054667129989L, -8230530966071909567L}).toString()).replace(new ObfuscatedString(new long[]{-8102264350538354881L, 623107701943519429L}).toString(), new ObfuscatedString(new long[]{2332117655067652446L, -4386003229740135237L}).toString()).replace(new ObfuscatedString(new long[]{8868881568256863442L, 141095930159269757L}).toString(), new ObfuscatedString(new long[]{3870501339642704836L, -6798074268056502709L}).toString()).replace(new ObfuscatedString(new long[]{-3990201123422375824L, -2403195742783546494L}).toString(), new ObfuscatedString(new long[]{4985132627969377551L, -7472315841212244377L}).toString()).replace(new ObfuscatedString(new long[]{8984836500427252435L, 6992105706088102438L}).toString(), new ObfuscatedString(new long[]{5157021763810940443L, -3593104932315498257L}).toString()).replace(new ObfuscatedString(new long[]{3305813230311316135L, 2522099262446471792L}).toString(), new ObfuscatedString(new long[]{-6308207443437803671L, 4240601362473611929L}).toString()).replace(new ObfuscatedString(new long[]{-7194297812495354100L, 994914011256102157L}).toString(), new ObfuscatedString(new long[]{-6566451032524174434L, -6261777715567371490L}).toString()).replace(new ObfuscatedString(new long[]{-1108784737266079682L, -7085536430071158779L}).toString(), new ObfuscatedString(new long[]{-6012422141195414546L, 8551462711402465885L}).toString()).replace(new ObfuscatedString(new long[]{-3858380454754250996L, 7319005563890733325L}).toString(), new ObfuscatedString(new long[]{-1747251102939124004L, -6790254081533329287L}).toString()).replace(new ObfuscatedString(new long[]{-6618509880508650287L, 4320309360461657023L}).toString(), new ObfuscatedString(new long[]{-2581453768764871513L, -2341950505315945680L}).toString()).replace(new ObfuscatedString(new long[]{-3221037293368507124L, -412102020054106448L}).toString(), new ObfuscatedString(new long[]{-5505829565076209510L, -4602191982528813523L}).toString()).replace(new ObfuscatedString(new long[]{7981404747683765856L, 6096628167964748812L}).toString(), new ObfuscatedString(new long[]{-6887995255399100383L, 1183864049889926818L}).toString()).replace(new ObfuscatedString(new long[]{4822652319154467144L, 5551875340395104071L}).toString(), new ObfuscatedString(new long[]{9204899415109691059L, 8976921119319410083L}).toString()).replace(new ObfuscatedString(new long[]{-7196347496608926001L, 3933510566241356570L}).toString(), new ObfuscatedString(new long[]{-2246987856306136335L, 2501639237906854483L}).toString()).replace(new ObfuscatedString(new long[]{-7625797195664085083L, 5649574133749905934L}).toString(), new ObfuscatedString(new long[]{-5116840251739085384L, 4500910259747407539L}).toString());
            String replace2 = this.etEndpoint.getText().toString().replace(new ObfuscatedString(new long[]{-6596038573530706896L, 4903182926473230075L}).toString(), new ObfuscatedString(new long[]{-5519166531942580099L, -1259711782769499269L}).toString()).replace(new ObfuscatedString(new long[]{7359732250499816484L, -2186388065341353172L}).toString(), new ObfuscatedString(new long[]{-7808327881483373689L, -9168297243884700790L}).toString()).replace(new ObfuscatedString(new long[]{6741446661134413626L, 3006576132444834976L}).toString(), new ObfuscatedString(new long[]{-7204337646454498506L, 2862222392997855489L}).toString()).replace(new ObfuscatedString(new long[]{3467851291507398708L, -6717123304325690898L}).toString(), new ObfuscatedString(new long[]{-2736822715689054341L, 4089475371790093871L}).toString()).replace(new ObfuscatedString(new long[]{-8545964144472616019L, -4911243002696515575L}).toString(), new ObfuscatedString(new long[]{6681558348882717438L, 3706818295085235709L}).toString()).replace(new ObfuscatedString(new long[]{-7386068496042517676L, -2118566098478861951L}).toString(), new ObfuscatedString(new long[]{-10062317472398752L, 1941029288283353445L}).toString()).replace(new ObfuscatedString(new long[]{3161470827736700095L, -2525282603752750087L}).toString(), new ObfuscatedString(new long[]{-4506532229668292014L, -2096485482479591756L}).toString()).replace(new ObfuscatedString(new long[]{769997110668571738L, 250854434813656024L}).toString(), new ObfuscatedString(new long[]{-1782819323953344522L, -455368447556588531L}).toString()).replace(new ObfuscatedString(new long[]{-5746949279900369768L, 613433136015821914L}).toString(), new ObfuscatedString(new long[]{659002234517460261L, -8700471140369375085L}).toString()).replace(new ObfuscatedString(new long[]{-3208566562319589846L, 2971767314404343140L}).toString(), new ObfuscatedString(new long[]{-5546487620370765146L, 1994600597768973700L}).toString()).replace(new ObfuscatedString(new long[]{-4074664939381194318L, 3049098090526909800L}).toString(), new ObfuscatedString(new long[]{8838633356068128820L, -3429034249239500668L}).toString()).replace(new ObfuscatedString(new long[]{-6247491696008753472L, 4077065464019506672L}).toString(), new ObfuscatedString(new long[]{-4649822488701007511L, 2580007442662284860L}).toString()).replace(new ObfuscatedString(new long[]{8357828775422774562L, 843623930458376163L}).toString(), new ObfuscatedString(new long[]{-3780900629735189399L, -3409813776036326553L}).toString()).replace(new ObfuscatedString(new long[]{7465403477492672505L, 7325412674540789418L}).toString(), new ObfuscatedString(new long[]{6347092975994525768L, 3431276284872255388L}).toString()).replace(new ObfuscatedString(new long[]{-8271906867462460488L, 3537459180529048828L}).toString(), new ObfuscatedString(new long[]{1837022896712085798L, -8610408987066585124L}).toString()).replace(new ObfuscatedString(new long[]{4217230697072926738L, 3527744812232188232L}).toString(), new ObfuscatedString(new long[]{-6385422486750840811L, 6205168810727214944L}).toString()).replace(new ObfuscatedString(new long[]{-1693870535335116074L, 7882421534561492292L}).toString(), new ObfuscatedString(new long[]{-8471541450104979963L, 9019682686154589772L}).toString()).replace(new ObfuscatedString(new long[]{-7071380331918991287L, -8904691193923879079L}).toString(), new ObfuscatedString(new long[]{-4455497477055523791L, -8551927928667230218L}).toString()).replace(new ObfuscatedString(new long[]{-548776474884516754L, 8250614122897112357L}).toString(), new ObfuscatedString(new long[]{-7409532997339757437L, -168533011890677609L}).toString()).replace(new ObfuscatedString(new long[]{-5235047888172042706L, -6910881767592467697L}).toString(), new ObfuscatedString(new long[]{7151931600889912920L, 1687969752907035782L}).toString()).replace(new ObfuscatedString(new long[]{-2332148014736583382L, 233553293400183825L}).toString(), new ObfuscatedString(new long[]{-3024425023296314589L, 5418845441561013122L}).toString()).replace(new ObfuscatedString(new long[]{-1533074177949959971L, -841265628102795540L}).toString(), new ObfuscatedString(new long[]{811398574163251705L, 4406127661129313383L}).toString()).replace(new ObfuscatedString(new long[]{-7323499849298976552L, 8108030528305461825L}).toString(), new ObfuscatedString(new long[]{6264601399743838748L, 8391164404344566206L}).toString()).replace(new ObfuscatedString(new long[]{7868165870864715733L, 5962367115696274904L}).toString(), new ObfuscatedString(new long[]{2840180086834032295L, -8088742145526141130L}).toString()).replace(new ObfuscatedString(new long[]{8779269706987758602L, -5564015019406430034L}).toString(), new ObfuscatedString(new long[]{490734038772376878L, 2478385168867165567L}).toString()).replace(new ObfuscatedString(new long[]{5465182489087279182L, 2497929051918715732L}).toString(), new ObfuscatedString(new long[]{-8427102491257992237L, -4239496132913352175L}).toString());
            String replace3 = this.etPublicKey.getText().toString().replace(new ObfuscatedString(new long[]{5467136453779270430L, 7716946198735472831L}).toString(), new ObfuscatedString(new long[]{889779428577220805L, -4351122124953360202L}).toString()).replace(new ObfuscatedString(new long[]{-8136317836994028634L, -486725360430596766L}).toString(), new ObfuscatedString(new long[]{-3432110116417484227L, -4007540689590903079L}).toString()).replace(new ObfuscatedString(new long[]{-8087614325249843771L, 8535577205145599305L}).toString(), new ObfuscatedString(new long[]{8485851392374066816L, -6292952860174501549L}).toString()).replace(new ObfuscatedString(new long[]{6495371435845943163L, -2202608314359574213L}).toString(), new ObfuscatedString(new long[]{-8509350482811032147L, 2691675839237658960L}).toString()).replace(new ObfuscatedString(new long[]{-7669576672810655898L, 1914191116718032049L}).toString(), new ObfuscatedString(new long[]{-7135283836059774902L, 7194189968011730197L}).toString()).replace(new ObfuscatedString(new long[]{-7559035449177318830L, 2979979388891324890L}).toString(), new ObfuscatedString(new long[]{-5916836841203354017L, 7913540077777556894L}).toString()).replace(new ObfuscatedString(new long[]{-3826342119333911617L, 4945717926349191523L}).toString(), new ObfuscatedString(new long[]{-8176273177326391953L, 7003311200553806856L}).toString()).replace(new ObfuscatedString(new long[]{8908785027366407643L, -94168222665466509L}).toString(), new ObfuscatedString(new long[]{4312709497968981480L, 3179876229786941636L}).toString()).replace(new ObfuscatedString(new long[]{-362181270220570920L, 8288670657830871231L}).toString(), new ObfuscatedString(new long[]{-6540004617393305956L, -4706784052078819611L}).toString()).replace(new ObfuscatedString(new long[]{-8165883105184622498L, 1479941966247564904L}).toString(), new ObfuscatedString(new long[]{338968569666998806L, -1552833589901580323L}).toString()).replace(new ObfuscatedString(new long[]{1902100426750526910L, -3519060755567218785L}).toString(), new ObfuscatedString(new long[]{-3770454537057377270L, 4310863602954839229L}).toString()).replace(new ObfuscatedString(new long[]{8197452284719718673L, -6922664956127233361L}).toString(), new ObfuscatedString(new long[]{-4370210521604452525L, 4274840463087932483L}).toString()).replace(new ObfuscatedString(new long[]{-649887069425797845L, -6935796039311274877L}).toString(), new ObfuscatedString(new long[]{1429782935259273809L, -2379702594092154881L}).toString()).replace(new ObfuscatedString(new long[]{6520047776743208L, 5796025482357003629L}).toString(), new ObfuscatedString(new long[]{-3842410218380949544L, -6839407678851709986L}).toString()).replace(new ObfuscatedString(new long[]{-1278355247816501681L, -237169451353622564L}).toString(), new ObfuscatedString(new long[]{-6952453740973769112L, 77640964631362866L}).toString()).replace(new ObfuscatedString(new long[]{7997896356484162984L, 4214065897900702718L}).toString(), new ObfuscatedString(new long[]{8042671670307361572L, 8916030933728411487L}).toString()).replace(new ObfuscatedString(new long[]{-2959301097396654440L, -3237391737781825545L}).toString(), new ObfuscatedString(new long[]{987801924262556856L, 4416995409080219470L}).toString()).replace(new ObfuscatedString(new long[]{809229831801663049L, -4282297032777153643L}).toString(), new ObfuscatedString(new long[]{1215728996800010998L, 2254521610364423507L}).toString()).replace(new ObfuscatedString(new long[]{973568671196476317L, -3147613917372944778L}).toString(), new ObfuscatedString(new long[]{2764178170203853679L, 5753082378614365658L}).toString()).replace(new ObfuscatedString(new long[]{-5801799404961283324L, 4025868271168277374L}).toString(), new ObfuscatedString(new long[]{8914010428618999135L, -8165411558502854842L}).toString()).replace(new ObfuscatedString(new long[]{-6928640332290832782L, -5892321690453603861L}).toString(), new ObfuscatedString(new long[]{2937624029357530292L, -5220408174729122750L}).toString()).replace(new ObfuscatedString(new long[]{9119639427112716933L, 1280101965426059584L}).toString(), new ObfuscatedString(new long[]{-6632080783082510719L, 2893270795831183907L}).toString()).replace(new ObfuscatedString(new long[]{915433765080395234L, 8466522100903311136L}).toString(), new ObfuscatedString(new long[]{-1580394335473158512L, 5556397804166506827L}).toString()).replace(new ObfuscatedString(new long[]{-6893286840087404928L, 4696792930739807726L}).toString(), new ObfuscatedString(new long[]{1297602845111207271L, 6494924743330223845L}).toString()).replace(new ObfuscatedString(new long[]{4280252813348636264L, 6719699957395221727L}).toString(), new ObfuscatedString(new long[]{-184291579831872245L, -1109054806435929858L}).toString()).replace(new ObfuscatedString(new long[]{-149234665957050771L, -1366937345816280394L}).toString(), new ObfuscatedString(new long[]{-1900066687033380570L, -3648803317418901755L}).toString());
            String replace4 = this.etPrivateKey.getText().toString().replace(new ObfuscatedString(new long[]{8384701120391246305L, 5922426977707205665L}).toString(), new ObfuscatedString(new long[]{-600413289852385250L, -1569347434304444716L}).toString()).replace(new ObfuscatedString(new long[]{-7432336755023746353L, -4540560449356089467L}).toString(), new ObfuscatedString(new long[]{3148192078824776900L, 373475701077678790L}).toString()).replace(new ObfuscatedString(new long[]{-7458406355267858208L, -7022285865644751057L}).toString(), new ObfuscatedString(new long[]{6220285620192121976L, 8010826490161856169L}).toString()).replace(new ObfuscatedString(new long[]{-741608717190657772L, -1776039850689567862L}).toString(), new ObfuscatedString(new long[]{6238344453102631885L, 6457811185467633408L}).toString()).replace(new ObfuscatedString(new long[]{5358417015888894269L, -8246893621871394883L}).toString(), new ObfuscatedString(new long[]{3456001798740207329L, -5518012384681338478L}).toString()).replace(new ObfuscatedString(new long[]{7593340072304748902L, 1081320050538718360L}).toString(), new ObfuscatedString(new long[]{-8245736795992429036L, -1037951996925704234L}).toString()).replace(new ObfuscatedString(new long[]{5061605857482097612L, -7728012088548735683L}).toString(), new ObfuscatedString(new long[]{-220410199922513466L, -3419509028344225928L}).toString()).replace(new ObfuscatedString(new long[]{-7887914016494591981L, -7625781906522894976L}).toString(), new ObfuscatedString(new long[]{-5065988346201661809L, 1684870927727137352L}).toString()).replace(new ObfuscatedString(new long[]{6667649547850942340L, -7202164181349549107L}).toString(), new ObfuscatedString(new long[]{-6796011062731736325L, 7391231453125925321L}).toString()).replace(new ObfuscatedString(new long[]{9093289971324998303L, 265136254582734803L}).toString(), new ObfuscatedString(new long[]{-3629483083558116722L, 6854954046457345796L}).toString()).replace(new ObfuscatedString(new long[]{-3050903142514878075L, 7369823058642505177L}).toString(), new ObfuscatedString(new long[]{1219494203806168058L, -5357924006900936412L}).toString()).replace(new ObfuscatedString(new long[]{7435473935786268192L, -871622538320480914L}).toString(), new ObfuscatedString(new long[]{-8712314877175964376L, -4109708118310901975L}).toString()).replace(new ObfuscatedString(new long[]{8968710511769456150L, 1125584098513711974L}).toString(), new ObfuscatedString(new long[]{-5133893580001330537L, -2808517631412561906L}).toString()).replace(new ObfuscatedString(new long[]{4144761492452985456L, -8333350307404378079L}).toString(), new ObfuscatedString(new long[]{-2972155963296062106L, -7199333247473998595L}).toString()).replace(new ObfuscatedString(new long[]{-7988577079543533826L, -7210812102998873400L}).toString(), new ObfuscatedString(new long[]{654933113998233626L, 5621734065944491274L}).toString()).replace(new ObfuscatedString(new long[]{-8558130284292678843L, -8559804473767174664L}).toString(), new ObfuscatedString(new long[]{-7144435300495412528L, 5042384403102526564L}).toString()).replace(new ObfuscatedString(new long[]{4685189463157588341L, -7559856407009145247L}).toString(), new ObfuscatedString(new long[]{-4398583327404893643L, 964850288450286729L}).toString()).replace(new ObfuscatedString(new long[]{2711733997814891990L, 7615749618761932589L}).toString(), new ObfuscatedString(new long[]{-2404806834337894453L, 3428853110389728287L}).toString()).replace(new ObfuscatedString(new long[]{1440586497951254825L, 1547516323370616321L}).toString(), new ObfuscatedString(new long[]{-5346257562141406228L, -7935519097088315931L}).toString()).replace(new ObfuscatedString(new long[]{-7251993291433166220L, 8905968145122375707L}).toString(), new ObfuscatedString(new long[]{5658206004305263301L, -953747108697356790L}).toString()).replace(new ObfuscatedString(new long[]{3501309034042788254L, 8566604702197984768L}).toString(), new ObfuscatedString(new long[]{2385921128590262424L, -1641729531724543758L}).toString()).replace(new ObfuscatedString(new long[]{-3451243451228632458L, -5139590078645636184L}).toString(), new ObfuscatedString(new long[]{-6891262728861915550L, 2331640831375117992L}).toString()).replace(new ObfuscatedString(new long[]{-1797215790210358309L, 576477982110741179L}).toString(), new ObfuscatedString(new long[]{-6146206744946351513L, 1977366976797523618L}).toString()).replace(new ObfuscatedString(new long[]{8258625500961310707L, 8990490045627566640L}).toString(), new ObfuscatedString(new long[]{6612426214606769658L, 8029481950403588160L}).toString()).replace(new ObfuscatedString(new long[]{-3381964516680859433L, -2921035537961405575L}).toString(), new ObfuscatedString(new long[]{939494714639068463L, -5867461037079797641L}).toString()).replace(new ObfuscatedString(new long[]{5840155211531928198L, -6126120045301205261L}).toString(), new ObfuscatedString(new long[]{-387661392046380408L, -5385198077926400352L}).toString());
            String replace5 = this.etPreSharedKey.getText().toString().replace(new ObfuscatedString(new long[]{6949285666175671913L, -4365462562360448205L}).toString(), new ObfuscatedString(new long[]{7726679266062907907L, 4963904714249830643L}).toString()).replace(new ObfuscatedString(new long[]{4425917821741394577L, 8056675526871992398L}).toString(), new ObfuscatedString(new long[]{-4585033202530883090L, -5479373515386890056L}).toString()).replace(new ObfuscatedString(new long[]{1771938726379605602L, 8955887479275089871L}).toString(), new ObfuscatedString(new long[]{8225149237386665012L, -5853812579843394615L}).toString()).replace(new ObfuscatedString(new long[]{-3185044952626624784L, -223335180350385742L}).toString(), new ObfuscatedString(new long[]{-6202395276211293764L, 754010091429102896L}).toString()).replace(new ObfuscatedString(new long[]{-4372492858354752713L, 5754649105662872416L}).toString(), new ObfuscatedString(new long[]{-1236342681489006510L, 2298756000699854245L}).toString()).replace(new ObfuscatedString(new long[]{-2527690378311299931L, 2854447874297376877L}).toString(), new ObfuscatedString(new long[]{-2920659589336815790L, -5290748475187144118L}).toString()).replace(new ObfuscatedString(new long[]{4749245454713095260L, 8903224829703682539L}).toString(), new ObfuscatedString(new long[]{6561090923678905767L, 4463705627160608222L}).toString()).replace(new ObfuscatedString(new long[]{-8283720944782749582L, 1994294051391873511L}).toString(), new ObfuscatedString(new long[]{-283970640864299431L, 1653978609144102813L}).toString()).replace(new ObfuscatedString(new long[]{-8760967175974454984L, 3439102829589664186L}).toString(), new ObfuscatedString(new long[]{6219587319194545991L, 6304980975953250225L}).toString()).replace(new ObfuscatedString(new long[]{976683584138085963L, 821851939255632187L}).toString(), new ObfuscatedString(new long[]{-7516023474418075214L, -5479315449060942239L}).toString()).replace(new ObfuscatedString(new long[]{8602982286151094213L, -9022686168696155935L}).toString(), new ObfuscatedString(new long[]{8630354179111153653L, 74816915480293095L}).toString()).replace(new ObfuscatedString(new long[]{-8080075070702198489L, 1528550928210713986L}).toString(), new ObfuscatedString(new long[]{1053056856581992298L, -6014456152900738735L}).toString()).replace(new ObfuscatedString(new long[]{-208415808402949994L, 1256260283440310799L}).toString(), new ObfuscatedString(new long[]{-2720218662782895087L, 289702541769496215L}).toString()).replace(new ObfuscatedString(new long[]{-6592440284227760231L, -2885589871446854750L}).toString(), new ObfuscatedString(new long[]{4701471334436687874L, 3519415368085899852L}).toString()).replace(new ObfuscatedString(new long[]{-402885255987242081L, 7221419415542871659L}).toString(), new ObfuscatedString(new long[]{1547281716588984485L, 5540520250976679227L}).toString()).replace(new ObfuscatedString(new long[]{-3705212184964652063L, 2293402807716758614L}).toString(), new ObfuscatedString(new long[]{5989716741022333462L, 1738411194484353665L}).toString()).replace(new ObfuscatedString(new long[]{-3873883573380257189L, 3940554062295927516L}).toString(), new ObfuscatedString(new long[]{4448778585268344557L, -7859977088873290098L}).toString()).replace(new ObfuscatedString(new long[]{2186710126554433511L, 4264797839929082669L}).toString(), new ObfuscatedString(new long[]{-4036048123980099912L, -4967187334321526882L}).toString()).replace(new ObfuscatedString(new long[]{-4766582573159900179L, 8662079623447512817L}).toString(), new ObfuscatedString(new long[]{-6065789262785863633L, 8285999067724305832L}).toString()).replace(new ObfuscatedString(new long[]{-2388809239380028957L, 4576843865734626165L}).toString(), new ObfuscatedString(new long[]{-7872629408667899642L, -624720564299660494L}).toString()).replace(new ObfuscatedString(new long[]{-7634091426876434764L, 1360003263864621601L}).toString(), new ObfuscatedString(new long[]{5198873239294925988L, 164487564193443842L}).toString()).replace(new ObfuscatedString(new long[]{1702066990811289197L, -2302616492461791372L}).toString(), new ObfuscatedString(new long[]{7804705022870773617L, -5527773373358555658L}).toString()).replace(new ObfuscatedString(new long[]{563478426829586366L, 3113076094677489222L}).toString(), new ObfuscatedString(new long[]{-5616319664886971525L, 3853673571796186060L}).toString()).replace(new ObfuscatedString(new long[]{-8493949997298924979L, -4781186787411181071L}).toString(), new ObfuscatedString(new long[]{5542806443153582726L, -2023409219548887910L}).toString()).replace(new ObfuscatedString(new long[]{8222113162748402428L, -2290694055128244001L}).toString(), new ObfuscatedString(new long[]{-2782930466335297440L, -8023714856684398272L}).toString()).replace(new ObfuscatedString(new long[]{-8888369600201081778L, -458359105402722470L}).toString(), new ObfuscatedString(new long[]{238624025144997881L, 3047492996171200860L}).toString());
            String replace6 = this.etAllowedIPs.getText().toString().replace(new ObfuscatedString(new long[]{8826354394906752334L, 605827555583974385L}).toString(), new ObfuscatedString(new long[]{8094083808989817605L, 3302556183222725797L}).toString()).replace(new ObfuscatedString(new long[]{7459287767009158517L, 4626359232370951039L}).toString(), new ObfuscatedString(new long[]{-4165513150426746985L, -6319835549715684357L}).toString()).replace(new ObfuscatedString(new long[]{-5505556771015357678L, -1093736104932137721L}).toString(), new ObfuscatedString(new long[]{-7954529052700337584L, 6896128149093330055L}).toString()).replace(new ObfuscatedString(new long[]{-733394932515371264L, 3740193577673824885L}).toString(), new ObfuscatedString(new long[]{-8248250912977328260L, -778318744463358883L}).toString()).replace(new ObfuscatedString(new long[]{-6662811800439617052L, 8016234915058983622L}).toString(), new ObfuscatedString(new long[]{-21194240128028768L, -6714554809767496563L}).toString()).replace(new ObfuscatedString(new long[]{-911926504246763499L, 3511523720119057004L}).toString(), new ObfuscatedString(new long[]{8313847937968805038L, 4322764573709448702L}).toString()).replace(new ObfuscatedString(new long[]{-5122191284076411328L, 8745150331716232466L}).toString(), new ObfuscatedString(new long[]{-7257601327054762214L, -7681296173849280234L}).toString()).replace(new ObfuscatedString(new long[]{-8004275407046057862L, 4841008574529132032L}).toString(), new ObfuscatedString(new long[]{1064739307725545652L, 7296763814507909264L}).toString()).replace(new ObfuscatedString(new long[]{3696673736509441531L, -6165867251357687080L}).toString(), new ObfuscatedString(new long[]{-3133332674774198352L, 1113073959037222939L}).toString()).replace(new ObfuscatedString(new long[]{4834863701508235581L, 9020837589962391664L}).toString(), new ObfuscatedString(new long[]{5387546136784755869L, -4552825276502486771L}).toString()).replace(new ObfuscatedString(new long[]{5098772776598506190L, -5031024132880127594L}).toString(), new ObfuscatedString(new long[]{-1284423060725375416L, 810500378234027445L}).toString()).replace(new ObfuscatedString(new long[]{-5262758606002277207L, 2044147616449412371L}).toString(), new ObfuscatedString(new long[]{6355479399901886609L, -8384207424317498895L}).toString()).replace(new ObfuscatedString(new long[]{7257383871288290244L, -1873399095692940416L}).toString(), new ObfuscatedString(new long[]{-1219586632951311784L, 2599947557842044391L}).toString()).replace(new ObfuscatedString(new long[]{-8322393173389947909L, -6292415402847671228L}).toString(), new ObfuscatedString(new long[]{6659295562718097472L, 6822751820923266283L}).toString()).replace(new ObfuscatedString(new long[]{1561627455135927009L, -4301499635262167795L}).toString(), new ObfuscatedString(new long[]{7230708300300313720L, 878952600132058686L}).toString()).replace(new ObfuscatedString(new long[]{-1594997810579502366L, -2777084112041554612L}).toString(), new ObfuscatedString(new long[]{8711418401181084904L, -5461333799535499996L}).toString()).replace(new ObfuscatedString(new long[]{8939791865044610055L, -2044951945034782895L}).toString(), new ObfuscatedString(new long[]{-8550858649983373260L, -4941361071240596321L}).toString()).replace(new ObfuscatedString(new long[]{-8626214398176617696L, 893301150875083388L}).toString(), new ObfuscatedString(new long[]{6876461846229393001L, 4437589091874010646L}).toString()).replace(new ObfuscatedString(new long[]{2281626323677393598L, 281698596143135901L}).toString(), new ObfuscatedString(new long[]{7804728977804472747L, 7137553483834832584L}).toString()).replace(new ObfuscatedString(new long[]{6150691433946812977L, -20666225060678157L}).toString(), new ObfuscatedString(new long[]{-2130584795211305007L, 8197268388228417709L}).toString()).replace(new ObfuscatedString(new long[]{3914095810405863160L, -883179254152784282L}).toString(), new ObfuscatedString(new long[]{-7422754438476166397L, 4769883918691846340L}).toString()).replace(new ObfuscatedString(new long[]{2745181635106008269L, -6610169616774810276L}).toString(), new ObfuscatedString(new long[]{9206664454692194566L, 8542592344227395238L}).toString()).replace(new ObfuscatedString(new long[]{-7548013199319084714L, -3525401871246130048L}).toString(), new ObfuscatedString(new long[]{2242215027362969434L, -1649009300362125133L}).toString()).replace(new ObfuscatedString(new long[]{6742911758906157038L, 6653457458764370702L}).toString(), new ObfuscatedString(new long[]{-3280591240696943955L, -7907286550412033879L}).toString()).replace(new ObfuscatedString(new long[]{3744541582457933226L, 1036704753348022847L}).toString(), new ObfuscatedString(new long[]{-1753250614080592603L, 5636467877954329732L}).toString()).replace(new ObfuscatedString(new long[]{1162631559459877598L, 1248829442409218294L}).toString(), new ObfuscatedString(new long[]{4453753509099909862L, 7920510802107878777L}).toString());
            String replace7 = obj.replace(new ObfuscatedString(new long[]{6353662189821881846L, -8641090233809797470L}).toString(), new ObfuscatedString(new long[]{-4820501708766260981L, -3415855752139895303L}).toString()).replace(new ObfuscatedString(new long[]{2253915674644453634L, 5905403871504082561L}).toString(), new ObfuscatedString(new long[]{-888514545890391063L, -6433737272478643143L}).toString()).replace(new ObfuscatedString(new long[]{5448073302189862330L, 4910414428063432534L}).toString(), new ObfuscatedString(new long[]{8698270813618343442L, -414923339473359772L}).toString()).replace(new ObfuscatedString(new long[]{2815166053329470661L, -3364446500090757890L}).toString(), new ObfuscatedString(new long[]{2957755427403608672L, -5249580930034764934L}).toString()).replace(new ObfuscatedString(new long[]{-4268509439051306294L, 6774675736223727363L}).toString(), new ObfuscatedString(new long[]{-3912694886367353252L, -4680993616799833469L}).toString()).replace(new ObfuscatedString(new long[]{4105565769869082166L, 6650873042139723507L}).toString(), new ObfuscatedString(new long[]{8474052776631850356L, 195292878828605966L}).toString()).replace(new ObfuscatedString(new long[]{-7087964181778633414L, -415695079435345801L}).toString(), new ObfuscatedString(new long[]{-5538975768622908203L, 471850528063101961L}).toString()).replace(new ObfuscatedString(new long[]{-2338588207277746883L, 4902754909896177506L}).toString(), new ObfuscatedString(new long[]{927981962490127114L, -5987784721067276896L}).toString()).replace(new ObfuscatedString(new long[]{-7890574386475636581L, -6052033996497795890L}).toString(), new ObfuscatedString(new long[]{6907838040930569219L, -3078463248347761072L}).toString()).replace(new ObfuscatedString(new long[]{-5743322271480994940L, 8011028181072957431L}).toString(), new ObfuscatedString(new long[]{1559688123961362379L, 6885217132108111321L}).toString()).replace(new ObfuscatedString(new long[]{-9082148633498769384L, 5898774756200368914L}).toString(), new ObfuscatedString(new long[]{2724583979467620781L, -1674527211335099188L}).toString()).replace(new ObfuscatedString(new long[]{2854446784538527687L, 5368552737873139694L}).toString(), new ObfuscatedString(new long[]{8049079885816985203L, -8853533053272779986L}).toString()).replace(new ObfuscatedString(new long[]{-5644155629740449792L, 8138360764320881640L}).toString(), new ObfuscatedString(new long[]{597207761143722424L, -7471167893573976713L}).toString()).replace(new ObfuscatedString(new long[]{6006624112725108883L, 5210547819056782394L}).toString(), new ObfuscatedString(new long[]{6516925108784923635L, -1364918855776699248L}).toString()).replace(new ObfuscatedString(new long[]{1510589157916411L, -5614381835487556599L}).toString(), new ObfuscatedString(new long[]{7342505479652257418L, 2034587842869054617L}).toString()).replace(new ObfuscatedString(new long[]{7121440623393906717L, -6756545995562936329L}).toString(), new ObfuscatedString(new long[]{5650203180963129656L, 3350753551357709266L}).toString()).replace(new ObfuscatedString(new long[]{2015258999060518537L, -7648815270355763189L}).toString(), new ObfuscatedString(new long[]{8679654079897387563L, 3702974272670723156L}).toString()).replace(new ObfuscatedString(new long[]{-2494523652085910320L, 6057188408518563319L}).toString(), new ObfuscatedString(new long[]{-1326886500220039433L, -4769087062954532291L}).toString()).replace(new ObfuscatedString(new long[]{-6715730025106686464L, -4687453187629394268L}).toString(), new ObfuscatedString(new long[]{-1514887986470684666L, 4913618434618259333L}).toString()).replace(new ObfuscatedString(new long[]{1645540010659535962L, -2419862473520058850L}).toString(), new ObfuscatedString(new long[]{4604206716992592319L, -9156146193807156323L}).toString()).replace(new ObfuscatedString(new long[]{4443731974909681844L, -4336716381972389603L}).toString(), new ObfuscatedString(new long[]{140506574124769109L, 4560953877696166711L}).toString()).replace(new ObfuscatedString(new long[]{439166873026438357L, 3240808682976314788L}).toString(), new ObfuscatedString(new long[]{-2132027917281621084L, 316975936272650891L}).toString()).replace(new ObfuscatedString(new long[]{-1244601701030906439L, 8007109713323027651L}).toString(), new ObfuscatedString(new long[]{-5740677164404079707L, -8451840792715742343L}).toString()).replace(new ObfuscatedString(new long[]{8761753356999432566L, -1920977324745437816L}).toString(), new ObfuscatedString(new long[]{-4786181287882657247L, -5832459908810920334L}).toString()).replace(new ObfuscatedString(new long[]{-6454006211045078449L, -7109518664746323552L}).toString(), new ObfuscatedString(new long[]{-527621155561249395L, 4412504405502321607L}).toString()).replace(new ObfuscatedString(new long[]{-4686201319071141214L, 4546918184809647077L}).toString(), new ObfuscatedString(new long[]{3964060488834582061L, -8737484419810660753L}).toString());
            String replace8 = obj2.replace(new ObfuscatedString(new long[]{-8687191023959691134L, -1542184293825283068L}).toString(), new ObfuscatedString(new long[]{-8396486369302279475L, 4372424403991128992L}).toString()).replace(new ObfuscatedString(new long[]{-2489195643392515332L, 252153777037781260L}).toString(), new ObfuscatedString(new long[]{1231227034526404399L, -1806913190074655807L}).toString()).replace(new ObfuscatedString(new long[]{2281972053126138975L, 605741042736021103L}).toString(), new ObfuscatedString(new long[]{-1122361054685618293L, -6733621406536448339L}).toString()).replace(new ObfuscatedString(new long[]{6023811511766813245L, -1897260188028343122L}).toString(), new ObfuscatedString(new long[]{-8316820380807227894L, 6865171147749684918L}).toString()).replace(new ObfuscatedString(new long[]{5446875932507370096L, 8251393893388198537L}).toString(), new ObfuscatedString(new long[]{6379600585975700271L, -1056132812048769226L}).toString()).replace(new ObfuscatedString(new long[]{-6345461488430621859L, 2411077327381979263L}).toString(), new ObfuscatedString(new long[]{7716995347729550654L, -6224370135144593726L}).toString()).replace(new ObfuscatedString(new long[]{25684686490653465L, 5668900651899134276L}).toString(), new ObfuscatedString(new long[]{5051061417487192489L, 1745293295727222192L}).toString()).replace(new ObfuscatedString(new long[]{-1346919637688670559L, 1695659799935449261L}).toString(), new ObfuscatedString(new long[]{-5524628380744107618L, 2074440723240379305L}).toString()).replace(new ObfuscatedString(new long[]{-7271462182073607539L, 3321523298166312058L}).toString(), new ObfuscatedString(new long[]{-5518595871832252830L, -8218548723343469954L}).toString()).replace(new ObfuscatedString(new long[]{-2035592718551354249L, 5409552654813763365L}).toString(), new ObfuscatedString(new long[]{5856156766430174411L, -5903065958341577176L}).toString()).replace(new ObfuscatedString(new long[]{2924955462619666310L, 6962303345555737426L}).toString(), new ObfuscatedString(new long[]{-1662945303591905164L, 1988053079254586820L}).toString()).replace(new ObfuscatedString(new long[]{-8103261171524815785L, -866770230124220104L}).toString(), new ObfuscatedString(new long[]{2290233829883883715L, 1896067481376814500L}).toString()).replace(new ObfuscatedString(new long[]{8694305711981331451L, 3731581997171215360L}).toString(), new ObfuscatedString(new long[]{-3761524548943847406L, -1016798870117590601L}).toString()).replace(new ObfuscatedString(new long[]{6802082291273418808L, 2421871598510341155L}).toString(), new ObfuscatedString(new long[]{839205540044889000L, 17603151395713232L}).toString()).replace(new ObfuscatedString(new long[]{-3944178709499721882L, 5974222578127118255L}).toString(), new ObfuscatedString(new long[]{-3903003387650457083L, 773779563846287634L}).toString()).replace(new ObfuscatedString(new long[]{2956469554774057137L, -249023565522322675L}).toString(), new ObfuscatedString(new long[]{4869562173488169040L, -2807384891590050262L}).toString()).replace(new ObfuscatedString(new long[]{2658919979153632975L, -6691709584960771079L}).toString(), new ObfuscatedString(new long[]{8083931849483419250L, -1448674420986565075L}).toString()).replace(new ObfuscatedString(new long[]{2300953824542978303L, 6860020227875921649L}).toString(), new ObfuscatedString(new long[]{4265907473781654461L, 6348943869115816873L}).toString()).replace(new ObfuscatedString(new long[]{6695604352935473003L, 2213523918511807956L}).toString(), new ObfuscatedString(new long[]{-506470095885589584L, -5082270779384455588L}).toString()).replace(new ObfuscatedString(new long[]{7856175403614936494L, 376954544412236917L}).toString(), new ObfuscatedString(new long[]{4918353683870401479L, 5499899744265023044L}).toString()).replace(new ObfuscatedString(new long[]{-4896478368579909657L, 3858152059225125325L}).toString(), new ObfuscatedString(new long[]{-2405126595890252212L, 310908407791880683L}).toString()).replace(new ObfuscatedString(new long[]{-7838677448786667004L, -4021084727051102375L}).toString(), new ObfuscatedString(new long[]{-7748841225289649061L, 5185184559761456798L}).toString()).replace(new ObfuscatedString(new long[]{-4191639906511360056L, 8571781979224435250L}).toString(), new ObfuscatedString(new long[]{-677695522681232557L, 5461557276910617639L}).toString()).replace(new ObfuscatedString(new long[]{-847363222778029589L, -71822050793767734L}).toString(), new ObfuscatedString(new long[]{-6637683567008226732L, 8683451334332364887L}).toString()).replace(new ObfuscatedString(new long[]{2220821743273748340L, -1088477209749468707L}).toString(), new ObfuscatedString(new long[]{-2768003663585656519L, -1282037003922232671L}).toString()).replace(new ObfuscatedString(new long[]{-7499719792616420298L, 7270262581888397931L}).toString(), new ObfuscatedString(new long[]{3699881112170679378L, 3404923082202947789L}).toString());
            String replace9 = obj3.replace(new ObfuscatedString(new long[]{-7310349930424649953L, 5387494788763515580L}).toString(), new ObfuscatedString(new long[]{-28030085608992358L, 6120722752132991711L}).toString()).replace(new ObfuscatedString(new long[]{-5299613124986789714L, -3009283090590830933L}).toString(), new ObfuscatedString(new long[]{-2003578398726447071L, -6809319660108342603L}).toString()).replace(new ObfuscatedString(new long[]{8162627944763718477L, -251479860515134171L}).toString(), new ObfuscatedString(new long[]{8302864757815568620L, 8408924680352049623L}).toString()).replace(new ObfuscatedString(new long[]{-1726060206451285158L, 665864876890274710L}).toString(), new ObfuscatedString(new long[]{-654847140541268740L, 2341809372364625286L}).toString()).replace(new ObfuscatedString(new long[]{-5912776302470139526L, 6500198589581647844L}).toString(), new ObfuscatedString(new long[]{-2692359585055806540L, 8080370336485499788L}).toString()).replace(new ObfuscatedString(new long[]{6796873062300719672L, 2687927585359014377L}).toString(), new ObfuscatedString(new long[]{-7309297666441251985L, -6070645433312810814L}).toString()).replace(new ObfuscatedString(new long[]{-3972215096098090791L, -3503459905243997572L}).toString(), new ObfuscatedString(new long[]{-3213608934029318885L, 643061023288251078L}).toString()).replace(new ObfuscatedString(new long[]{2317522895905210041L, 104879009154057257L}).toString(), new ObfuscatedString(new long[]{-8281188939231291267L, 66777640254976078L}).toString()).replace(new ObfuscatedString(new long[]{6528101675390124378L, -1707661311540738307L}).toString(), new ObfuscatedString(new long[]{-6515130109759973411L, 1975576951053644696L}).toString()).replace(new ObfuscatedString(new long[]{-4001788026242136258L, 5317916907724929616L}).toString(), new ObfuscatedString(new long[]{4212006503142159139L, 2863143443511541221L}).toString()).replace(new ObfuscatedString(new long[]{6308679324538862649L, 6975705931237059724L}).toString(), new ObfuscatedString(new long[]{-1195669666627977662L, -1559482950170317863L}).toString()).replace(new ObfuscatedString(new long[]{2524652951341066023L, 7068171373226523748L}).toString(), new ObfuscatedString(new long[]{-3090211878080089552L, 6795131045923666559L}).toString()).replace(new ObfuscatedString(new long[]{-2425972792042360722L, 1742910745005595219L}).toString(), new ObfuscatedString(new long[]{9200105764285027543L, 6770979820548111916L}).toString()).replace(new ObfuscatedString(new long[]{-9186518197723066987L, -6715428624916761828L}).toString(), new ObfuscatedString(new long[]{813625461386287071L, 7099247057009774718L}).toString()).replace(new ObfuscatedString(new long[]{-1518616963976986192L, 2664523920941420969L}).toString(), new ObfuscatedString(new long[]{-6878555165364927231L, 7795149984072181476L}).toString()).replace(new ObfuscatedString(new long[]{6132467432969797357L, 1530838599721818542L}).toString(), new ObfuscatedString(new long[]{-1137284483111434810L, 740111018770360776L}).toString()).replace(new ObfuscatedString(new long[]{-1657899007963160295L, 4598067936028875759L}).toString(), new ObfuscatedString(new long[]{-7989783540594942667L, -203042605691841017L}).toString()).replace(new ObfuscatedString(new long[]{8707290562753756698L, -5691996537465081463L}).toString(), new ObfuscatedString(new long[]{4760578428010671236L, -3575902862632035929L}).toString()).replace(new ObfuscatedString(new long[]{3526660476700167767L, -1347526547354291524L}).toString(), new ObfuscatedString(new long[]{8878502293398742837L, 3003221498025568682L}).toString()).replace(new ObfuscatedString(new long[]{474552259957331196L, 8259033715794750565L}).toString(), new ObfuscatedString(new long[]{6775284821446856915L, 3478102517956003867L}).toString()).replace(new ObfuscatedString(new long[]{7178516110764012806L, 2696469284290046374L}).toString(), new ObfuscatedString(new long[]{4611502828187964094L, -3372661464277518037L}).toString()).replace(new ObfuscatedString(new long[]{-2893614902680222045L, -8505018467314669398L}).toString(), new ObfuscatedString(new long[]{2941682901865514263L, 35069998165179782L}).toString()).replace(new ObfuscatedString(new long[]{-6622788447538258510L, 2013585613482696305L}).toString(), new ObfuscatedString(new long[]{7319114172501648082L, -8352893453867784982L}).toString()).replace(new ObfuscatedString(new long[]{7624319594662388046L, -8186325924428138276L}).toString(), new ObfuscatedString(new long[]{-1134136272674113622L, 2238939126985049960L}).toString()).replace(new ObfuscatedString(new long[]{637709107701249808L, -966496026756295749L}).toString(), new ObfuscatedString(new long[]{-5661465784562856176L, 8096429277963223359L}).toString()).replace(new ObfuscatedString(new long[]{4769534860481349173L, 7385375312858090852L}).toString(), new ObfuscatedString(new long[]{5512696236420965331L, 6845609478906544074L}).toString());
            String replace10 = obj4.replace(new ObfuscatedString(new long[]{-6698962212220667425L, 1702193786405218539L}).toString(), new ObfuscatedString(new long[]{228573363458749165L, -4630523023747328116L}).toString()).replace(new ObfuscatedString(new long[]{-6611898888069096165L, -7095157732179099278L}).toString(), new ObfuscatedString(new long[]{-7881604557999956852L, -70024287795865544L}).toString()).replace(new ObfuscatedString(new long[]{4622104765492477037L, 5263054278390945256L}).toString(), new ObfuscatedString(new long[]{4621915817206575354L, -1353946685557893097L}).toString()).replace(new ObfuscatedString(new long[]{-7939396488189856055L, -5648218814021595774L}).toString(), new ObfuscatedString(new long[]{2477769477855392080L, 2828565214895429977L}).toString()).replace(new ObfuscatedString(new long[]{-6705364962920501165L, -4071661287407224813L}).toString(), new ObfuscatedString(new long[]{-4558385147849845937L, -4448197390366299578L}).toString()).replace(new ObfuscatedString(new long[]{-5585605937854501381L, 6348680854150849588L}).toString(), new ObfuscatedString(new long[]{5767109089665657890L, -42506035290745531L}).toString()).replace(new ObfuscatedString(new long[]{1151894418093750064L, 7175150661600783292L}).toString(), new ObfuscatedString(new long[]{-624415683116590665L, 7154361841961354739L}).toString()).replace(new ObfuscatedString(new long[]{-3050175040276905308L, 3310661612365989501L}).toString(), new ObfuscatedString(new long[]{3282071214787620093L, -7367499030336537246L}).toString()).replace(new ObfuscatedString(new long[]{1607475375010586816L, 1538279104094525995L}).toString(), new ObfuscatedString(new long[]{-5476333269504146433L, -3118408577558625895L}).toString()).replace(new ObfuscatedString(new long[]{-8182862556179930520L, 8776588347401154855L}).toString(), new ObfuscatedString(new long[]{7953191477885618500L, 8728430134252782207L}).toString()).replace(new ObfuscatedString(new long[]{981633720899860235L, 4780400580842322343L}).toString(), new ObfuscatedString(new long[]{-5405482072077147703L, -3308426536021646267L}).toString()).replace(new ObfuscatedString(new long[]{-7986108249973702774L, -5640146028142582892L}).toString(), new ObfuscatedString(new long[]{4437926481475159682L, 5421182261184692334L}).toString()).replace(new ObfuscatedString(new long[]{1090003137034978784L, -1904790779821979471L}).toString(), new ObfuscatedString(new long[]{3633752082080642988L, -4753709120771047801L}).toString()).replace(new ObfuscatedString(new long[]{6776154657232730610L, 887396982120235804L}).toString(), new ObfuscatedString(new long[]{5368283575130897935L, 146063391714085589L}).toString()).replace(new ObfuscatedString(new long[]{-4558318562539444031L, -6710746062759457146L}).toString(), new ObfuscatedString(new long[]{-5631469064360835876L, 2103211949728046706L}).toString()).replace(new ObfuscatedString(new long[]{9085191780127064834L, -6516047329592675774L}).toString(), new ObfuscatedString(new long[]{1329315689211587843L, -2584794819240860015L}).toString()).replace(new ObfuscatedString(new long[]{3664996449365573235L, -4444149086905353176L}).toString(), new ObfuscatedString(new long[]{-4874117419459603475L, 944756679604193418L}).toString()).replace(new ObfuscatedString(new long[]{2139087095391837675L, 6584734130620622456L}).toString(), new ObfuscatedString(new long[]{-584385740178144635L, 8054778318298818430L}).toString()).replace(new ObfuscatedString(new long[]{8802276164438834110L, 1614482717214913164L}).toString(), new ObfuscatedString(new long[]{4691354693839622518L, 958786850092511100L}).toString()).replace(new ObfuscatedString(new long[]{-8425459068328805842L, 8828048136682280768L}).toString(), new ObfuscatedString(new long[]{5050255752414426672L, 9078823683368466010L}).toString()).replace(new ObfuscatedString(new long[]{-2283555220060685257L, 7696332474363457062L}).toString(), new ObfuscatedString(new long[]{8626885777346024842L, 5097619555032511667L}).toString()).replace(new ObfuscatedString(new long[]{5942476539561033930L, 8303779107666885600L}).toString(), new ObfuscatedString(new long[]{3473331467080569047L, 5621190174256476053L}).toString()).replace(new ObfuscatedString(new long[]{7268231163374866784L, -8034891434187076294L}).toString(), new ObfuscatedString(new long[]{8109105047916677604L, 2448151088865335893L}).toString()).replace(new ObfuscatedString(new long[]{2029982188681619400L, 2208852503790038145L}).toString(), new ObfuscatedString(new long[]{789053013984299023L, 4420887342790956273L}).toString()).replace(new ObfuscatedString(new long[]{-7744408409076833126L, 3521849551482213477L}).toString(), new ObfuscatedString(new long[]{-2601419731368315977L, 5727694900354337381L}).toString()).replace(new ObfuscatedString(new long[]{9164508662580697692L, 1734421908886146816L}).toString(), new ObfuscatedString(new long[]{3167875095426272212L, 3136765360576571687L}).toString());
            String replace11 = obj5.replace(new ObfuscatedString(new long[]{8679874598613023333L, 1441846901849845033L}).toString(), new ObfuscatedString(new long[]{-6566239347069529640L, 3790830031540485929L}).toString()).replace(new ObfuscatedString(new long[]{7524194018063351137L, -3439131926783797831L}).toString(), new ObfuscatedString(new long[]{-1968104534346144962L, 2982894881822521094L}).toString()).replace(new ObfuscatedString(new long[]{-7406504178214488377L, -3416043947964898799L}).toString(), new ObfuscatedString(new long[]{1505903257216382766L, 5678583744489644973L}).toString()).replace(new ObfuscatedString(new long[]{2037664181406051169L, -6031806632449565755L}).toString(), new ObfuscatedString(new long[]{1443587526969503137L, -1058611735787201574L}).toString()).replace(new ObfuscatedString(new long[]{7445935824927313788L, 4115592104892914591L}).toString(), new ObfuscatedString(new long[]{-3611774170598421473L, 1153117405591776748L}).toString()).replace(new ObfuscatedString(new long[]{-2427139901116150283L, 6899913285694466746L}).toString(), new ObfuscatedString(new long[]{-7484403351194681868L, -2397376442419625217L}).toString()).replace(new ObfuscatedString(new long[]{-4881769636000951862L, -56400578979386885L}).toString(), new ObfuscatedString(new long[]{-457037307517531955L, 6803816169667010700L}).toString()).replace(new ObfuscatedString(new long[]{-454854097279271206L, -1720864276131365522L}).toString(), new ObfuscatedString(new long[]{-5000464828306423519L, 207090066644804442L}).toString()).replace(new ObfuscatedString(new long[]{4088759770916278965L, 2957131154229950154L}).toString(), new ObfuscatedString(new long[]{-2078387674101621244L, -8698561122114220845L}).toString()).replace(new ObfuscatedString(new long[]{7556024064057880038L, 7364842011600854401L}).toString(), new ObfuscatedString(new long[]{-124915115097721875L, 1035514616207764987L}).toString()).replace(new ObfuscatedString(new long[]{2673973192047953901L, 5580119404572252990L}).toString(), new ObfuscatedString(new long[]{-5988048876392955043L, 1646836091018964859L}).toString()).replace(new ObfuscatedString(new long[]{6411190040250258980L, -4190722598673865497L}).toString(), new ObfuscatedString(new long[]{-5471322407668055790L, -8171433379692562123L}).toString()).replace(new ObfuscatedString(new long[]{-2602925185664997462L, -7467355673778275165L}).toString(), new ObfuscatedString(new long[]{-910971870688798499L, -608624162806589533L}).toString()).replace(new ObfuscatedString(new long[]{2451574679294911360L, 793416807998359817L}).toString(), new ObfuscatedString(new long[]{-4558709690225846969L, 7095992116497080057L}).toString()).replace(new ObfuscatedString(new long[]{-6159590621139300780L, -7845526872710970544L}).toString(), new ObfuscatedString(new long[]{-3705800773096894513L, -7679788844153220361L}).toString()).replace(new ObfuscatedString(new long[]{-3295886642703958047L, 3103624791132969617L}).toString(), new ObfuscatedString(new long[]{5338207281048678131L, 4061061622539106098L}).toString()).replace(new ObfuscatedString(new long[]{-7901245064818176657L, 3735482709699376669L}).toString(), new ObfuscatedString(new long[]{-6908767390137893647L, -704387124289195504L}).toString()).replace(new ObfuscatedString(new long[]{-7616245744331863191L, 3917040944802095042L}).toString(), new ObfuscatedString(new long[]{-2242676913848798870L, 9050877279398411361L}).toString()).replace(new ObfuscatedString(new long[]{-4330179027096511387L, 3437918767389616783L}).toString(), new ObfuscatedString(new long[]{-1463401594211107043L, -7785864672183902405L}).toString()).replace(new ObfuscatedString(new long[]{2966908286487935956L, 865571053631779453L}).toString(), new ObfuscatedString(new long[]{-3878394642964716917L, -7698617631682693546L}).toString()).replace(new ObfuscatedString(new long[]{-5171432810655193891L, -7384166647322409674L}).toString(), new ObfuscatedString(new long[]{-2019689541864308484L, -7215760267700964409L}).toString()).replace(new ObfuscatedString(new long[]{6951989556586966633L, 8377074072715577284L}).toString(), new ObfuscatedString(new long[]{4095597514675693564L, 4622365501382022382L}).toString()).replace(new ObfuscatedString(new long[]{-6948804936103800058L, -7131830733606458982L}).toString(), new ObfuscatedString(new long[]{5381661259161905486L, -2150634497300023111L}).toString()).replace(new ObfuscatedString(new long[]{1013101911479426848L, -485932612292273005L}).toString(), new ObfuscatedString(new long[]{3351634455649560739L, 2366556981888018109L}).toString()).replace(new ObfuscatedString(new long[]{-586488994182446996L, -3455495737257361303L}).toString(), new ObfuscatedString(new long[]{-5832845873596090478L, -371923738559230211L}).toString()).replace(new ObfuscatedString(new long[]{-5321957214937588480L, -7107878509103024446L}).toString(), new ObfuscatedString(new long[]{-6768737921743068676L, -3679460427437535250L}).toString());
            boolean z = this.serverType.getSelectedItemPosition() == 0 && this.ckMultiCert.isChecked();
            if (!replace7.isEmpty() && !replace8.isEmpty()) {
                obfuscatedString = VPNUtil.encrypt(replace7);
                obfuscatedString2 = VPNUtil.encrypt(replace8);
                jSONObject.put(new ObfuscatedString(new long[]{6319409245635613808L, -8643196695874028213L, 5305216598081166139L}).toString(), this.serverType.getSelectedItemPosition());
                jSONObject.put(new ObfuscatedString(new long[]{5322034788614482940L, 955158213238347038L}).toString(), this.sName.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{7740462403753644457L, 8495730206057249547L, 526745067182575570L}).toString(), VPNUtil.encrypt(replace9));
                jSONObject.put(new ObfuscatedString(new long[]{-5553520061514330306L, -8549050993120549603L, -2132624553625363860L, 8853149329661326314L}).toString(), VPNUtil.encrypt(replace10));
                jSONObject.put(new ObfuscatedString(new long[]{7773035401386566458L, 7053799554216933986L, 3503826169843334158L}).toString(), VPNUtil.encrypt(replace11));
                jSONObject.put(new ObfuscatedString(new long[]{-4818080446239544013L, 5365715142844568225L}).toString(), CategoryType());
                jSONObject.put(new ObfuscatedString(new long[]{-7673211005338957196L, -1313025550278763617L, -278035162743732441L}).toString(), this.etSSLPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{6226383429902070254L, -8769887828089431379L, -652747578871798662L}).toString(), obfuscatedString);
                jSONObject.put(new ObfuscatedString(new long[]{8562361440496471906L, -3462339588949886593L, -1306194669873776572L}).toString(), obfuscatedString2);
                jSONObject.put(new ObfuscatedString(new long[]{2790275580332434852L, 3870751124465121787L, 7842315838175050530L}).toString(), z);
                jSONObject.put(new ObfuscatedString(new long[]{5070211082313104257L, 8867005086575938155L, 7321390758843290524L}).toString(), this.ckUseLogin.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-513801340203655061L, -4908839495080322854L}).toString(), this.fakeV2ray.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{-2621497080737603684L, 5343979413435468669L, -659707933838060300L}).toString(), this.wire_full_conf.isChecked());
                jSONObject.put(new ObfuscatedString(new long[]{4809876341010277904L, -6292161204031596879L, 5099512951467311587L}).toString(), this.etTcpPort.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1101936543470285582L, -4639798842677713610L}).toString(), !z ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-4448593688341507975L}).toString());
                jSONObject.put(new ObfuscatedString(new long[]{-2496323382670388273L, -5928286551599405192L}).toString(), this.primary.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-1673603862259589809L, 1730407306841724714L}).toString(), this.secondary.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{-3872506832164146449L, -5737332165569204890L}).toString(), this.openvpn_udp_port.getText().toString());
                jSONObject.put(new ObfuscatedString(new long[]{3804046029140666379L, 1697145054832686701L, -255062804783558311L}).toString(), VPNUtil.encrypt(replace));
                jSONObject.put(new ObfuscatedString(new long[]{6908252191269359225L, 1743002981637816588L, 7224777171599802165L}).toString(), VPNUtil.encrypt(replace2));
                jSONObject.put(new ObfuscatedString(new long[]{-1890011220777646265L, 2871755658218199139L, 6096163878543896303L}).toString(), VPNUtil.encrypt(replace3));
                jSONObject.put(new ObfuscatedString(new long[]{-4916609554138943000L, -5818833915345617164L, 7624002706167001080L}).toString(), VPNUtil.encrypt(replace4));
                jSONObject.put(new ObfuscatedString(new long[]{6350255115096841L, -2822887964782603147L, 7572767675454839120L}).toString(), VPNUtil.encrypt(replace5));
                jSONObject.put(new ObfuscatedString(new long[]{-6385716670675440318L, -7000935518699729604L, -729081615938836627L}).toString(), VPNUtil.encrypt(replace6));
                this.prefs.set_string(new ObfuscatedString(new long[]{5373775972670305521L, -1902347973671474922L, 8927123813983337506L}).toString(), this.sName.getText().toString());
                this.prefs.set_string(new ObfuscatedString(new long[]{-6070388600052092820L, 8138085429331915680L, 1119897153831579731L}).toString(), c_12.Parser.parse(jSONObject.toString()));
                this.prefs.set_string(new ObfuscatedString(new long[]{912479474943041279L, -133502947161830638L, 8103850478772807935L}).toString(), this.sName.getText().toString());
                loadServers();
                this.f5775config.setServerSelectedPosition(1);
                this.f5775config.setServerSelectedName(this.listProfiles.get(1));
                this.prefs.get_string(new ObfuscatedString(new long[]{-3035696249556118100L, 4325237582528866303L, 4878543535929651278L}).toString());
                setSelectedServer();
                this.prefs.set_string(new ObfuscatedString(new long[]{-1073531527816631636L, 4852261015502077037L, -4004617767435469226L}).toString(), new ObfuscatedString(new long[]{5496013304691548691L, 8507959990456662702L}).toString());
                setResult(-1, true);
                Intent intent = new Intent(this, (Class<?>) ActivityUi.class);
                overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
                startActivity(intent);
                Toast.makeText(this, this.sName.getText().toString() + new ObfuscatedString(new long[]{9036334476112663910L, -2930219279625851146L}).toString(), 0).show();
                this.a.dismiss();
            }
            obfuscatedString = new ObfuscatedString(new long[]{-753322985688112408L}).toString();
            obfuscatedString2 = new ObfuscatedString(new long[]{-3461655121973801636L}).toString();
            jSONObject.put(new ObfuscatedString(new long[]{6319409245635613808L, -8643196695874028213L, 5305216598081166139L}).toString(), this.serverType.getSelectedItemPosition());
            jSONObject.put(new ObfuscatedString(new long[]{5322034788614482940L, 955158213238347038L}).toString(), this.sName.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{7740462403753644457L, 8495730206057249547L, 526745067182575570L}).toString(), VPNUtil.encrypt(replace9));
            jSONObject.put(new ObfuscatedString(new long[]{-5553520061514330306L, -8549050993120549603L, -2132624553625363860L, 8853149329661326314L}).toString(), VPNUtil.encrypt(replace10));
            jSONObject.put(new ObfuscatedString(new long[]{7773035401386566458L, 7053799554216933986L, 3503826169843334158L}).toString(), VPNUtil.encrypt(replace11));
            jSONObject.put(new ObfuscatedString(new long[]{-4818080446239544013L, 5365715142844568225L}).toString(), CategoryType());
            jSONObject.put(new ObfuscatedString(new long[]{-7673211005338957196L, -1313025550278763617L, -278035162743732441L}).toString(), this.etSSLPort.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{6226383429902070254L, -8769887828089431379L, -652747578871798662L}).toString(), obfuscatedString);
            jSONObject.put(new ObfuscatedString(new long[]{8562361440496471906L, -3462339588949886593L, -1306194669873776572L}).toString(), obfuscatedString2);
            jSONObject.put(new ObfuscatedString(new long[]{2790275580332434852L, 3870751124465121787L, 7842315838175050530L}).toString(), z);
            jSONObject.put(new ObfuscatedString(new long[]{5070211082313104257L, 8867005086575938155L, 7321390758843290524L}).toString(), this.ckUseLogin.isChecked());
            jSONObject.put(new ObfuscatedString(new long[]{-513801340203655061L, -4908839495080322854L}).toString(), this.fakeV2ray.isChecked());
            jSONObject.put(new ObfuscatedString(new long[]{-2621497080737603684L, 5343979413435468669L, -659707933838060300L}).toString(), this.wire_full_conf.isChecked());
            jSONObject.put(new ObfuscatedString(new long[]{4809876341010277904L, -6292161204031596879L, 5099512951467311587L}).toString(), this.etTcpPort.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{-1101936543470285582L, -4639798842677713610L}).toString(), !z ? this.etCertificate.getText().toString() : new ObfuscatedString(new long[]{-4448593688341507975L}).toString());
            jSONObject.put(new ObfuscatedString(new long[]{-2496323382670388273L, -5928286551599405192L}).toString(), this.primary.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{-1673603862259589809L, 1730407306841724714L}).toString(), this.secondary.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{-3872506832164146449L, -5737332165569204890L}).toString(), this.openvpn_udp_port.getText().toString());
            jSONObject.put(new ObfuscatedString(new long[]{3804046029140666379L, 1697145054832686701L, -255062804783558311L}).toString(), VPNUtil.encrypt(replace));
            jSONObject.put(new ObfuscatedString(new long[]{6908252191269359225L, 1743002981637816588L, 7224777171599802165L}).toString(), VPNUtil.encrypt(replace2));
            jSONObject.put(new ObfuscatedString(new long[]{-1890011220777646265L, 2871755658218199139L, 6096163878543896303L}).toString(), VPNUtil.encrypt(replace3));
            jSONObject.put(new ObfuscatedString(new long[]{-4916609554138943000L, -5818833915345617164L, 7624002706167001080L}).toString(), VPNUtil.encrypt(replace4));
            jSONObject.put(new ObfuscatedString(new long[]{6350255115096841L, -2822887964782603147L, 7572767675454839120L}).toString(), VPNUtil.encrypt(replace5));
            jSONObject.put(new ObfuscatedString(new long[]{-6385716670675440318L, -7000935518699729604L, -729081615938836627L}).toString(), VPNUtil.encrypt(replace6));
            this.prefs.set_string(new ObfuscatedString(new long[]{5373775972670305521L, -1902347973671474922L, 8927123813983337506L}).toString(), this.sName.getText().toString());
            this.prefs.set_string(new ObfuscatedString(new long[]{-6070388600052092820L, 8138085429331915680L, 1119897153831579731L}).toString(), c_12.Parser.parse(jSONObject.toString()));
            this.prefs.set_string(new ObfuscatedString(new long[]{912479474943041279L, -133502947161830638L, 8103850478772807935L}).toString(), this.sName.getText().toString());
            loadServers();
            this.f5775config.setServerSelectedPosition(1);
            this.f5775config.setServerSelectedName(this.listProfiles.get(1));
            this.prefs.get_string(new ObfuscatedString(new long[]{-3035696249556118100L, 4325237582528866303L, 4878543535929651278L}).toString());
            setSelectedServer();
            this.prefs.set_string(new ObfuscatedString(new long[]{-1073531527816631636L, 4852261015502077037L, -4004617767435469226L}).toString(), new ObfuscatedString(new long[]{5496013304691548691L, 8507959990456662702L}).toString());
            setResult(-1, true);
            Intent intent2 = new Intent(this, (Class<?>) ActivityUi.class);
            overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
            startActivity(intent2);
            Toast.makeText(this, this.sName.getText().toString() + new ObfuscatedString(new long[]{9036334476112663910L, -2930219279625851146L}).toString(), 0).show();
            this.a.dismiss();
        } catch (Exception e) {
            Toast.makeText(this, e.getMessage(), 0).show();
        }
    }

    public /* synthetic */ void lambda$dialogAddServer$8(View view) {
        this.a.dismiss();
    }

    public /* synthetic */ void lambda$onCreate$0(int i) {
        this.server_listview.smoothScrollToPosition(i);
    }

    public /* synthetic */ void lambda$onCreate$1(AdapterView adapterView, View view, int i, long j) {
        this.f5775config.setServerSelectedName(this.listProfiles.get(i));
        this.f5775config.setServerSelectedPosition(i);
        this.prefs.get_string(new ObfuscatedString(new long[]{-6479364731034344557L, -7793537530196083557L, 3995688136942109344L}).toString());
        setSelectedServer();
        setResult(-1, true);
        Intent intent = new Intent(this, (Class<?>) ActivityUi.class);
        overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
        startActivity(intent);
    }

    public /* synthetic */ void lambda$onPrepareOptionsMenu$10() {
        this.f5775config.setServerSelectedPosition(0);
        loadServers();
        this.f5775config.setServerSelectedName(this.listProfiles.get(0));
        this.prefs.get_string(new ObfuscatedString(new long[]{-1050992349634451892L, 4110906805092576260L, -7406367208320398883L}).toString());
        setSelectedServer();
        setResult(-1, true);
        Intent intent = new Intent(this, (Class<?>) ActivityUi.class);
        overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
        startActivity(intent);
        Toast.makeText(this, new ObfuscatedString(new long[]{80351221815987795L, 3689560946840250982L, -1979088650954014702L, 4314812853209197599L}).toString(), 0).show();
    }

    public /* synthetic */ boolean lambda$onPrepareOptionsMenu$11(MenuItem menuItem) {
        this.prefs.set_string(new ObfuscatedString(new long[]{6530126435523369068L, -2937485701477566551L, 3165463656734700033L}).toString(), new ObfuscatedString(new long[]{669627990113598944L}).toString());
        this.prefs.set_string(new ObfuscatedString(new long[]{368313413284048885L, 5841709369313212797L, -8020463623830531831L}).toString(), new ObfuscatedString(new long[]{880641779029391758L}).toString());
        this.mHandler.postDelayed(new RunnableC1044x8c43c726(this, 7), 1000L);
        return true;
    }

    public /* synthetic */ boolean lambda$onPrepareOptionsMenu$12(MenuItem menuItem) {
        if (!TkLogStatus.isTunnelActive()) {
            showLINK();
        } else {
            Toast.makeText(getApplicationContext(), new ObfuscatedString(new long[]{-8437821593454456407L, -7432089541902251588L, 1398779104943321821L, 6300791518859670537L}).toString(), 1).show();
        }
        return true;
    }

    public /* synthetic */ boolean lambda$onPrepareOptionsMenu$9(MenuItem menuItem) {
        dialogAddServer();
        reload();
        return true;
    }

    public /* synthetic */ void lambda$showLINK$13(DialogInterface dialogInterface, int i) {
        this.editor.putString(new ObfuscatedString(new long[]{-6656214285668362479L, -7344378039391516649L, -7566481231229883451L}).toString(), this.prefs.get_string(new ObfuscatedString(new long[]{-3598955795422338325L, 560811482657181116L, -3109517043515297978L}).toString()));
        this.editor.apply();
        this.f5775config.setCustomS(true);
        clipImport1();
        dialogInterface.dismiss();
    }

    private void loadAppColors(int i) {
        setStatusBarColor(i);
        setNavBarColor(i);
        findViewById(R.id.toolbar).setBackgroundColor(i);
    }

    private void processImportData(String str) {
        try {
            String optString = new JSONObject(str).optString(new ObfuscatedString(new long[]{6341862667485361110L, -2850340868003653769L}).toString());
            if (!optString.isEmpty()) {
                this.prefs.set_string(new ObfuscatedString(new long[]{-2301519032953173868L, -3477972441600682910L, -2948447243702300157L}).toString(), c_12.Parser.parse(optString));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        this.f5775config.setServerSelectedPosition(1);
        this.f5775config.setServerSelectedName(new ObfuscatedString(new long[]{-924332446399019270L, -1260286347957089270L, -7595318343942360994L}).toString());
        loadServers();
        this.f5775config.setServerSelectedName(this.listProfiles.get(1));
        this.f5775config.setServerSelectedPosition(1);
        this.prefs.get_string(new ObfuscatedString(new long[]{-1538456164766056970L, 6596982941897273695L, -1048011923511526686L}).toString());
        setSelectedServer();
        setResult(-1, true);
        Intent intent = new Intent(this, (Class<?>) ActivityUi.class);
        overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
        startActivity(intent);
        showToast(getString(R.string.message_import_successful));
    }

    private void reload() {
        ListView listView = (ListView) findViewById(R.id.server_list);
        listView.setAdapter((ListAdapter) this.server_adapter);
        int serverSelectedPosition = this.f5775config.getServerSelectedPosition();
        listView.setSelection(serverSelectedPosition);
        this.mHandler.postDelayed(new RunnableC1000x19d68b8b(listView, serverSelectedPosition, 2), 500L);
    }

    public void setResult(int i, boolean z) {
        Intent intent = new Intent();
        intent.putExtra(new ObfuscatedString(new long[]{4677754398745814715L, 3306547544593537492L, -3087135160583792983L}).toString(), z);
        setResult(i, intent);
        finish();
    }

    private void setSelectedNetwork(boolean z) {
        ImageView imageView = (ImageView) findViewById(R.id.tweak_icon);
        TextView textView = (TextView) findViewById(R.id.tweak_name);
        TextView textView2 = (TextView) findViewById(R.id.tvNetworkgInfo);
        try {
            JSONObject networkSelectedJson = getNetworkSelectedJson();
            String string = networkSelectedJson.getString(new ObfuscatedString(new long[]{5325823840537876953L, -7580437435673474794L}).toString());
            String string2 = networkSelectedJson.getString(new ObfuscatedString(new long[]{1448988871196633505L, 5689450650490429804L}).toString());
            textView.setText(string);
            textView2.setText(string2);
            imageView.setImageResource(this.networkAdapter.getIcon(string.toLowerCase()));
            int i = getNetworkSelectedJson().getInt(new ObfuscatedString(new long[]{5929502581529109365L, 3143867301299875263L, 7545132999284828042L}).toString());
            this.selectedServerType = ServerType.OPENVPN;
            if (i == 0) {
                if (this.f5775config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_normal);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_direct);
                }
            } else if (i == 1) {
                if (this.f5775config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_payload);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_payload);
                }
            } else if (i == 2) {
                if (this.f5775config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_proxy);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_proxy);
                }
            } else if (i == 3) {
                if (this.f5775config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_ssl_tls);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_tls);
                }
            } else if (i == 4) {
                if (this.f5775config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv_payload);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_payload);
                }
            } else if (i == 5) {
                if (this.f5775config.getOVPN().booleanValue()) {
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_ssl_proxy);
                } else {
                    this.selectedServerType = ServerType.SSH;
                    ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.ssh_ssl_proxy);
                }
            } else if (i == 6) {
                ((TextView) findViewById(R.id.tunnel_type)).setText(R.string.tcpv4_hysteria);
                this.selectedServerType = ServerType.HYSTERIA_UDP;
            } else if (i == 7) {
                if (this.f5775config.getOVPN().booleanValue()) {
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
                this.f5775config.setServerSelectedPosition(0);
                this.f5775config.setServerSelectedName(new ObfuscatedString(new long[]{7307533061475817204L, 3857126562853392441L}).toString());
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
            String string = serverSelectedJson.getString(new ObfuscatedString(new long[]{-4962984549599002659L, -4200813978123082260L}).toString());
            textView2.setText(serverSelectedJson.getString(new ObfuscatedString(new long[]{5681627981519617641L, 894920817885494606L}).toString()));
            textView.setText(string);
            Drawable flag = this.server_adapter.getFlag(string);
            if (flag != null) {
                imageView.setImageDrawable(flag);
            } else {
                imageView.setImageResource(R.drawable.ic_server);
            }
            String lowerCase = string.toLowerCase();
            if (lowerCase.contains(new ObfuscatedString(new long[]{4612182602535536693L, 88479153142157696L, 6926375405140546383L}).toString())) {
                textView3.setText(getString(R.string.best_performance));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{3388721472825994818L, 6494952032925832348L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{6326136008321876915L, -6887136007874151171L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-1043700498092474222L, 6353004714572983649L, 5729213534850937543L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-3493871726862161820L, -4225437092326458914L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{8213188061683509112L, -832939787943599195L, 1537817386816865950L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-9054846988865569928L, 6965257618918035064L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-4614938251488483785L, 3007197083345415715L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{1401445742702942769L, -7914288850449630507L}).toString())) {
                textView3.setText(getString(R.string.southern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorWarning));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{6468128268004047331L, -4651593778990121936L}).toString())) {
                textView3.setText(getString(R.string.china));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorAccent));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{6787198453795551377L, 3149233391414359912L, 961355769103169085L}).toString())) {
                textView3.setText(getString(R.string.china));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorAccent));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{8098607686457236331L, -6219396637793718058L}).toString())) {
                textView3.setText(getString(R.string.china));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorAccent));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-7797135928578166617L, -3584200277787540559L, 3655302952353094953L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-2539787773931683700L, 7492494799226481793L, 4452681790865335107L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-1612779623325380054L, -1768813378264689517L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{6201470750862488576L, 8590126961060661870L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{6084324262460962191L, -8521701824704865412L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-2152018108589605138L, -7707710973387718446L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{8414214973331095768L, 3819931851979560438L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{3172259492922024884L, 3930855100490322281L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-5493766721934088492L, -508527393472089520L, -8841117386100527259L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{2817988978266148991L, 4710058963422109794L}).toString())) {
                textView3.setText(getString(R.string.south_eastern_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.connect_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-9141509369400299565L, 5139942238523290723L}).toString())) {
                textView3.setText(getString(R.string.north_america));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.purple_200));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-1849014749795679916L, -6036918492666252671L, 7143392886562522701L}).toString())) {
                textView3.setText(getString(R.string.america));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.purple_200));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-619575230329876043L, 6395471882402952542L}).toString())) {
                textView3.setText(getString(R.string.america));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-1232547502682329357L, 7365787202133860106L}).toString())) {
                textView3.setText(getString(R.string.europe));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-3346793261885287046L, 5089134182962000609L, -3707207420025097237L}).toString())) {
                textView3.setText(getString(R.string.europe));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{8257512161093278486L, -811566614297472143L, -3942275563512488143L}).toString())) {
                textView3.setText(getString(R.string.europe));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.accent_color));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-4182864635395167762L, 4855081988095071093L}).toString())) {
                textView3.setText(getString(R.string.saudi_arabia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-8307030043887470870L, -4543861403689958154L, 6212066890168444999L, -52380222355921656L}).toString())) {
                textView3.setText(getString(R.string.united_arab_emirates));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{-3982699673488868392L, 6427129236970006041L}).toString())) {
                textView3.setText(getString(R.string.saudi_arabia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{1058519540500338070L, 5703196243796908661L}).toString())) {
                textView3.setText(getString(R.string.saudi_arabia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
                return;
            }
            if (lowerCase.contains(new ObfuscatedString(new long[]{502272981570345201L, 5329357507566932248L}).toString())) {
                textView3.setText(getString(R.string.south_korea_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
            } else if (lowerCase.contains(new ObfuscatedString(new long[]{6946026618600203350L, 6996993243577100359L}).toString())) {
                textView3.setText(getString(R.string.east_asia));
                textView3.setTextColor(ContextCompat.getColor(this, R.color.colorInfo));
            } else if (lowerCase.contains(new ObfuscatedString(new long[]{-3350245350761411470L, -2632722134539219583L}).toString())) {
                textView3.setText(R.string.custom);
            } else {
                textView3.setText(R.string.app_name);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showLINK() {
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        create.setIcon(R.drawable.ic_launcher);
        create.setTitle(R.string.app_name);
        create.setMessage(new ObfuscatedString(new long[]{-421038553898945550L, 827857578534127280L, -3731240302423419422L, -890115091637863092L, 8021076682765007790L, -6172478746411763076L, -4454821328389423628L, -8462738731555922373L, 4330803679895086236L}).toString());
        create.setButton(-1, new ObfuscatedString(new long[]{-2239897477624531133L, -1260852960247948705L}).toString(), new DialogInterfaceOnClickListenerC0519xdc2f50a1(this, 5));
        create.setButton(-2, new ObfuscatedString(new long[]{6650562936016033656L, 5948870127171831252L}).toString(), new DialogInterfaceOnClickListenerC0372xe698d(7));
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
            String str = this.prefs.get_string(new ObfuscatedString(new long[]{-7051873338127622089L, 7990028812302412863L, 6856087829114195808L}).toString());
            if (!TextUtils.isEmpty(str)) {
                this.listNetwork.add(0, new JSONObject(c_12.Parser.d_01(str)));
            }
            String str2 = this.prefs.get_string(new ObfuscatedString(new long[]{-4507546458690275972L, -5689787670665983918L, -5872365776393256796L}).toString());
            if (!TextUtils.isEmpty(str2)) {
                this.listNetwork.add(0, new JSONObject(c_12.Parser.d_01(str2)));
            }
            JSONArray jSONArray = new JSONArray();
            Iterator<JSONObject> it = this.listNetwork.iterator();
            while (it.hasNext()) {
                jSONArray.put(it.next());
            }
        } catch (JSONException unused) {
            Toast.makeText(this, new ObfuscatedString(new long[]{-2760146528946636475L, -5890118135107549154L}).toString(), 0).show();
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
            String obfuscatedString = new ObfuscatedString(new long[]{3556932160160509580L}).toString();
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
                String string = jSONObject.getString(new ObfuscatedString(new long[]{312074240151014312L, -3570184897733252764L}).toString());
                if (i == 0) {
                    this.listProfiles.add(string);
                } else {
                    String replace = VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{-5164681310676171553L, 7666437791651150648L, -8666916191853365265L}).toString())).replace(new ObfuscatedString(new long[]{5858616618034327038L, -7009194607883525215L}).toString(), new ObfuscatedString(new long[]{-3700292389068913796L, 695542526818367718L}).toString()).replace(new ObfuscatedString(new long[]{-1129653513934835471L, 7830306230532192176L}).toString(), new ObfuscatedString(new long[]{382287852750308775L, 3137284395203792500L}).toString()).replace(new ObfuscatedString(new long[]{-1328291372082846774L, -7929311047845050897L}).toString(), new ObfuscatedString(new long[]{2601696325594399899L, 8208528988751689923L}).toString()).replace(new ObfuscatedString(new long[]{3359261667865771022L, 6671171144797824564L}).toString(), new ObfuscatedString(new long[]{-103503033829336629L, -7183096867590105579L}).toString()).replace(new ObfuscatedString(new long[]{-4922861407285362664L, 3237062128976274099L}).toString(), new ObfuscatedString(new long[]{7143906877782309861L, -2904734567001499234L}).toString()).replace(new ObfuscatedString(new long[]{526479564178845602L, -9036989760639773459L}).toString(), new ObfuscatedString(new long[]{5546462021023899190L, 6272750954372468104L}).toString()).replace(new ObfuscatedString(new long[]{-715309055726391372L, -4095364827739761139L}).toString(), new ObfuscatedString(new long[]{-2816497091309691433L, 7299977247403485414L}).toString()).replace(new ObfuscatedString(new long[]{-501646994541770956L, -6927591867511087200L}).toString(), new ObfuscatedString(new long[]{-1035256630394697110L, 8340113784412221768L}).toString()).replace(new ObfuscatedString(new long[]{-1033736870475260754L, -2635538399944112618L}).toString(), new ObfuscatedString(new long[]{6095703059327271486L, 6742378785502734539L}).toString()).replace(new ObfuscatedString(new long[]{-6388784204079817152L, 8722835190346997206L}).toString(), new ObfuscatedString(new long[]{1915022839934047267L, 5644285163629934625L}).toString()).replace(new ObfuscatedString(new long[]{-3122656911015215990L, -3897759433243571610L}).toString(), new ObfuscatedString(new long[]{7555397084161548849L, 3956171869902602824L}).toString()).replace(new ObfuscatedString(new long[]{-6445027264773709462L, 4152431120156687842L}).toString(), new ObfuscatedString(new long[]{12815884168330179L, -4761328574412894751L}).toString()).replace(new ObfuscatedString(new long[]{3574041411173657649L, 1786088656497682018L}).toString(), new ObfuscatedString(new long[]{-8610899295924435831L, -3550760852117011209L}).toString()).replace(new ObfuscatedString(new long[]{-4052752689988191042L, 4276754083634416970L}).toString(), new ObfuscatedString(new long[]{-7326863862758650275L, -1516214016757394273L}).toString()).replace(new ObfuscatedString(new long[]{-2610355688813090148L, 8658805522061479211L}).toString(), new ObfuscatedString(new long[]{-7018580029562707708L, -244646194906283943L}).toString()).replace(new ObfuscatedString(new long[]{298386533646921047L, 7685449827274445507L}).toString(), new ObfuscatedString(new long[]{-482294953263516028L, -2261239522708305031L}).toString()).replace(new ObfuscatedString(new long[]{-6743213595581198349L, 5079259883246044055L}).toString(), new ObfuscatedString(new long[]{4393777778821847422L, -6139767927088640958L}).toString()).replace(new ObfuscatedString(new long[]{5719120837251468318L, -3179358232621334878L}).toString(), new ObfuscatedString(new long[]{-6192910717046074021L, 2734336624309177597L}).toString()).replace(new ObfuscatedString(new long[]{1872958683171310732L, -9047517007141050986L}).toString(), new ObfuscatedString(new long[]{3299367553141608121L, -4207183922384648160L}).toString()).replace(new ObfuscatedString(new long[]{7012063182462871140L, 2588340139296891303L}).toString(), new ObfuscatedString(new long[]{5342639375939743260L, -3307066796817870755L}).toString()).replace(new ObfuscatedString(new long[]{-4496262560857533229L, -4320609721571457943L}).toString(), new ObfuscatedString(new long[]{2624973909238251209L, -6424573847996634603L}).toString()).replace(new ObfuscatedString(new long[]{-5606136374268551173L, -3044391517732576173L}).toString(), new ObfuscatedString(new long[]{-8776566420560009946L, 7992437079644733492L}).toString()).replace(new ObfuscatedString(new long[]{-2580402591418454816L, -7445010272539928832L}).toString(), new ObfuscatedString(new long[]{3397222927071554199L, 4347213758663348593L}).toString()).replace(new ObfuscatedString(new long[]{1449642301894381010L, -1875502656222671572L}).toString(), new ObfuscatedString(new long[]{5611473534139622851L, 129777058208484651L}).toString()).replace(new ObfuscatedString(new long[]{2837352826460486740L, -4222277359116599422L}).toString(), new ObfuscatedString(new long[]{5240084893871260059L, 3523145766328058787L}).toString()).replace(new ObfuscatedString(new long[]{-7692258952568925665L, 9150663319711711458L}).toString(), new ObfuscatedString(new long[]{2106263913763366997L, 6944845147785149755L}).toString());
                    String string2 = jSONObject.getString(new ObfuscatedString(new long[]{7985519966553439549L, 7247062672516147885L, 313600852436401474L}).toString());
                    String optString = jSONObject.optString(new ObfuscatedString(new long[]{-7773598560750226084L, -8810536371119218926L}).toString(), new ObfuscatedString(new long[]{-490438008655527473L}).toString());
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
                    String format = String.format(new ObfuscatedString(new long[]{-3241765781130357295L, -3367255950658058408L}).toString(), URLEncoder.encode(string, new ObfuscatedString(new long[]{-7563605353682740544L, 4455940051814954320L}).toString()));
                    String configFile = convertProfile.getConfigFile(this, true);
                    FileOutputStream fileOutputStream = new FileOutputStream(new File(getFilesDir(), format));
                    fileOutputStream.write(configFile.getBytes());
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    this.listProfiles.add(jSONObject.getString(new ObfuscatedString(new long[]{-586429321000251914L, 3853968199456320456L}).toString()));
                    this.server_adapter.notifyDataSetChanged();
                }
            }
        } catch (Exception e4) {
            e4.printStackTrace();
            showToast(new ObfuscatedString(new long[]{-9055493437634699068L, 4740172953329385079L, -5190594905431254493L}).toString() + e4.getMessage());
        }
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.fragment_servers);
        Object[] objArr = {getIntent().toString()};
        new ObfuscatedString(new long[]{-4742378307025834814L, -1630466309892646245L, -6209953190839366069L}).toString();
        String.format(new ObfuscatedString(new long[]{-3561144550562859991L, -740527090393746302L, -1151547893437440920L, 5104763784674057241L}).toString(), objArr);
        AlertDialog create = new AlertDialog.Builder(this, R.style.AlertDialogTheme).create();
        this.a = create;
        create.setCancelable(false);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        this.prefs = new PrefUtil(this.myPrefs);
        StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        this.mHandler = new Handler(Looper.getMainLooper());
        this.f5775config = ConfigUtil.getInstance(this);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        Objects.requireNonNull(supportActionBar);
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        this.listNetwork = new ArrayList<>();
        this.networkAdapter = new NetworkAdapter(this, this.listNetwork);
        this.listProfiles = new ArrayList<>();
        this.server_adapter = new ServerAdapter(this, this.listProfiles);
        this.server_listview = (ListView) findViewById(R.id.server_list);
        loadServers();
        loadNetworks();
        setSelectedServer();
        setSelectedNetwork(false);
        int serverSelectedPosition = this.f5775config.getServerSelectedPosition();
        this.server_listview.setSelection(serverSelectedPosition);
        this.mHandler.postDelayed(new RunnableC0460x8df12640(this, serverSelectedPosition, 3), 500L);
        this.server_listview.setAdapter((ListAdapter) this.server_adapter);
        this.server_listview.setOnItemClickListener(new C1001x2241e83c(this, 1));
        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback(true) { // from class: com.tknetwork.tunnel.activities.ServerActivity.1
            public AnonymousClass1(boolean z) {
                super(z);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                ServerActivity.this.setResult(0, false);
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.server_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    public boolean onPrepareOptionsMenu(Menu menu) {
        super.onPrepareOptionsMenu(menu);
        MenuItem findItem = menu.findItem(R.id.search);
        final int i = 0;
        menu.findItem(R.id.add_custom).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener(this) { // from class: 땜땥딄듸땬돝됐뎽땦뒤듨뒐뒉땜땄땮듐듌됨뒉딀뎽땔돸땋딻딌둠뒛뎸됫땨듔딅뒵땬됨땥듰딤듸딞돠딅땹딁돳딄뒀딜뎡땣딨듐듰뒻돠딸두뎡땭땻둣뒾득듌뒼땋땠듽두듐둬땨딽땡돨뒼딤돝딠땻딄둔들딤듸땱듸땣듸땀뒝뎸뎠땤돤뎰둠딐땃땄두딁딤딎땤땻도득땳두땥둔두듨땄둥뒷뒋될땫땲땸땳드땸둬딤딃

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5493x3271d0aa;

            {
                this.f5493x3271d0aa = this;
            }

            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean lambda$onPrepareOptionsMenu$9;
                boolean lambda$onPrepareOptionsMenu$11;
                boolean lambda$onPrepareOptionsMenu$12;
                switch (i) {
                    case 0:
                        lambda$onPrepareOptionsMenu$9 = this.f5493x3271d0aa.lambda$onPrepareOptionsMenu$9(menuItem);
                        return lambda$onPrepareOptionsMenu$9;
                    case 1:
                        lambda$onPrepareOptionsMenu$11 = this.f5493x3271d0aa.lambda$onPrepareOptionsMenu$11(menuItem);
                        return lambda$onPrepareOptionsMenu$11;
                    default:
                        lambda$onPrepareOptionsMenu$12 = this.f5493x3271d0aa.lambda$onPrepareOptionsMenu$12(menuItem);
                        return lambda$onPrepareOptionsMenu$12;
                }
            }
        });
        final int i2 = 1;
        menu.findItem(R.id.delete_custom).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener(this) { // from class: 땜땥딄듸땬돝됐뎽땦뒤듨뒐뒉땜땄땮듐듌됨뒉딀뎽땔돸땋딻딌둠뒛뎸됫땨듔딅뒵땬됨땥듰딤듸딞돠딅땹딁돳딄뒀딜뎡땣딨듐듰뒻돠딸두뎡땭땻둣뒾득듌뒼땋땠듽두듐둬땨딽땡돨뒼딤돝딠땻딄둔들딤듸땱듸땣듸땀뒝뎸뎠땤돤뎰둠딐땃땄두딁딤딎땤땻도득땳두땥둔두듨땄둥뒷뒋될땫땲땸땳드땸둬딤딃

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5493x3271d0aa;

            {
                this.f5493x3271d0aa = this;
            }

            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean lambda$onPrepareOptionsMenu$9;
                boolean lambda$onPrepareOptionsMenu$11;
                boolean lambda$onPrepareOptionsMenu$12;
                switch (i2) {
                    case 0:
                        lambda$onPrepareOptionsMenu$9 = this.f5493x3271d0aa.lambda$onPrepareOptionsMenu$9(menuItem);
                        return lambda$onPrepareOptionsMenu$9;
                    case 1:
                        lambda$onPrepareOptionsMenu$11 = this.f5493x3271d0aa.lambda$onPrepareOptionsMenu$11(menuItem);
                        return lambda$onPrepareOptionsMenu$11;
                    default:
                        lambda$onPrepareOptionsMenu$12 = this.f5493x3271d0aa.lambda$onPrepareOptionsMenu$12(menuItem);
                        return lambda$onPrepareOptionsMenu$12;
                }
            }
        });
        final int i3 = 2;
        menu.findItem(R.id.paste_custom).setOnMenuItemClickListener(new MenuItem.OnMenuItemClickListener(this) { // from class: 땜땥딄듸땬돝됐뎽땦뒤듨뒐뒉땜땄땮듐듌됨뒉딀뎽땔돸땋딻딌둠뒛뎸됫땨듔딅뒵땬됨땥듰딤듸딞돠딅땹딁돳딄뒀딜뎡땣딨듐듰뒻돠딸두뎡땭땻둣뒾득듌뒼땋땠듽두듐둬땨딽땡돨뒼딤돝딠땻딄둔들딤듸땱듸땣듸땀뒝뎸뎠땤돤뎰둠딐땃땄두딁딤딎땤땻도득땳두땥둔두듨땄둥뒷뒋될땫땲땸땳드땸둬딤딃

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ServerActivity f5493x3271d0aa;

            {
                this.f5493x3271d0aa = this;
            }

            @Override // android.view.MenuItem.OnMenuItemClickListener
            public final boolean onMenuItemClick(MenuItem menuItem) {
                boolean lambda$onPrepareOptionsMenu$9;
                boolean lambda$onPrepareOptionsMenu$11;
                boolean lambda$onPrepareOptionsMenu$12;
                switch (i3) {
                    case 0:
                        lambda$onPrepareOptionsMenu$9 = this.f5493x3271d0aa.lambda$onPrepareOptionsMenu$9(menuItem);
                        return lambda$onPrepareOptionsMenu$9;
                    case 1:
                        lambda$onPrepareOptionsMenu$11 = this.f5493x3271d0aa.lambda$onPrepareOptionsMenu$11(menuItem);
                        return lambda$onPrepareOptionsMenu$11;
                    default:
                        lambda$onPrepareOptionsMenu$12 = this.f5493x3271d0aa.lambda$onPrepareOptionsMenu$12(menuItem);
                        return lambda$onPrepareOptionsMenu$12;
                }
            }
        });
        SearchView searchView = (SearchView) findItem.getActionView();
        if (searchView != null) {
            searchView.setOnQueryTextListener(new SearchView.OnQueryTextListener() { // from class: com.tknetwork.tunnel.activities.ServerActivity.3
                public AnonymousClass3() {
                }

                @Override // androidx.appcompat.widget.SearchView.OnQueryTextListener
                public boolean onQueryTextChange(String str) {
                    ServerActivity.this.ServerList(str.toLowerCase());
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
        loadAppColors(this.myPrefs.getInt(new ObfuscatedString(new long[]{-4865125599125073620L, 856568345429446079L, -2270102289425517931L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{1524624576311687183L, 7784693491615695782L}).toString())));
        super.onResume();
    }
}
