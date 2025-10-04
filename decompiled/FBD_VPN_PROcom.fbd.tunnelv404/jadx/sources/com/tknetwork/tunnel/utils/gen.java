package com.tknetwork.tunnel.utils;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Spinner;
import androidx.appcompat.app.AlertDialog;
import com.fbd.tunnel.R;
import com.google.android.material.textfield.TextInputEditText;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class gen {
    private static Context context;
    private static LayoutInflater inflater;
    private static SharedPreferences mPref;
    private static View view;
    private RadioGroup A;
    private RadioButton B;
    private Spinner C;
    private Spinner D;
    private TextInputEditText E;
    private Spinner F;
    public AlertDialog.Builder adb;
    private CharSequence cancelButtonName;
    private OnCancelListener cancelListener;
    private CharSequence generateButtonName;
    private OnGenerateListener generateListener;
    private OnNeutralListener neutralButtonListener;
    private CharSequence neutralButtonName;
    private CheckBox o;
    private CheckBox p;
    private CheckBox q;
    private CheckBox r;
    private CheckBox s;
    private View sshView;
    private CheckBox t;
    private String title;
    private CheckBox u;
    private CheckBox vj;
    private CheckBox w;
    private CheckBox x;
    private CheckBox y;
    private int mIcon = 0;
    private DialogInterface.OnClickListener generate = new DialogInterface.OnClickListener() { // from class: com.tknetwork.tunnel.utils.gen.1
        private String I;
        private String b;

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i != -1) {
                return;
            }
            this.I = gen.this.B.getText().toString();
            StringBuilder sb = new StringBuilder();
            String obj = gen.this.D.getSelectedItem().toString();
            String obj2 = gen.this.C.getSelectedItem().toString();
            String replace = gen.this.E.getText().toString().replace(new ObfuscatedString(new long[]{-1291823226983519177L, -6774446398880546810L}).toString(), new ObfuscatedString(new long[]{-4452525418242209043L}).toString()).replace(new ObfuscatedString(new long[]{5029745097346616997L, -1135026230106797353L}).toString(), new ObfuscatedString(new long[]{4879441042922664148L}).toString());
            if (gen.this.x.isChecked()) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(new ObfuscatedString(new long[]{3183278444973208470L, -542526664128128651L, 1769818654265508538L}).toString());
                sb2.append(replace);
                replace = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8191158554191618634L, 2983082871862086482L}), sb2);
            }
            StringBuilder sb3 = new StringBuilder();
            if (gen.this.o.isChecked()) {
                StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(replace);
                m3341xc20437a5.append(new ObfuscatedString(new long[]{7348621785107759379L, 829350255822057506L}).toString());
                sb3.append(m3341xc20437a5.toString());
            }
            sb3.append(new ObfuscatedString(new long[]{7612307365250346184L, -6471168812686768562L, 5447843131494699081L}).toString());
            if (gen.this.p.isChecked()) {
                sb3.append(new ObfuscatedString(new long[]{-1005004088341737036L, 5552333170244713822L}).toString() + replace);
            }
            String sb4 = sb3.toString();
            String obfuscatedString = new ObfuscatedString(new long[]{-8511481365847369958L}).toString();
            if (this.I.equals(new ObfuscatedString(new long[]{-7952521730311882325L, 89769667722161339L}).toString())) {
                obfuscatedString = (gen.this.y.isChecked() ? obj.equals(new ObfuscatedString(new long[]{3191438866896491716L, -2651134342940356302L, 1614943193640875171L}).toString()) ? new ObfuscatedString(new long[]{8186435515601048483L, -857254970434196305L, -6543566424285941731L, 74433915673850693L}) : new ObfuscatedString(new long[]{836684100968255817L, 6668480384072268119L, -1451021100739830759L}) : obj.equals(new ObfuscatedString(new long[]{4987620481680350613L, 7560279891201629887L, 734435657088209418L}).toString()) ? new ObfuscatedString(new long[]{6261595523755480602L, -7304042024436811109L, -8051969573643869865L}) : new ObfuscatedString(new long[]{7497853318171554903L, 2430524946688776582L})).toString();
            }
            if (obj.equals(new ObfuscatedString(new long[]{-8084502372970694391L, -4418359981410547446L, 6346359769197599466L}).toString())) {
                StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(obj2);
                m3341xc20437a52.append(new ObfuscatedString(new long[]{8475578011454117878L, 4430841755533281389L}).toString());
                m3341xc20437a52.append(replace);
                m3341xc20437a52.append(new ObfuscatedString(new long[]{-2086536651460314387L, -8896747772411336594L, -8462040290047838829L}).toString());
                sb.append(m3341xc20437a52.toString());
            } else if (!obj.equals(new ObfuscatedString(new long[]{8454901238082164028L, -2986570924308645097L, -3462467381281667011L}).toString())) {
                if (!gen.this.vj.isChecked()) {
                    StringBuilder m3341xc20437a53 = AbstractC0749x8313616e.m3341xc20437a5(obj2);
                    m3341xc20437a53.append(new ObfuscatedString(new long[]{-7777907382963700082L, -2235103693244927488L}).toString());
                    m3341xc20437a53.append(sb4);
                    m3341xc20437a53.append(new ObfuscatedString(new long[]{-8852782979933076418L, 232224928820010036L, 4534198394737112880L, 5109981713322854667L}).toString());
                    sb.append(m3341xc20437a53.toString());
                } else if (!obj.equals(new ObfuscatedString(new long[]{3311452712226697904L, -3933074998999304455L, -2881854237377359253L}).toString()) && !gen.this.o.isChecked() && !gen.this.p.isChecked()) {
                    sb.append(new ObfuscatedString(new long[]{6242664325296414828L, 275063906263645200L, -753418990055666913L}).toString());
                } else {
                    StringBuilder m3341xc20437a54 = AbstractC0749x8313616e.m3341xc20437a5(obj2);
                    m3341xc20437a54.append(new ObfuscatedString(new long[]{4318001250418345763L, -5744566733969057900L}).toString());
                    m3341xc20437a54.append(sb4);
                    m3341xc20437a54.append(new ObfuscatedString(new long[]{-2857086871002107927L, -7924245978663032421L, -3961467138497310146L, 2597179045072420613L}).toString());
                    sb.append(m3341xc20437a54.toString());
                }
            } else {
                sb.append(new ObfuscatedString(new long[]{4003186033904326586L, 6747848437750218144L}).toString() + sb4 + new ObfuscatedString(new long[]{2346514567632561797L, 4851245706588578521L, -1678339452643587562L, -8804253565566103635L}).toString() + obfuscatedString + obj2 + new ObfuscatedString(new long[]{-5851962262643428691L, 7999418424040731185L}).toString() + replace + new ObfuscatedString(new long[]{8841193379039538033L, 4094026944925896478L, -6465499951772834299L, 6598500471219651279L}).toString());
            }
            sb.append(new ObfuscatedString(new long[]{5480625635419332167L, -1068526690391651875L}).toString() + replace + new ObfuscatedString(new long[]{-5885636699995938396L, 9189096305200994839L}).toString());
            if (gen.this.q.isChecked()) {
                sb.append(new ObfuscatedString(new long[]{5025374361254568867L, -4326095200223790356L, 3868714136233034489L}).toString() + replace + new ObfuscatedString(new long[]{2239940702412966186L, -1661781560560166080L}).toString());
            }
            if (gen.this.s.isChecked()) {
                sb.append(new ObfuscatedString(new long[]{35584797403607229L, -1317595492019877096L, 4518823045196575803L}).toString() + replace + new ObfuscatedString(new long[]{5736062009879339075L, -7142731063043111513L}).toString());
            }
            if (gen.this.r.isChecked()) {
                sb.append(new ObfuscatedString(new long[]{4084279718763826516L, -263109891773118734L, 1308131484754339890L, -8122082792200757396L}).toString() + replace + new ObfuscatedString(new long[]{-2737044903034385073L, -18262875090234713L}).toString());
            }
            if (gen.this.t.isChecked()) {
                sb.append(new ObfuscatedString(new long[]{7636177925675069022L, 5189592677847590992L, -3933957321733370255L, -2536722054428826203L, -6491682629333707662L}).toString());
            }
            if (gen.this.u.isChecked()) {
                String obj3 = gen.this.F.getSelectedItem().toString();
                this.b = obj3;
                if (obj3.equals(new ObfuscatedString(new long[]{9053253569343116195L, -7884584111240812405L}).toString())) {
                    sb.append(new ObfuscatedString(new long[]{-4969805909130375155L, 8953037371898517178L, -7843778706932582019L, 1837234878266223384L, 6758397237543047760L, -7042837129916463179L, 4167100526881162779L, -1340670550792628864L, -326877329899825350L, -2874886256747886433L, 8887440439277878247L}).toString());
                } else if (this.b.equals(new ObfuscatedString(new long[]{3918372652691530162L, -7506941524120853315L}).toString())) {
                    sb.append(new ObfuscatedString(new long[]{-7576313894830081200L, 3273876182395077736L, -6804934686943346467L, 6265137607483236743L, -6587361725698533705L, -5533966615222148275L, -7626752159076359860L, 8822485732966951585L, -6417035735843422333L, -7719405131631889173L, -2378884262852328873L, -585816380681875758L, 2534788229458948880L, -1308499384380432369L, -873782841043189487L, -7631461248105944258L, 903043058743889861L, -1065255878886614694L, -457108042735274041L, 4150896945465525284L, -1682065030498526335L}).toString());
                } else if (this.b.equals(new ObfuscatedString(new long[]{-9077313479902450535L, 8391831348270862165L, 7421532298026027396L}).toString())) {
                    sb.append(new ObfuscatedString(new long[]{-7203774237059376626L, 2106653019423971569L, -3544948093861094109L, 7256701813075395308L, -2991209237768163218L, 5962113933154319580L, -3385882662412379453L, 8125334226229082852L, -5504262623715122812L, -6498912640819577094L, 52086705007532234L, 8164938070648615103L, -6201171698440484353L, -7330531229898117958L, 1144319363476680494L, 4558419563847373294L, -638262886305203816L, -6668671956212501450L, -56577856725170984L, -6949428111796069164L, -2922723633107525707L, 987131502068782326L}).toString());
                } else if (this.b.equals(new ObfuscatedString(new long[]{-8371839106919263526L, 952713808473856098L}).toString())) {
                    sb.append(new ObfuscatedString(new long[]{-46672032025871461L, -746472821915118806L, -5965540471203096839L, -8717935745088243492L, -2075928516018160134L, -6939559887920806805L, 6401221721775444098L, -7842514569104345356L, 4959980430469964150L, 7562013161500943865L, -7478921922422199954L, -1726559204354967910L, -2580884088867938358L, -3419710390199727925L, 6294556075972790456L, -5913645856954228116L, 758201528605573420L, 1835488914992266965L, 660146117619061770L, 10692343635683596L}).toString());
                } else if (this.b.equals(new ObfuscatedString(new long[]{-8967207285871654485L, -293414147750673223L}).toString())) {
                    sb.append(new ObfuscatedString(new long[]{1158408439161918040L, -125251755050544713L, -6246317428664393099L, -3490544104838991645L, 4338653306618761450L, -4251829741875801671L, 8716295271296193030L, 4134059348390773545L, -5599313450668550436L, -7655282262711216943L, 3037756178944225138L, -1800821218883327463L, -6715081349065397245L, 6180627720967189759L, 4866932281173693378L, 7357528099916920929L, -8750876907418812964L, -3933523861272588504L, 1834950324192805405L, -6118081554844820199L}).toString());
                } else if (this.b.equals(new ObfuscatedString(new long[]{-7275091661298646573L, -5493572505082822606L, -2479310513325621308L}).toString())) {
                    sb.append(new ObfuscatedString(new long[]{7646856073857610491L, -7415509756220717611L, 2496634751881503986L, -7064374538252268652L, -6108111844874209725L, -980919887533552773L, -3807002779748756710L, 4004770472297434430L, -5275004963003197523L, -1690599622926556443L, -7343077872538570628L, 2841568874310576617L, -6197068006595033858L, -3541204141178583082L, -1968998901350994788L, -2532981134815348331L, -5742197098377401028L, 1235391792003618798L, -6500508981998192821L, -7045749677618587961L, -8326934223317943935L, 2347636104465844005L, 7295787723142060044L, -7309039192472595927L}).toString());
                } else if (this.b.equals(new ObfuscatedString(new long[]{-1534272072909172358L, -6907925683672549047L}).toString())) {
                    sb.append(new ObfuscatedString(new long[]{8681607488087789743L, -751263058726988001L, -2108096822213830051L, 5153092594121791085L}).toString());
                }
            }
            if (gen.this.w.isChecked()) {
                sb.append(new ObfuscatedString(new long[]{-935066217356282020L, -3173542604005003974L, 2838650490867078782L, 7241595065803788631L, 5256346512387669665L, 480610710519177294L}).toString());
            }
            sb.append(new ObfuscatedString(new long[]{986851104019002356L, -4477307482766865047L}).toString());
            if (obj.equals(new ObfuscatedString(new long[]{2495483396281995405L, -1953747034516634185L, 8618098522888576598L}).toString())) {
                if (gen.this.vj.isChecked()) {
                    if (!gen.this.o.isChecked() && !gen.this.p.isChecked()) {
                        StringBuilder m3341xc20437a55 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
                        m3341xc20437a55.append(new ObfuscatedString(new long[]{-5384269072793675539L, 299462792591520013L, 6578706778176493205L, 6639198157828981515L}).toString());
                        sb.append(m3341xc20437a55.toString());
                    } else {
                        StringBuilder m3341xc20437a56 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
                        m3341xc20437a56.append(new ObfuscatedString(new long[]{-2270759059915067818L, 8121896017971976826L}).toString());
                        m3341xc20437a56.append(sb4);
                        m3341xc20437a56.append(new ObfuscatedString(new long[]{6774263095549764929L, 5552570419241866689L, 7171373907964513756L, -8950513450681932582L}).toString());
                        sb.append(m3341xc20437a56.toString());
                    }
                } else {
                    StringBuilder m3341xc20437a57 = AbstractC0749x8313616e.m3341xc20437a5(obfuscatedString);
                    m3341xc20437a57.append(new ObfuscatedString(new long[]{-9002790592750524048L, 8877862477769555336L}).toString());
                    m3341xc20437a57.append(sb4);
                    m3341xc20437a57.append(new ObfuscatedString(new long[]{448701518481373179L, -6574790764844412099L, -1051222464921688055L, -1554503661461964887L}).toString());
                    sb.append(m3341xc20437a57.toString());
                }
            }
            gen.mPref.edit().putString(new ObfuscatedString(new long[]{3636444665888464463L, -2936655520072512221L}).toString(), gen.this.E.getText().toString()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{-6875891204884655345L, -1434128550536175662L, -4230052918395922133L}).toString(), gen.this.o.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{972771067157835092L, -8275518473981749549L, 7896581346960006570L}).toString(), gen.this.p.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{-7486223780586368259L, 2914864251160149298L, -1491977301042831056L}).toString(), gen.this.q.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{6466824755865768059L, 2298185982171101728L, 1182256899930378879L}).toString(), gen.this.r.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{3207090031506579478L, -4980500756722521650L, 8673518427362210042L}).toString(), gen.this.s.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{-3449427278272853686L, 8998732393956971204L, -8463266282693436301L}).toString(), gen.this.t.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{1734668835292850965L, 4504048526033084494L, 2454741026755410785L}).toString(), gen.this.u.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{4622632149131015564L, 484831468657960536L, 7983676212208319977L}).toString(), gen.this.vj.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{-3482873555586021668L, 4202346226774393305L, -4864930737598863317L}).toString(), gen.this.w.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{8315932491242989636L, -8600599619698546513L, 7829962353809551318L}).toString(), gen.this.x.isChecked()).commit();
            gen.mPref.edit().putBoolean(new ObfuscatedString(new long[]{-7453993486141763498L, 4080991774827067295L, -2341625303706608835L}).toString(), gen.this.y.isChecked()).commit();
            gen.mPref.edit().putInt(new ObfuscatedString(new long[]{-2376081034676070656L, 389048170770425130L, 4180875412367181116L}).toString(), gen.this.A.getCheckedRadioButtonId()).commit();
            gen.mPref.edit().putInt(new ObfuscatedString(new long[]{-8209030535559070905L, -6523811481410627009L, -9075643432879916706L}).toString(), gen.this.C.getSelectedItemPosition()).commit();
            gen.mPref.edit().putInt(new ObfuscatedString(new long[]{5283633051294333907L, -144647184118992212L, -943020921896683743L}).toString(), gen.this.D.getSelectedItemPosition()).commit();
            gen.mPref.edit().putInt(new ObfuscatedString(new long[]{-3189512077392177256L, 3237483346541372145L, 6855525729972337458L}).toString(), gen.this.F.getSelectedItemPosition()).commit();
            gen.this.generateListener.onGenerate(sb.toString());
        }
    };
    private DialogInterface.OnClickListener cancel = new DialogInterface.OnClickListener() { // from class: com.tknetwork.tunnel.utils.gen.2
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (gen.this.cancelListener != null) {
                gen.this.cancelListener.onCancelListener();
            }
        }
    };
    private DialogInterface.OnClickListener neutral = new DialogInterface.OnClickListener() { // from class: com.tknetwork.tunnel.utils.gen.3
        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (gen.this.neutralButtonListener != null) {
                gen.this.neutralButtonListener.onNeutralListener();
            }
        }
    };

    /* loaded from: classes3.dex */
    public interface OnCancelListener {
        void onCancelListener();
    }

    /* loaded from: classes3.dex */
    public interface OnGenerateListener {
        void onGenerate(String str);
    }

    /* loaded from: classes3.dex */
    public interface OnNeutralListener {
        void onNeutralListener();
    }

    public gen(Context context2) {
        context = context2;
        this.adb = new AlertDialog.Builder(context2);
    }

    private View generatorView() {
        LayoutInflater from = LayoutInflater.from(context);
        inflater = from;
        view = from.inflate(R.layout.gen, (ViewGroup) null);
        mPref = context.getSharedPreferences(new ObfuscatedString(new long[]{-4559891745527326746L, 786365679974712059L, 8491503141230196176L}).toString(), 0);
        this.sshView = view.findViewById(R.id.SSHcrollView);
        TextInputEditText textInputEditText = (TextInputEditText) view.findViewById(R.id.editTextInjectUrl);
        this.E = textInputEditText;
        textInputEditText.setText(mPref.getString(new ObfuscatedString(new long[]{6181297272477514966L, 5809801672111032492L}).toString(), new ObfuscatedString(new long[]{-6493751022115920206L}).toString()));
        Spinner spinner = (Spinner) view.findViewById(R.id.spinnerRequestMethod);
        this.C = spinner;
        spinner.setSelection(mPref.getInt(new ObfuscatedString(new long[]{1241771090248545717L, 7105735248542944118L, -5483254532078926220L}).toString(), 0));
        Spinner spinner2 = (Spinner) view.findViewById(R.id.spinnerInjectMethod);
        this.D = spinner2;
        spinner2.setSelection(mPref.getInt(new ObfuscatedString(new long[]{3905522789493516774L, 966147775436395487L, 5210288930111703591L}).toString(), 0));
        CheckBox checkBox = (CheckBox) view.findViewById(R.id.checkBoxFrontQuery);
        this.o = checkBox;
        checkBox.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{-7160356646366849270L, -932248104206401174L, -3930740213484096142L}).toString(), false));
        CheckBox checkBox2 = (CheckBox) view.findViewById(R.id.checkBoxBackQuery);
        this.p = checkBox2;
        checkBox2.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{2922961904201961513L, -2087400194709844342L, -5365186983607760413L}).toString(), false));
        CheckBox checkBox3 = (CheckBox) view.findViewById(R.id.checkBoxOnlineHost);
        this.q = checkBox3;
        checkBox3.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{-2567736045213106663L, 744075286266411698L, -985646429090886638L}).toString(), false));
        CheckBox checkBox4 = (CheckBox) view.findViewById(R.id.checkBoxForwardedFor);
        this.r = checkBox4;
        checkBox4.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{2590930609546099148L, 3498063553442693477L, 886161960519010687L}).toString(), false));
        CheckBox checkBox5 = (CheckBox) view.findViewById(R.id.checkBoxForwardHost);
        this.s = checkBox5;
        checkBox5.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{-3161223391045801622L, -3301722349436159188L, -4486732950926868827L}).toString(), false));
        CheckBox checkBox6 = (CheckBox) view.findViewById(R.id.checkBoxKeepAlive);
        this.t = checkBox6;
        checkBox6.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{4178276091201615862L, 1587346771695728393L, -8090321917030132476L}).toString(), false));
        CheckBox checkBox7 = (CheckBox) view.findViewById(R.id.checkBoxUserAgent);
        this.u = checkBox7;
        checkBox7.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{5186089548595967958L, -5794999589946966287L, 8941028024196327869L}).toString(), false));
        Spinner spinner3 = (Spinner) view.findViewById(R.id.spinner2);
        this.F = spinner3;
        spinner3.setSelection(mPref.getInt(new ObfuscatedString(new long[]{-5904103298829859081L, -688825183715000944L, -192281960309203704L}).toString(), 0));
        CheckBox checkBox8 = (CheckBox) view.findViewById(R.id.checkBoxRealRequest);
        this.vj = checkBox8;
        checkBox8.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{7150054876112630072L, 7406775367435954569L, -5793742867239494852L}).toString(), false));
        CheckBox checkBox9 = (CheckBox) view.findViewById(R.id.checkBoxDualConnect);
        this.w = checkBox9;
        checkBox9.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{4773625029521783944L, 3025183255476884215L, 6636636178874760851L}).toString(), false));
        RadioGroup radioGroup = (RadioGroup) view.findViewById(R.id.radio1);
        this.A = radioGroup;
        this.B = (RadioButton) view.findViewById(radioGroup.getCheckedRadioButtonId());
        this.x = (CheckBox) view.findViewById(R.id.rotationMethodCheckbox);
        this.y = (CheckBox) view.findViewById(R.id.splitNoDelayCheckbox);
        this.F.setEnabled(false);
        this.o.setOnClickListener(new View.OnClickListener() { // from class: com.tknetwork.tunnel.utils.gen.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                gen.this.p.setChecked(false);
            }
        });
        this.p.setOnClickListener(new View.OnClickListener() { // from class: com.tknetwork.tunnel.utils.gen.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                gen.this.o.setChecked(false);
            }
        });
        this.u.setOnClickListener(new View.OnClickListener() { // from class: com.tknetwork.tunnel.utils.gen.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                if (gen.this.F.isEnabled()) {
                    gen.this.F.setEnabled(false);
                } else {
                    gen.this.F.setEnabled(true);
                }
            }
        });
        this.A.check(mPref.getInt(new ObfuscatedString(new long[]{5425167109271179671L, -9085704661717853547L, 1062570071127497224L}).toString(), R.id.radioMerger));
        this.A.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: com.tknetwork.tunnel.utils.gen.7
            @Override // android.widget.RadioGroup.OnCheckedChangeListener
            public final void onCheckedChanged(RadioGroup radioGroup2, int i) {
                gen genVar = gen.this;
                genVar.B = (RadioButton) genVar.A.findViewById(i);
                if (gen.this.A.indexOfChild(gen.this.B) == 1) {
                    gen.this.y.setEnabled(true);
                    gen.this.y.setChecked(gen.mPref.getBoolean(new ObfuscatedString(new long[]{4269506758817475859L, 2497855331064949298L, 5080192835530293594L}).toString(), false));
                } else {
                    gen.this.y.setEnabled(false);
                    gen.this.y.setChecked(false);
                }
            }
        });
        this.x.setChecked(mPref.getBoolean(new ObfuscatedString(new long[]{4584154718563089165L, 5861322048385254932L, -7764758202210786682L}).toString(), false));
        this.x.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.tknetwork.tunnel.utils.gen.8
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                if (z) {
                    gen.this.E.setHint(new ObfuscatedString(new long[]{-3515654289752971205L, -5738290829485119558L, -8743304269124827452L, 4465090628069947660L}).toString());
                } else {
                    gen.this.E.setHint(new ObfuscatedString(new long[]{-5968507668136707023L, 4885673050357043538L, 4485281997758409200L}).toString());
                }
            }
        });
        return view;
    }

    public void close() {
        this.adb.create().dismiss();
    }

    public void setCancelListener(CharSequence charSequence, OnCancelListener onCancelListener) {
        this.cancelButtonName = charSequence;
        this.cancelListener = onCancelListener;
    }

    public void setDialogIcon(int i) {
        this.mIcon = i;
    }

    public void setDialogTitle(String str) {
        this.title = str;
    }

    public void setGenerateListener(CharSequence charSequence, OnGenerateListener onGenerateListener) {
        this.generateButtonName = charSequence;
        this.generateListener = onGenerateListener;
    }

    public void setNeutralButtonListener(CharSequence charSequence, OnNeutralListener onNeutralListener) {
        this.neutralButtonName = charSequence;
        this.neutralButtonListener = onNeutralListener;
    }

    public void show() {
        this.adb.setCancelable(false);
        this.adb.setView(generatorView());
        int i = this.mIcon;
        if (i != 0) {
            this.adb.setIcon(i);
        }
        String str = this.title;
        if (str != null) {
            this.adb.setTitle(str);
        }
        this.adb.setView(generatorView());
        if (this.generateListener != null) {
            this.adb.setPositiveButton(this.generateButtonName, this.generate);
        }
        this.adb.setNegativeButton(new ObfuscatedString(new long[]{-6567287783629065095L, 1698625840242020391L}).toString(), (DialogInterface.OnClickListener) null);
        if (this.neutralButtonListener != null) {
            this.adb.setNeutralButton(this.neutralButtonName, this.neutral);
        }
        this.adb.create().show();
    }
}
