package defpackage;

import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.CtorCache;
import kotlinx.coroutines.internal.ExceptionsConstructorKt;

/* renamed from: 땲뒐됐돠돨둘돼땰듟도뒝땧딸딃땜듻땄딌뒉듼딻땱뒾듻딐땄땯둡돠뎹땱뒹도뒤땁드듼듌득딹땵땵딅뒾뒛듔뒀뎡듔딅땔뒝딤둬땅땭땵땵되될돶됨땡딤뒬땰딜돨땧두뒝듽땧뒈돤뒈되땜돝땸됴땐땡땄뎹드됐됨듸땟땱딝뒤든뎸됫두돛딠뎡디뒵딐딟땫땁듻땨땐뎨딟땮땹뒼땱뒷땡땁딐딀땄됴딅뒋됐디된딤듰땣, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1296x746492ae extends CtorCache {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final C1296x746492ae f5712xfbe0c504 = new CtorCache();

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final ReentrantReadWriteLock f5713x3271d0aa = new ReentrantReadWriteLock();

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final WeakHashMap f5714x1378447b = new WeakHashMap();

    @Override // kotlinx.coroutines.internal.CtorCache
    public final Function1 get(Class cls) {
        int i;
        ReentrantReadWriteLock reentrantReadWriteLock = f5713x3271d0aa;
        ReentrantReadWriteLock.ReadLock readLock = reentrantReadWriteLock.readLock();
        readLock.lock();
        WeakHashMap weakHashMap = f5714x1378447b;
        try {
            Function1 function1 = (Function1) weakHashMap.get(cls);
            if (function1 != null) {
                return function1;
            }
            ReentrantReadWriteLock.ReadLock readLock2 = reentrantReadWriteLock.readLock();
            int i2 = 0;
            if (reentrantReadWriteLock.getWriteHoldCount() == 0) {
                i = reentrantReadWriteLock.getReadHoldCount();
            } else {
                i = 0;
            }
            for (int i3 = 0; i3 < i; i3++) {
                readLock2.unlock();
            }
            ReentrantReadWriteLock.WriteLock writeLock = reentrantReadWriteLock.writeLock();
            writeLock.lock();
            try {
                Function1 function12 = (Function1) weakHashMap.get(cls);
                if (function12 != null) {
                    return function12;
                }
                Function1 access$createConstructor = ExceptionsConstructorKt.access$createConstructor(cls);
                weakHashMap.put(cls, access$createConstructor);
                while (i2 < i) {
                    readLock2.lock();
                    i2++;
                }
                writeLock.unlock();
                return access$createConstructor;
            } finally {
                while (i2 < i) {
                    readLock2.lock();
                    i2++;
                }
                writeLock.unlock();
            }
        } finally {
            readLock.unlock();
        }
    }
}
