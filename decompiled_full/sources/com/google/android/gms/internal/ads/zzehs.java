package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.core.app.NotificationCompat;
import androidx.core.app.NotificationManagerCompat;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Timer;

/* loaded from: classes2.dex */
public final class zzehs extends zzbwl {

    @VisibleForTesting
    final Map zza = new HashMap();
    private final Context zzb;
    private final zzdwf zzc;
    private final zzceh zzd;
    private final zzehh zze;
    private final zzflw zzf;
    private String zzg;
    private String zzh;

    @VisibleForTesting
    public zzehs(Context context, zzehh zzehhVar, zzceh zzcehVar, zzdwf zzdwfVar, zzflw zzflwVar) {
        this.zzb = context;
        this.zzc = zzdwfVar;
        this.zzd = zzcehVar;
        this.zze = zzehhVar;
        this.zzf = zzflwVar;
    }

    public static void zzc(Context context, zzdwf zzdwfVar, zzflw zzflwVar, zzehh zzehhVar, String str, String str2, Map map) {
        String obfuscatedString;
        String zza;
        if (true != com.google.android.gms.ads.internal.zzt.zzo().zzz(context)) {
            obfuscatedString = new ObfuscatedString(new long[]{6878101918119390645L, 5709725417241349302L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{1054370132479925685L, 5540478007352842547L}).toString();
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue() && zzdwfVar != null) {
            zzdwe zza2 = zzdwfVar.zza();
            zza2.zzb(new ObfuscatedString(new long[]{-8669340114686797570L, -4393846580066347980L}).toString(), str);
            zza2.zzb(new ObfuscatedString(new long[]{-4654325417745900613L, 2099425808605069274L}).toString(), str2);
            zza2.zzb(new ObfuscatedString(new long[]{-7005850311301401941L, 6468972058303861935L, -8972403269804653441L, 2632093281482549053L}).toString(), obfuscatedString);
            zza2.zzb(new ObfuscatedString(new long[]{5658359913199712739L, -3835429382455373608L, -147976568167703228L}).toString(), String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            for (Map.Entry entry : map.entrySet()) {
                zza2.zzb((String) entry.getKey(), (String) entry.getValue());
            }
            zza = zza2.zzf();
        } else {
            zzflv zzb = zzflv.zzb(str2);
            zzb.zza(new ObfuscatedString(new long[]{4591105714113347365L, -1721308137425396919L}).toString(), str);
            zzb.zza(new ObfuscatedString(new long[]{-3760281809757302074L, -7281037367970534863L, -7110525380422384382L, -2276831054891679240L}).toString(), obfuscatedString);
            zzb.zza(new ObfuscatedString(new long[]{-7473109083447400046L, 7308265304581788278L, -5338535663523308391L}).toString(), String.valueOf(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis()));
            for (Map.Entry entry2 : map.entrySet()) {
                zzb.zza((String) entry2.getKey(), (String) entry2.getValue());
            }
            zza = zzflwVar.zza(zzb);
        }
        zzehhVar.zzd(new zzehj(com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis(), str, zza, 2));
    }

    @VisibleForTesting
    public static final PendingIntent zzq(Context context, String str, String str2, String str3) {
        Intent intent = new Intent();
        intent.setAction(str);
        intent.putExtra(new ObfuscatedString(new long[]{5335479486263201756L, 4846855248406931867L, -6020763149814036959L, 7936958485792636936L, 84229677409277761L}).toString(), str);
        intent.putExtra(new ObfuscatedString(new long[]{-349202898559716600L, -5762351673877976954L, 3577348615427164752L}).toString(), str2);
        intent.putExtra(new ObfuscatedString(new long[]{-8416832805264531464L, -3291975318759992758L}).toString(), str3);
        if (Build.VERSION.SDK_INT >= 29 && str.equals(new ObfuscatedString(new long[]{5151308117208798527L, -8508503673702653512L, 7116119502297514539L, 2833258885199656626L, -3792744330465227534L}).toString())) {
            intent.setClassName(context, new ObfuscatedString(new long[]{784606269556708556L, 6005987051519208755L, 1663959446352851837L, -5171949988942923756L, -2620768029680221944L, -3348803527459556009L, -3643929546689402886L, 4291685518050074012L}).toString());
            return zzfuj.zza(context, 0, intent, 201326592);
        }
        intent.setClassName(context, new ObfuscatedString(new long[]{-8139873074790593458L, 5200109211986738405L, 1777684510182548554L, -1940125146644661105L, 3747289070696741418L, 227845400290347173L}).toString());
        return zzfuj.zzb(context, 0, intent, zzfuj.zza | 1073741824, 0);
    }

    private static String zzr(int i, String str) {
        Resources zze = com.google.android.gms.ads.internal.zzt.zzo().zze();
        if (zze == null) {
            return str;
        }
        return zze.getString(i);
    }

    private final void zzs(String str, String str2, Map map) {
        zzc(this.zzb, this.zzc, this.zzf, this.zze, str, str2, map);
    }

    private final void zzt() {
        String zzc;
        boolean z = false;
        try {
            com.google.android.gms.ads.internal.zzt.zzp();
            com.google.android.gms.ads.internal.util.zzbt zzy = com.google.android.gms.ads.internal.util.zzt.zzy(this.zzb);
            IObjectWrapper wrap = ObjectWrapper.wrap(this.zzb);
            String str = this.zzh;
            String str2 = this.zzg;
            zzegz zzegzVar = (zzegz) this.zza.get(str2);
            if (zzegzVar == null) {
                zzc = new ObfuscatedString(new long[]{174232082991237243L}).toString();
            } else {
                zzc = zzegzVar.zzc();
            }
            z = zzy.zzg(wrap, new com.google.android.gms.ads.internal.offline.buffering.zza(str, str2, zzc));
            if (!z) {
                z = zzy.zzf(ObjectWrapper.wrap(this.zzb), this.zzh, this.zzg);
            }
        } catch (RemoteException e) {
            zzcec.zzh(new ObfuscatedString(new long[]{8593673434379690703L, 7630131697306822019L, 7211948071060717313L, -2682175471532847597L, 454412819969795133L, 809006914181807019L, -5383684665306583960L}).toString(), e);
        }
        if (!z) {
            this.zze.zzc(this.zzg);
            zzs(this.zzg, new ObfuscatedString(new long[]{-775157011807118476L, -8616202827781762256L, 6506844699477443516L, 5106068283934112953L, -5935336497759527504L, -5261343150849154097L, -6861070104241990488L}).toString(), zzgad.zzd());
        }
    }

    private final void zzu(final Activity activity, @Nullable final com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        com.google.android.gms.ads.internal.zzt.zzp();
        if (!NotificationManagerCompat.from(activity).areNotificationsEnabled()) {
            if (Build.VERSION.SDK_INT >= 33) {
                activity.requestPermissions(new String[]{new ObfuscatedString(new long[]{5260057193212366187L, 5215962999188903630L, -3103337678308828268L, -7690302978238606051L, 8444047002314776290L, -2235146250872232275L}).toString()}, 12345);
                zzs(this.zzg, new ObfuscatedString(new long[]{-3987068270005482488L, 9039522538965887797L}).toString(), zzgad.zzd());
                return;
            }
            com.google.android.gms.ads.internal.zzt.zzp();
            AlertDialog.Builder zzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(activity);
            zzJ.setTitle(zzr(R.string.notifications_permission_title, new ObfuscatedString(new long[]{-5449970538332985922L, 5849711730452841582L, -3745139634676472327L, -2458593095446189437L, -1780994570789369581L, -7062076763737647567L}).toString())).setPositiveButton(zzr(R.string.notifications_permission_confirm, new ObfuscatedString(new long[]{-8123331148865220892L, 455169820482302853L}).toString()), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzehl
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzehs.this.zzd(activity, zzmVar, dialogInterface, i);
                }
            }).setNegativeButton(zzr(R.string.notifications_permission_decline, new ObfuscatedString(new long[]{770098359865074833L, 6141491571420419271L, -1936902823606005913L}).toString()), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzehm
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzehs.this.zzk(zzmVar, dialogInterface, i);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzehn
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    zzehs.this.zzl(zzmVar, dialogInterface);
                }
            });
            zzJ.create().show();
            zzs(this.zzg, new ObfuscatedString(new long[]{-4859935591851502416L, 3371943004984725470L}).toString(), zzgad.zzd());
            return;
        }
        zzt();
        zzv(activity, zzmVar);
    }

    private final void zzv(Activity activity, @Nullable final com.google.android.gms.ads.internal.overlay.zzm zzmVar) {
        XmlResourceParser layout;
        String zzb;
        AlertDialog create;
        com.google.android.gms.ads.internal.zzt.zzp();
        AlertDialog.Builder onCancelListener = com.google.android.gms.ads.internal.util.zzt.zzJ(activity).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzehk
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                com.google.android.gms.ads.internal.overlay.zzm zzmVar2 = com.google.android.gms.ads.internal.overlay.zzm.this;
                if (zzmVar2 != null) {
                    zzmVar2.zzb();
                }
            }
        });
        int i = R.layout.offline_ads_dialog;
        Resources zze = com.google.android.gms.ads.internal.zzt.zzo().zze();
        Drawable drawable = null;
        if (zze == null) {
            layout = null;
        } else {
            layout = zze.getLayout(i);
        }
        if (layout == null) {
            onCancelListener.setMessage(zzr(R.string.offline_dialog_text, new ObfuscatedString(new long[]{-2264053308921783543L, -3088888736627269799L, 4131152498718530789L, 8897351388120871638L, 1461371158711039745L, 1028465888424210162L, 273826493227749032L, -6165602403741627710L, 2625166122362821539L}).toString()));
            create = onCancelListener.create();
        } else {
            View inflate = activity.getLayoutInflater().inflate(layout, (ViewGroup) null);
            onCancelListener.setView(inflate);
            zzegz zzegzVar = (zzegz) this.zza.get(this.zzg);
            if (zzegzVar == null) {
                zzb = new ObfuscatedString(new long[]{-472260053820683484L}).toString();
            } else {
                zzb = zzegzVar.zzb();
            }
            if (!zzb.isEmpty()) {
                TextView textView = (TextView) inflate.findViewById(R.id.offline_dialog_advertiser_name);
                textView.setVisibility(0);
                textView.setText(zzb);
            }
            zzegz zzegzVar2 = (zzegz) this.zza.get(this.zzg);
            if (zzegzVar2 != null) {
                drawable = zzegzVar2.zza();
            }
            if (drawable != null) {
                ((ImageView) inflate.findViewById(R.id.offline_dialog_image)).setImageDrawable(drawable);
            }
            create = onCancelListener.create();
            create.getWindow().setBackgroundDrawable(new ColorDrawable(0));
        }
        create.show();
        Timer timer = new Timer();
        timer.schedule(new zzehr(this, create, timer, zzmVar), 3000L);
    }

    public final /* synthetic */ void zzd(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-7560996490688588544L, 7280118568757045404L, -3496887739009139479L}).toString(), new ObfuscatedString(new long[]{2220692614185153295L, 4888619051094475253L}).toString());
        zzs(this.zzg, new ObfuscatedString(new long[]{6627780351821859103L, 3291571505543805676L}).toString(), hashMap);
        activity.startActivity(com.google.android.gms.ads.internal.zzt.zzq().zzf(activity));
        zzt();
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zze(Intent intent) {
        char c;
        char c2 = 2;
        String stringExtra = intent.getStringExtra(new ObfuscatedString(new long[]{4356107515979017965L, -5761952089564967931L, -6301790547320697499L, -4069273082701712880L, 1799403465971460684L}).toString());
        if (!stringExtra.equals(new ObfuscatedString(new long[]{-3102374471378835936L, 3820946124023981261L, -2173627727831939932L, -7767402087886356787L, -3602894576038562670L}).toString()) && !stringExtra.equals(new ObfuscatedString(new long[]{-68649382083071450L, 1296770888538131L, 2478474781525862871L, 992167212311898587L, -2545997281589883165L}).toString())) {
            return;
        }
        String stringExtra2 = intent.getStringExtra(new ObfuscatedString(new long[]{7668129137267218045L, 271506414205810141L, 3632331422104444969L}).toString());
        String stringExtra3 = intent.getStringExtra(new ObfuscatedString(new long[]{-6083852277862687695L, -260742020604030482L}).toString());
        boolean zzz = com.google.android.gms.ads.internal.zzt.zzo().zzz(this.zzb);
        HashMap hashMap = new HashMap();
        if (stringExtra.equals(new ObfuscatedString(new long[]{-5552068109826811522L, -3909265673067481556L, -8245586821354646510L, -1619983854862322981L, 8314099916573073577L}).toString())) {
            hashMap.put(new ObfuscatedString(new long[]{3866155482503478073L, -7366284790517363044L, -4905103068854935057L, 5000353182683588354L, -8058813166673938429L}).toString(), new ObfuscatedString(new long[]{-7212194040886442958L, 2247690881191914701L, -1844530679804300736L, -2953953040916516201L, 1291539964261587918L}).toString());
            if (true != zzz) {
                c = 2;
            } else {
                c = 1;
            }
            hashMap.put(new ObfuscatedString(new long[]{936227288930489918L, 1344781044040982602L}).toString(), String.valueOf(Build.VERSION.SDK_INT));
            hashMap.put(new ObfuscatedString(new long[]{-4762828933998291849L, -6876237182085531764L}).toString(), String.valueOf(stringExtra3.startsWith(new ObfuscatedString(new long[]{899343895464176332L, -2609796383279111253L}).toString())));
            try {
                Intent launchIntentForPackage = this.zzb.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                if (launchIntentForPackage == null) {
                    launchIntentForPackage = new Intent(new ObfuscatedString(new long[]{-3523909213659822061L, -8267351775572431675L, 1888464093779703685L, 4104815716581003374L, -4715523626082203854L}).toString());
                    launchIntentForPackage.setData(Uri.parse(stringExtra3));
                }
                launchIntentForPackage.addFlags(268435456);
                this.zzb.startActivity(launchIntentForPackage);
                hashMap.put(new ObfuscatedString(new long[]{-5611757077672970958L, -4533174403071796554L}).toString(), new ObfuscatedString(new long[]{-7369999282489995077L, -7227405752132053465L}).toString());
            } catch (ActivityNotFoundException unused) {
                hashMap.put(new ObfuscatedString(new long[]{-7916693482146901924L, 7768407808423577182L}).toString(), new ObfuscatedString(new long[]{7609416193455906145L, 1384980883519232615L}).toString());
            }
            c2 = c;
        } else {
            hashMap.put(new ObfuscatedString(new long[]{1106045443132936841L, -865144059710906321L, -3008421386833414262L, -35593542480510152L, -2703227923411824110L}).toString(), new ObfuscatedString(new long[]{7894806786410814740L, -4668705882982748776L, -6539819483527755827L, -5776422340069293203L, 8433744948890624629L}).toString());
        }
        zzs(stringExtra2, new ObfuscatedString(new long[]{-2083932559619433215L, 6661457638499363900L, 2811395029128756643L, -997007218585933616L, 7224410462754451183L}).toString(), hashMap);
        try {
            SQLiteDatabase writableDatabase = this.zze.getWritableDatabase();
            if (c2 == 1) {
                this.zze.zzg(writableDatabase, this.zzd, stringExtra2);
            } else {
                zzehh.zzi(writableDatabase, stringExtra2);
            }
        } catch (SQLiteException e) {
            zzcec.zzg(new ObfuscatedString(new long[]{-3855758703448484493L, 8186556922958041975L, 5417525107691872017L, 8242248210376572933L, -9131148616320158578L, -2477232850424220963L, 5688082785697120434L, 4614412238387949877L}).toString().concat(e.toString()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzf(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) {
        for (int i = 0; i < strArr.length; i++) {
            if (strArr[i].equals(new ObfuscatedString(new long[]{-5746000553385013764L, -8866910032911400351L, -8429209684515744093L, -3674277646882376517L, -8053078737693491289L, -4675482602067559348L}).toString())) {
                zzehu zzehuVar = (zzehu) ObjectWrapper.unwrap(iObjectWrapper);
                Activity zza = zzehuVar.zza();
                com.google.android.gms.ads.internal.overlay.zzm zzb = zzehuVar.zzb();
                HashMap hashMap = new HashMap();
                if (iArr[i] == 0) {
                    hashMap.put(new ObfuscatedString(new long[]{-682696004236354943L, -4149621846290511023L, -6734611315274920662L}).toString(), new ObfuscatedString(new long[]{-9211221135094619369L, -8807615553410723241L}).toString());
                    zzt();
                    zzv(zza, zzb);
                } else {
                    hashMap.put(new ObfuscatedString(new long[]{-5184394608135797740L, 6069677075883559052L, 4825626763121008320L}).toString(), new ObfuscatedString(new long[]{8029292463342028955L, -6056139842785388058L}).toString());
                    if (zzb != null) {
                        zzb.zzb();
                    }
                }
                zzs(this.zzg, new ObfuscatedString(new long[]{7801251781582407428L, -292207073075877915L}).toString(), hashMap);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzg(IObjectWrapper iObjectWrapper) {
        zzehu zzehuVar = (zzehu) ObjectWrapper.unwrap(iObjectWrapper);
        final Activity zza = zzehuVar.zza();
        final com.google.android.gms.ads.internal.overlay.zzm zzb = zzehuVar.zzb();
        this.zzg = zzehuVar.zzc();
        this.zzh = zzehuVar.zzd();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzip)).booleanValue()) {
            zzs(this.zzg, new ObfuscatedString(new long[]{2341027776388483478L, -8523316280213544238L, 7723173580924738438L, 6597551260610492842L}).toString(), zzgad.zzd());
            com.google.android.gms.ads.internal.zzt.zzp();
            AlertDialog.Builder zzJ = com.google.android.gms.ads.internal.util.zzt.zzJ(zza);
            zzJ.setTitle(zzr(R.string.offline_opt_in_title, new ObfuscatedString(new long[]{4155701193172539993L, -3418792641117829145L, 7913820059174256340L, -6520336909507658725L, 285429972677462518L}).toString())).setMessage(zzr(R.string.offline_opt_in_message, new ObfuscatedString(new long[]{-3459958916449120029L, 3454801134030644316L, -2209319784939220693L, 1839740828846529879L, -7991879973551544031L, -7794952517067854475L, 5215145640661492877L, 470079907885342703L, 3462515032672721081L, -3503974754936535511L}).toString())).setPositiveButton(zzr(R.string.offline_opt_in_confirm, new ObfuscatedString(new long[]{-54296530906821631L, -3575973585174686804L}).toString()), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzeho
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzehs.this.zzm(zza, zzb, dialogInterface, i);
                }
            }).setNegativeButton(zzr(R.string.offline_opt_in_decline, new ObfuscatedString(new long[]{1402014144097898133L, 6014698781476308513L, -2151558463893257012L}).toString()), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.internal.ads.zzehp
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    zzehs.this.zzn(zzb, dialogInterface, i);
                }
            }).setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.internal.ads.zzehq
                @Override // android.content.DialogInterface.OnCancelListener
                public final void onCancel(DialogInterface dialogInterface) {
                    zzehs.this.zzo(zzb, dialogInterface);
                }
            });
            zzJ.create().show();
            return;
        }
        zzu(zza, zzb);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzh() {
        final zzceh zzcehVar = this.zzd;
        this.zze.zze(new zzfkp() { // from class: com.google.android.gms.internal.ads.zzeha
            @Override // com.google.android.gms.internal.ads.zzfkp
            public final Object zza(Object obj) {
                zzehh.zzb(zzceh.this, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzi(IObjectWrapper iObjectWrapper, String str, String str2) {
        zzj(iObjectWrapper, new com.google.android.gms.ads.internal.offline.buffering.zza(str, str2, new ObfuscatedString(new long[]{8106911383713473604L}).toString()));
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(9:5|6|(2:18|19)|8|9|10|11|12|13)|24|(0)|8|9|10|11|12|13) */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x012b, code lost:
    
        r9 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x012c, code lost:
    
        r10.put(new com.panda912.muddy.ObfuscatedString(new long[]{8294525251783106870L, 6112382106870362321L, -2421808532521831486L, 9199780666887302528L, -8440282514309185226L}).toString(), r9.getMessage());
        r9 = new com.panda912.muddy.ObfuscatedString(new long[]{3518890484834006140L, 6784864504431150701L, -1120996077623287172L, 307341426247022504L, -3250928619403837613L}).toString();
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00e4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzbwm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzj(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.offline.buffering.zza zzaVar) {
        Bitmap bitmap;
        Context context = (Context) ObjectWrapper.unwrap(iObjectWrapper);
        String obfuscatedString = new ObfuscatedString(new long[]{7449799137355587438L, 6434643590558862249L, 2278531611836453062L, -9038862945694610497L, 3859998940205570315L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{-283960607146268028L, 8130170809838289568L, -7895178082559213011L, 3950565617580825798L, 8527645703582379486L}).toString();
        String str = zzaVar.zza;
        String str2 = zzaVar.zzb;
        String str3 = zzaVar.zzc;
        com.google.android.gms.ads.internal.zzt.zzq().zzg(context, obfuscatedString, obfuscatedString2);
        NotificationCompat.Builder smallIcon = new NotificationCompat.Builder(context, new ObfuscatedString(new long[]{8138685828509693059L, -5527990343255998127L, 83550157371912453L, -1801828131374591359L, 2112752175404215578L}).toString()).setContentTitle(zzr(R.string.offline_notification_title, new ObfuscatedString(new long[]{4530697632554989380L, -6318865695382094156L, -5593469826558243556L, -3891247228804153710L, 700597527672787879L, 7185559018203938271L, -7596242497965477814L}).toString())).setAutoCancel(true).setDeleteIntent(zzq(context, new ObfuscatedString(new long[]{8058473616242398732L, 8030471828915803429L, 6699708667843190894L, 8341148196009629999L, -4619451349991302337L}).toString(), str2, str)).setContentIntent(zzq(context, new ObfuscatedString(new long[]{2307004923573019971L, -765546390871464843L, -5337752697059164394L, -421778026249240849L, -2163848538847405297L}).toString(), str2, str)).setSmallIcon(context.getApplicationInfo().icon).setPriority(((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziq)).intValue()).setSmallIcon(context.getApplicationInfo().icon);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzis)).booleanValue() && !str3.isEmpty()) {
            try {
                bitmap = BitmapFactory.decodeStream(new URL(str3).openConnection().getInputStream());
            } catch (IOException unused) {
            }
            if (bitmap != null) {
                try {
                    smallIcon.setLargeIcon(bitmap).setStyle(new NotificationCompat.BigPictureStyle().bigPicture(bitmap).bigLargeIcon((Bitmap) null));
                } catch (Resources.NotFoundException unused2) {
                }
            }
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(new ObfuscatedString(new long[]{3629615788845036973L, -8158336656512489570L, -3055659034753699613L}).toString());
            HashMap hashMap = new HashMap();
            notificationManager.notify(str2, 54321, smallIcon.build());
            String obfuscatedString3 = new ObfuscatedString(new long[]{7556991693620654619L, 5684053862104189108L, -5995289142169967710L, -4076987393634024021L, -5698206831648984511L}).toString();
            zzs(str2, obfuscatedString3, hashMap);
        }
        bitmap = null;
        if (bitmap != null) {
        }
        NotificationManager notificationManager2 = (NotificationManager) context.getSystemService(new ObfuscatedString(new long[]{3629615788845036973L, -8158336656512489570L, -3055659034753699613L}).toString());
        HashMap hashMap2 = new HashMap();
        notificationManager2.notify(str2, 54321, smallIcon.build());
        String obfuscatedString32 = new ObfuscatedString(new long[]{7556991693620654619L, 5684053862104189108L, -5995289142169967710L, -4076987393634024021L, -5698206831648984511L}).toString();
        zzs(str2, obfuscatedString32, hashMap2);
    }

    public final /* synthetic */ void zzk(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        this.zze.zzc(this.zzg);
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{8866249776221154749L, 3201929692587188057L, 8428632741983064243L}).toString(), new ObfuscatedString(new long[]{7566928900215956988L, 3545494023126029537L}).toString());
        zzs(this.zzg, new ObfuscatedString(new long[]{4449063917049091684L, 6802707567362454454L}).toString(), hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public final /* synthetic */ void zzl(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface) {
        this.zze.zzc(this.zzg);
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{3881838305674628405L, 3112168574494680352L, -7803895293680637247L}).toString(), new ObfuscatedString(new long[]{6403678396727168112L, 4249662013273888671L}).toString());
        zzs(this.zzg, new ObfuscatedString(new long[]{-2884506836941135767L, -8739007797121702331L}).toString(), hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public final /* synthetic */ void zzm(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{8480931321882525150L, -3005263984722979974L, -8146225239187523073L}).toString(), new ObfuscatedString(new long[]{5665757566337382379L, -9205194015589404790L}).toString());
        zzs(this.zzg, new ObfuscatedString(new long[]{-2838716869589532272L, -694753773250748903L, -9130994511565572932L}).toString(), hashMap);
        zzu(activity, zzmVar);
    }

    public final /* synthetic */ void zzn(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface, int i) {
        this.zze.zzc(this.zzg);
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{-1602068678626060419L, -3908763474877236622L, 3263335311105792725L}).toString(), new ObfuscatedString(new long[]{-8863152291680537285L, -1016611815872260402L}).toString());
        zzs(this.zzg, new ObfuscatedString(new long[]{4292824879223408996L, -1233111129046892272L, -6598329902544104545L}).toString(), hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public final /* synthetic */ void zzo(com.google.android.gms.ads.internal.overlay.zzm zzmVar, DialogInterface dialogInterface) {
        this.zze.zzc(this.zzg);
        HashMap hashMap = new HashMap();
        hashMap.put(new ObfuscatedString(new long[]{3179255670040889602L, -5729070814526252127L, -3258275357955080810L}).toString(), new ObfuscatedString(new long[]{-8859265306377449589L, -7711853058080292826L}).toString());
        zzs(this.zzg, new ObfuscatedString(new long[]{5813289347874929648L, -1103397867855787607L, 2609535798011055921L}).toString(), hashMap);
        if (zzmVar != null) {
            zzmVar.zzb();
        }
    }

    public final void zzp(String str, zzdna zzdnaVar) {
        String obfuscatedString;
        String obfuscatedString2;
        if (!TextUtils.isEmpty(zzdnaVar.zzx())) {
            obfuscatedString = zzdnaVar.zzx();
        } else if (zzdnaVar.zzB() != null) {
            obfuscatedString = zzdnaVar.zzB();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{4235003137057941146L}).toString();
        }
        zzbjm zzm = zzdnaVar.zzm();
        if (zzm == null) {
            obfuscatedString2 = new ObfuscatedString(new long[]{-1467820859851549782L}).toString();
        } else {
            try {
                obfuscatedString2 = zzm.zze().toString();
            } catch (RemoteException unused) {
                obfuscatedString2 = new ObfuscatedString(new long[]{-3935513053365903556L}).toString();
            }
        }
        zzbjm zzn = zzdnaVar.zzn();
        Drawable drawable = null;
        if (zzn != null) {
            try {
                IObjectWrapper zzf = zzn.zzf();
                if (zzf != null) {
                    drawable = (Drawable) ObjectWrapper.unwrap(zzf);
                }
            } catch (RemoteException unused2) {
            }
        }
        this.zza.put(str, new zzegv(obfuscatedString, obfuscatedString2, drawable));
    }
}
