package defpackage;

import java.util.Comparator;

/* renamed from: 둘돵딻뎬둥땟땤둥돼두디듌딨둬딝땹두돳됫뒈돛뎽드딻딸땫돠땝뎡딸땤딁돵듔뎡듔딅뒵땵듐땀땻뒛땪뎨뒼됐딄돤땦딞뎻듟땣땃뎡딽뒋땰뒙뒾땃뒾됐뒬딞땁딐뎸돠돝뒈땐땳됨둣돴둔뒋땄땳돰땫돴돨딄둥돶딟될뒘됫딠딞땪땸딌땋뎨땃됴뒼됴돴딠딄둥뎬득땋둣땪땬뒙딞뒨뒙딜딐땸땰돳딄든뒝될듔딐돴뒀, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C0610x62bd5544 implements Comparator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4365xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Comparator f4366x3271d0aa;

    public /* synthetic */ C0610x62bd5544(Comparator comparator, int i) {
        this.f4365xfbe0c504 = i;
        this.f4366x3271d0aa = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f4365xfbe0c504) {
            case 0:
                if (obj == obj2) {
                    return 0;
                }
                if (obj == null) {
                    return 1;
                }
                if (obj2 == null) {
                    return -1;
                }
                return this.f4366x3271d0aa.compare(obj, obj2);
            default:
                if (obj == obj2) {
                    return 0;
                }
                if (obj == null) {
                    return -1;
                }
                if (obj2 == null) {
                    return 1;
                }
                return this.f4366x3271d0aa.compare(obj, obj2);
        }
    }
}
