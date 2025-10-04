package defpackage;

import java.nio.file.FileVisitResult;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.SimpleFileVisitor;
import java.nio.file.attribute.BasicFileAttributes;
import kotlin.collections.ArrayDeque;
import kotlin.io.path.LinkFollowing;
import kotlin.jvm.internal.Intrinsics;

/* renamed from: 뒋돰뒛딄딀뒋듸딹뎻땤뒙득득든딨땡듐듼땯땸됴땐딅뒐뎸딻뒼땁뒾듔따돵듔딨듟돷둔딤땲딅뎡됴땯듼땐딝뎬둠땋땠뒐듟딻딹듌돷둘딤딁땡뒨땭뒷땫될땸뒐듌둠따땄됫뒾땝두뒨돳돛돨땀들뒻땵뒾디되딜뎰땃뎬땥땃땵되돠뎠둔땨뒻딃뒉뒻뒙딄딄땲땸뒨뒀뒷딎둣땬뎹둣도땤땯득땻뎸딅뒹뎨뎸땜듸땪돸땃, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0675x7d01fa3f extends SimpleFileVisitor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final boolean f4503xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public C1021xdbc1ef91 f4504x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public ArrayDeque f4505x1378447b = new ArrayDeque();

    public C0675x7d01fa3f(boolean z) {
        this.f4503xfbe0c504 = z;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult preVisitDirectory(Object obj, BasicFileAttributes attrs) {
        Path dir = (Path) obj;
        Intrinsics.checkNotNullParameter(dir, "dir");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.f4505x1378447b.add(new C1021xdbc1ef91(dir, attrs.fileKey(), this.f4504x3271d0aa));
        FileVisitResult preVisitDirectory = super.preVisitDirectory(dir, attrs);
        Intrinsics.checkNotNullExpressionValue(preVisitDirectory, "preVisitDirectory(...)");
        return preVisitDirectory;
    }

    @Override // java.nio.file.SimpleFileVisitor, java.nio.file.FileVisitor
    public final FileVisitResult visitFile(Object obj, BasicFileAttributes attrs) {
        Path file = (Path) obj;
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.f4505x1378447b.add(new C1021xdbc1ef91(file, null, this.f4504x3271d0aa));
        FileVisitResult visitFile = super.visitFile(file, attrs);
        Intrinsics.checkNotNullExpressionValue(visitFile, "visitFile(...)");
        return visitFile;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final ArrayDeque m3275xfbe0c504(C1021xdbc1ef91 directoryNode) {
        Intrinsics.checkNotNullParameter(directoryNode, "directoryNode");
        this.f4504x3271d0aa = directoryNode;
        Files.walkFileTree(directoryNode.f5224xfbe0c504, LinkFollowing.INSTANCE.toVisitOptions(this.f4503xfbe0c504), 1, this);
        this.f4505x1378447b.removeFirst();
        ArrayDeque arrayDeque = this.f4505x1378447b;
        this.f4505x1378447b = new ArrayDeque();
        return arrayDeque;
    }
}
