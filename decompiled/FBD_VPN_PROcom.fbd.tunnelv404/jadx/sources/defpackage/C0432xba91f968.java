package defpackage;

import app.tunnel.vpncommons.auth.AuthService;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import kotlin.jvm.internal.Intrinsics;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: 돝드돠땵돼딃뒾딟뒈둣딄딸뎨됩돷딠땪딜딞땧뒨딁딅돴땅됐딟뒀됴뒙땸뎽돠돷딄뒙땋땡듌땝딠땀됨뒷딻뎽된됩듻든된땯듽땰되돸땔듟땳땟돛듟뎨뎡땥딝땫딃되됨돰둘뒬둠듻땻될땠땵땠돛될돳땦땃들땦딅뒤듨땱돤도돠땤땭뒻둡딽땃돷땨뎻땍돴땤됴딃돶듸땍딹딀땄땔따뒼듟디딞듌딟두땩땝땍땤된딎딀, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0432xba91f968 implements Response.Listener, Response.ErrorListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ AuthService f3874xfbe0c504;

    @Override // com.android.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        AuthService.m917xfbe0c504(this.f3874xfbe0c504, null, 1);
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(Object obj) {
        AuthService authService = this.f3874xfbe0c504;
        String str = (String) obj;
        AuthService.Companion companion = AuthService.Companion;
        try {
            JSONObject jSONObject = new JSONObject(str);
            if (jSONObject.has("device_match")) {
                String string = jSONObject.getString("device_match");
                if (Intrinsics.areEqual(string, "none")) {
                    AuthService.m917xfbe0c504(authService, null, 1);
                } else if (Intrinsics.areEqual(string, "true")) {
                    AuthService.m917xfbe0c504(authService, str, 2);
                } else {
                    AuthService.m917xfbe0c504(authService, null, 1);
                }
            } else {
                AuthService.m917xfbe0c504(authService, null, 1);
            }
        } catch (JSONException e) {
            e.printStackTrace();
            AuthService.m917xfbe0c504(authService, null, 1);
        }
    }
}
