package com.google.android.gms.internal.ads;

import android.util.Pair;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.FileChannel;
import java.security.DigestException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.Signature;
import java.security.SignatureException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class zzapg {
    public static X509Certificate[][] zza(String str) {
        RandomAccessFile randomAccessFile = new RandomAccessFile(str, new ObfuscatedString(new long[]{-7476078420917383019L, -496480772999123829L}).toString());
        try {
            Pair zzc = zzaph.zzc(randomAccessFile);
            if (zzc != null) {
                ByteBuffer byteBuffer = (ByteBuffer) zzc.first;
                long longValue = ((Long) zzc.second).longValue();
                long j = (-20) + longValue;
                if (j >= 0) {
                    randomAccessFile.seek(j);
                    if (randomAccessFile.readInt() == 1347094023) {
                        throw new zzapd(new ObfuscatedString(new long[]{-973755696033466768L, -4215431234531035987L, 4790899547113622993L, 7745285628211203177L}).toString());
                    }
                }
                long zza = zzaph.zza(byteBuffer);
                if (zza < longValue) {
                    if (zza + zzaph.zzb(byteBuffer) == longValue) {
                        if (zza >= 32) {
                            ByteBuffer allocate = ByteBuffer.allocate(24);
                            ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                            allocate.order(byteOrder);
                            randomAccessFile.seek(zza - allocate.capacity());
                            randomAccessFile.readFully(allocate.array(), allocate.arrayOffset(), allocate.capacity());
                            if (allocate.getLong(8) == 2334950737559900225L && allocate.getLong(16) == 3617552046287187010L) {
                                int i = 0;
                                long j2 = allocate.getLong(0);
                                long j3 = longValue;
                                if (j2 >= allocate.capacity() && j2 <= 2147483639) {
                                    int i2 = (int) (8 + j2);
                                    long j4 = zza - i2;
                                    if (j4 >= 0) {
                                        ByteBuffer allocate2 = ByteBuffer.allocate(i2);
                                        allocate2.order(byteOrder);
                                        randomAccessFile.seek(j4);
                                        randomAccessFile.readFully(allocate2.array(), allocate2.arrayOffset(), allocate2.capacity());
                                        long j5 = allocate2.getLong(0);
                                        if (j5 == j2) {
                                            Pair create = Pair.create(allocate2, Long.valueOf(j4));
                                            ByteBuffer byteBuffer2 = (ByteBuffer) create.first;
                                            long longValue2 = ((Long) create.second).longValue();
                                            if (byteBuffer2.order() == byteOrder) {
                                                int capacity = byteBuffer2.capacity() - 24;
                                                if (capacity >= 8) {
                                                    int capacity2 = byteBuffer2.capacity();
                                                    if (capacity <= byteBuffer2.capacity()) {
                                                        int limit = byteBuffer2.limit();
                                                        int position = byteBuffer2.position();
                                                        try {
                                                            byteBuffer2.position(0);
                                                            byteBuffer2.limit(capacity);
                                                            byteBuffer2.position(8);
                                                            ByteBuffer slice = byteBuffer2.slice();
                                                            slice.order(byteBuffer2.order());
                                                            while (slice.hasRemaining()) {
                                                                i++;
                                                                if (slice.remaining() >= 8) {
                                                                    long j6 = slice.getLong();
                                                                    if (j6 >= 4 && j6 <= 2147483647L) {
                                                                        int i3 = (int) j6;
                                                                        int position2 = slice.position() + i3;
                                                                        if (i3 <= slice.remaining()) {
                                                                            if (slice.getInt() == 1896449818) {
                                                                                X509Certificate[][] zzl = zzl(randomAccessFile.getChannel(), new zzapc(zze(slice, i3 - 4), longValue2, zza, j3, byteBuffer, null));
                                                                                randomAccessFile.close();
                                                                                try {
                                                                                    randomAccessFile.close();
                                                                                } catch (IOException unused) {
                                                                                }
                                                                                return zzl;
                                                                            }
                                                                            long j7 = zza;
                                                                            long j8 = j3;
                                                                            slice.position(position2);
                                                                            j3 = j8;
                                                                            zza = j7;
                                                                        } else {
                                                                            throw new zzapd(new ObfuscatedString(new long[]{-6146599306668100357L, -2848428624560877242L, -8745300776056812852L, 7381486757113666839L, 3282872812030603471L}).toString() + i + new ObfuscatedString(new long[]{-2154901105919349909L, -6349184246233503513L, 4118959332970461227L, 1738698356478402360L}).toString() + i3 + new ObfuscatedString(new long[]{3250227997855810503L, 464144035198594625L, -5963249104449539456L}).toString() + slice.remaining());
                                                                        }
                                                                    } else {
                                                                        throw new zzapd(new ObfuscatedString(new long[]{-5270811195483618751L, -1151801088562681196L, -2931182573440326247L, -2773419830837315871L, 4419715292010747528L}).toString() + i + new ObfuscatedString(new long[]{3915257832065716741L, -4816957363263768286L, -5800819962396207887L, -9119303543235467470L}).toString() + j6);
                                                                    }
                                                                } else {
                                                                    throw new zzapd(new ObfuscatedString(new long[]{-8582043146305029436L, 6171673881516541078L, -2579902862649311129L, 3061820420270675107L, 4755829039639430305L, -2138046928728040032L, 2437091967593981133L, 4458487495932088788L, 6848385252324440658L}).toString() + i);
                                                                }
                                                            }
                                                            throw new zzapd(new ObfuscatedString(new long[]{3134733718570214088L, 5980101097830393948L, -4060018644176476579L, 481188318373421041L, 6408100134835666170L, 3605608427791469871L, 7341378996974540480L, 2386579222492057458L}).toString());
                                                        } finally {
                                                            byteBuffer2.position(0);
                                                            byteBuffer2.limit(limit);
                                                            byteBuffer2.position(position);
                                                        }
                                                    }
                                                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{8698674238912069006L, -3909276982691447184L, -7922841446520506976L}).toString() + capacity + new ObfuscatedString(new long[]{-5778798504034291840L, -8972487559559139095L}).toString() + capacity2);
                                                }
                                                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8902455604998732613L, -7012680048656468370L, 1659045263853757792L}).toString() + capacity + new ObfuscatedString(new long[]{-3295243581635296587L, 7628759690681294526L}).toString() + 8);
                                            }
                                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5166121217473130457L, 8174600149132541668L, 1944646665754482949L, -1428736763503965509L, -7181152995459220987L, 8573752608926632496L, 1689675421558229565L}).toString());
                                        }
                                        throw new zzapd(new ObfuscatedString(new long[]{-8309041768780687557L, 8328688393212019631L, -5602623057232143623L, 5444791669447267307L, 3898790945378034769L, 2807652578884098672L, -6904404084451711228L, -426078769029811541L, 8683023934931682877L}).toString() + j5 + new ObfuscatedString(new long[]{-4551464598853999569L, 1970094941894779477L}).toString() + j2);
                                    }
                                    throw new zzapd(new ObfuscatedString(new long[]{1224134717668130790L, -6184149635547641586L, -8820411238605123404L, 5177594773694251822L, 2668937703910851050L, 4384372662825729262L}).toString() + j4);
                                }
                                throw new zzapd(new ObfuscatedString(new long[]{-5907632361705317356L, -135989742763280156L, 624675037877712959L, 7473515578553133062L, -5238460903921331686L, 407246311754242905L}).toString() + j2);
                            }
                            throw new zzapd(new ObfuscatedString(new long[]{8119763295466775207L, 1063129179658041427L, 8043652828707486804L, 5157404265097250320L, -5676655810832616521L, -1204422787634367428L, 3450185391996413413L, 6382533886794871901L}).toString());
                        }
                        throw new zzapd(new ObfuscatedString(new long[]{5586095787315292364L, 4583354166720697620L, 5789303329109397589L, 7563181180114899579L, 9165386340796640969L, -4693293630576286623L, 7587056937903845127L, -2019973848968159913L, 9203954790950195423L, -5965481443394882284L}).toString() + zza);
                    }
                    throw new zzapd(new ObfuscatedString(new long[]{5831541322323965086L, -5055509698248418920L, -3901788269588933503L, -7329361746446219546L, 3238123489244542358L, 3806269324833729853L, 3581392505932692381L, -3675682484714720313L, -8916959496895246907L, 7643902192450096261L, 9171193600889911579L}).toString());
                }
                throw new zzapd(new ObfuscatedString(new long[]{1835880766600538370L, 1876076586423150315L, -5357523736885011544L, -4456339018182003079L, 8516709484173904394L, 4639645639528263338L, -7247374203849504725L}).toString() + zza + new ObfuscatedString(new long[]{4644090140318413982L, -5921153776716128651L, -2505449727138937904L, -7983152098227424550L, 950364037786593250L, 7584745453857412983L}).toString() + longValue);
            }
            throw new zzapd(new ObfuscatedString(new long[]{1827866254817289436L, -2230099918293949099L, 115371462193635490L, -3138490704606947049L, 7505995140029989790L, 2025773433597122601L, 5039937495392026286L, -1635441353983629835L, 8305552526533639805L, 5905515405352254692L, 8871168457513359708L}).toString() + randomAccessFile.length() + new ObfuscatedString(new long[]{-5407025544948939139L, 6168440265423878393L}).toString());
        } catch (Throwable th) {
            try {
                randomAccessFile.close();
            } catch (IOException unused2) {
            }
            throw th;
        }
    }

    private static int zzb(int i) {
        if (i != 1) {
            if (i == 2) {
                return 64;
            }
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5054152466590290185L, -4864514321453137005L, 6912758118923524745L, 8736318719421258871L, 260644507021378804L, 2984872638454965479L}), new StringBuilder(), i));
        }
        return 32;
    }

    private static int zzc(int i) {
        if (i != 513) {
            if (i != 514) {
                if (i != 769) {
                    switch (i) {
                        case 257:
                        case 259:
                            return 1;
                        case 258:
                        case 260:
                            return 2;
                        default:
                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{1557449347760283632L, -6131113010435825339L, -429581195994688921L, 3690854203542682024L, 1545567438126130950L}).toString().concat(String.valueOf(Long.toHexString(i))));
                    }
                }
                return 1;
            }
            return 2;
        }
        return 1;
    }

    private static String zzd(int i) {
        ObfuscatedString obfuscatedString;
        if (i != 1) {
            if (i == 2) {
                obfuscatedString = new ObfuscatedString(new long[]{-276565994667501582L, 7020223698257882298L});
            } else {
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{5813719345715590245L, -9113483401145972611L, -4132566664762158293L, 9198916442616614172L, 8023282755023095377L, -3182021049819243794L}), new StringBuilder(), i));
            }
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{4648236066085170988L, -3878456940908661749L});
        }
        return obfuscatedString.toString();
    }

    private static ByteBuffer zze(ByteBuffer byteBuffer, int i) {
        int limit = byteBuffer.limit();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (i2 >= position && i2 <= limit) {
            byteBuffer.limit(i2);
            try {
                ByteBuffer slice = byteBuffer.slice();
                slice.order(byteBuffer.order());
                byteBuffer.position(i2);
                return slice;
            } finally {
                byteBuffer.limit(limit);
            }
        }
        throw new BufferUnderflowException();
    }

    private static ByteBuffer zzf(ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() >= 4) {
            int i = byteBuffer.getInt();
            if (i >= 0) {
                if (i <= byteBuffer.remaining()) {
                    return zze(byteBuffer, i);
                }
                int remaining = byteBuffer.remaining();
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{7090122642598264358L, 6785708861652052887L, -1068500060314841003L, -6701575022243431366L, 4657806267066322938L, -5036828536893907443L, -6078624285367561012L, 6071478337276928199L, -6098557153239627463L, -9059526514469927888L}).toString());
                sb.append(i);
                throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{1980706729571323011L, -9160584138563705474L, -4816325985707928592L}), sb, remaining));
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{5924100256666405917L, 4321405361265677263L, -8157816922252203055L}).toString());
        }
        int remaining2 = byteBuffer.remaining();
        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1043746997527427836L, 1613216236831157420L, 3025836211858145701L, 6324380069953265196L, -5108338924633171780L, -5572382169345929082L, 6375016185787224076L, 8078690303762962435L, -5310926063410617686L, 6482084368776405740L, 293327030733901102L, -5276125677690300976L}), new StringBuilder(), remaining2));
    }

    private static void zzg(int i, byte[] bArr, int i2) {
        bArr[1] = (byte) (i & 255);
        bArr[2] = (byte) ((i >>> 8) & 255);
        bArr[3] = (byte) ((i >>> 16) & 255);
        bArr[4] = (byte) (i >> 24);
    }

    private static void zzh(Map map, FileChannel fileChannel, long j, long j2, long j3, ByteBuffer byteBuffer) {
        if (!map.isEmpty()) {
            zzapa zzapaVar = new zzapa(fileChannel, 0L, j);
            zzapa zzapaVar2 = new zzapa(fileChannel, j2, j3 - j2);
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.order(ByteOrder.LITTLE_ENDIAN);
            zzaph.zzd(duplicate, j);
            zzaoy zzaoyVar = new zzaoy(duplicate);
            int size = map.size();
            int[] iArr = new int[size];
            Iterator it = map.keySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                iArr[i] = ((Integer) it.next()).intValue();
                i++;
            }
            try {
                byte[][] zzk = zzk(iArr, new zzaoz[]{zzapaVar, zzapaVar2, zzaoyVar});
                for (int i2 = 0; i2 < size; i2++) {
                    int i3 = iArr[i2];
                    if (!MessageDigest.isEqual((byte[]) map.get(Integer.valueOf(i3)), zzk[i2])) {
                        throw new SecurityException(zzd(i3).concat(new ObfuscatedString(new long[]{6662528494602063563L, 1598814280123400399L, -8964366557488150778L, 3695947434866050502L, 8892821906216209547L, 4423159390631347217L}).toString()));
                    }
                }
                return;
            } catch (DigestException e) {
                throw new SecurityException(new ObfuscatedString(new long[]{-9101025701350390571L, 455681703717018848L, -5610732347239039797L, 9020988003359574858L, -4970609095929016717L, -3668303040543449010L}).toString(), e);
            }
        }
        throw new SecurityException(new ObfuscatedString(new long[]{-1017909008981448329L, 4919857142079364688L, 959893909404282313L, 5752219782349585702L}).toString());
    }

    private static byte[] zzi(ByteBuffer byteBuffer) {
        int i = byteBuffer.getInt();
        if (i >= 0) {
            if (i <= byteBuffer.remaining()) {
                byte[] bArr = new byte[i];
                byteBuffer.get(bArr);
                return bArr;
            }
            int remaining = byteBuffer.remaining();
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{156642937212456268L, 2996499694383169147L, 6491444684898286679L, 8854328950135847943L, 1755467771050456190L, 5062310559093469663L, -4912416156639574849L, 5256275612621680148L}).toString());
            sb.append(i);
            throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2571563345997510853L, 3691182359149171756L, 3363375044725678291L}), sb, remaining));
        }
        throw new IOException(new ObfuscatedString(new long[]{1763426772386750432L, 5557928962429219639L, 5901186936440129038L}).toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
    
        r2 = zzc(r1);
        r3 = zzc(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004f, code lost:
    
        if (r2 == 1) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0051, code lost:
    
        if (r3 == 1) goto L141;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:62:0x0118. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static X509Certificate[] zzj(ByteBuffer byteBuffer, Map map, CertificateFactory certificateFactory) {
        String obfuscatedString;
        byte[] bArr;
        Pair create;
        ByteBuffer zzf = zzf(byteBuffer);
        ByteBuffer zzf2 = zzf(byteBuffer);
        byte[] zzi = zzi(byteBuffer);
        ArrayList arrayList = new ArrayList();
        int i = -1;
        int i2 = 0;
        byte[] bArr2 = null;
        while (zzf2.hasRemaining()) {
            i2++;
            try {
                ByteBuffer zzf3 = zzf(zzf2);
                if (zzf3.remaining() >= 8) {
                    int i3 = zzf3.getInt();
                    arrayList.add(Integer.valueOf(i3));
                    if (i3 != 513 && i3 != 514 && i3 != 769) {
                        switch (i3) {
                            case 257:
                            case 258:
                            case 259:
                            case 260:
                                break;
                            default:
                                continue;
                        }
                    }
                    bArr2 = zzi(zzf3);
                    i = i3;
                } else {
                    throw new SecurityException(new ObfuscatedString(new long[]{8905234907003367330L, 3690953322586996613L, 5060878144592258651L, -1439976146306301747L, -2667854552012051367L}).toString());
                }
            } catch (IOException e) {
                e = e;
                throw new SecurityException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3104872054156990277L, 1015998637164170085L, -7527357147314923511L, -8253331228962140840L, -9181765385986314928L, -3110790177512809095L}), new StringBuilder(), i2), e);
            } catch (BufferUnderflowException e2) {
                e = e2;
                throw new SecurityException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{3104872054156990277L, 1015998637164170085L, -7527357147314923511L, -8253331228962140840L, -9181765385986314928L, -3110790177512809095L}), new StringBuilder(), i2), e);
            }
        }
        if (i == -1) {
            if (i2 == 0) {
                throw new SecurityException(new ObfuscatedString(new long[]{-3331662585886358080L, 1040649845698740235L, 8704856222352396112L, 3407794794963866460L}).toString());
            }
            throw new SecurityException(new ObfuscatedString(new long[]{-1905162425017565672L, -2207774848824558527L, -7878529876954036926L, -5918456103456896918L, -8858770125913378108L}).toString());
        }
        if (i != 513 && i != 514) {
            if (i != 769) {
                switch (i) {
                    case 257:
                    case 258:
                    case 259:
                    case 260:
                        obfuscatedString = new ObfuscatedString(new long[]{-8186004952100542485L, 5999411811995610401L}).toString();
                        break;
                    default:
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{5190194742705550323L, -3368585929026926966L, 9086548800357190731L, -8185372972745931560L, -491234615140783207L}).toString().concat(String.valueOf(Long.toHexString(i))));
                }
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-5531070492254842069L, 3664332623379632325L}).toString();
            }
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{964136868943560841L, 2712454505081925519L}).toString();
        }
        if (i != 513) {
            if (i != 514) {
                if (i != 769) {
                    switch (i) {
                        case 257:
                            create = Pair.create(new ObfuscatedString(new long[]{-3548123419572359652L, 9112474325384544886L, 1309042921216991117L, 7894539661934828021L}).toString(), new PSSParameterSpec(new ObfuscatedString(new long[]{-8744784733179037563L, 3602243890930447932L}).toString(), new ObfuscatedString(new long[]{-8927127549230032749L, 1492611771110728005L}).toString(), MGF1ParameterSpec.SHA256, 32, 1));
                            bArr = null;
                            break;
                        case 258:
                            create = Pair.create(new ObfuscatedString(new long[]{-8591772211238978863L, 6792677548606724697L, 3242807416160708316L, -8382919329705805505L}).toString(), new PSSParameterSpec(new ObfuscatedString(new long[]{3394726945522346845L, 899447216100593934L}).toString(), new ObfuscatedString(new long[]{-1063833219811038081L, 4435015568259538149L}).toString(), MGF1ParameterSpec.SHA512, 64, 1));
                            bArr = null;
                            break;
                        case 259:
                            bArr = null;
                            create = Pair.create(new ObfuscatedString(new long[]{-7252244620670837456L, -7289746454928694010L, -4473448148012701231L}).toString(), null);
                            break;
                        case 260:
                            bArr = null;
                            create = Pair.create(new ObfuscatedString(new long[]{-2775337838927340258L, 3169646736444566055L, 7169323426312582506L}).toString(), null);
                            break;
                        default:
                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8340349042417904708L, 3927266534735903914L, -563126056136807431L, 3350865911309271375L, 1889034817166338061L}).toString().concat(String.valueOf(Long.toHexString(i))));
                    }
                } else {
                    bArr = null;
                    create = Pair.create(new ObfuscatedString(new long[]{1653099684631140396L, 248343941985530227L, 7911192991560467942L}).toString(), null);
                }
            } else {
                bArr = null;
                create = Pair.create(new ObfuscatedString(new long[]{1440687160917264957L, -6773957993284954558L, -3537373890725192723L}).toString(), null);
            }
        } else {
            bArr = null;
            create = Pair.create(new ObfuscatedString(new long[]{3136608839112522116L, -5057754367890287769L, 6092656141607966176L}).toString(), null);
        }
        String str = (String) create.first;
        AlgorithmParameterSpec algorithmParameterSpec = (AlgorithmParameterSpec) create.second;
        try {
            PublicKey generatePublic = KeyFactory.getInstance(obfuscatedString).generatePublic(new X509EncodedKeySpec(zzi));
            Signature signature = Signature.getInstance(str);
            signature.initVerify(generatePublic);
            if (algorithmParameterSpec != null) {
                signature.setParameter(algorithmParameterSpec);
            }
            signature.update(zzf);
            if (signature.verify(bArr2)) {
                zzf.clear();
                ByteBuffer zzf4 = zzf(zzf);
                ArrayList arrayList2 = new ArrayList();
                byte[] bArr3 = bArr;
                int i4 = 0;
                while (zzf4.hasRemaining()) {
                    i4++;
                    try {
                        ByteBuffer zzf5 = zzf(zzf4);
                        if (zzf5.remaining() >= 8) {
                            int i5 = zzf5.getInt();
                            arrayList2.add(Integer.valueOf(i5));
                            if (i5 == i) {
                                bArr3 = zzi(zzf5);
                            }
                        } else {
                            throw new IOException(new ObfuscatedString(new long[]{-5854970097890726898L, 3883847308991036408L, -424231282330224089L}).toString());
                        }
                    } catch (IOException e3) {
                        e = e3;
                        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5311681601543252544L, 3381579693513665295L, -2436773428569598207L, -739728205385161926L, 2277592176881869493L}), new StringBuilder(), i4), e);
                    } catch (BufferUnderflowException e4) {
                        e = e4;
                        throw new IOException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-5311681601543252544L, 3381579693513665295L, -2436773428569598207L, -739728205385161926L, 2277592176881869493L}), new StringBuilder(), i4), e);
                    }
                }
                if (arrayList.equals(arrayList2)) {
                    int zzc = zzc(i);
                    byte[] bArr4 = (byte[]) map.put(Integer.valueOf(zzc), bArr3);
                    if (bArr4 != null && !MessageDigest.isEqual(bArr4, bArr3)) {
                        throw new SecurityException(zzd(zzc).concat(new ObfuscatedString(new long[]{-4634203711642856332L, 5713875456677103157L, 3933354104040740812L, -2009603832413894111L, -6024129773394021473L, 2378240507100426488L, -3141668466579281769L, -8737768780300542L, -73838703812514836L, -4893097721899743714L, -6209015182837784488L}).toString()));
                    }
                    ByteBuffer zzf6 = zzf(zzf);
                    ArrayList arrayList3 = new ArrayList();
                    int i6 = 0;
                    while (zzf6.hasRemaining()) {
                        i6++;
                        byte[] zzi2 = zzi(zzf6);
                        try {
                            arrayList3.add(new zzape((X509Certificate) certificateFactory.generateCertificate(new ByteArrayInputStream(zzi2)), zzi2));
                        } catch (CertificateException e5) {
                            throw new SecurityException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-1346861801026444511L, 5093723691489904255L, -8914097189670578763L, -8587026038650930746L, -1820291983765152521L}), new StringBuilder(), i6), e5);
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        if (Arrays.equals(zzi, ((X509Certificate) arrayList3.get(0)).getPublicKey().getEncoded())) {
                            return (X509Certificate[]) arrayList3.toArray(new X509Certificate[arrayList3.size()]);
                        }
                        throw new SecurityException(new ObfuscatedString(new long[]{8587158753647788460L, 1415051377776195846L, 4735316748207705305L, -5207226479261494807L, 4118441104387487599L, -5715566185808392650L, 6883573434066740654L, 8128781343273476944L, -2528620034350537448L}).toString());
                    }
                    throw new SecurityException(new ObfuscatedString(new long[]{7713839246446099378L, 1728350957280834956L, 8836761388246087800L, 3462676795144732506L}).toString());
                }
                throw new SecurityException(new ObfuscatedString(new long[]{7803220283134830606L, 5760915418528840221L, 5367694476263077478L, 9168709041795205978L, -2824589325289005879L, -2698271742976962991L, -1178882310223249503L, -2455907052720662370L, -1054069938645323490L, 4631735280049143207L}).toString());
            }
            throw new SecurityException(String.valueOf(str).concat(new ObfuscatedString(new long[]{-1962943732103321976L, -6033301477101241839L, -4191952501725112979L, 5318079435931331946L, -6341287270901091339L}).toString()));
        } catch (InvalidAlgorithmParameterException e6) {
            e = e6;
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{5788928736856835140L, -7148179153408457083L, -3567269250012318617L, 9213506674721851024L}).toString());
            sb.append(str);
            throw new SecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1510410476813825136L, 3908426859908962811L, -5411205479610368727L}), sb), e);
        } catch (InvalidKeyException e7) {
            e = e7;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(new ObfuscatedString(new long[]{5788928736856835140L, -7148179153408457083L, -3567269250012318617L, 9213506674721851024L}).toString());
            sb2.append(str);
            throw new SecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1510410476813825136L, 3908426859908962811L, -5411205479610368727L}), sb2), e);
        } catch (NoSuchAlgorithmException e8) {
            e = e8;
            StringBuilder sb22 = new StringBuilder();
            sb22.append(new ObfuscatedString(new long[]{5788928736856835140L, -7148179153408457083L, -3567269250012318617L, 9213506674721851024L}).toString());
            sb22.append(str);
            throw new SecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1510410476813825136L, 3908426859908962811L, -5411205479610368727L}), sb22), e);
        } catch (SignatureException e9) {
            e = e9;
            StringBuilder sb222 = new StringBuilder();
            sb222.append(new ObfuscatedString(new long[]{5788928736856835140L, -7148179153408457083L, -3567269250012318617L, 9213506674721851024L}).toString());
            sb222.append(str);
            throw new SecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1510410476813825136L, 3908426859908962811L, -5411205479610368727L}), sb222), e);
        } catch (InvalidKeySpecException e10) {
            e = e10;
            StringBuilder sb2222 = new StringBuilder();
            sb2222.append(new ObfuscatedString(new long[]{5788928736856835140L, -7148179153408457083L, -3567269250012318617L, 9213506674721851024L}).toString());
            sb2222.append(str);
            throw new SecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1510410476813825136L, 3908426859908962811L, -5411205479610368727L}), sb2222), e);
        }
    }

    private static byte[][] zzk(int[] iArr, zzaoz[] zzaozVarArr) {
        long j;
        int length;
        int i = 3;
        int i2 = 1;
        int i3 = 0;
        long j2 = 0;
        long j3 = 0;
        int i4 = 0;
        while (true) {
            j = 1048576;
            if (i4 >= 3) {
                break;
            }
            j3 += (zzaozVarArr[i4].zza() + 1048575) / 1048576;
            i4++;
        }
        if (j3 < 2097151) {
            byte[][] bArr = new byte[iArr.length];
            int i5 = 0;
            while (true) {
                length = iArr.length;
                if (i5 >= length) {
                    break;
                }
                int i6 = (int) j3;
                byte[] bArr2 = new byte[(zzb(iArr[i5]) * i6) + 5];
                bArr2[0] = 90;
                zzg(i6, bArr2, 1);
                bArr[i5] = bArr2;
                i5++;
            }
            byte[] bArr3 = new byte[5];
            bArr3[0] = -91;
            MessageDigest[] messageDigestArr = new MessageDigest[length];
            for (int i7 = 0; i7 < iArr.length; i7++) {
                String zzd = zzd(iArr[i7]);
                try {
                    messageDigestArr[i7] = MessageDigest.getInstance(zzd);
                } catch (NoSuchAlgorithmException e) {
                    throw new RuntimeException(zzd.concat(new ObfuscatedString(new long[]{6414158097037816034L, -332649096026682037L, 5230115451580307073L, 5795141567677993273L}).toString()), e);
                }
            }
            int i8 = 0;
            int i9 = 0;
            while (i8 < i) {
                zzaoz zzaozVar = zzaozVarArr[i8];
                long j4 = j2;
                long zza = zzaozVar.zza();
                while (zza > j2) {
                    int min = (int) Math.min(zza, j);
                    zzg(min, bArr3, i2);
                    for (int i10 = 0; i10 < length; i10 += i2) {
                        messageDigestArr[i10].update(bArr3);
                    }
                    long j5 = j4;
                    try {
                        zzaozVar.zzb(messageDigestArr, j5, min);
                        int i11 = 0;
                        while (i11 < iArr.length) {
                            int i12 = iArr[i11];
                            zzaoz zzaozVar2 = zzaozVar;
                            byte[] bArr4 = bArr[i11];
                            int zzb = zzb(i12);
                            byte[] bArr5 = bArr3;
                            MessageDigest messageDigest = messageDigestArr[i11];
                            MessageDigest[] messageDigestArr2 = messageDigestArr;
                            int i13 = length;
                            int digest = messageDigest.digest(bArr4, (i9 * zzb) + 5, zzb);
                            if (digest == zzb) {
                                i11++;
                                length = i13;
                                zzaozVar = zzaozVar2;
                                bArr3 = bArr5;
                                messageDigestArr = messageDigestArr2;
                            } else {
                                String algorithm = messageDigest.getAlgorithm();
                                StringBuilder sb = new StringBuilder();
                                sb.append(new ObfuscatedString(new long[]{4967986684781813487L, 1529043441878880209L, -1517655954874559806L, -5050539301212651916L, -1963339651883748323L}).toString());
                                sb.append(algorithm);
                                throw new RuntimeException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-6266410997106681296L, 6049456258717138312L, -805924980386247455L}), sb, digest));
                            }
                        }
                        zzaoz zzaozVar3 = zzaozVar;
                        long j6 = min;
                        long j7 = j5 + j6;
                        zza -= j6;
                        i9++;
                        zzaozVar = zzaozVar3;
                        messageDigestArr = messageDigestArr;
                        i2 = 1;
                        j = 1048576;
                        j4 = j7;
                        j2 = 0;
                    } catch (IOException e2) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(new ObfuscatedString(new long[]{-5453651997554204542L, 7186908968225305092L, 2824089197711634045L, 7973883501682934764L}).toString());
                        sb2.append(i9);
                        throw new DigestException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-4432661284902697870L, 8254856564574570486L, -7237350867870704286L}), sb2, i3), e2);
                    }
                }
                i3++;
                i8++;
                messageDigestArr = messageDigestArr;
                i = 3;
                i2 = 1;
                j2 = 0;
                j = 1048576;
            }
            byte[][] bArr6 = new byte[iArr.length];
            for (int i14 = 0; i14 < iArr.length; i14++) {
                int i15 = iArr[i14];
                byte[] bArr7 = bArr[i14];
                String zzd2 = zzd(i15);
                try {
                    bArr6[i14] = MessageDigest.getInstance(zzd2).digest(bArr7);
                } catch (NoSuchAlgorithmException e3) {
                    throw new RuntimeException(zzd2.concat(new ObfuscatedString(new long[]{725706752785187998L, -772509987871206783L, -5956234119348364673L, 640477914338037546L}).toString()), e3);
                }
            }
            return bArr6;
        }
        throw new DigestException(AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{856138399483791349L, 1773948110097210106L, 604503788960726899L, -5219494211226897982L}), new StringBuilder(), j3));
    }

    private static X509Certificate[][] zzl(FileChannel fileChannel, zzapc zzapcVar) {
        ByteBuffer byteBuffer;
        long j;
        long j2;
        long j3;
        ByteBuffer byteBuffer2;
        HashMap hashMap = new HashMap();
        ArrayList arrayList = new ArrayList();
        try {
            CertificateFactory certificateFactory = CertificateFactory.getInstance(new ObfuscatedString(new long[]{-4199374514583698516L, 4782605516635969834L}).toString());
            try {
                byteBuffer = zzapcVar.zza;
                ByteBuffer zzf = zzf(byteBuffer);
                int i = 0;
                while (zzf.hasRemaining()) {
                    i++;
                    try {
                        arrayList.add(zzj(zzf(zzf), hashMap, certificateFactory));
                    } catch (IOException | SecurityException | BufferUnderflowException e) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{7454469174671436248L, 876412502667418910L, 7383636191333880154L, 4213917835072022812L, -385383190052339809L}).toString());
                        sb.append(i);
                        throw new SecurityException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7592015987542257541L, -6368652206640099312L}), sb), e);
                    }
                }
                if (i > 0) {
                    if (!hashMap.isEmpty()) {
                        j = zzapcVar.zzb;
                        j2 = zzapcVar.zzc;
                        j3 = zzapcVar.zzd;
                        byteBuffer2 = zzapcVar.zze;
                        zzh(hashMap, fileChannel, j, j2, j3, byteBuffer2);
                        return (X509Certificate[][]) arrayList.toArray(new X509Certificate[arrayList.size()]);
                    }
                    throw new SecurityException(new ObfuscatedString(new long[]{-6201868398271357397L, 5906116564552114211L, 3288610927020231068L, 2730937910251754320L}).toString());
                }
                throw new SecurityException(new ObfuscatedString(new long[]{7399962315522465619L, 1034464403728961558L, 2273802857631195675L}).toString());
            } catch (IOException e2) {
                throw new SecurityException(new ObfuscatedString(new long[]{-7031025322792762350L, 8480517091978910320L, 7988015788922134890L, -2263075002582102862L, 7693478010559556149L}).toString(), e2);
            }
        } catch (CertificateException e3) {
            throw new RuntimeException(new ObfuscatedString(new long[]{7541924318039344073L, 3120706109073148526L, 5228937279263750491L, -8109700619672603163L, -8380127037939711640L, 7920204589301990029L, 1993865470205186933L}).toString(), e3);
        }
    }
}
