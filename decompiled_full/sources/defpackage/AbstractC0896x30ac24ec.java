package defpackage;

/* renamed from: 딁됨뒙돵땧둣땨땯돨돼땃득디땻딠딻딐뒵땄돛뎠땦땵돳돛땩땥딀둡땬땅됩둔뒼땝뒬뎬돰딸뒐땥둠뎹땍뒼딀딁드되딁땄뒝듼듸됐뒀땁딻뒹땄뒨땝둔돼땰뎬땋딸듬듨돼뎻두듨땤돵될땲딤뎨딅될땲둑뒷들땁딞둥땣땁딜땲듬된땧됨딜땬뒐뒬땅땟듻돳디딎돵된듻땋뒛돠된듨뎻뒨땬뒼뒋뎹땦땵뒝땦땥돨뒵딸땹, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC0896x30ac24ec {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Integer f5020xfbe0c504;

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
            f5020xfbe0c504 = num2;
        }
        num = null;
        if (num != null) {
            num2 = num;
        }
        f5020xfbe0c504 = num2;
    }
}
