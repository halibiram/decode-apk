package defpackage;

import com.v2ray.ang.dto.ProfileItem;
import com.v2ray.ang.handler.V2rayConfigManager;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.ZipEntry;

/* renamed from: 땰듌듟뎡땥뒈뎠땳듨땬땐딨땃땣땍뎻둡둣듽땅땬딹딸될뒤딸둬땡뒛둣딸돶되뒈둘뒋도딟뎡돼딝듨듟돸땤딸디딟돴땻드뎽둑따뒬됩듔땸뒷뒘땸됫뒾땣따딜뒬듰땃딸딽땳땯뒋땤땨돤든딐듐딻된듔됨돰됴땃땬딹뒈땥땣돝땐뒀땐든뒵뒵디땁땔땳둡두딐뒬뎹땻딹뒀뒘뒝땔땋돶뒝딌땔뒙돸딞땟득땃땥둠듰땔뒘, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1279x1f922ada implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5695xfbe0c504;

    public /* synthetic */ C1279x1f922ada(int i) {
        this.f5695xfbe0c504 = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.f5695xfbe0c504) {
            case 0:
                return Boolean.valueOf(V2rayConfigManager.m1718x9e171bf9((ProfileItem) obj));
            case 1:
                return Boolean.valueOf(V2rayConfigManager.m1716x75d576dc((ProfileItem) obj));
            case 2:
                return Boolean.valueOf(V2rayConfigManager.m1715x1378447b((ProfileItem) obj));
            case 3:
                return Boolean.valueOf(V2rayConfigManager.m1714x3271d0aa((ProfileItem) obj));
            case 4:
                return Boolean.valueOf(V2rayConfigManager.m1717x9738a56c((ProfileItem) obj));
            default:
                ZipEntry it = (ZipEntry) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                return Boolean.TRUE;
        }
    }
}
