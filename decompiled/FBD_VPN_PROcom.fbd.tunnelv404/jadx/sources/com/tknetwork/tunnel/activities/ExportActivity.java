package com.tknetwork.tunnel.activities;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.text.TextUtils;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AlertDialog;
import androidx.core.content.ContextCompat;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.ExportActivity;
import com.tknetwork.tunnel.core.ConfigParser;
import com.tknetwork.tunnel.core.Connection;
import com.tknetwork.tunnel.core.FileUtilKt;
import com.tknetwork.tunnel.core.VpnProfile;
import com.tknetwork.tunnel.utils.c_12;
import config.ConfigUtil;
import defpackage.DialogInterfaceOnClickListenerC0519xdc2f50a1;
import defpackage.RunnableC0450xb2a4f6ac;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import net.openvpn.openvpn.PrefUtil;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ExportActivity extends MainBaseActivity {
    private static final int REQUEST_IMPORT_PKCS12 = 3;
    private static final int S_BIND_CALLED = 1;
    private static final int S_START_CALLED = 2;

    /* renamed from: config */
    private ConfigUtil f5772config;
    private SharedPreferences.Editor editor;
    private final ActivityResultLauncher<Intent> launcherReadFile;
    private final ActivityResultLauncher<String> launcherReadPermission;
    private Handler mHandler;
    private PrefUtil prefs;

    public ExportActivity() {
        final int i = 0;
        this.launcherReadFile = registerForActivityResult(new ActivityResultContracts.StartActivityForResult(), new ActivityResultCallback(this) { // from class: 뒨뎻땭뎡돤뎽딌된둬딎돛듟땸둣땄뒋뒈뎡땁둘땬뒛드땥들뎬둔됩땟뒝듻땤뒈뒋따땍땧뎻땧돛될든뎬듔됩듰돴둠땦듐땭땄듽딝되뒙둑뎨뒹돴두딎뎸뒵둬돸땸디돛뒤뒵되듌돼뒷땻들뒐땭돰딽듐뒤뒾딀뎡땄뒤들딻둬도뎰뎰돠딝듔땻도뎡땥딸듸땬뒛듰뎽딁듸된땍뒹들땅듟됨돸뎽둘뒤땃뒨따뒤딟땝드됐땹돳

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ExportActivity f4626x3271d0aa;

            {
                this.f4626x3271d0aa = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                switch (i) {
                    case 0:
                        this.f4626x3271d0aa.lambda$new$1((ActivityResult) obj);
                        return;
                    default:
                        this.f4626x3271d0aa.lambda$new$3((Boolean) obj);
                        return;
                }
            }
        });
        final int i2 = 1;
        this.launcherReadPermission = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback(this) { // from class: 뒨뎻땭뎡돤뎽딌된둬딎돛듟땸둣땄뒋뒈뎡땁둘땬뒛드땥들뎬둔됩땟뒝듻땤뒈뒋따땍땧뎻땧돛될든뎬듔됩듰돴둠땦듐땭땄듽딝되뒙둑뎨뒹돴두딎뎸뒵둬돸땸디돛뒤뒵되듌돼뒷땻들뒐땭돰딽듐뒤뒾딀뎡땄뒤들딻둬도뎰뎰돠딝듔땻도뎡땥딸듸땬뒛듰뎽딁듸된땍뒹들땅듟됨돸뎽둘뒤땃뒨따뒤딟땝드됐땹돳

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ ExportActivity f4626x3271d0aa;

            {
                this.f4626x3271d0aa = this;
            }

            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                switch (i2) {
                    case 0:
                        this.f4626x3271d0aa.lambda$new$1((ActivityResult) obj);
                        return;
                    default:
                        this.f4626x3271d0aa.lambda$new$3((Boolean) obj);
                        return;
                }
            }
        });
    }

    private void attemptImport() {
        String obfuscatedString = new ObfuscatedString(new long[]{7109748017129691133L, -7436113494259805196L, 702279714018121809L, -830363984816599493L, -4660883019223433785L, 4844475761905759991L}).toString();
        if (Build.VERSION.SDK_INT <= 32 && !hasPermission(obfuscatedString)) {
            this.launcherReadPermission.launch(obfuscatedString);
            return;
        }
        Uri parse = Uri.parse(Environment.DIRECTORY_DOWNLOADS);
        Intent intent = new Intent(new ObfuscatedString(new long[]{5630147566065632642L, -4456884168389539966L, 7375952016714657781L, 8728388992316882521L, -5632941400314504117L, 8555694034930854693L}).toString());
        intent.setDataAndType(parse, new ObfuscatedString(new long[]{-3422480771450851399L, -8808500105018852979L}).toString());
        this.launcherReadFile.launch(intent);
    }

    private boolean hasPermission(String str) {
        if (ContextCompat.checkSelfPermission(this, str) == 0) {
            return true;
        }
        return false;
    }

    private void import_config(String str) {
        try {
            File file = new File(str);
            if (file.getPath().endsWith(new ObfuscatedString(new long[]{7662574551313331163L, 7628388745925067486L}).toString())) {
                ConfigParser configParser = new ConfigParser();
                configParser.parseConfig(new InputStreamReader(new FileInputStream(str)));
                VpnProfile convertProfile = configParser.convertProfile();
                convertProfile.mName = file.getName();
                Connection connection = convertProfile.mConnections[0];
                if (connection.mUseCustomConfig) {
                    connection.mCustomConfiguration = new ObfuscatedString(new long[]{75550656012958900L, -2742661560191277181L, 2067543648692365404L, 8984207656508025064L, 585433985902813391L, 3114751498671840789L, -2801206527394916548L}).toString();
                }
                String.format(new ObfuscatedString(new long[]{-2971405860815036368L, 5995459337466303620L, 1732132676846707803L}).toString(), convertProfile.getConfigFile(this, false));
                showToast(new ObfuscatedString(new long[]{-5725627643836944673L, 2366357276970118069L, -1783968011659050332L}).toString());
            }
        } catch (Exception e) {
            e.printStackTrace();
            showToast(new ObfuscatedString(new long[]{5023302175984695413L, 2826065811553302337L, 6407662299845106630L, -5768780556857795578L}).toString() + e.getMessage());
        }
    }

    public /* synthetic */ void lambda$new$1(ActivityResult activityResult) {
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

    public /* synthetic */ void lambda$new$2(DialogInterface dialogInterface, int i) {
        attemptImport();
    }

    public /* synthetic */ void lambda$new$3(Boolean bool) {
        if (bool.booleanValue()) {
            showToast(getString(R.string.toast_thank_you));
            attemptImport();
        } else {
            showToast(getString(R.string.message_permission_denied));
            new AlertDialog.Builder(this, R.style.AlertDialogTheme).setTitle(getString(R.string.title_important)).setMessage(getString(R.string.dialog_message_read_storage_permission_request)).setNegativeButton(getString(R.string.cr_cancel), (DialogInterface.OnClickListener) null).setPositiveButton(getString(R.string.ok), new DialogInterfaceOnClickListenerC0519xdc2f50a1(this, 1)).create().show();
        }
    }

    public /* synthetic */ void lambda$processImportData$0() {
        c_12.restart_app(this);
    }

    private void processImportData(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString(new ObfuscatedString(new long[]{-3699273342703717823L, -5715282209822165445L}).toString());
            if (!optString.isEmpty()) {
                this.prefs.set_string(new ObfuscatedString(new long[]{6530933839163273293L, -7124345233950348456L, -4188341162282425432L}).toString(), c_12.Parser.parse(optString));
            }
            String optString2 = jSONObject.optString(new ObfuscatedString(new long[]{3821315200412990041L, -6921242534662481395L}).toString());
            if (!optString2.isEmpty()) {
                this.prefs.set_string(new ObfuscatedString(new long[]{-152705683566740115L, 384012095512858346L, 1590202801418526072L}).toString(), c_12.Parser.parse(optString2));
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
        int i = !TextUtils.isEmpty(this.prefs.get_string(new ObfuscatedString(new long[]{2122175042326279761L, -4969748932719153984L, 638059232342726806L}).toString())) ? 1 : 0;
        if (!TextUtils.isEmpty(this.prefs.get_string(new ObfuscatedString(new long[]{-6627500460237249924L, -4047440956992829801L, 7440083424566625004L}).toString()))) {
            i = 1;
        }
        this.f5772config.setNetworkSelectedPosition(i);
        this.f5772config.setNetworkSelectedName(new ObfuscatedString(new long[]{-6755938858204592204L, 5891225119059831863L, -7893429119297597128L}).toString());
        this.f5772config.setServerSelectedPosition(i);
        this.f5772config.setServerSelectedName(new ObfuscatedString(new long[]{5393519649240934411L, 5703402564497647877L, 5947101502222015298L}).toString());
        this.f5772config.setCustomI(true);
        showToast(getString(R.string.message_import_successful));
        this.editor.putBoolean(new ObfuscatedString(new long[]{128608704920727629L, 8380419485614649210L, 2206570925714148650L}).toString(), false).apply();
        this.mHandler.postDelayed(new RunnableC0450xb2a4f6ac(this, 17), 500L);
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        new ObfuscatedString(new long[]{1126519442681084043L, 3496566300577610292L}).toString();
        String.format(new ObfuscatedString(new long[]{-7286328097566978233L, 4462248256724951201L, 1550848778473977611L, 4068336994161312149L, 626443240916828984L, -8910789170017922910L, -1483556258697246318L}).toString(), Integer.valueOf(i), Integer.valueOf(i2));
        if (i != 2) {
            if (i != 3) {
                super.onActivityResult(i, i2, intent);
                return;
            } else {
                if (i2 == -1) {
                    String stringExtra = intent.getStringExtra(new ObfuscatedString(new long[]{-2254036415073576572L, -4049531445764659919L, 4077493425111196547L}).toString());
                    new ObfuscatedString(new long[]{4558904976074989511L, -4371375091613289325L}).toString();
                    String.format(new ObfuscatedString(new long[]{-1710119992447379484L, -4914004981371013544L, 2785781017497124436L, -1952549634613010774L}).toString(), stringExtra);
                    import_pkcs12(stringExtra);
                    return;
                }
                return;
            }
        }
        if (i2 == -1) {
            String stringExtra2 = intent.getStringExtra(new ObfuscatedString(new long[]{-7145804048560468530L, 9190438255512840495L, -988311285593035773L}).toString());
            new ObfuscatedString(new long[]{6889820811033523745L, -2639122700353029275L}).toString();
            String.format(new ObfuscatedString(new long[]{-6238234349543906197L, 3312595094143038047L, 6063702755963521959L, 4119339287462679574L}).toString(), stringExtra2);
            import_config(stringExtra2);
        }
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f5772config = ConfigUtil.getInstance(this);
        this.mHandler = new Handler(Looper.getMainLooper());
        this.editor = PreferenceManager.getDefaultSharedPreferences(this).edit();
        this.prefs = new PrefUtil(PreferenceManager.getDefaultSharedPreferences(this));
        Intent intent = getIntent();
        if (intent == null) {
            showToast(getString(R.string.message_file_read_error));
            return;
        }
        Uri data = intent.getData();
        if (data == null) {
            showToast(getString(R.string.message_file_read_error));
            return;
        }
        String readFromFile = FileUtilKt.readFromFile(this, data);
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

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity
    public void showToast(String str) {
        super.showToast(str);
    }
}
