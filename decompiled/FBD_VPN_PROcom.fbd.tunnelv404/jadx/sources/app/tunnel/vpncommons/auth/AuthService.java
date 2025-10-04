package app.tunnel.vpncommons.auth;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import app.tunnel.vpncommons.utils.DataHolder;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.StringRequest;
import com.android.volley.toolbox.Volley;
import defpackage.C0432xba91f968;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ)\u0010\f\u001a\u00020\t2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0003¨\u0006\u0011"}, d2 = {"Lapp/tunnel/vpncommons/auth/AuthService;", "Landroid/app/Service;", "<init>", "()V", "Landroid/content/Intent;", "intent", "Landroid/os/IBinder;", "onBind", "(Landroid/content/Intent;)Landroid/os/IBinder;", "", "flags", "startId", "onStartCommand", "(Landroid/content/Intent;II)I", "", "onDestroy", "Companion", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class AuthService extends Service {

    @NotNull
    public static final String CONTINUE = "CONTINUE";

    /* renamed from: Companion, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @NotNull
    public static final String DISCONNECT = "DISCONNECT";

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public RequestQueue f406xfbe0c504;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lapp/tunnel/vpncommons/auth/AuthService$Companion;", "", "", AuthService.CONTINUE, "Ljava/lang/String;", AuthService.DISCONNECT, "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m917xfbe0c504(AuthService authService, String str, int i) {
        boolean z;
        String str2;
        if ((i & 1) != 0) {
            str = null;
        }
        if ((i & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        authService.getClass();
        Intent intent = new Intent();
        if (z) {
            str2 = CONTINUE;
        } else {
            str2 = DISCONNECT;
        }
        intent.setAction(str2);
        if (str != null) {
            intent.putExtra("data", str);
        }
        intent.setPackage(authService.getPackageName());
        authService.sendBroadcast(intent);
        authService.onDestroy();
    }

    @Override // android.app.Service
    @Nullable
    public IBinder onBind(@NotNull Intent intent) {
        Intrinsics.checkNotNullParameter(intent, "intent");
        return null;
    }

    @Override // android.app.Service
    public void onDestroy() {
        RequestQueue requestQueue = this.f406xfbe0c504;
        if (requestQueue == null) {
            requestQueue = null;
        }
        requestQueue.cancelAll("");
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(@Nullable Intent intent, int flags, int startId) {
        Bundle bundle = DataHolder.getBundle();
        if (bundle != null) {
            String string = bundle.getString("AUTH_URL");
            if (string != null) {
                StringRequest stringRequest = new StringRequest(0, string, new C0432xba91f968(this), new C0432xba91f968(this));
                RequestQueue newRequestQueue = Volley.newRequestQueue(this);
                this.f406xfbe0c504 = newRequestQueue;
                if (newRequestQueue == null) {
                    newRequestQueue = null;
                }
                newRequestQueue.add(stringRequest);
                return 1;
            }
            return 1;
        }
        onDestroy();
        return 1;
    }
}
