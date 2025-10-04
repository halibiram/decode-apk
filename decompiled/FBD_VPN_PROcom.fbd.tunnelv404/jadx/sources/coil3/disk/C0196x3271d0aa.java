package coil3.disk;

import coil3.disk.DiskCache;
import coil3.disk.DiskLruCache;
import okio.Path;

/* renamed from: coil3.disk.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0196x3271d0aa implements DiskCache.Snapshot {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final DiskLruCache.Snapshot f595xfbe0c504;

    public C0196x3271d0aa(DiskLruCache.Snapshot snapshot) {
        this.f595xfbe0c504 = snapshot;
    }

    @Override // coil3.disk.DiskCache.Snapshot, java.lang.AutoCloseable
    public final void close() {
        this.f595xfbe0c504.close();
    }

    @Override // coil3.disk.DiskCache.Snapshot
    public final DiskCache.Editor closeAndOpenEditor() {
        DiskLruCache.Editor closeAndEdit = this.f595xfbe0c504.closeAndEdit();
        if (closeAndEdit != null) {
            return new C0195xfbe0c504(closeAndEdit);
        }
        return null;
    }

    @Override // coil3.disk.DiskCache.Snapshot
    public final Path getData() {
        return this.f595xfbe0c504.file(1);
    }

    @Override // coil3.disk.DiskCache.Snapshot
    public final Path getMetadata() {
        return this.f595xfbe0c504.file(0);
    }
}
