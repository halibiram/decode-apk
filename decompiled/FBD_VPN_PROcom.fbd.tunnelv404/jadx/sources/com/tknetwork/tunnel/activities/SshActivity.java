package com.tknetwork.tunnel.activities;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.activity.OnBackPressedCallback;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.Toolbar;
import androidx.preference.PreferenceManager;
import com.fbd.tunnel.R;
import com.google.android.material.textfield.TextInputEditText;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.SshActivity;
import com.tknetwork.tunnel.view.MDToast;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0749x8313616e;
import defpackage.ViewOnClickListenerC0385x83592480;
import defpackage.ViewOnClickListenerC0386x3d250025;
import j$.util.Objects;

/* loaded from: classes3.dex */
public class SshActivity extends MainBaseActivity {
    private SharedPreferences.Editor editor;
    private ConfigUtil mConfig;
    private Handler mHandler;
    private SharedPreferences myPrefs;
    private CheckBox udp;

    /* renamed from: com.tknetwork.tunnel.activities.SshActivity$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends OnBackPressedCallback {
        public AnonymousClass1(boolean z) {
            super(z);
        }

        @Override // androidx.activity.OnBackPressedCallback
        public void handleOnBackPressed() {
            SshActivity.this.sendDataAndExit();
            SshActivity.this.finish();
        }
    }

    /* renamed from: com.tknetwork.tunnel.activities.SshActivity$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements AdapterView.OnItemSelectedListener {
        final /* synthetic */ AppCompatTextView val$info;
        final /* synthetic */ TextInputEditText val$primary;
        final /* synthetic */ TextInputEditText val$secondary;

        public AnonymousClass2(TextInputEditText textInputEditText, TextInputEditText textInputEditText2, AppCompatTextView appCompatTextView) {
            r2 = textInputEditText;
            r3 = textInputEditText2;
            r4 = appCompatTextView;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        @SuppressLint({"SetTextI18n"})
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            if (i == 0) {
                r2.setText(new ObfuscatedString(new long[]{-3500815683491280928L, 3015427802932682129L}).toString());
                r3.setText(new ObfuscatedString(new long[]{4370331450086540667L, 6189422374803690371L}).toString());
                r4.setText(new ObfuscatedString(new long[]{-8989519238518114216L, 425968776715802561L, 4228332906679784404L, -9189694851299977316L, -556577652540312715L, 698695463872362317L, -4107972042193654774L, -4780470223800269646L, 751651557263160332L, 4892088331328525189L}).toString());
                return;
            }
            if (i == 1) {
                r2.setText(new ObfuscatedString(new long[]{-4108695603064566102L, -3854096504677251195L}).toString());
                r3.setText(new ObfuscatedString(new long[]{3709336199292411193L, -6786569755039847925L, -671021035300022702L}).toString());
                r4.setText(new ObfuscatedString(new long[]{-1017382670310843055L, -5582766086215149740L, -1249193079335804312L, -7120200843727478749L, -8716606009340497426L, 6491930515899606488L, 4174520702943036729L, -4945987038569968376L, -2916901490500934536L, 4558964034194934274L}).toString());
                return;
            }
            if (i == 2) {
                r2.setText(new ObfuscatedString(new long[]{7149029700997780018L, -1219895723409475459L, 6329980229137090130L}).toString());
                r3.setText(new ObfuscatedString(new long[]{7998520651662797597L, -7624009283685261348L, -3508966574479815962L}).toString());
                r4.setText(new ObfuscatedString(new long[]{1600537607314780546L, 4003967885828066284L, -6320189697791151591L, 4479212052323227992L, 5108712664263618621L, -4133118806923896693L, 7437321275642006263L, -3765538598038224557L, 7052485354365053614L}).toString());
                return;
            }
            if (i == 3) {
                r2.setText(new ObfuscatedString(new long[]{1879540757635444526L, 2703027712262650559L}).toString());
                r3.setText(new ObfuscatedString(new long[]{7158343869772716171L, -5459159576906242148L}).toString());
                r4.setText(new ObfuscatedString(new long[]{7082664533031277775L, -3274644183737377160L, -7566100925373626498L, -130270129084053462L, 154212500180513509L, 685265131685192638L, -9083652442699492218L, -1582519546782148264L, 100735525770010778L, 5976565906762712683L, 3387182125811442419L}).toString());
                return;
            }
            if (i == 4) {
                r2.setText(new ObfuscatedString(new long[]{-1034940612557699904L, -4059592428658479667L, -3554316739584448071L}).toString());
                r3.setText(new ObfuscatedString(new long[]{8820799118375939527L, 7329683966169360822L, -6262620809019565929L}).toString());
                r4.setText(new ObfuscatedString(new long[]{-6341253800590042431L, 99923479684620039L, 4180157783265035406L, 8686244271544241149L, 337060319868424495L, 679796222961096547L, 4728656539990353058L, -6366024970711184839L, 3502353993970078623L, -3565425843488290059L, -8468854816930186555L, 7176944192429911588L}).toString());
                return;
            }
            if (i == 5) {
                r2.setText(new ObfuscatedString(new long[]{-1745895672797813301L, 8833592567466820002L, 5695389199033517487L}).toString());
                r3.setText(new ObfuscatedString(new long[]{7594254804889187098L, -1024618728762430485L, 7698936141460140689L}).toString());
                r4.setText(new ObfuscatedString(new long[]{-5904712666111042871L, 3956091864596242681L, -7109796747579356984L, -7588911393633183441L, 4959874821340184947L, 6303382210086110795L, -7716594086662526150L, 1542301502222236366L, 2521458806714370540L, 183962460576314657L, -2176220823339455772L}).toString());
                return;
            }
            if (i == 6) {
                r2.setText(new ObfuscatedString(new long[]{2740993640499177845L, -1107157241934071348L, 3793393322874041144L}).toString());
                r3.setText(new ObfuscatedString(new long[]{-5915555424034052347L, 8245514767500399811L, 5904360450659310419L}).toString());
                r4.setText(new ObfuscatedString(new long[]{-7013121846719644541L, -4709900010599734513L, 1227558360236723357L, -6141283279110042942L, 372946648672617911L, 1167735569715684329L, 8883383720393078229L}).toString());
                return;
            }
            if (i == 7) {
                r2.setText(new ObfuscatedString(new long[]{7133896784364401252L, 953042502432701812L, -824797906667087483L}).toString());
                r3.setText(new ObfuscatedString(new long[]{-3645402692416861909L, 8673696059662853276L, -2360186927860455887L}).toString());
                r4.setText(new ObfuscatedString(new long[]{3628677016726519087L, 1009120536271554355L, 4566890832685267363L, -6600128999777803590L, -5393264618383758244L, 3481350312850242844L, -8218343823567742663L, -1083956116872831808L, 2153696980145799817L}).toString());
                return;
            }
            if (i == 8) {
                r2.setText(new ObfuscatedString(new long[]{-5365641713853627381L, 3202998897102701574L, -3821386241849722347L}).toString());
                r3.setText(new ObfuscatedString(new long[]{-2134336801049195494L, -7575636556700461277L, -9146320039433484205L}).toString());
                r4.setText(new ObfuscatedString(new long[]{-9188490002286254244L, -2443753991074561370L, 6651713579180954635L, 871673498367616086L, 5102088839736050197L, -3754960306546865763L, -1662950296849948208L, 7540835034686633304L, -4815336726924281628L, -6978488805044139752L}).toString());
            } else if (i == 9) {
                r2.setText(new ObfuscatedString(new long[]{-486977535533586432L, 6038751260887805589L, 8196580620950853867L}).toString());
                r3.setText(new ObfuscatedString(new long[]{6038521264395394160L, -4842005645572347590L, 4583465993669911027L}).toString());
                r4.setText(new ObfuscatedString(new long[]{1484744351488910228L, -4686632118151454981L, -1563177441100943874L, 885029752767170938L, -6652229438321396393L, -8822334180455636516L, -4453503919003313043L, -6538341908495372676L, 4898112091259230231L, -1306480356572802412L, 1107312815430478685L, -2355956142575863319L}).toString());
            } else if (i == 10) {
                r2.setText(new ObfuscatedString(new long[]{4708382057613924585L, -7469534538492935717L, -2395161021342054366L}).toString());
                r3.setText(new ObfuscatedString(new long[]{-6111730301279749500L, -4337106415912958676L, -3679563927465342794L}).toString());
                r4.setText(new ObfuscatedString(new long[]{-4766061074298888931L, 2516240087378770237L, 6597089255583275591L, -7230474064743358854L, -7166286009200119219L, 5766885413918784467L, -7169250734662205908L, -694368220734450714L, 2699253258528095176L, 4316764297116983844L, 2383987892716631924L}).toString());
            }
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    private void forwarder() {
        final AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.AlertDialogTheme);
        builder.setTitle(new ObfuscatedString(new long[]{3821116358687346227L, -4402719727489253379L, -1200870762213056832L, -3110303203609487037L}).toString());
        builder.setMessage(new ObfuscatedString(new long[]{-6677514421773519666L, 3393539095877419047L, 7558819517814983845L, -1706408320708773550L, -7421638456862118911L, 5581783580527026911L, -7226946616452054849L, 8466479392358413976L, -356431512959133581L, -7411117345187569018L, 6090164304802472551L, 5701286888609064610L, -7243471278554827484L, -6006028828820290842L, -3855625259562738608L, -4396523239322099010L, -4462547890026965680L, 7552471481873324159L, -6727020408487853488L, -4013604275922146706L, -2532488758055688549L, -8882651700882522828L}).toString());
        final int i = 0;
        builder.setPositiveButton(new ObfuscatedString(new long[]{-5741977691382903950L, -5286287551625059697L}).toString(), new DialogInterface.OnClickListener(this) { // from class: 땠따듬딤땃땲딽돸땍딅땵딤땧됨도둥땥땡뎰뒈땝땳땤딄둠듨땡둠뒋땱딠둠뒋땭뒘듽돵뎰돛땤듽뒉됐땃딻땬돴득땱뎠뒐뒛따뒻들뒾딝딽딎둔돛뎨땡듸뒻딝뒀땫딁뎬듌땫딻둬딨딌땤땐뒈뒋땮든땩돴뎻뎸땃돤땮딹땧땠따땮땭듐된듼듐득듌땍땭땠듔땬둔듐뒵뎬뒛뎡듼뒙드땨땱땁땸둠땝딐땪땵딜듬듨돶땮디

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ SshActivity f5528x3271d0aa;

            {
                this.f5528x3271d0aa = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                switch (i) {
                    case 0:
                        this.f5528x3271d0aa.lambda$forwarder$11(builder, dialogInterface, i2);
                        return;
                    default:
                        this.f5528x3271d0aa.lambda$forwarder$12(builder, dialogInterface, i2);
                        return;
                }
            }
        });
        final int i2 = 1;
        builder.setNegativeButton(new ObfuscatedString(new long[]{-8076376956175155717L, -1992040868933264277L}).toString(), new DialogInterface.OnClickListener(this) { // from class: 땠따듬딤땃땲딽돸땍딅땵딤땧됨도둥땥땡뎰뒈땝땳땤딄둠듨땡둠뒋땱딠둠뒋땭뒘듽돵뎰돛땤듽뒉됐땃딻땬돴득땱뎠뒐뒛따뒻들뒾딝딽딎둔돛뎨땡듸뒻딝뒀땫딁뎬듌땫딻둬딨딌땤땐뒈뒋땮든땩돴뎻뎸땃돤땮딹땧땠따땮땭듐된듼듐득듌땍땭땠듔땬둔듐뒵뎬뒛뎡듼뒙드땨땱땁땸둠땝딐땪땵딜듬듨돶땮디

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ SshActivity f5528x3271d0aa;

            {
                this.f5528x3271d0aa = this;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i22) {
                switch (i2) {
                    case 0:
                        this.f5528x3271d0aa.lambda$forwarder$11(builder, dialogInterface, i22);
                        return;
                    default:
                        this.f5528x3271d0aa.lambda$forwarder$12(builder, dialogInterface, i22);
                        return;
                }
            }
        });
        builder.show();
        builder.setCancelable(false);
    }

    public /* synthetic */ void lambda$forwarder$11(AlertDialog.Builder builder, DialogInterface dialogInterface, int i) {
        this.mConfig.setVpnUdpForward(true);
        this.udp.setChecked(true);
        builder.setCancelable(true);
    }

    public /* synthetic */ void lambda$forwarder$12(AlertDialog.Builder builder, DialogInterface dialogInterface, int i) {
        builder.setCancelable(true);
        this.udp.setChecked(false);
        this.mConfig.setVpnUdpForward(false);
    }

    public /* synthetic */ void lambda$onCreate$0(CompoundButton compoundButton, boolean z) {
        if (z) {
            this.mConfig.setEnableReplace(true);
        } else {
            this.mConfig.setEnableReplace(false);
        }
    }

    public /* synthetic */ void lambda$onCreate$1(CheckBox checkBox, CompoundButton compoundButton, boolean z) {
        if (z) {
            MDToast.makeText(this, new ObfuscatedString(new long[]{2356516575941035846L, 7466857022046442861L, 4689131079361982714L, 8315178204238271430L, -1400130747135417749L}).toString(), MDToast.LENGTH_SHORT, 1).show();
            this.mConfig.setConnectionType(new ObfuscatedString(new long[]{4462218752224300812L, 4407254968634174851L}).toString());
            checkBox.setChecked(false);
            this.mConfig.setSSH(false);
            this.mConfig.setOVPN(true);
        } else {
            MDToast.makeText(this, new ObfuscatedString(new long[]{4657145601507009366L, 4880894075690889119L, -2523064634307301342L, 6935264120187243653L, -38682653078208452L}).toString(), 0, 3).show();
            checkBox.setChecked(true);
            this.mConfig.setSSH(true);
            this.mConfig.setOVPN(false);
        }
        setResult(-1, true);
    }

    public /* synthetic */ void lambda$onCreate$2(CheckBox checkBox, CompoundButton compoundButton, boolean z) {
        if (z) {
            this.mConfig.setConnectionType(new ObfuscatedString(new long[]{-2472464757836749553L, 7383567189550805483L}).toString());
            MDToast.makeText(this, new ObfuscatedString(new long[]{-4124071774999475137L, 3851923051938085129L, 2494441341712140987L, -7131249713709720355L, -2963893655911817056L}).toString(), MDToast.LENGTH_SHORT, 1).show();
            checkBox.setChecked(false);
            this.mConfig.setSSH(true);
            this.mConfig.setOVPN(false);
        } else {
            MDToast.makeText(this, new ObfuscatedString(new long[]{-902246852255213934L, -7080204705870122592L, 4221700387316803820L, 2265892160279938141L, -8701334345122608456L}).toString(), 0, 3).show();
            checkBox.setChecked(true);
            this.mConfig.setSSH(false);
            this.mConfig.setOVPN(true);
        }
        setResult(-1, true);
    }

    public /* synthetic */ void lambda$onCreate$3(CompoundButton compoundButton, boolean z) {
        this.mConfig.setdnsForward(z);
    }

    public /* synthetic */ void lambda$onCreate$4(CompoundButton compoundButton, boolean z) {
        if (z) {
            forwarder();
        } else {
            this.mConfig.setVpnUdpForward(false);
        }
    }

    public /* synthetic */ void lambda$onCreate$5(View view) {
        if (!TkLogStatus.isTunnelActive()) {
            setDnsForwarder();
        }
    }

    public /* synthetic */ void lambda$onCreate$6(View view) {
        if (!TkLogStatus.isTunnelActive()) {
            showUdpforwarder();
        }
    }

    public /* synthetic */ void lambda$setDnsForwarder$9(TextInputEditText textInputEditText, TextInputEditText textInputEditText2, Dialog dialog, View view) {
        Editable text = textInputEditText.getText();
        Objects.requireNonNull(text);
        String obj = text.toString();
        Editable text2 = textInputEditText2.getText();
        Objects.requireNonNull(text2);
        String obj2 = text2.toString();
        if (!obj.isEmpty() && !obj2.isEmpty()) {
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(obj);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-2655756792949322265L, 4250848051603546910L, 8783796664262897476L}).toString());
            Toast.makeText(this, m3341xc20437a5.toString(), 1).show();
            this.mConfig.setDNSPRIMARY(obj);
            this.mConfig.setDNSSECONDARY(obj2);
            this.editor.apply();
            dialog.dismiss();
            return;
        }
        Toast.makeText(this, new ObfuscatedString(new long[]{-1327329795169836318L, 3848322375260033308L, -4355852868333996509L}).toString(), 1).show();
    }

    public /* synthetic */ void lambda$showUdpforwarder$7(TextInputEditText textInputEditText, Dialog dialog, View view) {
        Editable text = textInputEditText.getText();
        Objects.requireNonNull(text);
        String obj = text.toString();
        if (obj.isEmpty()) {
            Toast.makeText(this, new ObfuscatedString(new long[]{-7452437137052401243L, 6165133439599588787L}).toString(), 1).show();
            return;
        }
        Toast.makeText(this, new ObfuscatedString(new long[]{-1469396336754098808L, 3976026655012118126L, 3225165652368155049L, 6212876841400008313L}).toString(), 1).show();
        this.mConfig.setVpnUdpResolver(obj);
        this.editor.apply();
        dialog.dismiss();
    }

    private void launchMarket() {
        try {
            startActivity(new Intent(new ObfuscatedString(new long[]{4609145659950353232L, -4043630739114360018L, 5402512421572457881L, -1805087143250133771L, -7301069980853057064L}).toString(), Uri.parse(new ObfuscatedString(new long[]{-5076842338219839583L, 6984357317181619433L, -5231217733853054951L, -7750923471346366335L}).toString() + getPackageName())));
        } catch (ActivityNotFoundException unused) {
            Toast.makeText(this, new ObfuscatedString(new long[]{-4567570825504267967L, -843601250807665118L, 8207026356680913296L, -1978056932138073L, -2224059592813402023L}).toString(), 1).show();
        }
    }

    private void loadAppColors(int i) {
        setStatusBarColor(i);
        setNavBarColor(i);
        findViewById(R.id.toolbar).setBackgroundColor(i);
    }

    private void mail() {
        new ObfuscatedString(new long[]{4711334172041763515L, 5226494771411520725L, -3366855579225541201L}).toString();
        startActivity(new Intent(new ObfuscatedString(new long[]{6157808317062050274L, -2081978473606367539L, 8486786506824919744L, 5028372747801599358L, -3790305945006698034L}).toString(), Uri.parse(String.format(new ObfuscatedString(new long[]{-6055576380637620881L, -6667463824296501606L, 8315942961668013690L, 8743605110192886920L, -1291593146866361648L, -1370853586209534040L, 5164584852133256558L}).toString(), new ObfuscatedString(new long[]{-2188808914191130524L, -6886511182022436194L, -137091846136066001L}).toString(), new ObfuscatedString(new long[]{691759454009737267L, 5223294715683142572L, 1443225819660648302L}).toString()))));
    }

    public void sendDataAndExit() {
        Intent intent = new Intent();
        intent.putExtra(new ObfuscatedString(new long[]{9195539705653625152L, -2385747215735999241L, 3501355103131296399L}).toString(), true);
        setResult(-1, intent);
    }

    private void setDnsForwarder() {
        final Dialog dialog = new Dialog(this, R.style.AlertDialogTheme);
        dialog.setContentView(R.layout.dialog_dns);
        dialog.show();
        AppCompatTextView appCompatTextView = (AppCompatTextView) dialog.findViewById(R.id.info);
        Spinner spinner = (Spinner) dialog.findViewById(R.id.preload_pay1);
        final TextInputEditText textInputEditText = (TextInputEditText) dialog.findViewById(R.id.custom_dns_primary);
        final TextInputEditText textInputEditText2 = (TextInputEditText) dialog.findViewById(R.id.custom_dns_secondary);
        textInputEditText.setText(this.mConfig.getDNSPRIMARY());
        textInputEditText2.setText(this.mConfig.getDNSSECONDARY());
        if (this.mConfig.getDnsPosition()) {
            spinner.getSelectedItem();
        }
        spinner.setAdapter((SpinnerAdapter) new ArrayAdapter(this, R.layout.spinner_item, new String[]{new ObfuscatedString(new long[]{-7145814056192953583L, -7167865042861997361L, -7018191603639265495L}).toString(), new ObfuscatedString(new long[]{-4339247630486192114L, 4205656361622376537L, 210543019604138027L}).toString(), new ObfuscatedString(new long[]{-2216226906290280322L, -5026708570946903879L, 1643939005253171370L}).toString(), new ObfuscatedString(new long[]{3418256243068768946L, 3450508228142978156L, -131238367591327455L}).toString(), new ObfuscatedString(new long[]{839027618085054831L, -411244810380467368L, 7733852799932665781L, 5511261996988916331L}).toString(), new ObfuscatedString(new long[]{8235871304430487911L, 3857213850133794481L, 6039887906394640585L}).toString(), new ObfuscatedString(new long[]{5056628129124912475L, 6781823845614389604L}).toString(), new ObfuscatedString(new long[]{7372633491558550279L, -3921993570778407191L, -5713748991692473940L}).toString(), new ObfuscatedString(new long[]{1209982670146130194L, -8933068195958134781L, -4146049528305184132L}).toString(), new ObfuscatedString(new long[]{2451781601231611924L, -1394818023156314593L, -1903270149211653662L, -7129782057590012799L}).toString(), new ObfuscatedString(new long[]{-253384714117296945L, 8937455495109399928L, -8823669111477470912L}).toString()}));
        spinner.setSelection(this.myPrefs.getInt(new ObfuscatedString(new long[]{-6202383679010955625L, 4796279899753499285L, -2612475896327245600L, 7907746947346698714L}).toString(), 0));
        spinner.setOnItemSelectedListener(new AdapterView.OnItemSelectedListener() { // from class: com.tknetwork.tunnel.activities.SshActivity.2
            final /* synthetic */ AppCompatTextView val$info;
            final /* synthetic */ TextInputEditText val$primary;
            final /* synthetic */ TextInputEditText val$secondary;

            public AnonymousClass2(final TextInputEditText textInputEditText3, final TextInputEditText textInputEditText22, AppCompatTextView appCompatTextView2) {
                r2 = textInputEditText3;
                r3 = textInputEditText22;
                r4 = appCompatTextView2;
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            @SuppressLint({"SetTextI18n"})
            public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
                if (i == 0) {
                    r2.setText(new ObfuscatedString(new long[]{-3500815683491280928L, 3015427802932682129L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{4370331450086540667L, 6189422374803690371L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{-8989519238518114216L, 425968776715802561L, 4228332906679784404L, -9189694851299977316L, -556577652540312715L, 698695463872362317L, -4107972042193654774L, -4780470223800269646L, 751651557263160332L, 4892088331328525189L}).toString());
                    return;
                }
                if (i == 1) {
                    r2.setText(new ObfuscatedString(new long[]{-4108695603064566102L, -3854096504677251195L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{3709336199292411193L, -6786569755039847925L, -671021035300022702L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{-1017382670310843055L, -5582766086215149740L, -1249193079335804312L, -7120200843727478749L, -8716606009340497426L, 6491930515899606488L, 4174520702943036729L, -4945987038569968376L, -2916901490500934536L, 4558964034194934274L}).toString());
                    return;
                }
                if (i == 2) {
                    r2.setText(new ObfuscatedString(new long[]{7149029700997780018L, -1219895723409475459L, 6329980229137090130L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{7998520651662797597L, -7624009283685261348L, -3508966574479815962L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{1600537607314780546L, 4003967885828066284L, -6320189697791151591L, 4479212052323227992L, 5108712664263618621L, -4133118806923896693L, 7437321275642006263L, -3765538598038224557L, 7052485354365053614L}).toString());
                    return;
                }
                if (i == 3) {
                    r2.setText(new ObfuscatedString(new long[]{1879540757635444526L, 2703027712262650559L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{7158343869772716171L, -5459159576906242148L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{7082664533031277775L, -3274644183737377160L, -7566100925373626498L, -130270129084053462L, 154212500180513509L, 685265131685192638L, -9083652442699492218L, -1582519546782148264L, 100735525770010778L, 5976565906762712683L, 3387182125811442419L}).toString());
                    return;
                }
                if (i == 4) {
                    r2.setText(new ObfuscatedString(new long[]{-1034940612557699904L, -4059592428658479667L, -3554316739584448071L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{8820799118375939527L, 7329683966169360822L, -6262620809019565929L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{-6341253800590042431L, 99923479684620039L, 4180157783265035406L, 8686244271544241149L, 337060319868424495L, 679796222961096547L, 4728656539990353058L, -6366024970711184839L, 3502353993970078623L, -3565425843488290059L, -8468854816930186555L, 7176944192429911588L}).toString());
                    return;
                }
                if (i == 5) {
                    r2.setText(new ObfuscatedString(new long[]{-1745895672797813301L, 8833592567466820002L, 5695389199033517487L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{7594254804889187098L, -1024618728762430485L, 7698936141460140689L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{-5904712666111042871L, 3956091864596242681L, -7109796747579356984L, -7588911393633183441L, 4959874821340184947L, 6303382210086110795L, -7716594086662526150L, 1542301502222236366L, 2521458806714370540L, 183962460576314657L, -2176220823339455772L}).toString());
                    return;
                }
                if (i == 6) {
                    r2.setText(new ObfuscatedString(new long[]{2740993640499177845L, -1107157241934071348L, 3793393322874041144L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{-5915555424034052347L, 8245514767500399811L, 5904360450659310419L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{-7013121846719644541L, -4709900010599734513L, 1227558360236723357L, -6141283279110042942L, 372946648672617911L, 1167735569715684329L, 8883383720393078229L}).toString());
                    return;
                }
                if (i == 7) {
                    r2.setText(new ObfuscatedString(new long[]{7133896784364401252L, 953042502432701812L, -824797906667087483L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{-3645402692416861909L, 8673696059662853276L, -2360186927860455887L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{3628677016726519087L, 1009120536271554355L, 4566890832685267363L, -6600128999777803590L, -5393264618383758244L, 3481350312850242844L, -8218343823567742663L, -1083956116872831808L, 2153696980145799817L}).toString());
                    return;
                }
                if (i == 8) {
                    r2.setText(new ObfuscatedString(new long[]{-5365641713853627381L, 3202998897102701574L, -3821386241849722347L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{-2134336801049195494L, -7575636556700461277L, -9146320039433484205L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{-9188490002286254244L, -2443753991074561370L, 6651713579180954635L, 871673498367616086L, 5102088839736050197L, -3754960306546865763L, -1662950296849948208L, 7540835034686633304L, -4815336726924281628L, -6978488805044139752L}).toString());
                } else if (i == 9) {
                    r2.setText(new ObfuscatedString(new long[]{-486977535533586432L, 6038751260887805589L, 8196580620950853867L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{6038521264395394160L, -4842005645572347590L, 4583465993669911027L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{1484744351488910228L, -4686632118151454981L, -1563177441100943874L, 885029752767170938L, -6652229438321396393L, -8822334180455636516L, -4453503919003313043L, -6538341908495372676L, 4898112091259230231L, -1306480356572802412L, 1107312815430478685L, -2355956142575863319L}).toString());
                } else if (i == 10) {
                    r2.setText(new ObfuscatedString(new long[]{4708382057613924585L, -7469534538492935717L, -2395161021342054366L}).toString());
                    r3.setText(new ObfuscatedString(new long[]{-6111730301279749500L, -4337106415912958676L, -3679563927465342794L}).toString());
                    r4.setText(new ObfuscatedString(new long[]{-4766061074298888931L, 2516240087378770237L, 6597089255583275591L, -7230474064743358854L, -7166286009200119219L, 5766885413918784467L, -7169250734662205908L, -694368220734450714L, 2699253258528095176L, 4316764297116983844L, 2383987892716631924L}).toString());
                }
            }

            @Override // android.widget.AdapterView.OnItemSelectedListener
            public void onNothingSelected(AdapterView<?> adapterView) {
            }
        });
        ((TextView) dialog.findViewById(R.id.custok_server_save)).setOnClickListener(new View.OnClickListener() { // from class: 땡뒙땵땜뒋딄딻뎹돵딀디뒈딸뒉듬뒤됨됴돴듔딜땥땤듌듨땝딤땫땯돵땨뒐뎸뒙땔땟뒐딐딎둡뎨땣딄될딃땄됴득뒐땄땩드땹듸됩뎬듐돷둘듬듸돨듻뒵땯득딜뎠듨됨뎸뎹뒻뒈땵딽딽땃땻땁땃돝땋딟두딹돤듐딌돵땥뒬됐듸뒨뒷될뎨뒷뎹땯듬딤딎돸땍뎨딌듼돵됴땝뒨땫되돠땄두딸딀돷딀땁뒘된뒾뒬땫뒾든
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TextInputEditText textInputEditText3 = textInputEditText22;
                Dialog dialog2 = dialog;
                SshActivity.this.lambda$setDnsForwarder$9(textInputEditText3, textInputEditText3, dialog2, view);
            }
        });
        ((TextView) dialog.findViewById(R.id.exit)).setOnClickListener(new ViewOnClickListenerC0386x3d250025(dialog, 1));
        dialog.show();
    }

    private void setResult(int i, boolean z) {
        Intent intent = new Intent();
        intent.putExtra(new ObfuscatedString(new long[]{7421065102594914628L, 8042705306981101398L, -1407524711036126755L, 5120142189520518372L}).toString(), z);
        setResult(i, intent);
        finish();
    }

    private void showUdpforwarder() {
        Dialog dialog = new Dialog(this, R.style.AlertDialogTheme);
        dialog.setContentView(R.layout.dialog_udp);
        dialog.show();
        TextInputEditText textInputEditText = (TextInputEditText) dialog.findViewById(R.id.custom_udpresolver);
        textInputEditText.setText(this.mConfig.getVpnUdpResolver());
        ((TextView) dialog.findViewById(R.id.custok_server_save)).setOnClickListener(new ViewOnClickListenerC0385x83592480(this, textInputEditText, dialog, 1));
        ((TextView) dialog.findViewById(R.id.exit)).setOnClickListener(new ViewOnClickListenerC0386x3d250025(dialog, 2));
        dialog.show();
    }

    @Override // com.tknetwork.tunnel.activities.MainBaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_ssh);
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        this.mHandler = new Handler(Looper.getMainLooper());
        this.mConfig = ConfigUtil.getInstance(this);
        setSupportActionBar((Toolbar) findViewById(R.id.toolbar));
        ActionBar supportActionBar = getSupportActionBar();
        Objects.requireNonNull(supportActionBar);
        supportActionBar.setDisplayHomeAsUpEnabled(true);
        CheckBox checkBox = (CheckBox) findViewById(R.id.dns);
        this.udp = (CheckBox) findViewById(R.id.udp);
        final CheckBox checkBox2 = (CheckBox) findViewById(R.id.ovpn_protocol);
        final CheckBox checkBox3 = (CheckBox) findViewById(R.id.ssh_protocol);
        CheckBox checkBox4 = (CheckBox) findViewById(R.id.replace);
        getOnBackPressedDispatcher().addCallback(this, new OnBackPressedCallback(true) { // from class: com.tknetwork.tunnel.activities.SshActivity.1
            public AnonymousClass1(boolean z) {
                super(z);
            }

            @Override // androidx.activity.OnBackPressedCallback
            public void handleOnBackPressed() {
                SshActivity.this.sendDataAndExit();
                SshActivity.this.finish();
            }
        });
        checkBox4.setChecked(this.mConfig.getEnableReplace());
        final int i = 0;
        checkBox4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: 땠딌딹듔듌딸딐듼땯뒋뒋땋둬뒷돴딽딠딻땮돳뒝딽뒬둑뒘돴듸뎰딤듸됫뒝땻득땻땟땨딠땅땧듨뒐딃뒨듻땮듰돴뎬듸돸땱땐땰딨둡될듌되땝뎹뎻드뎬땮뎠딜땡뎠땜땄딄땸돴뒘뒋땥듐땦뒀된돝땪둥뒈딁땳된돼딞듐뒉땥딠딝뎡땫둠땪딜땲땔뒙딐뒝땋뒙뒝됫뒋돰땸땬둣딽돴뒛됫될땲돵딨뎨땰뒷됴돶딽뒉뎸

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ SshActivity f5526x3271d0aa;

            {
                this.f5526x3271d0aa = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i) {
                    case 0:
                        this.f5526x3271d0aa.lambda$onCreate$0(compoundButton, z);
                        return;
                    case 1:
                        this.f5526x3271d0aa.lambda$onCreate$3(compoundButton, z);
                        return;
                    default:
                        this.f5526x3271d0aa.lambda$onCreate$4(compoundButton, z);
                        return;
                }
            }
        });
        checkBox2.setChecked(this.mConfig.getOVPN().booleanValue());
        final int i2 = 0;
        checkBox2.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: 땠땀뒻땋둬딞땨땹뒋뎨땋뎻땲땃땬땻딽둘돛돴디듟땥돠땋듼딹딐뒉듻뒙돳땤돰땥땻둣땄땧땅땔뎨땍두땯둑되뒻돳딽둑땝딸딝둔땔뒈뒐둥땝땍둑뎰돤드돝딜땝득뎽뎨돶도딐딎땁딟됐듟딐돴땳됩돝듬뒉돼딄뒬딨땝땻득딞됨땧딃뒘둥땅둬땸땠딝듐땍돤땝둬돴돠된디딠땠딄됴딹딄됐돴듨듻돼뒵둔들디뒙뒛

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ SshActivity f5531x3271d0aa;

            {
                this.f5531x3271d0aa = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i2) {
                    case 0:
                        this.f5531x3271d0aa.lambda$onCreate$1(checkBox3, compoundButton, z);
                        return;
                    default:
                        this.f5531x3271d0aa.lambda$onCreate$2(checkBox3, compoundButton, z);
                        return;
                }
            }
        });
        checkBox3.setChecked(this.mConfig.getSSH().booleanValue());
        final int i3 = 1;
        checkBox3.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: 땠땀뒻땋둬딞땨땹뒋뎨땋뎻땲땃땬땻딽둘돛돴디듟땥돠땋듼딹딐뒉듻뒙돳땤돰땥땻둣땄땧땅땔뎨땍두땯둑되뒻돳딽둑땝딸딝둔땔뒈뒐둥땝땍둑뎰돤드돝딜땝득뎽뎨돶도딐딎땁딟됐듟딐돴땳됩돝듬뒉돼딄뒬딨땝땻득딞됨땧딃뒘둥땅둬땸땠딝듐땍돤땝둬돴돠된디딠땠딄됴딹딄됐돴듨듻돼뒵둔들디뒙뒛

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ SshActivity f5531x3271d0aa;

            {
                this.f5531x3271d0aa = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i3) {
                    case 0:
                        this.f5531x3271d0aa.lambda$onCreate$1(checkBox2, compoundButton, z);
                        return;
                    default:
                        this.f5531x3271d0aa.lambda$onCreate$2(checkBox2, compoundButton, z);
                        return;
                }
            }
        });
        checkBox.setChecked(this.mConfig.getdnsForward().booleanValue());
        final int i4 = 1;
        checkBox.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: 땠딌딹듔듌딸딐듼땯뒋뒋땋둬뒷돴딽딠딻땮돳뒝딽뒬둑뒘돴듸뎰딤듸됫뒝땻득땻땟땨딠땅땧듨뒐딃뒨듻땮듰돴뎬듸돸땱땐땰딨둡될듌되땝뎹뎻드뎬땮뎠딜땡뎠땜땄딄땸돴뒘뒋땥듐땦뒀된돝땪둥뒈딁땳된돼딞듐뒉땥딠딝뎡땫둠땪딜땲땔뒙딐뒝땋뒙뒝됫뒋돰땸땬둣딽돴뒛됫될땲돵딨뎨땰뒷됴돶딽뒉뎸

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ SshActivity f5526x3271d0aa;

            {
                this.f5526x3271d0aa = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i4) {
                    case 0:
                        this.f5526x3271d0aa.lambda$onCreate$0(compoundButton, z);
                        return;
                    case 1:
                        this.f5526x3271d0aa.lambda$onCreate$3(compoundButton, z);
                        return;
                    default:
                        this.f5526x3271d0aa.lambda$onCreate$4(compoundButton, z);
                        return;
                }
            }
        });
        this.udp.setChecked(this.mConfig.getVpnUdpForward());
        final int i5 = 2;
        this.udp.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener(this) { // from class: 땠딌딹듔듌딸딐듼땯뒋뒋땋둬뒷돴딽딠딻땮돳뒝딽뒬둑뒘돴듸뎰딤듸됫뒝땻득땻땟땨딠땅땧듨뒐딃뒨듻땮듰돴뎬듸돸땱땐땰딨둡될듌되땝뎹뎻드뎬땮뎠딜땡뎠땜땄딄땸돴뒘뒋땥듐땦뒀된돝땪둥뒈딁땳된돼딞듐뒉땥딠딝뎡땫둠땪딜땲땔뒙딐뒝땋뒙뒝됫뒋돰땸땬둣딽돴뒛됫될땲돵딨뎨땰뒷됴돶딽뒉뎸

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ SshActivity f5526x3271d0aa;

            {
                this.f5526x3271d0aa = this;
            }

            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                switch (i5) {
                    case 0:
                        this.f5526x3271d0aa.lambda$onCreate$0(compoundButton, z);
                        return;
                    case 1:
                        this.f5526x3271d0aa.lambda$onCreate$3(compoundButton, z);
                        return;
                    default:
                        this.f5526x3271d0aa.lambda$onCreate$4(compoundButton, z);
                        return;
                }
            }
        });
        final int i6 = 0;
        ((TextView) findViewById(R.id.dnsforward)).setOnClickListener(new View.OnClickListener(this) { // from class: 땠땦땤둥딜듐땅둠둡딃뎬드땦뎡듽땵땄땟땃뎻돶땦땔땫둥든딽돝둡땧돰디득됫돼듻딀돴두된디뎸딹땦듌땁뎰듼뒾뒋둡딤땨땔딃뎬드돵땐땣땮딠딄땠뎸따돶딌뒨땀됐땱딎땠되뒤둠두뒬됫뒐돝딽듌딁뒹뒀뒤돴돤듰듟뒀듐땬돴땭딄듽될딜될뒈듬둔땵드뎻땰듔듼돨든딽둬땫돝듰땯듬돰딻딤뒤땰됩뒘땁디뒹

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ SshActivity f5534x3271d0aa;

            {
                this.f5534x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i6) {
                    case 0:
                        this.f5534x3271d0aa.lambda$onCreate$5(view);
                        return;
                    default:
                        this.f5534x3271d0aa.lambda$onCreate$6(view);
                        return;
                }
            }
        });
        final int i7 = 1;
        ((TextView) findViewById(R.id.udpforwarder)).setOnClickListener(new View.OnClickListener(this) { // from class: 땠땦땤둥딜듐땅둠둡딃뎬드땦뎡듽땵땄땟땃뎻돶땦땔땫둥든딽돝둡땧돰디득됫돼듻딀돴두된디뎸딹땦듌땁뎰듼뒾뒋둡딤땨땔딃뎬드돵땐땣땮딠딄땠뎸따돶딌뒨땀됐땱딎땠되뒤둠두뒬됫뒐돝딽듌딁뒹뒀뒤돴돤듰듟뒀듐땬돴땭딄듽될딜될뒈듬둔땵드뎻땰듔듼돨든딽둬땫돝듰땯듬돰딻딤뒤땰됩뒘땁디뒹

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ SshActivity f5534x3271d0aa;

            {
                this.f5534x3271d0aa = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                switch (i7) {
                    case 0:
                        this.f5534x3271d0aa.lambda$onCreate$5(view);
                        return;
                    default:
                        this.f5534x3271d0aa.lambda$onCreate$6(view);
                        return;
                }
            }
        });
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(R.menu.about_menu, menu);
        return true;
    }

    @Override // android.app.Activity
    @SuppressLint({"NonConstantResourceId"})
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == R.id.menu_share) {
            launchMarket();
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        loadAppColors(this.myPrefs.getInt(new ObfuscatedString(new long[]{3484493033808381527L, -6221135598565902674L, 8073891974586869703L}).toString(), Color.parseColor(new ObfuscatedString(new long[]{-1258251968670150375L, -4576031599326629290L}).toString())));
        super.onResume();
    }
}
