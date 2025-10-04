package defpackage;

import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.OptionsBundle;
import androidx.constraintlayout.core.utils.GridCore;
import java.util.Comparator;

/* renamed from: 듬뒵뒬돶땪뒹듻땁듨땩땳딹듌드딽든땁땀딐뎹뒝뎹뒋땀딹뎨땵드디돼따돛돰땱돷듟된듟뎠둬딤됫뒬딀뎽땄딻돷땮뒬땰뒬둬땤땦딎둥디들둣땭땟땬듽땱돝땀뒹땫돷둘뎽됐뒋뒐뒬뎡딄땫딌땩땳뎨뎬딨듨땭뎰듼들딻듽뒵땭딤돛딜딞뎡땜뒘됐땐뎬돴듨둘돤딟뒐듨땰돛뒋뎠돼돛둑땀땫땀딽딤뎽둡듔땐듸뎽딁, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C0849xd4add4c implements Comparator {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f4950xfbe0c504;

    public /* synthetic */ C0849xd4add4c(int i) {
        this.f4950xfbe0c504 = i;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f4950xfbe0c504) {
            case 0:
                return GridCore.m521xfbe0c504((String) obj, (String) obj2);
            case 1:
                return OptionsBundle.m273xfbe0c504((Config.Option) obj, (Config.Option) obj2);
            default:
                return ((Double) obj).compareTo((Double) obj2);
        }
    }
}
