package defpackage;

import java.io.IOException;
import java.nio.file.FileVisitResult;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뒬돶땜돳됨땠땄딻딎땧뒙땥둥땤딎땃되둠딤딐듻됫딅딽됫땍뒋딌땄땵돨땍딽땍둘돼땬뎸뒹딄돰딝딞뒹땍땹듸뎡땩땭땋뒝땔돨땧돨둬뎻둬딄딅땯돷땨딹딀된둑됩땻뒐땫땍뎡땤땫뎸뎠땵돛땅땰딠됨땃땭딻땃뒾되땨뒘땦둑땣됨될땳뒈둥땜땰돠뒘둑딁딤땠됐듐딽됐땟뒹뒤듬딨돷둑뒼뒻뒼딎뎹땫둬딌된땠둬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0738x16a62864 extends SimpleFileVisitor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Function2 f4650xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Function2 f4651x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Function2 f4652x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final Function2 f4653x75d576dc;

    public C0738x16a62864(Function2 function2, Function2 function22, Function2 function23, Function2 function24) {
        this.f4650xfbe0c504 = function2;
        this.f4651x3271d0aa = function22;
        this.f4652x1378447b = function23;
        this.f4653x75d576dc = function24;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult postVisitDirectory(Object obj, IOException iOException) {
        FileVisitResult fileVisitResult;
        Path dir = (Path) obj;
        Intrinsics.checkNotNullParameter(dir, "dir");
        Function2 function2 = this.f4653x75d576dc;
        if (function2 == null || (fileVisitResult = (FileVisitResult) function2.invoke(dir, iOException)) == null) {
            FileVisitResult postVisitDirectory = super.postVisitDirectory(dir, iOException);
            Intrinsics.checkNotNullExpressionValue(postVisitDirectory, "postVisitDirectory(...)");
            return postVisitDirectory;
        }
        return fileVisitResult;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult preVisitDirectory(Object obj, BasicFileAttributes attrs) {
        FileVisitResult fileVisitResult;
        Path dir = (Path) obj;
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Function2 function2 = this.f4650xfbe0c504;
        if (function2 == null || (fileVisitResult = (FileVisitResult) function2.invoke(dir, attrs)) == null) {
            FileVisitResult preVisitDirectory = super.preVisitDirectory(dir, attrs);
            Intrinsics.checkNotNullExpressionValue(preVisitDirectory, "preVisitDirectory(...)");
            return preVisitDirectory;
        }
        return fileVisitResult;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult visitFile(Object obj, BasicFileAttributes attrs) {
        FileVisitResult fileVisitResult;
        Path file = (Path) obj;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        Function2 function2 = this.f4651x3271d0aa;
        if (function2 == null || (fileVisitResult = (FileVisitResult) function2.invoke(file, attrs)) == null) {
            FileVisitResult visitFile = super.visitFile(file, attrs);
            Intrinsics.checkNotNullExpressionValue(visitFile, "visitFile(...)");
            return visitFile;
        }
        return fileVisitResult;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult visitFileFailed(Object obj, IOException exc) {
        FileVisitResult fileVisitResult;
        Path file = (Path) obj;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(exc, "exc");
        Function2 function2 = this.f4652x1378447b;
        if (function2 == null || (fileVisitResult = (FileVisitResult) function2.invoke(file, exc)) == null) {
            FileVisitResult visitFileFailed = super.visitFileFailed(file, exc);
            Intrinsics.checkNotNullExpressionValue(visitFileFailed, "visitFileFailed(...)");
            return visitFileFailed;
        }
        return fileVisitResult;
    }
}
