package defpackage;

import java.nio.file.CopyOption;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.Path;
import java.util.Arrays;
import kotlin.io.path.CopyActionContext;
import kotlin.io.path.CopyActionResult;
import kotlin.io.path.LinkFollowing;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뒈됐뒻뒉듌뒬땯딀뒤딁됴딞땸딄딁뒐뒋땬뎸딨땦땜딀뒷뒤땣드땦뎻딐딨딻뎰든땸땵뒋디딝둑땮돷딹두땥듌듻땵따됴뒻딹뒹뒤뒻뒬둡땀땱딞돼돴뒐뒀땪땲둘뒛뒾딄땬딨돵됴둔땮돼땳땭돠돝딽돛땤딽딞뒘딻뒝돵드뎠뒾땰땟듽땮딁둡딽됐뒀땐딻땯둬듰뒈돼딄딅땪돛뒛뒨땟드돼든돠딤뎡듨뒨든딀둔땝땫돛, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0659x2b16b9d7 implements CopyActionContext {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final C0659x2b16b9d7 f4466xfbe0c504 = new Object();

    @Override // kotlin.io.path.CopyActionContext
    public final CopyActionResult copyToIgnoringExistingDirectory(Path path, Path target, boolean z) {
        Intrinsics.checkNotNullParameter(path, "<this>");
        Intrinsics.checkNotNullParameter(target, "target");
        LinkOption[] linkOptions = LinkFollowing.INSTANCE.toLinkOptions(z);
        LinkOption[] linkOptionArr = (LinkOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
        if (!Files.isDirectory(path, (LinkOption[]) Arrays.copyOf(linkOptionArr, linkOptionArr.length)) || !Files.isDirectory(target, (LinkOption[]) Arrays.copyOf(new LinkOption[]{LinkOption.NOFOLLOW_LINKS}, 1))) {
            CopyOption[] copyOptionArr = (CopyOption[]) Arrays.copyOf(linkOptions, linkOptions.length);
            Intrinsics.checkNotNullExpressionValue(Files.copy(path, target, (CopyOption[]) Arrays.copyOf(copyOptionArr, copyOptionArr.length)), "copy(...)");
        }
        return CopyActionResult.CONTINUE;
    }
}
