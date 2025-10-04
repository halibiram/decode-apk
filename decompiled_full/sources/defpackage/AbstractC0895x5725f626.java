package defpackage;

/* renamed from: 딁뎻들듬될딟돷둠딝됐땹딅땬듟땵돼땧뎨땄땰딤딀뒬딁돸땲뒙땃뒋됫뒬돼땳땧딐듔딁딄땩딤땱듽딁뒻딀돴딞돸딝딹딞땨뒵뎨뎹땟땰뒐땟뎹뒛돤땡땪딀돵뎡뎰뒨뎬뎬뎨땯딄돵듽되들둥돰땳뒙둔딝땬뎸듼둣뒋땁땐땯딟두땅뎡둡뎻땣돰뒨둥돼땃땀들딁뎽땱뎸돨듐돴됫딨딠딠뎡딎딀딠땡디땝딨땰딹딄뒋땲, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0895x5725f626 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Integer f5019xfbe0c504;

    static {
        Integer num;
        Object obj;
        Integer num2 = null;
        try {
            obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Throwable unused) {
        }
        if (obj instanceof Integer) {
            num = (Integer) obj;
            if (num != null && num.intValue() > 0) {
                num2 = num;
            }
            f5019xfbe0c504 = num2;
        }
        num = null;
        if (num != null) {
            num2 = num;
        }
        f5019xfbe0c504 = num2;
    }
}
