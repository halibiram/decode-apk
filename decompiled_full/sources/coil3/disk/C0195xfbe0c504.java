package coil3.disk;

import coil3.disk.DiskCache;
import coil3.disk.DiskLruCache;
import okio.Path;

/* renamed from: coil3.disk.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0195xfbe0c504 implements DiskCache.Editor {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final DiskLruCache.Editor f594xfbe0c504;

    public C0195xfbe0c504(DiskLruCache.Editor editor) {
        this.f594xfbe0c504 = editor;
    }

    @Override // coil3.disk.DiskCache.Editor
    public final void abort() {
        this.f594xfbe0c504.abort();
    }

    @Override // coil3.disk.DiskCache.Editor
    public final void commit() {
        this.f594xfbe0c504.commit();
    }

    @Override // coil3.disk.DiskCache.Editor
    public final DiskCache.Snapshot commitAndOpenSnapshot() {
        DiskLruCache.Snapshot commitAndGet = this.f594xfbe0c504.commitAndGet();
        if (commitAndGet != null) {
            return new C0196x3271d0aa(commitAndGet);
        }
        return null;
    }

    @Override // coil3.disk.DiskCache.Editor
    public final Path getData() {
        return this.f594xfbe0c504.file(1);
    }

    @Override // coil3.disk.DiskCache.Editor
    public final Path getMetadata() {
        return this.f594xfbe0c504.file(0);
    }
}
