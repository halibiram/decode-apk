package defpackage;

import com.google.common.base.Function;
import com.google.common.collect.ImmutableMultiset;
import com.google.common.collect.TreeBasedTable;
import com.google.common.net.MediaType;
import java.util.Collection;
import java.util.Map;

/* renamed from: 딝땄땫돰뒵됩둘뎽돳딨뒾딤뒛땁땍둬땪땅뒼된뎡돝둔될뒹딐딎뒘뒬뎽딄뒵땔둡됨돸돴땸뎻뒛땜되뒨딹딨둔딅땵딟딞딟딁듔뒛땧듌땯둡뎬뎸돰둥뒹땵땅딄돤땋듸됨딠뒵듨돼됐듰딽돛뎠든둬될딄뎬땵뎸둣땟돠뒷된땬딃둥딨돠땄땥뒘딟딐땸땪땹땪들뒀돰딻되될뒨둔땮듌딻돨딻뒷됩딁땟땤뒷둥딝뎡듟뒤땨, reason: contains not printable characters */
/* loaded from: classes2.dex */
public final /* synthetic */ class C0979x2a99d051 implements Function {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5149xfbe0c504;

    public /* synthetic */ C0979x2a99d051(int i) {
        this.f5149xfbe0c504 = i;
    }

    @Override // com.google.common.base.Function
    public final Object apply(Object obj) {
        switch (this.f5149xfbe0c504) {
            case 0:
                return MediaType.m1284xfbe0c504((String) obj);
            case 1:
                return ImmutableMultiset.copyOf((Collection) obj);
            default:
                return TreeBasedTable.m1267xfbe0c504((Map) obj);
        }
    }
}
