package defpackage;

import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.SharingCommand;
import kotlinx.coroutines.flow.SharingStarted;
import kotlinx.coroutines.flow.StateFlow;
import okio.Path;
import okio.internal.ResourceFileSystem;

/* renamed from: 땅땮땜뒾딠뎹둑딀땠둣땝땤땯딎땠디딽땬딄땮땋땥딠둔뒐땩된듟돤뎹뒹땟땮땤땤됐됴돛뒉뎻뒨둬돝득땐딠돸돴뎬드땱듐땀땄듌땪듨땭땵뒾될돛뒵땹듸디뒤딀딝두듸땸딀뒘둣뎹딃딠듰땨땧뒘땄될돤돛돵땣돷딟딟듼돨딤땭듰둣뒹딃될뎸둔땻땋도됐딞땀둡땭뎠땝땣돷뎸땧뎡듔땔뒘땋뎸땡땧뎰뎬돶돠돷뒐, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1091x74b3e97d implements SharingStarted {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5389xfbe0c504;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final boolean m3795xfbe0c504(Path path) {
        Path path2 = ResourceFileSystem.f3687x75d576dc;
        return !AbstractC1197x89633db9.endsWith(path.name(), ".class", true);
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static Path m3796x3271d0aa(Path path, Path base) {
        Path path2;
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(base, "base");
        String path3 = base.toString();
        path2 = ResourceFileSystem.f3687x75d576dc;
        return path2.resolve(AbstractC1197x89633db9.replace$default(StringsKt__StringsKt.removePrefix(path.toString(), (CharSequence) path3), '\\', '/', false, 4, (Object) null));
    }

    @Override // kotlinx.coroutines.flow.SharingStarted
    public Flow command(StateFlow stateFlow) {
        switch (this.f5389xfbe0c504) {
            case 1:
                return FlowKt.flowOf(SharingCommand.START);
            default:
                return FlowKt.flow(new C1174xa0c2aa0(stateFlow, null));
        }
    }

    public String toString() {
        switch (this.f5389xfbe0c504) {
            case 1:
                return "SharingStarted.Eagerly";
            case 2:
                return "SharingStarted.Lazily";
            default:
                return super.toString();
        }
    }
}
