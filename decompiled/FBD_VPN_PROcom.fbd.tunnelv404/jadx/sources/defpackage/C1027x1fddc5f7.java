package defpackage;

import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.nio.file.StandardCopyOption;
import java.util.Arrays;
import kotlin.io.path.CopyActionContext;
import kotlin.io.path.CopyActionResult;
import kotlin.io.path.LinkFollowing;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SpreadBuilder;

/* renamed from: 따땍듐땪땨둑됩땲돼땭들땻돵됫둥뒵뒾땵땦땋듨딀뎽딐돶뎬땦뒘땹뒬뒙뎰됫뒾뎽돼딌뒘땔뒀돛뒘땣딽뒉딸딠둣땵땟땰딀땻딽땦둬땐된딄딜둬뒉따땔둡돵돤땟딸돼땍됴돝땔땝딸듻땋됩땐듐땜뒻딄둘땟듼뒀돼됨딽둑뒈땧땍땔둔득돝드땱뒀딤뒉땡뒾딎딞뒀뎸딠땅뎠땐딌뒼둣딠땅딟딄뒉돝땟땥뒘돶땡뒙듻, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final /* synthetic */ class C1027x1fddc5f7 implements Function3 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5246xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ boolean f5247x3271d0aa;

    public /* synthetic */ C1027x1fddc5f7(boolean z, int i) {
        this.f5246xfbe0c504 = i;
        this.f5247x3271d0aa = z;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object invoke(Object obj, Object obj2, Object obj3) {
        CopyActionContext copyToRecursively = (CopyActionContext) obj;
        Path src = (Path) obj2;
        Path dst = (Path) obj3;
        switch (this.f5246xfbe0c504) {
            case 0:
                Intrinsics.checkNotNullParameter(copyToRecursively, "<this>");
                Intrinsics.checkNotNullParameter(src, "src");
                Intrinsics.checkNotNullParameter(dst, "dst");
                return copyToRecursively.copyToIgnoringExistingDirectory(src, dst, this.f5247x3271d0aa);
            default:
                Intrinsics.checkNotNullParameter(copyToRecursively, "$this$copyToRecursively");
                Intrinsics.checkNotNullParameter(src, "src");
                Intrinsics.checkNotNullParameter(dst, "dst");
                LinkOption[] linkOptions = LinkFollowing.INSTANCE.toLinkOptions(this.f5247x3271d0aa);
                boolean isDirectory = Files.isDirectory(dst, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1));
                LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
                if (!Files.isDirectory(src, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length)) || !isDirectory) {
                    if (isDirectory) {
                        AbstractC1034xec4b345a.deleteRecursively(dst);
                    }
                    SpreadBuilder spreadBuilder = new SpreadBuilder(2);
                    spreadBuilder.addSpread(linkOptions);
                    spreadBuilder.add(StandardCopyOption.REPLACE_EXISTING);
                    CopyOption[] copyOptionArr = (CopyOption[]) spreadBuilder.toArray(new CopyOption[spreadBuilder.size()]);
                    Intrinsics.checkNotNullExpressionValue(Files.copy(src, dst, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length)), "copy(...)");
                }
                return CopyActionResult.CONTINUE;
        }
    }
}
