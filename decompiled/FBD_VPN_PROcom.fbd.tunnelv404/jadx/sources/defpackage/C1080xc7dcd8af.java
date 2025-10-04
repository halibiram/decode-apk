package defpackage;

import java.io.Serializable;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;

/* renamed from: 땄들뎰딨둔땅딄됨둔딅땅땤뒋됫둣뒝둥돴뒨딝땧딽딃뒵뒵땋돤땟딝땳뒝되되땦땫땧둑들땡뒬땄돛뒘둬뎹든뒾듔뎰딃딌둠딜뎨딠딜들돨땝땮뒉땻뒼딸뒼딟듸땄딃땮뒘뎽땻땩도듔돼뎹땭뎹땔듰딐딁듽땮뒻딃땹듔땥땀땣뒻딃땮딁땳딁듽든듽뒐돰됩됴두딹뒋딜뎹돛둣땃땃땳땹될듨딹딽땔땳땍될둔딄땜듐딜, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1080xc7dcd8af implements Serializable {
    private static final long serialVersionUID = 0;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final String f5369xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final int f5370x3271d0aa;

    static {
        final DefaultConstructorMarker defaultConstructorMarker = null;
        new Object(defaultConstructorMarker) { // from class: kotlin.text.Regex$Serialized$Companion
        };
    }

    public C1080xc7dcd8af(String pattern, int i) {
        Intrinsics.checkNotNullParameter(pattern, "pattern");
        this.f5369xfbe0c504 = pattern;
        this.f5370x3271d0aa = i;
    }

    private final Object readResolve() {
        Pattern compile = Pattern.compile(this.f5369xfbe0c504, this.f5370x3271d0aa);
        Intrinsics.checkNotNullExpressionValue(compile, "compile(...)");
        return new Regex(compile);
    }
}
