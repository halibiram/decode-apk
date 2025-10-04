package app.tunnel.vpncommons.org.spongycastle.util.io.pem;

import java.io.IOException;

/* loaded from: classes.dex */
public class PemGenerationException extends IOException {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Throwable f418xfbe0c504;

    public PemGenerationException(String str, Throwable th) {
        super(str);
        this.f418xfbe0c504 = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f418xfbe0c504;
    }

    public PemGenerationException(String str) {
        super(str);
    }
}
