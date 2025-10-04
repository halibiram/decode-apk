package com.tknetwork.tunnel.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.core.ConfigParser;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.net.URL;

/* loaded from: classes3.dex */
public class Generator implements DialogInterface.OnCancelListener, View.OnClickListener, AdapterView.OnItemSelectedListener, RadioGroup.OnCheckedChangeListener {
    private View closeDialog;
    private final Context context;
    private AlertDialog dialog;
    private CheckBox dual_connect;
    private SharedPreferences.Editor editor;
    private CheckBox forward_host;
    private Button generate_btn;
    private Spinner inject_method;
    private CheckBox keep_alive;
    private GeneratorListener listener;
    private CheckBox online_host;
    private SharedPreferences prefs;
    private CheckBox proxy_auth;
    private RadioGroup query_mode;
    private Spinner request_method;
    private CheckBox reverse_proxy;
    private EditText server;
    private RadioGroup split;
    private EditText url_host;
    private ConfigParser vp;
    public static final String URL_HOST = new ObfuscatedString(new long[]{-7733356683071963278L, -2019882060137426467L}).toString();
    public static final String INJECT_METHOD = new ObfuscatedString(new long[]{-4663389328668329333L, -2791983693220600216L, -768742720098470781L, 3221286222818816081L}).toString();
    public static final String REQUEST_METHOD = new ObfuscatedString(new long[]{-7167850757970986646L, -4590386740686688536L, 1876160929845689086L, -3375486511194367422L}).toString();
    public static final String METHOD = new ObfuscatedString(new long[]{534774365621918916L, -1891461557249706663L}).toString();
    public static final String QUERY_MODE = new ObfuscatedString(new long[]{-6233949899653559067L, 4985128882641274163L, 993885976523587457L}).toString();
    public static final String ONLINE_HOST = new ObfuscatedString(new long[]{1936563998818208139L, -8806065849764699725L, 2183288277944269795L}).toString();
    public static final String FORWARD_HOST = new ObfuscatedString(new long[]{-5055359604463696887L, 882665650836238917L, 3388541143092146631L}).toString();
    public static final String REVERSE_PROXY = new ObfuscatedString(new long[]{3929605768461058369L, 966846620031899391L, 6576633535002920562L}).toString();
    public static final String KEEP_ALIVE = new ObfuscatedString(new long[]{-3356493675954067536L, 4588408789419629955L, -338116226444556579L}).toString();
    public static final String DUAL_CONNECT = new ObfuscatedString(new long[]{-38734456270069452L, -3344618953078026974L, -455737400233400283L}).toString();
    public static final String FULL_HOST = new ObfuscatedString(new long[]{8664193324726451660L, -8637706078642393551L, 3458881740332245772L}).toString();
    public static final String DEFAULT_PROXY = new ObfuscatedString(new long[]{-5519738470011494965L, 2563256722416523273L, 3381321109805161812L}).toString();
    public static final String PROXY = new ObfuscatedString(new long[]{5314303601202421137L, 5761575597807476729L}).toString();
    public static final String PORT = new ObfuscatedString(new long[]{-7283424941764710496L, -378827701960061717L}).toString();
    public static final String PROXY_AUTH = new ObfuscatedString(new long[]{-156385025173808028L, -8017016517239015329L, 3868082814774632077L}).toString();
    public static final String FIXED_PAYLOAD = new ObfuscatedString(new long[]{-6628057731723661240L, 4254794838835949414L, 4964502745037369283L}).toString();

    /* loaded from: classes3.dex */
    public interface GeneratorListener {
        void onGeneratePayload(String str);

        void onGeneratorClose();
    }

    public Generator(Context context) {
        this.context = context;
        init();
    }

    private View findId(View view, int i) {
        return view.findViewById(i);
    }

    private String getCrlf() {
        int selectedItemPosition = this.inject_method.getSelectedItemPosition();
        RadioGroup radioGroup = this.split;
        int indexOfChild = radioGroup.indexOfChild(radioGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
        if (selectedItemPosition != 0) {
            if (selectedItemPosition != 1) {
                if (selectedItemPosition != 2) {
                    return null;
                }
                if (indexOfChild == 2) {
                    return new ObfuscatedString(new long[]{-3633417002225665152L, -4213668904696476979L, -934472448084934023L}).toString();
                }
                return new ObfuscatedString(new long[]{-7522524605155097035L, -1964868301993707748L}).toString();
            }
            return new ObfuscatedString(new long[]{7680057509250664003L, -2486027459160012521L, -6187075587009492633L}).toString();
        }
        return new ObfuscatedString(new long[]{-3155780525871414939L, 5977882906348452437L}).toString();
    }

    private String getHost() {
        return String.format(new ObfuscatedString(new long[]{-4269512674070995809L, -722860885109616172L, -1813010512970401170L}).toString(), this.url_host.getText().toString());
    }

    private String getHostHeader() {
        String format = String.format(new ObfuscatedString(new long[]{2762964367230750923L, -1961743203148370677L, -1620406081189749394L}).toString(), this.url_host.getText().toString());
        try {
            return new URL(format).getHost();
        } catch (Exception unused) {
            return format;
        }
    }

    private ArrayAdapter<String> getInjectAdapter() {
        return new ArrayAdapter<>(this.context, R.layout.spinner_item, new String[]{new ObfuscatedString(new long[]{-8162325010514668775L, 2577672079550549066L}).toString(), new ObfuscatedString(new long[]{-491886878280418543L, 2775096975119817778L, 7833857185234499821L}).toString(), new ObfuscatedString(new long[]{8598373471574482663L, -202227203754744122L, 3200937443023259312L}).toString()});
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x02d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String getPayload() {
        String obfuscatedString;
        String obfuscatedString2;
        String obfuscatedString3;
        String obfuscatedString4;
        String obfuscatedString5;
        String str;
        String str2;
        int i;
        String str3;
        int selectedItemPosition;
        String obfuscatedString6 = new ObfuscatedString(new long[]{1303758024180136983L}).toString();
        String hostHeader = getHostHeader();
        String obfuscatedString7 = new ObfuscatedString(new long[]{-8842643388756948146L, 6600365492512393826L, 8464296588244096945L}).toString();
        String obfuscatedString8 = new ObfuscatedString(new long[]{1346843791733859341L, -6629569507694591125L}).toString();
        new ObfuscatedString(new long[]{811070329108533541L, -1086976644628454615L, -6651531513644518337L}).toString();
        if (obfuscatedString7 != null) {
            String str4 = new ObfuscatedString(new long[]{-5131058283913833908L, 2018188271014427383L}).toString() + hostHeader + obfuscatedString8;
            if (this.online_host.isChecked()) {
                obfuscatedString = new ObfuscatedString(new long[]{634290908888052327L, -3271018734000685367L, -5945050409539752205L}).toString() + hostHeader + obfuscatedString8;
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{1467899323801206514L}).toString();
            }
            if (this.forward_host.isChecked()) {
                obfuscatedString2 = new ObfuscatedString(new long[]{8168981677737652578L, -6677171424991758582L, -4420865766368498161L}).toString() + hostHeader + obfuscatedString8;
            } else {
                obfuscatedString2 = new ObfuscatedString(new long[]{-1989981059310846101L}).toString();
            }
            if (this.reverse_proxy.isChecked()) {
                obfuscatedString3 = new ObfuscatedString(new long[]{5717675916486434828L, -2692785388482759538L, 2054955120021355553L, 5673045753351853446L}).toString() + hostHeader + obfuscatedString8;
            } else {
                obfuscatedString3 = new ObfuscatedString(new long[]{1681637142090353531L}).toString();
            }
            if (this.proxy_auth.isChecked()) {
                obfuscatedString4 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-4313131778818502287L, 1297493779844193537L, 9029215849441197619L, -2088491436425783065L, -7426777198624048300L}), new StringBuilder(), obfuscatedString8);
            } else {
                obfuscatedString4 = new ObfuscatedString(new long[]{-1449119468123875615L}).toString();
            }
            if (this.keep_alive.isChecked()) {
                obfuscatedString5 = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{8409525922713313903L, -6288434481880783859L, 3618662155087783393L, -650402769232082861L}), new StringBuilder(), obfuscatedString8);
            } else {
                obfuscatedString5 = new ObfuscatedString(new long[]{1387741094332945919L}).toString();
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.request_method.getSelectedItem());
            sb.append(new ObfuscatedString(new long[]{6880286304902700923L, -8861477067834400927L}).toString());
            sb.append(getHost());
            sb.append(new ObfuscatedString(new long[]{-8520477063603115686L, 6036883054378133780L}).toString());
            String m2936xd2bcb0cf = AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, getProtocolByInject(), obfuscatedString8);
            if (this.dual_connect.isChecked()) {
                str = new ObfuscatedString(new long[]{-5968737020155809389L, -4084094190679677077L}).toString() + obfuscatedString7 + new ObfuscatedString(new long[]{-6772400556854421377L, -4489908623857766440L, 4767145866447492450L}).toString() + obfuscatedString8 + obfuscatedString8;
            } else {
                str = obfuscatedString8;
            }
            RadioGroup radioGroup = this.query_mode;
            int indexOfChild = radioGroup.indexOfChild(radioGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
            if (this.split.getCheckedRadioButtonId() == R.id.split_instant) {
                str3 = new ObfuscatedString(new long[]{3003192267028720416L, -4701538086687170367L, 511709346333567400L}).toString();
            } else if (this.split.getCheckedRadioButtonId() == R.id.split_delay) {
                str3 = new ObfuscatedString(new long[]{2314711541332293647L, -6829204613390480440L, 127502219857022688L}).toString();
            } else {
                if (this.split.getCheckedRadioButtonId() == R.id.split_none) {
                    str2 = obfuscatedString6;
                    i = 1;
                    str3 = new ObfuscatedString(new long[]{-2067254832436854629L}).toString();
                } else {
                    str2 = obfuscatedString6;
                    i = 1;
                    str3 = null;
                }
                selectedItemPosition = this.inject_method.getSelectedItemPosition();
                if (selectedItemPosition == 0) {
                    if (selectedItemPosition != i) {
                        if (selectedItemPosition != 2) {
                            return str2;
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(new ObfuscatedString(new long[]{855906795981857551L, 2131524513100594510L}).toString());
                        AbstractC0749x8313616e.m3350x5ac5058d(sb2, setup(obfuscatedString7, indexOfChild, hostHeader, getCrlf()), str3, m2936xd2bcb0cf, str4);
                        AbstractC0749x8313616e.m3350x5ac5058d(sb2, obfuscatedString, obfuscatedString2, obfuscatedString3, obfuscatedString4);
                        return AbstractC0362x4440ab85.m2936xd2bcb0cf(sb2, obfuscatedString5, str);
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(m2936xd2bcb0cf);
                    sb3.append(str4);
                    sb3.append(obfuscatedString);
                    sb3.append(obfuscatedString2);
                    sb3.append(obfuscatedString3);
                    sb3.append(obfuscatedString4);
                    sb3.append(obfuscatedString5);
                    sb3.append(obfuscatedString8);
                    sb3.append(str3);
                    sb3.append(new ObfuscatedString(new long[]{7871885333792191554L, -3649677307888064106L}).toString());
                    return AbstractC0362x4440ab85.m2936xd2bcb0cf(sb3, setup(obfuscatedString7, indexOfChild, hostHeader, obfuscatedString8), str);
                }
                StringBuilder sb4 = new StringBuilder();
                sb4.append(new ObfuscatedString(new long[]{-6268545595906339775L, -9115110121945041678L}).toString());
                AbstractC0749x8313616e.m3350x5ac5058d(sb4, setup(obfuscatedString7, indexOfChild, hostHeader, getCrlf()), str4, obfuscatedString, obfuscatedString2);
                sb4.append(obfuscatedString3);
                sb4.append(obfuscatedString4);
                sb4.append(obfuscatedString5);
                sb4.append(str);
                return sb4.toString();
            }
            str2 = obfuscatedString6;
            i = 1;
            selectedItemPosition = this.inject_method.getSelectedItemPosition();
            if (selectedItemPosition == 0) {
            }
        } else {
            return null;
        }
    }

    private String getProtocolByInject() {
        int selectedItemPosition = this.inject_method.getSelectedItemPosition();
        RadioGroup radioGroup = this.split;
        int indexOfChild = radioGroup.indexOfChild(radioGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
        if (indexOfChild != 0 && indexOfChild != 1) {
            if (indexOfChild == 2) {
                if (selectedItemPosition != 0) {
                    if (selectedItemPosition != 1) {
                        if (selectedItemPosition != 2) {
                            return null;
                        }
                        return new ObfuscatedString(new long[]{-3984211330479824167L, -6307197821118858128L, -1423192747904218268L}).toString();
                    }
                    return new ObfuscatedString(new long[]{1129418261327857192L, -737217935656886921L}).toString();
                }
                return new ObfuscatedString(new long[]{8269249283068831769L, 6288834757917628873L, -2945873390917415481L}).toString();
            }
            return null;
        }
        return new ObfuscatedString(new long[]{-4810688112696152867L, -1421686316883652740L}).toString();
    }

    private String getProtocolByQuery() {
        RadioGroup radioGroup = this.query_mode;
        int indexOfChild = radioGroup.indexOfChild(radioGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
        int selectedItemPosition = this.inject_method.getSelectedItemPosition();
        RadioGroup radioGroup2 = this.split;
        int indexOfChild2 = radioGroup2.indexOfChild(radioGroup2.findViewById(radioGroup2.getCheckedRadioButtonId()));
        if (selectedItemPosition == 0) {
            return new ObfuscatedString(new long[]{-6115225171937989699L, 5734596544768824663L, 857248181507222624L}).toString();
        }
        if (selectedItemPosition == 1) {
            return new ObfuscatedString(new long[]{4090863328973809138L, -8839438857636831379L, -4474638685321757568L}).toString();
        }
        if (selectedItemPosition == 2) {
            if (indexOfChild != 0) {
                if (indexOfChild == 1 || indexOfChild == 2) {
                    if (indexOfChild2 == 2) {
                        return new ObfuscatedString(new long[]{-8262710145817377797L, 3761371505057071569L}).toString();
                    }
                    return new ObfuscatedString(new long[]{-4066102471371085330L, 6632212577363793352L, 8976994323271257221L}).toString();
                }
                return null;
            }
            if (indexOfChild2 == 2) {
                return new ObfuscatedString(new long[]{-1815352800116709474L, -3121847624429489326L}).toString();
            }
            return new ObfuscatedString(new long[]{3809838471010848669L, -3862866504458516226L, 7954231410771510932L}).toString();
        }
        return null;
    }

    private ArrayAdapter<String> getRequestAdapter() {
        return new ArrayAdapter<>(this.context, R.layout.spinner_item, new String[]{new ObfuscatedString(new long[]{-2350669816239531672L, 5720904360884079982L}).toString(), new ObfuscatedString(new long[]{2002242572234253024L, -4283891799693552513L}).toString(), new ObfuscatedString(new long[]{-8844749584554822922L, -6058791784439224065L}).toString(), new ObfuscatedString(new long[]{-1123004274641613453L, -3858510709154377937L}).toString(), new ObfuscatedString(new long[]{2260115804836342223L, -6500215422003471017L}).toString(), new ObfuscatedString(new long[]{-2003133074825951016L, -3498514541814359407L}).toString(), new ObfuscatedString(new long[]{5227347273046403719L, 7446380542589775423L}).toString()});
    }

    private void init() {
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
        this.prefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        View inflate = LayoutInflater.from(this.context).inflate(R.layout.fragment_genarator, (ViewGroup) null);
        this.url_host = (EditText) findId(inflate, R.id.url_host);
        this.split = (RadioGroup) findId(inflate, R.id.split_group);
        this.request_method = (Spinner) findId(inflate, R.id.request_method);
        this.inject_method = (Spinner) findId(inflate, R.id.inject_method);
        this.query_mode = (RadioGroup) findId(inflate, R.id.query_mode);
        this.online_host = (CheckBox) findId(inflate, R.id.online_host);
        this.forward_host = (CheckBox) findId(inflate, R.id.forward_host);
        this.reverse_proxy = (CheckBox) findId(inflate, R.id.reverse_proxy);
        this.keep_alive = (CheckBox) findId(inflate, R.id.keep_alive);
        this.proxy_auth = (CheckBox) findId(inflate, R.id.paygen_proxy_auth);
        this.dual_connect = (CheckBox) findId(inflate, R.id.dual_connect);
        this.generate_btn = (Button) findId(inflate, R.id.generate_payload);
        this.closeDialog = findId(inflate, R.id.close_generator_dialog);
        this.request_method.setAdapter((SpinnerAdapter) getRequestAdapter());
        this.inject_method.setAdapter((SpinnerAdapter) getInjectAdapter());
        ((RadioButton) this.query_mode.getChildAt(this.prefs.getInt(new ObfuscatedString(new long[]{-8004919347910799692L, -9089434870172369440L, -7695483054314660016L}).toString(), 0))).setChecked(true);
        ((RadioButton) this.split.getChildAt(this.prefs.getInt(new ObfuscatedString(new long[]{3541759566571852708L, -3816354686311864494L}).toString(), 2))).setChecked(true);
        this.url_host.setText(this.prefs.getString(new ObfuscatedString(new long[]{-8376573162493212216L, 855892863439238652L}).toString(), new ObfuscatedString(new long[]{-4202774815717388996L}).toString()));
        this.request_method.setSelection(this.prefs.getInt(new ObfuscatedString(new long[]{-1105274450380892489L, -4831853932477068130L, -1812916088715489041L, 3794353566732089188L}).toString(), 0), false);
        this.inject_method.setSelection(this.prefs.getInt(new ObfuscatedString(new long[]{6266657051567292443L, 5396993083807180514L, -2495735209375360507L, 842170241144856764L}).toString(), 0), false);
        this.online_host.setChecked(this.prefs.getBoolean(new ObfuscatedString(new long[]{-2241440207258533919L, -3380727284283133018L, -1951699253182322357L}).toString(), false));
        this.forward_host.setChecked(this.prefs.getBoolean(new ObfuscatedString(new long[]{-8390513866830321758L, -5465687525771482452L, 4654104120771752534L}).toString(), false));
        this.reverse_proxy.setChecked(this.prefs.getBoolean(new ObfuscatedString(new long[]{-7284088087690682713L, 1242555416170522433L, 6750442473311610377L}).toString(), false));
        this.keep_alive.setChecked(this.prefs.getBoolean(new ObfuscatedString(new long[]{4829283031962050177L, -8840134357316306086L, 4437441531229995553L}).toString(), false));
        this.proxy_auth.setChecked(this.prefs.getBoolean(new ObfuscatedString(new long[]{-2361448362903605207L, 7799666607126818012L, -5468462601800186276L}).toString(), false));
        this.dual_connect.setChecked(this.prefs.getBoolean(new ObfuscatedString(new long[]{5100126698015470570L, 3633430912905540498L, 1341712884360583351L}).toString(), false));
        this.split.setOnCheckedChangeListener(this);
        this.request_method.setOnItemSelectedListener(this);
        this.inject_method.setOnItemSelectedListener(this);
        this.query_mode.setOnCheckedChangeListener(this);
        this.generate_btn.setOnClickListener(this);
        this.closeDialog.setOnClickListener(this);
        AlertDialog create = new AlertDialog.Builder(this.context, R.style.AlertDialogTheme).create();
        this.dialog = create;
        create.setView(inflate);
        this.dialog.setOnCancelListener(this);
    }

    private String setup(String str, int i, String str2, String str3) {
        String protocolByQuery = getProtocolByQuery();
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    return null;
                }
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
                m3341xc20437a5.append(new ObfuscatedString(new long[]{3223297629146886681L, -3908099834763376831L}).toString());
                m3341xc20437a5.append(str2);
                m3341xc20437a5.append(new ObfuscatedString(new long[]{-8456902883770422634L, -461020523902902038L}).toString());
                m3341xc20437a5.append(protocolByQuery);
                m3341xc20437a5.append(str3);
                return m3341xc20437a5.toString();
            }
            StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(str2);
            m3341xc20437a52.append(new ObfuscatedString(new long[]{-8864427352258701679L, 7452898377583547475L}).toString());
            m3341xc20437a52.append(str);
            m3341xc20437a52.append(new ObfuscatedString(new long[]{-6359768713733403019L, 5826307540823852257L}).toString());
            m3341xc20437a52.append(protocolByQuery);
            m3341xc20437a52.append(str3);
            return m3341xc20437a52.toString();
        }
        StringBuilder m3341xc20437a53 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a53.append(new ObfuscatedString(new long[]{7933257894189694924L, -253352558847029722L}).toString());
        m3341xc20437a53.append(protocolByQuery);
        m3341xc20437a53.append(str3);
        return m3341xc20437a53.toString();
    }

    private void showToast(String str) {
        Toast.makeText(this.context, str, 1).show();
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        this.listener.onGeneratorClose();
        this.dialog.dismiss();
    }

    @Override // android.widget.RadioGroup.OnCheckedChangeListener
    public void onCheckedChanged(RadioGroup radioGroup, int i) {
        int id = radioGroup.getId();
        if (id != R.id.query_mode) {
            if (id == R.id.split_group) {
                int indexOfChild = radioGroup.indexOfChild(radioGroup.findViewById(radioGroup.getCheckedRadioButtonId()));
                if (indexOfChild != 0 && indexOfChild != 1) {
                    if (indexOfChild == 2) {
                        this.inject_method.setSelection(0);
                        return;
                    }
                    return;
                } else {
                    this.inject_method.setSelection(2);
                    this.request_method.setSelection(1);
                    return;
                }
            }
            return;
        }
        this.editor.putInt(new ObfuscatedString(new long[]{8360127003502034617L, 8695763265359393824L, 9044302762296619124L}).toString(), radioGroup.indexOfChild(radioGroup.findViewById(i))).apply();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        String obj = this.url_host.getText().toString();
        if (view.getId() == R.id.generate_payload) {
            if (obj.isEmpty()) {
                showToast(new ObfuscatedString(new long[]{5480657116153748814L, -4791185104584509121L, -4765698264698883147L, 1127171242548872064L}).toString());
                return;
            }
            this.editor.putString(new ObfuscatedString(new long[]{-7831329368678286049L, -5219007024374907988L}).toString(), obj);
            this.editor.putBoolean(new ObfuscatedString(new long[]{-5959885304463243079L, 735504716643804297L, -9125985622483989506L}).toString(), this.online_host.isChecked());
            this.editor.putBoolean(new ObfuscatedString(new long[]{7090938102978495449L, 8688160195058455316L, -4166857450652460935L}).toString(), this.forward_host.isChecked());
            this.editor.putBoolean(new ObfuscatedString(new long[]{5274690381956453976L, 4863602574239820831L, -3806952324104718633L}).toString(), this.reverse_proxy.isChecked());
            this.editor.putBoolean(new ObfuscatedString(new long[]{5916123353899311752L, -5104412248798643139L, -8957317508030715873L}).toString(), this.keep_alive.isChecked());
            this.editor.putBoolean(new ObfuscatedString(new long[]{3627997340712523639L, 2792322695140794880L, 1992964234841327644L}).toString(), this.proxy_auth.isChecked());
            this.editor.putBoolean(new ObfuscatedString(new long[]{-4309596350527920575L, 2536029871692403767L, -8063005501847866579L}).toString(), this.dual_connect.isChecked());
            RadioGroup radioGroup = this.split;
            this.editor.putInt(new ObfuscatedString(new long[]{9005245274100972745L, 4808594146173078517L}).toString(), this.split.indexOfChild((RadioButton) radioGroup.findViewById(radioGroup.getCheckedRadioButtonId())));
            this.editor.putString(new ObfuscatedString(new long[]{1731852027212468717L, 2404562074583744082L, 4467505810343336234L}).toString(), getPayload());
            this.editor.apply();
            this.listener.onGeneratePayload(getPayload());
            this.dialog.dismiss();
            return;
        }
        if (view.getId() == R.id.close_generator_dialog) {
            this.listener.onGeneratorClose();
            this.dialog.dismiss();
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        int id = adapterView.getId();
        if (id != R.id.inject_method) {
            if (id == R.id.request_method) {
                this.editor.putInt(new ObfuscatedString(new long[]{-2088519824671956877L, 6714583304386535954L, -4151762764466099181L, -535897978100060586L}).toString(), i).apply();
                this.editor.putString(new ObfuscatedString(new long[]{7159950113789495743L, -777983908943829482L}).toString(), (String) adapterView.getSelectedItem()).apply();
                return;
            }
            return;
        }
        if (i != 0) {
            if (i == 1 || i == 2) {
                this.request_method.setSelection(1);
            }
        } else {
            ((RadioButton) this.split.getChildAt(2)).setChecked(true);
            this.request_method.setSelection(0);
        }
        this.editor.putInt(new ObfuscatedString(new long[]{-1119590846534516634L, -256813463130038273L, -8636232314206038043L, 8496678127961358989L}).toString(), i).apply();
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(AdapterView<?> adapterView) {
    }

    public void setGeneratorListener(GeneratorListener generatorListener) {
        this.listener = generatorListener;
    }

    public void show() {
        this.dialog.show();
    }
}
