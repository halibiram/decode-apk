package defpackage;

import com.android.volley.Response;
import com.android.volley.VolleyError;
import com.tknetwork.tunnel.activities.LoginActivity;

/* renamed from: 딌듰돰뒝든땩두둑됩뒈돼들딅딽돝땔돳땰됴땠돼땲땰딨땦되돝땨딻땃듻딌뎡땬땫땻둑뒘땍딄땩땥땄뎬돰돨듻돷딌뒛땬땮딤땀딝뒉땨딻딐디딐됩딀땣듟땐땥뒷따듟둣돳뒾땐듼뒐딟듨딄둡돷땀드돰뒤듰땵땐뒼뒵둥듌땸딁땮땬땪듌땀땲딅딄둠땻돶땠드땥도돝돴뒐땀땻땲둑땀든딜둥땵땰돵돛땀듸뒉딀뒤둬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0942xeb35e965 implements Response.Listener, Response.ErrorListener {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ LoginActivity f5095xfbe0c504;

    public /* synthetic */ C0942xeb35e965(LoginActivity loginActivity) {
        this.f5095xfbe0c504 = loginActivity;
    }

    @Override // com.android.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        this.f5095xfbe0c504.lambda$LoginApi$2(volleyError);
    }

    @Override // com.android.volley.Response.Listener
    public void onResponse(Object obj) {
        this.f5095xfbe0c504.lambda$LoginApi$1((String) obj);
    }
}
