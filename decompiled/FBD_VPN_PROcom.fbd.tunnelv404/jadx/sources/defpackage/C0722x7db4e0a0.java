package defpackage;

import java.io.InputStream;

/* renamed from: 뒤됩둡뒀딜돳땟뎸딌땬득뒨땜땨땰땅돛뒐뎸뒷딹든뒝딹땱딝돸드돳뒷듌뒙따땋땩땸딸뎰됨돤둡땨땨됐뒹땦됐뒷둔뒬듔딁돝뒨돸될딹뒷딹땡뒉딹드딀드돝딸뒼딻땟땧딹땄돨땲뒛땤둣땨듨뒈뒙됫뎽득둡딅뒐뎨도뒨땟돴득듐뒀둥뒛땍딟뎽되땯돝딸따딸뎨땰땄딟뒨땳돠둠뒙돷뒨땔돴땩되땳땰뒐돷뒵뒤땯따, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0722x7db4e0a0 extends InputStream {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final InputStream f4621xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public int f4622x3271d0aa = 1073741824;

    public C0722x7db4e0a0(InputStream inputStream) {
        this.f4621xfbe0c504 = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f4622x3271d0aa;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f4621xfbe0c504.close();
    }

    @Override // java.io.InputStream
    public final int read() {
        int read = this.f4621xfbe0c504.read();
        if (read == -1) {
            this.f4622x3271d0aa = 0;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        return this.f4621xfbe0c504.skip(j);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        int read = this.f4621xfbe0c504.read(bArr);
        if (read == -1) {
            this.f4622x3271d0aa = 0;
        }
        return read;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.f4621xfbe0c504.read(bArr, i, i2);
        if (read == -1) {
            this.f4622x3271d0aa = 0;
        }
        return read;
    }
}
