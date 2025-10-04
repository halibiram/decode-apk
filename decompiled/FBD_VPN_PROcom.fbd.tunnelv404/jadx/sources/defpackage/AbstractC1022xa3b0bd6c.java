package defpackage;

import java.nio.file.FileSystem;
import java.nio.file.Path;
import java.nio.file.Paths;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt___StringsKt;

/* renamed from: 따둔됴뒝딜딹듐따딞뎽땧딅듌돼딌뒈땵뎰땵되돤땜땐됫됐듐땩딃딹듽땯딸둔듸되듻둡뎹딀듟뒨땀딻뒹뒬될드둘땄뎠땲딸뒷듟듌땄됴딜딀돳땔돰뎸듻딎뒋돵돝땠돷딀딤땥되듽돵뒙돤뒉뒹든뒷딁땣땹딜땭땹땮디뒼듼딁둠뒐뒋뎡땔땡뎨뒾돸뒈딅뒘땅뒘뒀뒐듔드땟땜됨뒼딌따뎹땭돰땍돨땜딤땭땟땳뎰듰땜, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract class AbstractC1022xa3b0bd6c {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final Path f5228xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final Path f5229x3271d0aa;

    static {
        Path path;
        Path path2;
        path = Paths.get("", new String[0]);
        f5228xfbe0c504 = path;
        path2 = Paths.get("..", new String[0]);
        f5229x3271d0aa = path2;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static Path m3654xfbe0c504(Path path, Path base) {
        Path normalize;
        Path normalize2;
        Path relativize;
        int nameCount;
        int nameCount2;
        FileSystem fileSystem;
        String separator;
        FileSystem fileSystem2;
        FileSystem fileSystem3;
        String separator2;
        Path name;
        Path name2;
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(base, "base");
        normalize = base.normalize();
        normalize2 = path.normalize();
        relativize = normalize.relativize(normalize2);
        nameCount = normalize.getNameCount();
        nameCount2 = normalize2.getNameCount();
        int min = Math.min(nameCount, nameCount2);
        for (int i = 0; i < min; i++) {
            name = normalize.getName(i);
            Path path2 = f5229x3271d0aa;
            if (!Intrinsics.areEqual(name, path2)) {
                break;
            }
            name2 = normalize2.getName(i);
            if (!Intrinsics.areEqual(name2, path2)) {
                throw new IllegalArgumentException("Unable to compute relative path");
            }
        }
        if (Intrinsics.areEqual(normalize2, normalize) || !Intrinsics.areEqual(normalize, f5228xfbe0c504)) {
            String obj = relativize.toString();
            fileSystem = relativize.getFileSystem();
            separator = fileSystem.getSeparator();
            Intrinsics.checkNotNullExpressionValue(separator, "getSeparator(...)");
            if (AbstractC1197x89633db9.endsWith$default(obj, separator, false, 2, null)) {
                fileSystem2 = relativize.getFileSystem();
                fileSystem3 = relativize.getFileSystem();
                separator2 = fileSystem3.getSeparator();
                normalize2 = fileSystem2.getPath(StringsKt___StringsKt.dropLast(obj, separator2.length()), new String[0]);
            } else {
                normalize2 = relativize;
            }
        }
        Intrinsics.checkNotNull(normalize2);
        return normalize2;
    }
}
