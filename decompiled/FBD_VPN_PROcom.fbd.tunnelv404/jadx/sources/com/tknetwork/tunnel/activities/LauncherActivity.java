package com.tknetwork.tunnel.activities;

import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.widget.ImageView;
import androidx.preference.PreferenceManager;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.utils.VPNUtil;
import config.ConfigUtil;
import defpackage.RunnableC0450xb2a4f6ac;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class LauncherActivity extends MainBaseActivity {
    private SharedPreferences.Editor editor;
    private SharedPreferences myPrefs;
    private String old;

    public /* synthetic */ void lambda$onCreate$0() {
        Intent intent = new Intent(this, (Class<?>) ActivityUi.class);
        intent.setFlags(65536);
        startActivity(intent);
        finish();
    }

    private void loadAppColors(int i) {
        setStatusBarColor(i);
        setNavBarColor(i);
        findViewById(R.id.splash).setBackgroundColor(i);
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_splash);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        ConfigUtil.getInstance(this).hasAccount();
        ((ImageView) findViewById(R.id.splash_logo)).setVisibility(0);
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC0450xb2a4f6ac(this, 20), 1000L);
        try {
            JSONObject jSONObject = getJSONObject();
            if (jSONObject == null) {
                return;
            }
            if (jSONObject.has(new ObfuscatedString(new long[]{-2017195689399632879L, 7742294430067533688L, 8538469283823232509L}).toString())) {
                this.old = VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{-2595215104679103379L, 1283968930201616911L, -2064370058526795270L}).toString()));
            }
            if (jSONObject.has(new ObfuscatedString(new long[]{5379466271969530054L, -7845462378336315052L, 1297077528082323370L}).toString())) {
                if (jSONObject.getString(new ObfuscatedString(new long[]{-4380910661387723581L, -6312104375075561297L, 1204595551648110574L}).toString()).equals(new ObfuscatedString(new long[]{-4506903607741253595L, 4304074067883303774L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{5770265920458871527L, 4887213455935194232L, 6889209615688128629L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{7228998237548450987L, 7941893147800388666L}).toString())).apply();
                    return;
                }
                if (jSONObject.getString(new ObfuscatedString(new long[]{-468110812037355767L, -6188450297837540559L, -4700913191565831357L}).toString()).equals(new ObfuscatedString(new long[]{-4167660355062742984L, -7942537015581012056L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{5537652135123141033L, 6356490986965227398L, 237775961784322872L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{4429946021351419904L, 4050546328774289214L}).toString())).apply();
                    return;
                }
                if (jSONObject.getString(new ObfuscatedString(new long[]{-2652694481661820346L, -7995464996719227545L, -8439850394760947473L}).toString()).equals(new ObfuscatedString(new long[]{-8467003792593908505L, -6101106035634585650L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-7150924237428648661L, 4374864756532915105L, -1982476185137494101L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{2897427095744268302L, -2912442745028442566L, -3956764095125027677L}).toString())).apply();
                    return;
                }
                if (jSONObject.getString(new ObfuscatedString(new long[]{3057570727362569603L, 5718098356772337278L, 6776850358967618711L}).toString()).equals(new ObfuscatedString(new long[]{-8596194436224871059L, -4795334443515093912L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-1161201908843580727L, -2003248683045604357L, -4668771580168009275L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{875636416639235615L, -7683866120764193835L}).toString())).apply();
                    return;
                }
                if (jSONObject.getString(new ObfuscatedString(new long[]{-3693228737066511642L, 2708178601730565453L, -6764981680287071127L}).toString()).equals(new ObfuscatedString(new long[]{8401833613037587767L, 1046872417964289893L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-8716618707381663081L, 610068908087317732L, 460651003765228766L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{6171387960390331298L, 6068826967625804107L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{7526649233019010861L, 8332286369134711206L, 5945122846448494617L}).toString()).equals(new ObfuscatedString(new long[]{-89413589230796618L, 3015324782666298750L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{2462335390019061201L, -1170826060648891742L, -5918823973199574904L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{5933857420644945217L, 6915879526672377915L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-5267099055656288433L, -2244913524382488693L, 8379865051346649465L}).toString()).equals(new ObfuscatedString(new long[]{-2728664930645325139L, -852930523486038688L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{2744249942787864625L, 8815041697581356966L, 2479799184658690771L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-4414834587214863320L, 1353973375892610184L}).toString())).apply();
                }
            }
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        try {
            loadAppColors(this.myPrefs.getInt(new ObfuscatedString(new long[]{5532664611836283392L, -1622027504457045341L, -6323404030823856357L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{3295418465343647402L, -3434089927446697467L}).toString())));
        } catch (Exception unused) {
            loadAppColors(Color.parseColor("#ff01264e"));
        }
        super.onResume();
    }
}
