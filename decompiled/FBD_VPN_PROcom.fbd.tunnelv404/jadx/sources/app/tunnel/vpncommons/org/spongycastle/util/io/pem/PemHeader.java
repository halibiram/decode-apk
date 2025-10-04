package app.tunnel.vpncommons.org.spongycastle.util.io.pem;

/* loaded from: classes.dex */
public class PemHeader {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final String f419xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final String f420x3271d0aa;

    public PemHeader(String str, String str2) {
        this.f419xfbe0c504 = str;
        this.f420x3271d0aa = str2;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (!(obj instanceof PemHeader)) {
            return false;
        }
        PemHeader pemHeader = (PemHeader) obj;
        if (pemHeader != this) {
            Object obj2 = pemHeader.f419xfbe0c504;
            String str = this.f419xfbe0c504;
            if (str == obj2) {
                z = true;
            } else if (str != null && obj2 != null) {
                z = str.equals(obj2);
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
            String str2 = this.f420x3271d0aa;
            String str3 = pemHeader.f420x3271d0aa;
            if (str2 == str3) {
                z2 = true;
            } else if (str2 != null && str3 != null) {
                z2 = str2.equals(str3);
            } else {
                z2 = false;
            }
            if (!z2) {
                return false;
            }
        }
        return true;
    }

    public String getName() {
        return this.f419xfbe0c504;
    }

    public String getValue() {
        return this.f420x3271d0aa;
    }

    public int hashCode() {
        int hashCode;
        int i = 1;
        String str = this.f419xfbe0c504;
        if (str == null) {
            hashCode = 1;
        } else {
            hashCode = str.hashCode();
        }
        String str2 = this.f420x3271d0aa;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (i * 31) + hashCode;
    }
}
