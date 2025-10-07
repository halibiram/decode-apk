package com.tencent.mmkv;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import dalvik.annotation.optimization.FastNative;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import org.jetbrains.annotations.Contract;

/* loaded from: classes3.dex */
public class MMKV implements SharedPreferences, SharedPreferences.Editor {
    private static final int ASHMEM_MODE = 8;
    private static final int BACKUP_MODE = 16;
    private static final int CONTEXT_MODE_MULTI_PROCESS = 4;
    public static final int ExpireInDay = 86400;
    public static final int ExpireInHour = 3600;
    public static final int ExpireInMinute = 60;
    public static final int ExpireInMonth = 2592000;
    public static final int ExpireInYear = 946080000;
    public static final int ExpireNever = 0;
    public static final int MULTI_PROCESS_MODE = 2;
    public static final int SINGLE_PROCESS_MODE = 1;
    private static final Set<Long> checkedHandleSet;
    private static MMKVHandler gCallbackHandler;
    private static MMKVContentChangeNotification gContentChangeNotify;
    private static boolean gWantLogReDirecting;
    private static final MMKVLogLevel[] index2LogLevel;
    private static boolean isProcessModeCheckerEnabled;
    private static final EnumMap<MMKVLogLevel, Integer> logLevel2Index;
    private static final HashMap<String, Parcelable.Creator<?>> mCreators;
    private static final EnumMap<MMKVRecoverStrategic, Integer> recoverIndex;
    private static String rootDir;
    private final long nativeHandle;

    /* renamed from: com.tencent.mmkv.MMKV$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$tencent$mmkv$MMKVLogLevel;

        static {
            int[] iArr = new int[MMKVLogLevel.values().length];
            $SwitchMap$com$tencent$mmkv$MMKVLogLevel = iArr;
            try {
                iArr[MMKVLogLevel.LevelDebug.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$tencent$mmkv$MMKVLogLevel[MMKVLogLevel.LevelWarning.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$tencent$mmkv$MMKVLogLevel[MMKVLogLevel.LevelError.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$tencent$mmkv$MMKVLogLevel[MMKVLogLevel.LevelNone.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$tencent$mmkv$MMKVLogLevel[MMKVLogLevel.LevelInfo.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface LibLoader {
        void loadLibrary(String str);
    }

    static {
        EnumMap<MMKVRecoverStrategic, Integer> enumMap = new EnumMap<>((Class<MMKVRecoverStrategic>) MMKVRecoverStrategic.class);
        recoverIndex = enumMap;
        enumMap.put((EnumMap<MMKVRecoverStrategic, Integer>) MMKVRecoverStrategic.OnErrorDiscard, (MMKVRecoverStrategic) 0);
        enumMap.put((EnumMap<MMKVRecoverStrategic, Integer>) MMKVRecoverStrategic.OnErrorRecover, (MMKVRecoverStrategic) 1);
        EnumMap<MMKVLogLevel, Integer> enumMap2 = new EnumMap<>((Class<MMKVLogLevel>) MMKVLogLevel.class);
        logLevel2Index = enumMap2;
        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelDebug;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel, (MMKVLogLevel) 0);
        MMKVLogLevel mMKVLogLevel2 = MMKVLogLevel.LevelInfo;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel2, (MMKVLogLevel) 1);
        MMKVLogLevel mMKVLogLevel3 = MMKVLogLevel.LevelWarning;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel3, (MMKVLogLevel) 2);
        MMKVLogLevel mMKVLogLevel4 = MMKVLogLevel.LevelError;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel4, (MMKVLogLevel) 3);
        MMKVLogLevel mMKVLogLevel5 = MMKVLogLevel.LevelNone;
        enumMap2.put((EnumMap<MMKVLogLevel, Integer>) mMKVLogLevel5, (MMKVLogLevel) 4);
        index2LogLevel = new MMKVLogLevel[]{mMKVLogLevel, mMKVLogLevel2, mMKVLogLevel3, mMKVLogLevel4, mMKVLogLevel5};
        checkedHandleSet = new HashSet();
        rootDir = null;
        isProcessModeCheckerEnabled = true;
        mCreators = new HashMap<>();
        gWantLogReDirecting = false;
    }

    private MMKV(long j) {
        this.nativeHandle = j;
    }

    private native long actualSize(long j);

    private native String[] allKeys(long j, boolean z);

    @NonNull
    public static MMKV backedUpMMKVWithID(String str, int i, @Nullable String str2, String str3) {
        if (rootDir != null) {
            int i2 = i | 16;
            return checkProcessMode(getMMKVWithID(str, i2, str2, str3, 0L), str, i2);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-3042501965648879034L, -3149466221147070417L, -8521309484120986957L, -6363768252430449091L, -2800235737639058933L, 2883547306207901083L}).toString());
    }

    public static native long backupAllToDirectory(String str);

    public static native boolean backupOneToDirectory(String str, String str2, @Nullable String str3);

    @NonNull
    @Contract("_, _, _ -> new")
    private static MMKV checkProcessMode(long j, String str, int i) {
        String str2;
        if (j != 0) {
            if (!isProcessModeCheckerEnabled) {
                return new MMKV(j);
            }
            Set<Long> set = checkedHandleSet;
            synchronized (set) {
                try {
                    if (!set.contains(Long.valueOf(j))) {
                        if (!checkProcessMode(j)) {
                            if (i == 1) {
                                str2 = new ObfuscatedString(new long[]{6414177724734232608L, 389988602908866948L, 1593428383245489281L, -5646798461041321038L, 4364901293245605199L, -5394197481264090673L}).toString() + str + new ObfuscatedString(new long[]{-8656288645913238840L, 1399871313465321340L, -4696622088244358382L, -8067373390792008289L, 5291393138693464935L}).toString();
                            } else {
                                str2 = (new ObfuscatedString(new long[]{-6954666322732566154L, -6129356979368753940L, 793084455600918748L, -7885378839030005864L, 6246580771785419131L}).toString() + str + new ObfuscatedString(new long[]{-5154761974540773967L, 1889728821850129069L, 2025538453512860660L, -7392293144214441350L, 4325455837238003920L}).toString()) + new ObfuscatedString(new long[]{-8954174139119781895L, -6906149245120987570L, 7211516564310285677L, 1350457022722260889L, -5426603356316308623L, 8250589029689393431L, -1112730895072699416L, -8812245497499626705L, 5516799487248614161L, 2274784617340932042L, -3350458424853692012L, 2480568862359756312L}).toString();
                            }
                            throw new IllegalArgumentException(str2);
                        }
                        set.add(Long.valueOf(j));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return new MMKV(j);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1819431994994905173L, -9201593122748305158L, 4604263272297411090L, 6453213197248300163L, -400459598444407650L, -3808543840739676980L}).toString());
        sb.append(str);
        throw new RuntimeException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7740399742063570640L, -2843780031551074137L}), sb));
    }

    private static native boolean checkProcessMode(long j);

    private native boolean containsKey(long j, String str);

    private native long count(long j, boolean z);

    private static native long createNB(int i);

    @Nullable
    public static NativeBuffer createNativeBuffer(int i) {
        long createNB = createNB(i);
        if (createNB <= 0) {
            return null;
        }
        return new NativeBuffer(createNB, i);
    }

    private native boolean decodeBool(long j, String str, boolean z);

    @Nullable
    private native byte[] decodeBytes(long j, String str);

    private native double decodeDouble(long j, String str, double d);

    private native float decodeFloat(long j, String str, float f);

    private native int decodeInt(long j, String str, int i);

    private native long decodeLong(long j, String str, long j2);

    @Nullable
    private native String decodeString(long j, String str, @Nullable String str2);

    @Nullable
    private native String[] decodeStringSet(long j, String str);

    @NonNull
    public static MMKV defaultMMKV() {
        if (rootDir != null) {
            return checkProcessMode(getDefaultMMKV(1, null), new ObfuscatedString(new long[]{4581861551752689931L, 6621151735563909752L, -4129005123526517650L}).toString(), 1);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-6189927885574245657L, 6985339387940968327L, 1473808035994390108L, 6410612678107914826L, -4595057444011640864L, 1433638257643288696L}).toString());
    }

    private static native void destroyNB(long j, int i);

    public static void destroyNativeBuffer(@NonNull NativeBuffer nativeBuffer) {
        destroyNB(nativeBuffer.pointer, nativeBuffer.size);
    }

    public static void disableProcessModeChecker() {
        synchronized (checkedHandleSet) {
            isProcessModeCheckerEnabled = false;
        }
        new ObfuscatedString(new long[]{8105138390532228171L, 7755642557005721631L}).toString();
        new ObfuscatedString(new long[]{-6082934716910200051L, 5744946465157086816L, 4291946772255807950L, -3964208357000017118L, -5614949692018986637L}).toString();
    }

    private static String doInitialize(String str, String str2, LibLoader libLoader, MMKVLogLevel mMKVLogLevel, boolean z) {
        if (libLoader != null) {
            if (new ObfuscatedString(new long[]{-3609879799941583714L, 3369148923632139222L, -8042228604520181904L}).toString().equals(new ObfuscatedString(new long[]{-7104619051345554330L, 6536210275412976753L, -1459224737132265275L}).toString())) {
                libLoader.loadLibrary(new ObfuscatedString(new long[]{-943332358495032717L, 1186900620078821940L, 2458775127463837836L}).toString());
            }
            libLoader.loadLibrary(new ObfuscatedString(new long[]{4650897266263295628L, -816462407541102510L}).toString());
        } else {
            if (new ObfuscatedString(new long[]{1804298034068350781L, -5159445851612264453L, -6541926358575083278L}).toString().equals(new ObfuscatedString(new long[]{2410071838951728355L, 2655433771595811580L, -1903178300512426386L}).toString())) {
                System.loadLibrary(new ObfuscatedString(new long[]{1106472464873225473L, -3082506182815558896L, 5625788820662489870L}).toString());
            }
            System.loadLibrary(new ObfuscatedString(new long[]{7910818446917276032L, 4310524959902867507L}).toString());
        }
        jniInitialize(str, str2, logLevel2Int(mMKVLogLevel), z);
        rootDir = str;
        return str;
    }

    public static void enableProcessModeChecker() {
        synchronized (checkedHandleSet) {
            isProcessModeCheckerEnabled = true;
        }
        new ObfuscatedString(new long[]{2264647203826624012L, -8097330769113936630L}).toString();
        new ObfuscatedString(new long[]{-7379189395830788412L, -6532863811627961446L, 3310978999658067533L, -6470726164871171938L, -5278491182642176630L}).toString();
    }

    private native boolean encodeBool(long j, String str, boolean z);

    private native boolean encodeBool_2(long j, String str, boolean z, int i);

    private native boolean encodeBytes(long j, String str, @Nullable byte[] bArr);

    private native boolean encodeBytes_2(long j, String str, @Nullable byte[] bArr, int i);

    private native boolean encodeDouble(long j, String str, double d);

    private native boolean encodeDouble_2(long j, String str, double d, int i);

    private native boolean encodeFloat(long j, String str, float f);

    private native boolean encodeFloat_2(long j, String str, float f, int i);

    private native boolean encodeInt(long j, String str, int i);

    private native boolean encodeInt_2(long j, String str, int i, int i2);

    private native boolean encodeLong(long j, String str, long j2);

    private native boolean encodeLong_2(long j, String str, long j2, int i);

    private native boolean encodeSet(long j, String str, @Nullable String[] strArr);

    private native boolean encodeSet_2(long j, String str, @Nullable String[] strArr, int i);

    private native boolean encodeString(long j, String str, @Nullable String str2);

    private native boolean encodeString_2(long j, String str, @Nullable String str2, int i);

    private static native long getDefaultMMKV(int i, @Nullable String str);

    private static native long getMMKVWithAshmemFD(String str, int i, int i2, @Nullable String str2);

    private static native long getMMKVWithID(String str, int i, @Nullable String str2, @Nullable String str3, long j);

    private static native long getMMKVWithIDAndSize(String str, int i, int i2, @Nullable String str2);

    private byte[] getParcelableByte(@NonNull Parcelable parcelable) {
        Parcel obtain = Parcel.obtain();
        parcelable.writeToParcel(obtain, 0);
        byte[] marshall = obtain.marshall();
        obtain.recycle();
        return marshall;
    }

    public static String getRootDir() {
        return rootDir;
    }

    @Deprecated
    public static String initialize(String str, LibLoader libLoader, MMKVLogLevel mMKVLogLevel) {
        return doInitialize(str, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1245679429544776474L, 9163522064531868419L}), AbstractC0749x8313616e.m3341xc20437a5(str)), libLoader, mMKVLogLevel, false);
    }

    private native boolean isCompareBeforeSetEnabled();

    @FastNative
    private native boolean isEncryptionEnabled();

    @FastNative
    private native boolean isExpirationEnabled();

    public static boolean isFileValid(String str) {
        return isFileValid(str, null);
    }

    public static native boolean isFileValid(String str, @Nullable String str2);

    private static native void jniInitialize(String str, String str2, int i, boolean z);

    @Contract(pure = true)
    private static int logLevel2Int(@NonNull MMKVLogLevel mMKVLogLevel) {
        int i = AnonymousClass1.$SwitchMap$com$tencent$mmkv$MMKVLogLevel[mMKVLogLevel.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return 1;
                    }
                    return 4;
                }
                return 3;
            }
            return 2;
        }
        return 0;
    }

    private static void mmkvLogImp(int i, String str, int i2, String str2, String str3) {
        MMKVHandler mMKVHandler = gCallbackHandler;
        if (mMKVHandler != null && gWantLogReDirecting) {
            mMKVHandler.mmkvLog(index2LogLevel[i], str, i2, str2, str3);
            return;
        }
        int i3 = AnonymousClass1.$SwitchMap$com$tencent$mmkv$MMKVLogLevel[index2LogLevel[i].ordinal()];
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 3) {
                    if (i3 == 5) {
                        new ObfuscatedString(new long[]{-2229232496560099529L, -5833777234937579892L}).toString();
                        return;
                    }
                    return;
                }
                new ObfuscatedString(new long[]{-2092923356592360122L, -4871981543685036263L}).toString();
                return;
            }
            new ObfuscatedString(new long[]{-1839937920216642539L, -3427099889540815838L}).toString();
            return;
        }
        new ObfuscatedString(new long[]{767734248253334311L, 5674191947760201048L}).toString();
    }

    @NonNull
    @Contract("_, _, _, _ -> new")
    public static MMKV mmkvWithAshmemFD(String str, int i, int i2, String str2) {
        long mMKVWithAshmemFD = getMMKVWithAshmemFD(str, i, i2, str2);
        if (mMKVWithAshmemFD != 0) {
            return new MMKV(mMKVWithAshmemFD);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-8690507453788893249L, 4571045459607612542L, 1880247699977824491L, -8539725278815561180L, 6184508549243736815L, 3044314257361999468L}).toString());
        sb.append(str);
        throw new RuntimeException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1153529126403371373L, -7764283687036331159L}), sb));
    }

    @NonNull
    public static MMKV mmkvWithAshmemID(Context context, String str, int i, int i2, @Nullable String str2) {
        MMKV mmkv;
        if (rootDir != null) {
            String processNameByPID = MMKVContentProvider.getProcessNameByPID(context, Process.myPid());
            if (processNameByPID != null && processNameByPID.length() != 0) {
                if (processNameByPID.contains(new ObfuscatedString(new long[]{7731071496998402716L, -5504059670303512545L}).toString())) {
                    Uri contentUri = MMKVContentProvider.contentUri(context);
                    if (contentUri != null) {
                        MMKVLogLevel mMKVLogLevel = MMKVLogLevel.LevelInfo;
                        simpleLog(mMKVLogLevel, new ObfuscatedString(new long[]{4091604615894264667L, -8166874722576664653L, -4518792898556449559L, 2543293761614769738L, -7507588674532825859L, -8009382969478491928L, -6784343847782265461L}).toString() + contentUri);
                        Bundle bundle = new Bundle();
                        bundle.putInt(new ObfuscatedString(new long[]{8659903556507188548L, -7986991243773666299L}).toString(), i);
                        bundle.putInt(new ObfuscatedString(new long[]{5083131764826380759L, -730876015548641144L}).toString(), i2);
                        if (str2 != null) {
                            bundle.putString(new ObfuscatedString(new long[]{4941458927412035104L, -7205661777916514825L, -3087525457466586002L}).toString(), str2);
                        }
                        Bundle call = context.getContentResolver().call(contentUri, new ObfuscatedString(new long[]{-4605481815449811885L, 809790448006683688L, -5114497751810663154L}).toString(), str, bundle);
                        if (call != null) {
                            call.setClassLoader(ParcelableMMKV.class.getClassLoader());
                            ParcelableMMKV parcelableMMKV = (ParcelableMMKV) call.getParcelable(new ObfuscatedString(new long[]{-1479150722407189148L, 5991463380776040013L}).toString());
                            if (parcelableMMKV != null && (mmkv = parcelableMMKV.toMMKV()) != null) {
                                simpleLog(mMKVLogLevel, mmkv.mmapID() + new ObfuscatedString(new long[]{9051935837799514620L, -8093241854599245769L}).toString() + mmkv.ashmemFD() + new ObfuscatedString(new long[]{5217155193247093202L, 799041658642787589L, -5748235366179819297L}).toString() + mmkv.ashmemMetaFD());
                                return mmkv;
                            }
                        }
                    } else {
                        String obfuscatedString = new ObfuscatedString(new long[]{-3774632353532234770L, -5691045538900679294L, 8168802302016330124L, 8464208912109505329L, 8095909749478187241L, 8607181050727088294L, -7056885851212606035L}).toString();
                        simpleLog(MMKVLogLevel.LevelError, obfuscatedString);
                        throw new IllegalStateException(obfuscatedString);
                    }
                }
                simpleLog(MMKVLogLevel.LevelInfo, new ObfuscatedString(new long[]{1339496355157952788L, 9122478897607823065L, -7902166171737055954L, -1585115831467250148L, -7461110532847852881L}).toString());
                long mMKVWithIDAndSize = getMMKVWithIDAndSize(str, i, i2 | 8, str2);
                if (mMKVWithIDAndSize != 0) {
                    return new MMKV(mMKVWithIDAndSize);
                }
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-5227933508421463825L, -2825024244669094460L, -3763366173717443369L, 8160527198423813021L, 2747029040513025688L, -2687690004582730666L}).toString());
                sb.append(str);
                throw new IllegalStateException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{6481200506061091940L, -8853610965937003783L}), sb));
            }
            String obfuscatedString2 = new ObfuscatedString(new long[]{2646250417484649671L, 3726746221004615271L, 618084768042393369L, -3558255929843354689L, -2368888332145243687L, 1105097434257440759L, -6907420442055319486L}).toString();
            simpleLog(MMKVLogLevel.LevelError, obfuscatedString2);
            throw new IllegalStateException(obfuscatedString2);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-4723404892677009596L, 5889628369919449251L, 5999039672032811859L, 4057824795384219227L, -2397100238774603861L, 534375859289377357L}).toString());
    }

    @NonNull
    public static MMKV mmkvWithID(String str) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, 1, null, null, 0L), str, 1);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{3296284000023893462L, -1998994347317980101L, -5834263360108610127L, 2421646519584679299L, 4163603127990205316L, -7004525573485470755L}).toString());
    }

    @FastNative
    private native void nativeEnableCompareBeforeSet();

    private static void onContentChangedByOuterProcess(String str) {
        MMKVContentChangeNotification mMKVContentChangeNotification = gContentChangeNotify;
        if (mMKVContentChangeNotification != null) {
            mMKVContentChangeNotification.onContentChangedByOuterProcess(str);
        }
    }

    public static native void onExit();

    private static int onMMKVCRCCheckFail(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        MMKVHandler mMKVHandler = gCallbackHandler;
        if (mMKVHandler != null) {
            mMKVRecoverStrategic = mMKVHandler.onMMKVCRCCheckFail(str);
        }
        simpleLog(MMKVLogLevel.LevelInfo, new ObfuscatedString(new long[]{-2228281920204151312L, 5650089930513479432L, -5679536180975664495L, 2975864651899605497L}).toString() + str + new ObfuscatedString(new long[]{-4111504569122595530L, 7771131940179740181L}).toString() + mMKVRecoverStrategic);
        Integer num = recoverIndex.get(mMKVRecoverStrategic);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    private static int onMMKVFileLengthError(String str) {
        MMKVRecoverStrategic mMKVRecoverStrategic = MMKVRecoverStrategic.OnErrorDiscard;
        MMKVHandler mMKVHandler = gCallbackHandler;
        if (mMKVHandler != null) {
            mMKVRecoverStrategic = mMKVHandler.onMMKVFileLengthError(str);
        }
        simpleLog(MMKVLogLevel.LevelInfo, new ObfuscatedString(new long[]{-1996328873792658551L, 7341238291980239718L, -6834609250567835709L, 8615428783492185733L}).toString() + str + new ObfuscatedString(new long[]{-2793076262086783347L, 3167764222003492656L}).toString() + mMKVRecoverStrategic);
        Integer num = recoverIndex.get(mMKVRecoverStrategic);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public static native int pageSize();

    public static void registerContentChangeNotify(MMKVContentChangeNotification mMKVContentChangeNotification) {
        boolean z;
        gContentChangeNotify = mMKVContentChangeNotification;
        if (mMKVContentChangeNotification != null) {
            z = true;
        } else {
            z = false;
        }
        setWantsContentChangeNotify(z);
    }

    public static void registerHandler(MMKVHandler mMKVHandler) {
        gCallbackHandler = mMKVHandler;
        boolean wantLogRedirecting = mMKVHandler.wantLogRedirecting();
        gWantLogReDirecting = wantLogRedirecting;
        setCallbackHandler(wantLogRedirecting, true);
    }

    public static boolean removeStorage(String str) {
        return removeStorage(str, null);
    }

    public static native boolean removeStorage(String str, @Nullable String str2);

    private native void removeValueForKey(long j, String str);

    public static native long restoreAllFromDirectory(String str);

    public static native boolean restoreOneMMKVFromDirectory(String str, String str2, @Nullable String str3);

    private static native void setCallbackHandler(boolean z, boolean z2);

    private static native void setLogLevel(int i);

    public static void setLogLevel(MMKVLogLevel mMKVLogLevel) {
        setLogLevel(logLevel2Int(mMKVLogLevel));
    }

    private static native void setWantsContentChangeNotify(boolean z);

    private static void simpleLog(MMKVLogLevel mMKVLogLevel, String str) {
        int intValue;
        StackTraceElement stackTraceElement = Thread.currentThread().getStackTrace()[r0.length - 1];
        Integer num = logLevel2Index.get(mMKVLogLevel);
        if (num == null) {
            intValue = 0;
        } else {
            intValue = num.intValue();
        }
        mmkvLogImp(intValue, stackTraceElement.getFileName(), stackTraceElement.getLineNumber(), stackTraceElement.getMethodName(), str);
    }

    private native void sync(boolean z);

    private native long totalSize(long j);

    public static void unregisterContentChangeNotify() {
        gContentChangeNotify = null;
        setWantsContentChangeNotify(false);
    }

    public static void unregisterHandler() {
        gCallbackHandler = null;
        setCallbackHandler(false, false);
        gWantLogReDirecting = false;
    }

    private native int valueSize(long j, String str, boolean z);

    public static native String version();

    private native int writeValueToNB(long j, String str, long j2, int i);

    public long actualSize() {
        return actualSize(this.nativeHandle);
    }

    @Nullable
    public String[] allKeys() {
        return allKeys(this.nativeHandle, false);
    }

    @Nullable
    public String[] allNonExpireKeys() {
        return allKeys(this.nativeHandle, true);
    }

    @Override // android.content.SharedPreferences.Editor
    @Deprecated
    public void apply() {
        sync(false);
    }

    public native int ashmemFD();

    public native int ashmemMetaFD();

    public void async() {
        sync(false);
    }

    public native void checkContentChangedByOuterProcess();

    public native void checkReSetCryptKey(@Nullable String str);

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor clear() {
        clearAll();
        return this;
    }

    public native void clearAll();

    public native void clearAllWithKeepingSpace();

    public native void clearMemoryCache();

    public native void close();

    @Override // android.content.SharedPreferences.Editor
    @Deprecated
    public boolean commit() {
        sync(true);
        return true;
    }

    @Override // android.content.SharedPreferences
    public boolean contains(String str) {
        return containsKey(str);
    }

    public boolean containsKey(String str) {
        return containsKey(this.nativeHandle, str);
    }

    public long count() {
        return count(this.nativeHandle, false);
    }

    public long countNonExpiredKeys() {
        return count(this.nativeHandle, true);
    }

    @Nullable
    public native String cryptKey();

    public boolean decodeBool(String str) {
        return decodeBool(this.nativeHandle, str, false);
    }

    @Nullable
    public byte[] decodeBytes(String str) {
        return decodeBytes(str, (byte[]) null);
    }

    public double decodeDouble(String str) {
        return decodeDouble(this.nativeHandle, str, 0.0d);
    }

    public float decodeFloat(String str) {
        return decodeFloat(this.nativeHandle, str, 0.0f);
    }

    public int decodeInt(String str) {
        return decodeInt(this.nativeHandle, str, 0);
    }

    public long decodeLong(String str) {
        return decodeLong(this.nativeHandle, str, 0L);
    }

    @Nullable
    public <T extends Parcelable> T decodeParcelable(String str, Class<T> cls) {
        return (T) decodeParcelable(str, cls, null);
    }

    @Nullable
    public String decodeString(String str) {
        return decodeString(this.nativeHandle, str, null);
    }

    @Nullable
    public Set<String> decodeStringSet(String str) {
        return decodeStringSet(str, (Set<String>) null);
    }

    public native boolean disableAutoKeyExpire();

    public native void disableCompareBeforeSet();

    @Override // android.content.SharedPreferences
    public SharedPreferences.Editor edit() {
        return this;
    }

    public native boolean enableAutoKeyExpire(int i);

    public void enableCompareBeforeSet() {
        if (isExpirationEnabled()) {
            new ObfuscatedString(new long[]{8186905222448174146L, -3809831697646541339L}).toString();
            new ObfuscatedString(new long[]{-1193174618711875467L, -8492055615782735656L, -3251364746320541953L, -1923644863244981700L, 7075827635858256601L, 3179913900206591181L, -839945660597220367L, 2879854505554818589L}).toString();
        }
        if (isEncryptionEnabled()) {
            new ObfuscatedString(new long[]{-8137256058571734244L, -6631025271202760061L}).toString();
            new ObfuscatedString(new long[]{2730165328301521827L, -9098890562561179766L, 65894098020846700L, -8500889441176652352L, -7520803319063761751L, 4632741915793353882L, 4639787914169700663L, -5420234294292919129L, -3919246676001522481L}).toString();
        }
        nativeEnableCompareBeforeSet();
    }

    public boolean encode(String str, boolean z) {
        return encodeBool(this.nativeHandle, str, z);
    }

    @Override // android.content.SharedPreferences
    public Map<String, ?> getAll() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{5134943599408725436L, 6197148152613523383L, 3997983322722778047L, 1927917733297078728L, -5279281919296992633L, -3527822266057939059L, 6758328095135541750L, -3727033159037143296L, -9161120398170472120L, 5512236964454297916L, -5995601517731501936L, 5568476334455810658L, 8822949638709733572L, -3898694524956448327L, 908461672742242235L}).toString());
    }

    @Override // android.content.SharedPreferences
    public boolean getBoolean(String str, boolean z) {
        return decodeBool(this.nativeHandle, str, z);
    }

    public byte[] getBytes(String str, @Nullable byte[] bArr) {
        return decodeBytes(str, bArr);
    }

    @Override // android.content.SharedPreferences
    public float getFloat(String str, float f) {
        return decodeFloat(this.nativeHandle, str, f);
    }

    @Override // android.content.SharedPreferences
    public int getInt(String str, int i) {
        return decodeInt(this.nativeHandle, str, i);
    }

    @Override // android.content.SharedPreferences
    public long getLong(String str, long j) {
        return decodeLong(this.nativeHandle, str, j);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public String getString(String str, @Nullable String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    @Override // android.content.SharedPreferences
    @Nullable
    public Set<String> getStringSet(String str, @Nullable Set<String> set) {
        return decodeStringSet(str, set);
    }

    public int getValueActualSize(String str) {
        return valueSize(this.nativeHandle, str, true);
    }

    public int getValueSize(String str) {
        return valueSize(this.nativeHandle, str, false);
    }

    public int importFromSharedPreferences(@NonNull SharedPreferences sharedPreferences) {
        Map<String, ?> all = sharedPreferences.getAll();
        if (all != null && all.size() > 0) {
            for (Map.Entry<String, ?> entry : all.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (key != null && value != null) {
                    if (value instanceof Boolean) {
                        encodeBool(this.nativeHandle, key, ((Boolean) value).booleanValue());
                    } else if (value instanceof Integer) {
                        encodeInt(this.nativeHandle, key, ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        encodeLong(this.nativeHandle, key, ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        encodeFloat(this.nativeHandle, key, ((Float) value).floatValue());
                    } else if (value instanceof Double) {
                        encodeDouble(this.nativeHandle, key, ((Double) value).doubleValue());
                    } else if (value instanceof String) {
                        encodeString(this.nativeHandle, key, (String) value);
                    } else if (value instanceof Set) {
                        encode(key, (Set<String>) value);
                    } else {
                        simpleLog(MMKVLogLevel.LevelError, new ObfuscatedString(new long[]{-1400692824285259434L, -4762978119395571272L, -2924237895728087316L}).toString() + value.getClass());
                    }
                }
            }
            return all.size();
        }
        return 0;
    }

    public native void lock();

    public native String mmapID();

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putBoolean(String str, boolean z) {
        encodeBool(this.nativeHandle, str, z);
        return this;
    }

    public SharedPreferences.Editor putBytes(String str, @Nullable byte[] bArr) {
        encode(str, bArr);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putFloat(String str, float f) {
        encodeFloat(this.nativeHandle, str, f);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putInt(String str, int i) {
        encodeInt(this.nativeHandle, str, i);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putLong(String str, long j) {
        encodeLong(this.nativeHandle, str, j);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putString(String str, @Nullable String str2) {
        encodeString(this.nativeHandle, str, str2);
        return this;
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor putStringSet(String str, @Nullable Set<String> set) {
        encode(str, set);
        return this;
    }

    public native boolean reKey(@Nullable String str);

    @Override // android.content.SharedPreferences
    public void registerOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{-3818302187494027468L, -2369636612706446569L, 7505774652226545660L, 7635903599981221824L, -4437268025365517729L, 6101997280491010855L}).toString());
    }

    @Override // android.content.SharedPreferences.Editor
    public SharedPreferences.Editor remove(String str) {
        removeValueForKey(str);
        return this;
    }

    public void removeValueForKey(String str) {
        removeValueForKey(this.nativeHandle, str);
    }

    public native void removeValuesForKeys(String[] strArr);

    public void sync() {
        sync(true);
    }

    public long totalSize() {
        return totalSize(this.nativeHandle);
    }

    public native void trim();

    public native boolean tryLock();

    public native void unlock();

    @Override // android.content.SharedPreferences
    public void unregisterOnSharedPreferenceChangeListener(SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{6288498916099829241L, -3403760628632602919L, -4404572144441644273L, 972127051108733710L, 9013865256475651368L, -3727149451126339424L}).toString());
    }

    public int writeValueToNativeBuffer(String str, @NonNull NativeBuffer nativeBuffer) {
        return writeValueToNB(this.nativeHandle, str, nativeBuffer.pointer, nativeBuffer.size);
    }

    public boolean decodeBool(String str, boolean z) {
        return decodeBool(this.nativeHandle, str, z);
    }

    @Nullable
    public byte[] decodeBytes(String str, @Nullable byte[] bArr) {
        byte[] decodeBytes = decodeBytes(this.nativeHandle, str);
        return decodeBytes != null ? decodeBytes : bArr;
    }

    public double decodeDouble(String str, double d) {
        return decodeDouble(this.nativeHandle, str, d);
    }

    public float decodeFloat(String str, float f) {
        return decodeFloat(this.nativeHandle, str, f);
    }

    public int decodeInt(String str, int i) {
        return decodeInt(this.nativeHandle, str, i);
    }

    public long decodeLong(String str, long j) {
        return decodeLong(this.nativeHandle, str, j);
    }

    @Nullable
    public <T extends Parcelable> T decodeParcelable(String str, Class<T> cls, @Nullable T t) {
        byte[] decodeBytes;
        Parcelable.Creator<?> creator;
        if (cls == null || (decodeBytes = decodeBytes(this.nativeHandle, str)) == null) {
            return t;
        }
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(decodeBytes, 0, decodeBytes.length);
        obtain.setDataPosition(0);
        try {
            String cls2 = cls.toString();
            HashMap<String, Parcelable.Creator<?>> hashMap = mCreators;
            synchronized (hashMap) {
                try {
                    creator = hashMap.get(cls2);
                    if (creator == null && (creator = (Parcelable.Creator) cls.getField(new ObfuscatedString(new long[]{5896931351610428034L, 2571540865381279714L}).toString()).get(null)) != null) {
                        hashMap.put(cls2, creator);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (creator != null) {
                return (T) creator.createFromParcel(obtain);
            }
            throw new Exception(new ObfuscatedString(new long[]{-8908206002799285446L, -3757233110998959954L, 2193993097148441314L, -1602516064515462890L, 707054501026939035L, -6271640864984767292L, -4684747604851232474L, -5031747931715473270L, 2753079198478236881L, -2361524021212619811L, 234648156204635451L, -4226860908594467471L, -938415558565182153L, 5062652727597590627L}).toString() + cls2);
        } catch (Exception e) {
            simpleLog(MMKVLogLevel.LevelError, e.toString());
            return t;
        } finally {
            obtain.recycle();
        }
    }

    @Nullable
    public String decodeString(String str, @Nullable String str2) {
        return decodeString(this.nativeHandle, str, str2);
    }

    @Nullable
    public Set<String> decodeStringSet(String str, @Nullable Set<String> set) {
        return decodeStringSet(str, set, HashSet.class);
    }

    public boolean encode(String str, boolean z, int i) {
        return encodeBool_2(this.nativeHandle, str, z, i);
    }

    public SharedPreferences.Editor putBoolean(String str, boolean z, int i) {
        encodeBool_2(this.nativeHandle, str, z, i);
        return this;
    }

    public SharedPreferences.Editor putBytes(String str, @Nullable byte[] bArr, int i) {
        encode(str, bArr, i);
        return this;
    }

    public SharedPreferences.Editor putFloat(String str, float f, int i) {
        encodeFloat_2(this.nativeHandle, str, f, i);
        return this;
    }

    public SharedPreferences.Editor putInt(String str, int i, int i2) {
        encodeInt_2(this.nativeHandle, str, i, i2);
        return this;
    }

    public SharedPreferences.Editor putLong(String str, long j, int i) {
        encodeLong_2(this.nativeHandle, str, j, i);
        return this;
    }

    public SharedPreferences.Editor putString(String str, @Nullable String str2, int i) {
        encodeString_2(this.nativeHandle, str, str2, i);
        return this;
    }

    public SharedPreferences.Editor putStringSet(String str, @Nullable Set<String> set, int i) {
        encode(str, set, i);
        return this;
    }

    @Nullable
    public Set<String> decodeStringSet(String str, @Nullable Set<String> set, Class<? extends Set> cls) {
        String[] decodeStringSet = decodeStringSet(this.nativeHandle, str);
        if (decodeStringSet == null) {
            return set;
        }
        try {
            Set<String> newInstance = cls.newInstance();
            newInstance.addAll(Arrays.asList(decodeStringSet));
            return newInstance;
        } catch (IllegalAccessException | InstantiationException unused) {
            return set;
        }
    }

    public boolean encode(String str, int i) {
        return encodeInt(this.nativeHandle, str, i);
    }

    public boolean encode(String str, int i, int i2) {
        return encodeInt_2(this.nativeHandle, str, i, i2);
    }

    @NonNull
    public static MMKV defaultMMKV(int i, @Nullable String str) {
        if (rootDir != null) {
            return checkProcessMode(getDefaultMMKV(i, str), new ObfuscatedString(new long[]{7784016825639816819L, -4969560899193365173L, 2328076564586003359L}).toString(), i);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-2651681754181012690L, 7639704373138633655L, -254854520935261115L, -1220302310338757340L, -1282290538788323496L, 7641384519753718484L}).toString());
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i, null, null, 0L), str, i);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-2393825584965344309L, -6087206142307631416L, 986605914501497136L, 7809624117318483306L, -6008007607419319862L, -4250416423897666448L}).toString());
    }

    public boolean encode(String str, long j) {
        return encodeLong(this.nativeHandle, str, j);
    }

    public boolean encode(String str, long j, int i) {
        return encodeLong_2(this.nativeHandle, str, j, i);
    }

    public boolean encode(String str, float f) {
        return encodeFloat(this.nativeHandle, str, f);
    }

    public boolean encode(String str, float f, int i) {
        return encodeFloat_2(this.nativeHandle, str, f, i);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i, long j) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i, null, null, j), str, i);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-6081491507226827583L, 1528837172480339398L, 6379369403026030047L, 1795694195869502050L, -6942319456551334096L, 1065237001791868101L}).toString());
    }

    public boolean encode(String str, double d) {
        return encodeDouble(this.nativeHandle, str, d);
    }

    public boolean encode(String str, double d, int i) {
        return encodeDouble_2(this.nativeHandle, str, d, i);
    }

    @Deprecated
    public static String initialize(String str, MMKVLogLevel mMKVLogLevel) {
        return doInitialize(str, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-3577434863703281958L, -4992442672095031722L}), AbstractC0749x8313616e.m3341xc20437a5(str)), null, mMKVLogLevel, false);
    }

    public boolean encode(String str, @Nullable String str2) {
        return encodeString(this.nativeHandle, str, str2);
    }

    public boolean encode(String str, @Nullable String str2, int i) {
        return encodeString_2(this.nativeHandle, str, str2, i);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i, @Nullable String str2) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i, str2, null, 0L), str, i);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-314301647813767956L, 2228868628897716290L, -8031571716858880078L, -7098538038820184938L, 1134027421079139216L, 3869300090907555574L}).toString());
    }

    public boolean encode(String str, @Nullable Set<String> set) {
        return encodeSet(this.nativeHandle, str, set == null ? null : (String[]) set.toArray(new String[0]));
    }

    public boolean encode(String str, @Nullable Set<String> set, int i) {
        return encodeSet_2(this.nativeHandle, str, set == null ? null : (String[]) set.toArray(new String[0]), i);
    }

    public boolean encode(String str, @Nullable byte[] bArr) {
        return encodeBytes(this.nativeHandle, str, bArr);
    }

    public boolean encode(String str, @Nullable byte[] bArr, int i) {
        return encodeBytes_2(this.nativeHandle, str, bArr, i);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, String str2) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, 1, null, str2, 0L), str, 1);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{4374545285614855534L, -2039677487973386906L, 5949806269064926437L, -6148378337417382558L, 8886346068245859423L, -1400491174002254166L}).toString());
    }

    public boolean encode(String str, @Nullable Parcelable parcelable) {
        if (parcelable == null) {
            return encodeBytes(this.nativeHandle, str, null);
        }
        return encodeBytes(this.nativeHandle, str, getParcelableByte(parcelable));
    }

    public boolean encode(String str, @Nullable Parcelable parcelable, int i) {
        if (parcelable == null) {
            return encodeBytes_2(this.nativeHandle, str, null, i);
        }
        return encodeBytes_2(this.nativeHandle, str, getParcelableByte(parcelable), i);
    }

    public static String initialize(@NonNull Context context) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        return initialize(context, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2908034841322277335L, 4506542357453122591L}), sb), null, MMKVLogLevel.LevelInfo, null);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, String str2, long j) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, 1, null, str2, j), str, 1);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-2999408850600390268L, -6941379022085144206L, -9203132932525599363L, 3531044749454538193L, -7791279129888711722L, 1521948575941027034L}).toString());
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i, @Nullable String str2, String str3, long j) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i, str2, str3, j), str, i);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{6665478770189558814L, 7659091159977363732L, -5572223014707090800L, -2413031679353335600L, 8746585363988540422L, 8892466999337642926L}).toString());
    }

    public static String initialize(@NonNull Context context, MMKVLogLevel mMKVLogLevel) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        return initialize(context, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4734185498234606584L, 4517525023200548615L}), sb), null, mMKVLogLevel, null);
    }

    @NonNull
    public static MMKV mmkvWithID(String str, int i, @Nullable String str2, String str3) {
        if (rootDir != null) {
            return checkProcessMode(getMMKVWithID(str, i, str2, str3, 0L), str, i);
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{2553952150311177319L, 7948577508696839324L, -8344662730708822583L, -1674908047505478512L, 3086329098400924234L, -1668771875420429488L}).toString());
    }

    public static String initialize(@NonNull Context context, LibLoader libLoader) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        return initialize(context, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4139824881169212496L, 1393412843554081053L}), sb), libLoader, MMKVLogLevel.LevelInfo, null);
    }

    public static String initialize(@NonNull Context context, LibLoader libLoader, MMKVLogLevel mMKVLogLevel) {
        StringBuilder sb = new StringBuilder();
        sb.append(context.getFilesDir().getAbsolutePath());
        return initialize(context, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7553247484999657196L, 5875144913166439360L}), sb), libLoader, mMKVLogLevel, null);
    }

    public static String initialize(Context context, String str) {
        return initialize(context, str, null, MMKVLogLevel.LevelInfo, null);
    }

    public static String initialize(Context context, String str, MMKVLogLevel mMKVLogLevel) {
        return initialize(context, str, null, mMKVLogLevel, null);
    }

    public static String initialize(Context context, String str, LibLoader libLoader) {
        return initialize(context, str, libLoader, MMKVLogLevel.LevelInfo, null);
    }

    public static String initialize(Context context, String str, LibLoader libLoader, MMKVLogLevel mMKVLogLevel) {
        return initialize(context, str, libLoader, mMKVLogLevel, null);
    }

    public static String initialize(@NonNull Context context, String str, LibLoader libLoader, MMKVLogLevel mMKVLogLevel, MMKVHandler mMKVHandler) {
        if ((context.getApplicationInfo().flags & 2) == 0) {
            disableProcessModeChecker();
        } else {
            enableProcessModeChecker();
        }
        String absolutePath = context.getCacheDir().getAbsolutePath();
        gCallbackHandler = mMKVHandler;
        if (mMKVHandler != null && mMKVHandler.wantLogRedirecting()) {
            gWantLogReDirecting = true;
        }
        String doInitialize = doInitialize(str, absolutePath, libLoader, mMKVLogLevel, gWantLogReDirecting);
        if (gCallbackHandler != null) {
            setCallbackHandler(gWantLogReDirecting, true);
        }
        return doInitialize;
    }

    @Deprecated
    public static String initialize(String str) {
        return doInitialize(str, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{1948466703275985947L, 7128151310574919028L}), AbstractC0749x8313616e.m3341xc20437a5(str)), null, MMKVLogLevel.LevelInfo, false);
    }

    @Deprecated
    public static String initialize(String str, LibLoader libLoader) {
        return doInitialize(str, AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8812564898269415094L, -2926562870433042472L}), AbstractC0749x8313616e.m3341xc20437a5(str)), libLoader, MMKVLogLevel.LevelInfo, false);
    }
}
