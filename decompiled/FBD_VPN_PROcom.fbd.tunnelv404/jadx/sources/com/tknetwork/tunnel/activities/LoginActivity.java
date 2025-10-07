package com.tknetwork.tunnel.activities;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.Editable;
import android.view.View;
import android.widget.EditText;
import android.widget.ProgressBar;
import android.widget.Toast;
import androidx.appcompat.widget.AppCompatButton;
import androidx.preference.PreferenceManager;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.utils.VPNUtil;
import config.ConfigUtil;
import defpackage.C0942xeb35e965;
import defpackage.RunnableC0943xe2b94cf1;
import defpackage.ViewOnClickListenerC0899xca18fbd;
import j$.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class LoginActivity extends MainBaseActivity {
    private SharedPreferences.Editor editor;
    private AppCompatButton loginBtn;
    private ConfigUtil mConfig;
    private Handler mHandler;
    private EditText mPassword;
    private EditText mUsername;
    private SharedPreferences myPrefs;
    private String old;
    private ProgressBar simpleProgressBar;

    private void LoginApi() {
        String replace = this.old.replace(new ObfuscatedString(new long[]{-5680579197935138525L, -7395783668712816111L}).toString(), new ObfuscatedString(new long[]{339658792051795620L, 113609257871736454L}).toString()).replace(new ObfuscatedString(new long[]{3017022035022972625L, -1317357049675329766L}).toString(), new ObfuscatedString(new long[]{-3044715006796419632L, 2151905262003775585L}).toString()).replace(new ObfuscatedString(new long[]{-5238263083985457269L, 2724257396084751667L}).toString(), new ObfuscatedString(new long[]{8642635068357696268L, 5336126174837965939L}).toString()).replace(new ObfuscatedString(new long[]{4106818286294421337L, 8172157765077480080L}).toString(), new ObfuscatedString(new long[]{-3484938104164627222L, -5501759044530087608L}).toString()).replace(new ObfuscatedString(new long[]{-4814639263827453813L, -7941271324621679897L}).toString(), new ObfuscatedString(new long[]{-3227290325436185523L, 1691606694179779462L}).toString()).replace(new ObfuscatedString(new long[]{7173773803415395982L, -5426530189096747439L}).toString(), new ObfuscatedString(new long[]{-4385921636144115914L, -5265061142757208405L}).toString()).replace(new ObfuscatedString(new long[]{-7586798667846359913L, -4956068401907219238L}).toString(), new ObfuscatedString(new long[]{-704992036975997026L, 8980784382525261345L}).toString()).replace(new ObfuscatedString(new long[]{4525723723408661847L, 6635341700706456363L}).toString(), new ObfuscatedString(new long[]{1078385486715118950L, 3956650275847028269L}).toString()).replace(new ObfuscatedString(new long[]{-4926091945566830462L, -149082726624823553L}).toString(), new ObfuscatedString(new long[]{-1375427161850020120L, 1381469620612828111L}).toString()).replace(new ObfuscatedString(new long[]{7742350575428204017L, -5360105333456802609L}).toString(), new ObfuscatedString(new long[]{-6980009486185449175L, 127388647737854701L}).toString()).replace(new ObfuscatedString(new long[]{8723977084843582891L, -8891949251331579061L}).toString(), new ObfuscatedString(new long[]{718361365639149882L, -3666109884786801426L}).toString()).replace(new ObfuscatedString(new long[]{6723861259291008278L, -6969957538285638853L}).toString(), new ObfuscatedString(new long[]{3210773429825032705L, 285664709043475036L}).toString()).replace(new ObfuscatedString(new long[]{7026500202127683516L, 8334990349761676732L}).toString(), new ObfuscatedString(new long[]{-8442596775794535804L, -2008225300631140463L}).toString()).replace(new ObfuscatedString(new long[]{-2374266146600850970L, 4566750813400927066L}).toString(), new ObfuscatedString(new long[]{2251327557726532360L, 1572051951183119L}).toString()).replace(new ObfuscatedString(new long[]{-5010451158140802687L, 842660379318155647L}).toString(), new ObfuscatedString(new long[]{3506140954743387219L, 6445291650348285514L}).toString()).replace(new ObfuscatedString(new long[]{-405500742516263096L, 8756038075534041529L}).toString(), new ObfuscatedString(new long[]{4808886383040393080L, 2716583498988466731L}).toString()).replace(new ObfuscatedString(new long[]{-54410460919965198L, -3427827042185091744L}).toString(), new ObfuscatedString(new long[]{-7346207843344684465L, 1203881350184454731L}).toString()).replace(new ObfuscatedString(new long[]{1132833286203644918L, -1072655109199547995L}).toString(), new ObfuscatedString(new long[]{480358673203545513L, -7867456866767922811L}).toString()).replace(new ObfuscatedString(new long[]{-3650595573754773937L, -7888003384131684908L}).toString(), new ObfuscatedString(new long[]{-7624553289485899001L, -3591909804137425979L}).toString()).replace(new ObfuscatedString(new long[]{-2770765939249590119L, 6782315244517766981L}).toString(), new ObfuscatedString(new long[]{-4904272571159689364L, 2550974064835826604L}).toString()).replace(new ObfuscatedString(new long[]{-924821684898148366L, -78980147081756515L}).toString(), new ObfuscatedString(new long[]{5606714245943264979L, -6407343434856517548L}).toString()).replace(new ObfuscatedString(new long[]{3907444577743954264L, -3418804106176425856L}).toString(), new ObfuscatedString(new long[]{-263450555677502347L, -7860833159329156585L}).toString()).replace(new ObfuscatedString(new long[]{7753014298472168393L, -2101400555886406377L}).toString(), new ObfuscatedString(new long[]{-1745539542351186228L, 8732794341929976608L}).toString()).replace(new ObfuscatedString(new long[]{3350921833572725999L, -8675160543073251903L}).toString(), new ObfuscatedString(new long[]{3904217060696185548L, -9008223405999328817L}).toString()).replace(new ObfuscatedString(new long[]{3610111045926810119L, 5757249487936456047L}).toString(), new ObfuscatedString(new long[]{-3562823689059857189L, -2089678126266981870L}).toString()).replace(new ObfuscatedString(new long[]{-1772891905535155277L, -2063899019263487605L}).toString(), new ObfuscatedString(new long[]{3636560090687146961L, 9089717330606669401L}).toString());
        String obj = this.mUsername.getText().toString();
        Editable text = this.mPassword.getText();
        Objects.requireNonNull(text);
        String obj2 = text.toString();
        if (!obj.isEmpty() && !obj2.isEmpty()) {
            Volley.newRequestQueue(this).add(new StringRequest(String.format(replace, obj, obj2, Settings.Secure.getString(getContentResolver(), new ObfuscatedString(new long[]{-46938753859210602L, -3557295621507055310L, -6160093999906659943L}).toString()), Build.MODEL), new C0942xeb35e965(this), new C0942xeb35e965(this)));
        } else {
            Toast.makeText(this, new ObfuscatedString(new long[]{653197855864641835L, -8744061068659417382L, 2063918543410555265L}).toString(), 0).show();
        }
    }

    @SuppressLint({"HardwareIds"})
    private void doLogin() {
        String obj = this.mUsername.getText().toString();
        Editable text = this.mPassword.getText();
        Objects.requireNonNull(text);
        String obj2 = text.toString();
        this.mConfig.getUsername();
        this.mConfig.getPassword();
        if (!obj.isEmpty() && !obj2.isEmpty()) {
            this.mConfig.setUsername(obj);
            this.mConfig.setPassword(obj2);
            this.mConfig.setHasAccount(true);
            navigateToMain();
            return;
        }
        Toast.makeText(this, new ObfuscatedString(new long[]{75577187565172817L, -658060275819254900L, 4147798818401206869L}).toString(), 0).show();
    }

    public static PackageInfo getAppInfo(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException(e);
        }
    }

    public /* synthetic */ void lambda$LoginApi$1(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (!jSONObject.getString(new ObfuscatedString(new long[]{7425613205007106693L, 5122224834712314355L}).toString()).equals(new ObfuscatedString(new long[]{3873497432154042422L, 8011731595611655153L}).toString()) && !jSONObject.getString(new ObfuscatedString(new long[]{4487264281684500540L, 6383423859690505358L, 813918547181161862L}).toString()).equals(new ObfuscatedString(new long[]{-2064007015985061987L, -1542739605885014938L}).toString()) && !jSONObject.getString(new ObfuscatedString(new long[]{-2318535485617644715L, 960136324845155691L}).toString()).equals(new ObfuscatedString(new long[]{-2058397993032153777L, -7309111002180706967L}).toString())) {
                if (jSONObject.getString(new ObfuscatedString(new long[]{-4473266896596282565L, -3852560925564669822L, 2887174206285235781L}).toString()).equals(new ObfuscatedString(new long[]{-5030425213317687779L, 1014569463085275887L}).toString())) {
                    Toast.makeText(this, new ObfuscatedString(new long[]{-2537752736682140628L, -3816392436797860804L, 3186437194660586996L, 5657233946367583944L, 1597087555431548086L, -2504140214147053576L}).toString(), 0).show();
                    this.loginBtn.setText(new ObfuscatedString(new long[]{-3400412173819608718L, -2678051952442371320L}).toString());
                    this.simpleProgressBar.setVisibility(8);
                    return;
                }
                doLogin();
                return;
            }
            Toast.makeText(this, new ObfuscatedString(new long[]{-4052035207163541597L, 8897607269589330021L, 6252803519481760684L, 9143195264986148662L}).toString(), 0).show();
            this.loginBtn.setText(new ObfuscatedString(new long[]{-8960267760302439076L, 8375266991035212389L}).toString());
            this.simpleProgressBar.setVisibility(8);
        } catch (Exception unused) {
            this.simpleProgressBar.setVisibility(8);
            Toast.makeText(this, new ObfuscatedString(new long[]{-6041687889745535238L, -2932760816450011872L, -1299713991294963316L}).toString(), 0).show();
            this.loginBtn.setText(new ObfuscatedString(new long[]{-6253764831807492653L, -478329037764830838L}).toString());
        }
    }

    public /* synthetic */ void lambda$LoginApi$2(VolleyError volleyError) {
        this.simpleProgressBar.setVisibility(8);
        Toast.makeText(this, new ObfuscatedString(new long[]{-4865864740358558050L, -3177023115679229031L, 5579749849535627865L, -7645945084033838734L, -788879170974944900L}).toString(), 0).show();
        this.loginBtn.setText(new ObfuscatedString(new long[]{1909115756308295476L, 4558562533311129086L}).toString());
    }

    public /* synthetic */ void lambda$navigateToMain$3(AtomicInteger atomicInteger, ScheduledExecutorService scheduledExecutorService) {
        atomicInteger.getAndIncrement();
        if (atomicInteger.get() == 3) {
            scheduledExecutorService.shutdown();
            atomicInteger.set(0);
            Intent intent = new Intent(getApplicationContext(), (Class<?>) ActivityUi.class);
            overridePendingTransition(R.transition.animation_enter, R.transition.animation_leave);
            startActivity(intent);
            finish();
        }
    }

    public /* synthetic */ void lambda$navigateToMain$4(AtomicInteger atomicInteger, ScheduledExecutorService scheduledExecutorService) {
        runOnUiThread(new RunnableC0943xe2b94cf1(this, atomicInteger, scheduledExecutorService, 0));
    }

    public /* synthetic */ void lambda$onCreate$0(View view) {
        nana();
        String obj = this.mUsername.getText().toString();
        Editable text = this.mPassword.getText();
        Objects.requireNonNull(text);
        String obj2 = text.toString();
        this.mConfig.getUsername();
        this.mConfig.getPassword();
        if (!obj.isEmpty() && !obj2.isEmpty()) {
            this.loginBtn.setText(new ObfuscatedString(new long[]{-8517823939363057160L, 2851372557473112709L, -8418882030478161947L}).toString());
            doLogin();
            this.simpleProgressBar.setVisibility(0);
            return;
        }
        Toast.makeText(this, new ObfuscatedString(new long[]{-4284839513579636405L, -4809545303766163678L, -5489642158767157972L}).toString(), 0).show();
    }

    private void loadAppColors(int i) {
        setStatusBarColor(i);
        setNavBarColor(i);
        findViewById(R.id.home).setBackgroundColor(i);
    }

    private void mail() {
        new ObfuscatedString(new long[]{-8830450077541046864L, -2588014635984607369L, -1669195514196107114L}).toString();
        startActivity(new Intent(new ObfuscatedString(new long[]{-973877756719921354L, 2096988146986165320L, -3679089457787370125L, -510908774286554775L, 1065326255252940733L}).toString(), Uri.parse(String.format(new ObfuscatedString(new long[]{550343780290170284L, 5678907345372112045L, -8192505439114023205L, -740112390090027735L, 724536231769216399L, 3542354923727640673L, -5099845920301810393L}).toString(), new ObfuscatedString(new long[]{-9085453045741719891L, -8011503306799933027L, 3844298567702321618L}).toString(), new ObfuscatedString(new long[]{-2708178385103272869L, -5741449340528066656L, 7859548485288820830L}).toString()))));
    }

    private void nana() {
        this.mConfig.setConnectionType(new ObfuscatedString(new long[]{73035895757522654L, 8236404285042024039L}).toString());
        this.mConfig.setSSH(false);
        this.mConfig.setOVPN(true);
    }

    private void navigateToMain() {
        AtomicInteger atomicInteger = new AtomicInteger(-1);
        this.simpleProgressBar.setVisibility(8);
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        newSingleThreadScheduledExecutor.scheduleWithFixedDelay(new RunnableC0943xe2b94cf1(this, atomicInteger, newSingleThreadScheduledExecutor, 1), 0L, 1L, TimeUnit.SECONDS);
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.home_login);
        this.mHandler = new Handler(Looper.getMainLooper());
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        this.mConfig = ConfigUtil.getInstance(this);
        this.mUsername = (EditText) findViewById(R.id.login_username);
        this.mPassword = (EditText) findViewById(R.id.login_password);
        this.mUsername.setText(this.mConfig.getUsername());
        this.mPassword.setText(this.mConfig.getPassword());
        JSONObject jSONObject = getJSONObject();
        if (jSONObject == null) {
            return;
        }
        try {
            if (jSONObject.has(new ObfuscatedString(new long[]{7783599974688028717L, 3598735045147788529L, 2889988335584603145L}).toString())) {
                this.old = VPNUtil.decrypt(jSONObject.getString(new ObfuscatedString(new long[]{360214012394607722L, -5055917320718703906L, 5401053582618280930L}).toString()));
            }
            if (jSONObject.has(new ObfuscatedString(new long[]{-6942621775733241059L, -671611832699693187L, 4237901098503607799L}).toString())) {
                if (jSONObject.getString(new ObfuscatedString(new long[]{2142269015536378093L, -1774770576403295544L, 4693624247113935662L}).toString()).equals(new ObfuscatedString(new long[]{2312272152374364177L, 1528318867412507837L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-7851173906238550753L, 6955192972185088332L, -7994456200929413112L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-945681451554902588L, -6710937365948403476L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{5350391961934270944L, -1533832538971040357L, -3565932118792880300L}).toString()).equals(new ObfuscatedString(new long[]{7670117419015143352L, -6190344913250360939L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{1383434045359815070L, -7237677517366111829L, 7618644580673271499L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-6209998794098967092L, -8082055420927453523L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-6868058500315821465L, 1135510134503974021L, -895132072767082043L}).toString()).equals(new ObfuscatedString(new long[]{4553470605032252530L, -5112409581748694198L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{5711285130139483608L, 8373824181629485927L, -4381994393772063515L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-851473259563677231L, 2612189780770430144L, 8512162711791035004L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{6912645235383965911L, -6533066088064933817L, -7369926019005398653L}).toString()).equals(new ObfuscatedString(new long[]{5146970816598756040L, 9013666457080496786L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-5897987715368957132L, 7508301255669656670L, 1858307745445772716L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{1495706940676246288L, 1665008953564785641L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-1514748151911203738L, 7663495609215871501L, 6469761493661702252L}).toString()).equals(new ObfuscatedString(new long[]{697717164948806324L, 2613609535709011628L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-1966401715099785248L, -5385474376829120619L, -2456527713798217567L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-7873408034790982128L, -7518334386050391651L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-7103129295568448363L, -1672208244751308009L, -877643046898310442L}).toString()).equals(new ObfuscatedString(new long[]{2859393661391821524L, 5949532770838180983L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{8853598592571140179L, -8494137344509435104L, 5618870435415274164L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{1259854381557412858L, 746932195912567903L}).toString())).apply();
                } else if (jSONObject.getString(new ObfuscatedString(new long[]{-8835513509927156825L, -6940280931146361250L, 8278040683031124005L}).toString()).equals(new ObfuscatedString(new long[]{-6124470413877917175L, 4807762232601567766L}).toString())) {
                    this.editor.putInt(new ObfuscatedString(new long[]{-7940290013178241784L, -6269536660130997314L, -1032562809663745265L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{6521415529184074654L, 7027143043372642623L}).toString())).apply();
                }
            }
        } catch (JSONException unused) {
        }
        this.simpleProgressBar = (ProgressBar) findViewById(R.id.progress_bar);
        AppCompatButton appCompatButton = (AppCompatButton) findViewById(R.id.login);
        this.loginBtn = appCompatButton;
        appCompatButton.setOnClickListener(new ViewOnClickListenerC0899xca18fbd(this, 1));
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        loadAppColors(this.myPrefs.getInt(new ObfuscatedString(new long[]{-5455059622135172700L, -6411543139950655693L, -2671954462331246337L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{6367608258655870251L, 5626598704683431155L}).toString())));
        super.onResume();
    }
}
