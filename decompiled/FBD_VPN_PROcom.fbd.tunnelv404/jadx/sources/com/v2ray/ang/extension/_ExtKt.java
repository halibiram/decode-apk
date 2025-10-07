package com.v2ray.ang.extension;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import androidx.exifinterface.media.ExifInterface;
import com.panda912.muddy.ObfuscatedString;
import com.v2ray.ang.AngApplication;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC1196x2c4a2948;
import defpackage.AbstractC1197x89633db9;
import es.dmoral.toasty.Toasty;
import java.io.Serializable;
import java.net.URI;
import java.net.URLConnection;
import java.util.Arrays;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;

@Metadata(d1 = {"\u0000\u0088\u0001\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0002\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b\u001a\u0012\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\t\u001a\u0012\u0010\n\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b\u001a\u0012\u0010\n\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\t\u001a\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b\u001a\u0012\u0010\u000b\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\t\u001a \u0010\f\u001a\u00020\u0006*\u00020\r2\u0014\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u000f\u001a \u0010\f\u001a\u00020\u0006*\u00020\r2\u0014\u0010\u0012\u001a\u0010\u0012\u0004\u0012\u00020\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u0013\u001a\n\u0010\u0018\u001a\u00020\u0010*\u00020\u0015\u001a\n\u0010\u0019\u001a\u00020\u0010*\u00020\u0015\u001a\u000e\u0010\"\u001a\u0004\u0018\u00010\u0010*\u0004\u0018\u00010\u0010\u001a\n\u0010#\u001a\u00020\u0015*\u00020\u0010\u001a\"\u0010$\u001a\u00020%*\u00020\u00022\b\b\u0002\u0010&\u001a\u00020'2\f\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00060)\u001a(\u0010*\u001a\u0004\u0018\u0001H+\"\n\b\u0000\u0010+\u0018\u0001*\u00020,*\u00020-2\u0006\u0010.\u001a\u00020\u0010H\u0086\b¢\u0006\u0002\u0010/\u001a(\u0010*\u001a\u0004\u0018\u0001H+\"\n\b\u0000\u0010+\u0018\u0001*\u00020,*\u0002002\u0006\u0010.\u001a\u00020\u0010H\u0086\b¢\u0006\u0002\u00101\u001a\f\u00102\u001a\u00020'*\u0004\u0018\u00010\t\u001a#\u00103\u001a\u00020\u0010*\u00020\u00102\u0012\u00104\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u001005\"\u00020\u0010¢\u0006\u0002\u00106\"\u0017\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u000e\u0010\u0014\u001a\u00020\u0015X\u0086T¢\u0006\u0002\n\u0000\"\u000e\u0010\u0016\u001a\u00020\u0017X\u0086T¢\u0006\u0002\n\u0000\"\u0015\u0010\u001a\u001a\u00020\u0015*\u00020\u001b8F¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d\"\u0015\u0010\u001e\u001a\u00020\u0010*\u00020\u001f8F¢\u0006\u0006\u001a\u0004\b \u0010!¨\u00067"}, d2 = {"v2RayApplication", "Lcom/v2ray/ang/AngApplication;", "Landroid/content/Context;", "getV2RayApplication", "(Landroid/content/Context;)Lcom/v2ray/ang/AngApplication;", "toast", "", "message", "", "", "toastSuccess", "toastError", "putOpt", "Lorg/json/JSONObject;", "pair", "Lkotlin/Pair;", "", "", "pairs", "", "THRESHOLD", "", "DIVISOR", "", "toSpeedString", "toTrafficString", "responseLength", "Ljava/net/URLConnection;", "getResponseLength", "(Ljava/net/URLConnection;)J", "idnHost", "Ljava/net/URI;", "getIdnHost", "(Ljava/net/URI;)Ljava/lang/String;", "removeWhiteSpace", "toLongEx", "listenForPackageChanges", "Landroid/content/BroadcastReceiver;", "onetime", "", "callback", "Lkotlin/Function0;", "serializable", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/io/Serializable;", "Landroid/os/Bundle;", "key", "(Landroid/os/Bundle;Ljava/lang/String;)Ljava/io/Serializable;", "Landroid/content/Intent;", "(Landroid/content/Intent;Ljava/lang/String;)Ljava/io/Serializable;", "isNotNullEmpty", "concatUrl", "paths", "", "(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;", "com.fbd.tunnel-404_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n_Ext.kt\nKotlin\n*S Kotlin\n*F\n+ 1 _Ext.kt\ncom/v2ray/ang/extension/_ExtKt\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,213:1\n216#2,2:214\n13472#3,2:216\n*S KotlinDebug\n*F\n+ 1 _Ext.kt\ncom/v2ray/ang/extension/_ExtKt\n*L\n91#1:214,2\n205#1:216,2\n*E\n"})
/* loaded from: classes3.dex */
public final class _ExtKt {
    public static final double DIVISOR = 1024.0d;
    public static final long THRESHOLD = 1000;

    @NotNull
    public static final String concatUrl(@NotNull String str, @NotNull String... strArr) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{1669855800409774385L, 1112402045399884701L}).toString());
        Intrinsics.checkNotNullParameter(strArr, new ObfuscatedString(new long[]{-7909962063686184501L, -3414183289253493772L}).toString());
        StringBuilder sb = new StringBuilder(StringsKt__StringsKt.trimEnd(str, '/'));
        for (String str2 : strArr) {
            String trim = StringsKt__StringsKt.trim(str2, '/');
            if (trim.length() > 0) {
                sb.append('/');
                sb.append(trim);
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, new ObfuscatedString(new long[]{-2060247991151840812L, -1263277936977723451L, -3428973037690601426L}).toString());
        return sb2;
    }

    @NotNull
    public static final String getIdnHost(@NotNull URI uri) {
        String str;
        String replace$default;
        Intrinsics.checkNotNullParameter(uri, new ObfuscatedString(new long[]{4090226322677370625L, 2603764205376081198L}).toString());
        String host = uri.getHost();
        if (host != null && (replace$default = AbstractC1197x89633db9.replace$default(host, new ObfuscatedString(new long[]{8240605354423299705L, -5699452610862233302L}).toString(), new ObfuscatedString(new long[]{-5862487138857701623L}).toString(), false, 4, (Object) null)) != null) {
            str = AbstractC1197x89633db9.replace$default(replace$default, new ObfuscatedString(new long[]{-4031300739517799474L, -8014585552058155218L}).toString(), new ObfuscatedString(new long[]{5905139553664325518L}).toString(), false, 4, (Object) null);
        } else {
            str = null;
        }
        if (str == null) {
            return new ObfuscatedString(new long[]{-2088972745728706395L}).toString();
        }
        return str;
    }

    public static final long getResponseLength(@NotNull URLConnection uRLConnection) {
        long contentLengthLong;
        Intrinsics.checkNotNullParameter(uRLConnection, new ObfuscatedString(new long[]{9034482844526440570L, -7534622835190531586L}).toString());
        if (Build.VERSION.SDK_INT >= 24) {
            contentLengthLong = uRLConnection.getContentLengthLong();
            return contentLengthLong;
        }
        return uRLConnection.getContentLength();
    }

    @Nullable
    public static final AngApplication getV2RayApplication(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{6322864091950737405L, -1233568819959623423L}).toString());
        Context applicationContext = context.getApplicationContext();
        if (applicationContext instanceof AngApplication) {
            return (AngApplication) applicationContext;
        }
        return null;
    }

    public static final boolean isNotNullEmpty(@Nullable CharSequence charSequence) {
        if (charSequence != null && charSequence.length() > 0) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.v2ray.ang.extension._ExtKt$listenForPackageChanges$1, android.content.BroadcastReceiver] */
    @NotNull
    public static final BroadcastReceiver listenForPackageChanges(@NotNull Context context, final boolean z, @NotNull final Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{1167891721719788322L, -50121772229411460L}).toString());
        Intrinsics.checkNotNullParameter(function0, new ObfuscatedString(new long[]{1680953768532038402L, 1431179317423975153L}).toString());
        ?? r1 = new BroadcastReceiver() { // from class: com.v2ray.ang.extension._ExtKt$listenForPackageChanges$1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                Intrinsics.checkNotNullParameter(context2, new ObfuscatedString(new long[]{-8858650190208120469L, -6561956838731571450L}).toString());
                Intrinsics.checkNotNullParameter(intent, new ObfuscatedString(new long[]{-9108765161848394377L, -7823908855046485568L}).toString());
                function0.invoke();
                if (z) {
                    context2.unregisterReceiver(this);
                }
            }
        };
        if (Build.VERSION.SDK_INT >= 33) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(new ObfuscatedString(new long[]{-8951053715799335597L, -961892886494187463L, 5627895965450348365L, 3605447449211027889L, 8076885173100715668L, -2128225658091836251L}).toString());
            intentFilter.addAction(new ObfuscatedString(new long[]{-2450819142684713520L, 8687464082654242746L, 5095934135588312742L, -6145130548499398980L, 6348274506249723694L, -499334786888381371L}).toString());
            intentFilter.addDataScheme(new ObfuscatedString(new long[]{4776577321482443231L, 2120900082562035077L}).toString());
            context.registerReceiver(r1, intentFilter, 2);
        } else {
            IntentFilter intentFilter2 = new IntentFilter();
            intentFilter2.addAction(new ObfuscatedString(new long[]{-6983668644397436428L, -921447497867026601L, -7898198383193890099L, -539730507972330048L, -5794041066662461124L, -4172595372672183964L}).toString());
            intentFilter2.addAction(new ObfuscatedString(new long[]{-7371277359300492275L, 5500533812699145211L, -8325252332290856050L, -1779679698229963090L, 4150857248795752164L, -8507192536401443886L}).toString());
            intentFilter2.addDataScheme(new ObfuscatedString(new long[]{2152419309838577565L, 8404177840452173441L}).toString());
            context.registerReceiver(r1, intentFilter2);
        }
        return r1;
    }

    public static /* synthetic */ BroadcastReceiver listenForPackageChanges$default(Context context, boolean z, Function0 function0, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return listenForPackageChanges(context, z, function0);
    }

    public static final void putOpt(@NotNull JSONObject jSONObject, @NotNull Pair<String, ? extends Object> pair) {
        Intrinsics.checkNotNullParameter(jSONObject, new ObfuscatedString(new long[]{1698297247959996195L, -1261473510129309404L}).toString());
        Intrinsics.checkNotNullParameter(pair, new ObfuscatedString(new long[]{-3160181676129341421L, -8004308645489159278L}).toString());
        jSONObject.put(pair.getFirst(), pair.getSecond());
    }

    @Nullable
    public static final String removeWhiteSpace(@Nullable String str) {
        if (str != null) {
            return AbstractC1197x89633db9.replace$default(str, new ObfuscatedString(new long[]{8102418477866283168L, 9223028783896406462L}).toString(), new ObfuscatedString(new long[]{8570683917589977243L}).toString(), false, 4, (Object) null);
        }
        return null;
    }

    public static final /* synthetic */ <T extends Serializable> T serializable(Bundle bundle, String str) {
        Serializable serializable;
        Intrinsics.checkNotNullParameter(bundle, new ObfuscatedString(new long[]{-754601653333346685L, -1172696132925326596L}).toString());
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-4556727447542108534L, 9107488274160027995L}).toString());
        if (Build.VERSION.SDK_INT >= 33) {
            Intrinsics.reifiedOperationMarker(4, new ObfuscatedString(new long[]{-2100907268198706177L, 2118369872241732725L}).toString());
            serializable = bundle.getSerializable(str, Serializable.class);
            return (T) serializable;
        }
        T t = (T) bundle.getSerializable(str);
        Intrinsics.reifiedOperationMarker(2, new ObfuscatedString(new long[]{-91297709586858278L, -6464183796430044667L}).toString());
        return t;
    }

    public static final long toLongEx(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{3087739694911905599L, 1103810062688909674L}).toString());
        Long longOrNull = AbstractC1196x2c4a2948.toLongOrNull(str);
        if (longOrNull != null) {
            return longOrNull.longValue();
        }
        return 0L;
    }

    @NotNull
    public static final String toSpeedString(long j) {
        return AbstractC0362x4440ab85.m2931x34271fae(toTrafficString(j), "/s");
    }

    @NotNull
    public static final String toTrafficString(long j) {
        String[] strArr = {new ObfuscatedString(new long[]{-1413730587593112979L, -2511528417942094304L}).toString(), new ObfuscatedString(new long[]{-4991065122311292131L, 4598452481268042341L}).toString(), new ObfuscatedString(new long[]{-9069843146523662852L, -149766157342736254L}).toString(), new ObfuscatedString(new long[]{-7202225953739936554L, 6421211463700155750L}).toString(), new ObfuscatedString(new long[]{7340952589773167773L, 29991295221749620L}).toString(), new ObfuscatedString(new long[]{5919807020180373103L, 8886705725700777601L}).toString()};
        double d = j;
        int i = 0;
        while (d >= 1000.0d && i < 5) {
            d /= 1024.0d;
            i++;
        }
        String format = String.format(new ObfuscatedString(new long[]{569260154821472402L, -6887073158443588842L}).toString(), Arrays.copyOf(new Object[]{Double.valueOf(d), strArr[i]}, 2));
        Intrinsics.checkNotNullExpressionValue(format, new ObfuscatedString(new long[]{-3853870938884338115L, 3817545922884024315L, -6642792237030128736L}).toString());
        return format;
    }

    public static final void toast(@NotNull Context context, int i) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-2849013431275948632L, 3651233157444694621L}).toString());
        Toasty.normal(context, i).show();
    }

    public static final void toastError(@NotNull Context context, int i) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-7113148612802845108L, -188812412458576063L}).toString());
        Toasty.error(context, i, 0, true).show();
    }

    public static final void toastSuccess(@NotNull Context context, int i) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{3202482624085215032L, -8624768828369794411L}).toString());
        Toasty.success(context, i, 0, true).show();
    }

    public static final void putOpt(@NotNull JSONObject jSONObject, @NotNull Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(jSONObject, new ObfuscatedString(new long[]{-6222813176036034684L, -8849568114845089868L}).toString());
        Intrinsics.checkNotNullParameter(map, new ObfuscatedString(new long[]{5599267476437580580L, 6524938623379292266L}).toString());
        for (Map.Entry<String, ? extends Object> entry : map.entrySet()) {
            jSONObject.put(entry.getKey(), entry.getValue());
        }
    }

    public static final void toast(@NotNull Context context, @NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{-541897930524920413L, -3974368010019766226L}).toString());
        Intrinsics.checkNotNullParameter(charSequence, new ObfuscatedString(new long[]{-7017649295652544637L, -7156430721438793046L}).toString());
        Toasty.normal(context, charSequence).show();
    }

    public static final void toastError(@NotNull Context context, @NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{8182664917863553060L, 3986225696247744436L}).toString());
        Intrinsics.checkNotNullParameter(charSequence, new ObfuscatedString(new long[]{-4476330482632088554L, 5142152427748325645L}).toString());
        Toasty.error(context, charSequence, 0, true).show();
    }

    public static final void toastSuccess(@NotNull Context context, @NotNull CharSequence charSequence) {
        Intrinsics.checkNotNullParameter(context, new ObfuscatedString(new long[]{4895615844105659054L, -7595703376580398257L}).toString());
        Intrinsics.checkNotNullParameter(charSequence, new ObfuscatedString(new long[]{-8943795815437313809L, -1117051292715215414L}).toString());
        Toasty.success(context, charSequence, 0, true).show();
    }

    public static final /* synthetic */ <T extends Serializable> T serializable(Intent intent, String str) {
        Serializable serializableExtra;
        Intrinsics.checkNotNullParameter(intent, new ObfuscatedString(new long[]{-6793521740320401256L, -3057193402833812613L}).toString());
        Intrinsics.checkNotNullParameter(str, new ObfuscatedString(new long[]{-6828019406059588848L, 6636276189814854907L}).toString());
        if (Build.VERSION.SDK_INT >= 33) {
            Intrinsics.reifiedOperationMarker(4, new ObfuscatedString(new long[]{-1486100863748094864L, -6155985455710427923L}).toString());
            serializableExtra = intent.getSerializableExtra(str, Serializable.class);
            return (T) serializableExtra;
        }
        T t = (T) intent.getSerializableExtra(str);
        Intrinsics.reifiedOperationMarker(2, new ObfuscatedString(new long[]{340432286365471454L, 5219713799114848922L}).toString());
        return t;
    }
}
