package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Base64;
import androidx.annotation.UiThread;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;
import java.util.Locale;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzca implements zzd {
    private final Application zza;
    private final zzbw zzb;
    private final Handler zzc;
    private final Executor zzd;
    private final zze zze;
    private final zzan zzf;
    private final zzbb zzg;
    private final zzap zzh;

    public zzca(Application application, zzbw zzbwVar, Handler handler, Executor executor, zze zzeVar, zzan zzanVar, zzbb zzbbVar, zzap zzapVar) {
        this.zza = application;
        this.zzb = zzbwVar;
        this.zzc = handler;
        this.zzd = executor;
        this.zze = zzeVar;
        this.zzf = zzanVar;
        this.zzg = zzbbVar;
        this.zzh = zzapVar;
    }

    @UiThread
    private final void zzg(JSONObject jSONObject) {
        String optString = jSONObject.optString(new ObfuscatedString(new long[]{7362189898430963678L, 3914992496327185244L}).toString());
        if (TextUtils.isEmpty(optString)) {
            new ObfuscatedString(new long[]{-3312192555466983398L, -7504314095818369640L, 4420759442185718318L, 7477376972920151754L}).toString();
            new ObfuscatedString(new long[]{-4702615389691272564L, -8449186281918335023L, 8204064723543868760L, -2619686399271761544L, 6973980030625001988L}).toString();
        }
        Uri parse = Uri.parse(optString);
        if (parse.getScheme() == null) {
            String valueOf = String.valueOf(optString);
            new ObfuscatedString(new long[]{-2855793661259239692L, -840761946013542868L, -3459889585966834977L, -3862591814389634473L}).toString();
            new ObfuscatedString(new long[]{7166870680562343232L, 7845712130754909321L, 2771646061281741764L, 1977415020789079911L, -2128841580261464633L}).toString().concat(valueOf);
        }
        try {
            this.zzb.startActivity(new Intent(new ObfuscatedString(new long[]{5609064578417451753L, -6274525864083382704L, -3301088467139518557L, -3803197126659473028L, -2729492505796923032L}).toString(), parse));
        } catch (ActivityNotFoundException unused) {
            String valueOf2 = String.valueOf(optString);
            new ObfuscatedString(new long[]{-2132546499272911419L, -7780933796770764547L, -5334665779306643203L, 503521481118840785L}).toString();
            new ObfuscatedString(new long[]{8199892754028385701L, -7228144920531827701L, 9164442541696271758L, -8336600490615740637L, 3586472250374309256L, 1675743510208394831L}).toString().concat(valueOf2);
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzd
    public final Executor zza() {
        final Handler handler = this.zzc;
        Objects.requireNonNull(handler);
        return new Executor() { // from class: com.google.android.gms.internal.consent_sdk.zzby
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.consent_sdk.zzd
    @UiThread
    public final boolean zzb(String str, JSONObject jSONObject) {
        char c;
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1370505102:
                if (str.equals(new ObfuscatedString(new long[]{2352286047604218026L, -3268563198632316853L, -7719951915194437121L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -278739366:
                if (str.equals(new ObfuscatedString(new long[]{647950973106833346L, 592642881498561317L, -8929994401195527071L, 2887425908566614352L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 150940456:
                if (str.equals(new ObfuscatedString(new long[]{-1450937198759578284L, 1838507821905867576L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1671672458:
                if (str.equals(new ObfuscatedString(new long[]{854104451064790297L, 8027438913172498350L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        return false;
                    }
                    zzc();
                    return true;
                }
                zzg(jSONObject);
                return true;
            }
            String optString = jSONObject.optString(new ObfuscatedString(new long[]{-5831038424367530162L, 2428264153845787924L}).toString());
            switch (optString.hashCode()) {
                case -954325659:
                    if (optString.equals(new ObfuscatedString(new long[]{255124063457508617L, -5823893065079132165L, 2064688686978958854L, 914444400102791405L, -6746915364848012076L, -8419845092608598473L}).toString())) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -258041904:
                    if (optString.equals(new ObfuscatedString(new long[]{4882452779844642260L, 2405504546108947601L, -7561344821640663132L}).toString())) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 429411856:
                    if (optString.equals(new ObfuscatedString(new long[]{-443968333909251634L, -7961396141309275001L, -4692969516454996318L, -5705527565227576544L, -2479022312785435837L}).toString())) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 467888915:
                    if (optString.equals(new ObfuscatedString(new long[]{4330941349425747001L, 2682853156491428417L, -9187776696699354796L, -4533627226638298709L, -861262807333582761L}).toString())) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 1666911234:
                    if (optString.equals(new ObfuscatedString(new long[]{-6641372589407197345L, -1157053784685037659L, 8026364403545332354L}).toString())) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            if (c2 != 0 && c2 != 1 && c2 != 2 && c2 != 3 && c2 != 4) {
                this.zzg.zzd(new zzg(1, new ObfuscatedString(new long[]{7563099455851466676L, 7690345615753367873L, -2944751165455718856L, 6728759366987913584L, -3129983575687342839L, 3049843956784542082L, -4704905868402429238L}).toString()));
            } else {
                this.zzg.zzc(3);
            }
            return true;
        }
        this.zzg.zze();
        return true;
    }

    @UiThread
    public final void zzc() {
        this.zzd.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbz
            @Override // java.lang.Runnable
            public final void run() {
                zzca.this.zzd();
            }
        });
    }

    public final /* synthetic */ void zzd() {
        String concat;
        JSONObject jSONObject = new JSONObject();
        Application application = this.zza;
        try {
            jSONObject.put(new ObfuscatedString(new long[]{3550586941643619126L, -895726321902290160L}).toString(), application.getPackageManager().getApplicationLabel(application.getApplicationInfo()).toString());
            String obfuscatedString = new ObfuscatedString(new long[]{-8988128866400948191L, -6808832794385929887L}).toString();
            Drawable applicationIcon = application.getPackageManager().getApplicationIcon(application.getApplicationInfo());
            if (applicationIcon == null) {
                concat = null;
            } else {
                Bitmap createBitmap = Bitmap.createBitmap(applicationIcon.getIntrinsicWidth(), applicationIcon.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(createBitmap);
                applicationIcon.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                applicationIcon.draw(canvas);
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                createBitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
                concat = new ObfuscatedString(new long[]{7757829354699264847L, -850928857572802405L, 3545339745929079421L, 1669269680328764738L}).toString().concat(String.valueOf(Base64.encodeToString(byteArrayOutputStream.toByteArray(), 2)));
            }
            jSONObject.put(obfuscatedString, concat);
            jSONObject.put(new ObfuscatedString(new long[]{-5943040453786209492L, -6329384578047093863L, 988427002729545602L}).toString(), this.zzh.zzc());
        } catch (JSONException unused) {
        }
        this.zzg.zza().zzd(new ObfuscatedString(new long[]{189257268252771170L, -7724711677448994187L, 1767259176809288275L, 3512832751978153841L, -6121592161546863528L}).toString(), jSONObject.toString());
    }

    public final void zze(String str) {
        new ObfuscatedString(new long[]{536541339002648348L, 6972184699869578220L, 8464820685908333514L, 1828655121287083481L}).toString();
        new ObfuscatedString(new long[]{-251858912962150925L, -2104522632119497302L, 3200226604501124722L, 4534999286194787025L}).toString().concat(String.valueOf(str));
        Uri parse = Uri.parse(str);
        this.zze.zzb(parse.getQueryParameter(new ObfuscatedString(new long[]{-8318763649295427559L, -6829481208717004567L}).toString()), parse.getQueryParameter(new ObfuscatedString(new long[]{2767355124258353336L, 315964895014973614L}).toString()), this, this.zzf);
    }

    public final void zzf(int i, String str, String str2) {
        this.zzg.zzf(new zzg(2, String.format(Locale.US, new ObfuscatedString(new long[]{2937094696889640998L, -457877316457896966L, 7588852355058822004L, 3940363423363031606L, -7697428414512708880L}).toString(), Integer.valueOf(i), str2, str)));
    }
}
