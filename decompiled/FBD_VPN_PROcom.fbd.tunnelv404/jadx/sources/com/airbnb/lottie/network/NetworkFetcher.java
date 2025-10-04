package com.airbnb.lottie.network;

import android.content.Context;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.utils.Logger;
import com.panda912.muddy.ObfuscatedString;
import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipInputStream;

@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes.dex */
public class NetworkFetcher {

    @NonNull
    private final LottieNetworkFetcher fetcher;

    @Nullable
    private final NetworkCache networkCache;

    /* renamed from: com.airbnb.lottie.network.NetworkFetcher$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$airbnb$lottie$network$FileExtension;

        static {
            int[] iArr = new int[FileExtension.values().length];
            $SwitchMap$com$airbnb$lottie$network$FileExtension = iArr;
            try {
                iArr[FileExtension.ZIP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$airbnb$lottie$network$FileExtension[FileExtension.GZIP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public NetworkFetcher(@Nullable NetworkCache networkCache, @NonNull LottieNetworkFetcher lottieNetworkFetcher) {
        this.networkCache = networkCache;
        this.fetcher = lottieNetworkFetcher;
    }

    @Nullable
    @WorkerThread
    private LottieComposition fetchFromCache(Context context, @NonNull String str, @Nullable String str2) {
        NetworkCache networkCache;
        Pair<FileExtension, InputStream> fetch;
        LottieResult<LottieComposition> fromZipStreamSync;
        if (str2 == null || (networkCache = this.networkCache) == null || (fetch = networkCache.fetch(str)) == null) {
            return null;
        }
        FileExtension fileExtension = (FileExtension) fetch.first;
        InputStream inputStream = (InputStream) fetch.second;
        int i = AnonymousClass1.$SwitchMap$com$airbnb$lottie$network$FileExtension[fileExtension.ordinal()];
        if (i != 1) {
            if (i != 2) {
                fromZipStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(inputStream, str2);
            } else {
                try {
                    fromZipStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(new GZIPInputStream(inputStream), str2);
                } catch (IOException e) {
                    fromZipStreamSync = new LottieResult<>(e);
                }
            }
        } else {
            fromZipStreamSync = LottieCompositionFactory.fromZipStreamSync(context, new ZipInputStream(inputStream), str2);
        }
        if (fromZipStreamSync.getValue() != null) {
            return fromZipStreamSync.getValue();
        }
        return null;
    }

    @NonNull
    @WorkerThread
    private LottieResult<LottieComposition> fetchFromNetwork(Context context, @NonNull String str, @Nullable String str2) {
        boolean z;
        Logger.debug(new ObfuscatedString(new long[]{-9108349016656648182L, -2031609125718179525L, 4623466696290559835L}).toString() + str);
        Closeable closeable = null;
        try {
            try {
                LottieFetchResult fetchSync = this.fetcher.fetchSync(str);
                if (fetchSync.isSuccessful()) {
                    LottieResult<LottieComposition> fromInputStream = fromInputStream(context, str, fetchSync.bodyByteStream(), fetchSync.contentType(), str2);
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{-1665469249398302589L, -3009447158195174995L, -6230145046615668521L, -8077714487584520008L, 2899714274056455413L, 268462561012398509L}).toString());
                    if (fromInputStream.getValue() != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    sb.append(z);
                    Logger.debug(sb.toString());
                    try {
                        fetchSync.close();
                    } catch (IOException e) {
                        Logger.warning(new ObfuscatedString(new long[]{-3052138454377533870L, 3457168661517124684L, -2261227444269168787L, 7554816298993954200L, 1651681781453425320L}).toString(), e);
                    }
                    return fromInputStream;
                }
                LottieResult<LottieComposition> lottieResult = new LottieResult<>(new IllegalArgumentException(fetchSync.error()));
                try {
                    fetchSync.close();
                } catch (IOException e2) {
                    Logger.warning(new ObfuscatedString(new long[]{-7320425927690705338L, 6537704122950656232L, -5037873714500627004L, -7875529614982684092L, -8688795705345062927L}).toString(), e2);
                }
                return lottieResult;
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        closeable.close();
                    } catch (IOException e3) {
                        Logger.warning(new ObfuscatedString(new long[]{-2804408286409005379L, -8753032783905767085L, -8663054142615541993L, -8058313877244264755L, 2756086983800243883L}).toString(), e3);
                    }
                }
                throw th;
            }
        } catch (Exception e4) {
            LottieResult<LottieComposition> lottieResult2 = new LottieResult<>(e4);
            if (0 != 0) {
                try {
                    closeable.close();
                } catch (IOException e5) {
                    Logger.warning(new ObfuscatedString(new long[]{-2868450067872762292L, 7272458291154196311L, 7968487861993486721L, -7265563390715809749L, -7973294828581682873L}).toString(), e5);
                }
            }
            return lottieResult2;
        }
    }

    @NonNull
    private LottieResult<LottieComposition> fromGzipStream(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) {
        NetworkCache networkCache;
        if (str2 != null && (networkCache = this.networkCache) != null) {
            return LottieCompositionFactory.fromJsonInputStreamSync(new GZIPInputStream(new FileInputStream(networkCache.writeTempCacheFile(str, inputStream, FileExtension.GZIP))), str);
        }
        return LottieCompositionFactory.fromJsonInputStreamSync(new GZIPInputStream(inputStream), null);
    }

    @NonNull
    private LottieResult<LottieComposition> fromInputStream(Context context, @NonNull String str, @NonNull InputStream inputStream, @Nullable String str2, @Nullable String str3) {
        LottieResult<LottieComposition> fromZipStream;
        FileExtension fileExtension;
        NetworkCache networkCache;
        if (str2 == null) {
            str2 = new ObfuscatedString(new long[]{-8331848696105949361L, -6603266698764680195L, -6753606235604066796L}).toString();
        }
        if (!str2.contains(new ObfuscatedString(new long[]{2843978393756491628L, -2529884038911147911L, 3440766692758635797L}).toString()) && !str2.contains(new ObfuscatedString(new long[]{3737172491407541996L, -8530765333951271436L, -5670918269465008611L, -2206137229531349918L}).toString()) && !str2.contains(new ObfuscatedString(new long[]{-5109570407564048725L, -6396831580589803184L, 7355718116541868684L, 2238924812024440713L, -4953881592959414045L}).toString()) && !str.split(new ObfuscatedString(new long[]{-6677165044882829093L, 2828399515759018619L}).toString())[0].endsWith(new ObfuscatedString(new long[]{5184195024678303118L, -8338461508274266715L}).toString())) {
            if (!str2.contains(new ObfuscatedString(new long[]{1465684958878314563L, 4170478572985352283L, 3427547256811549132L}).toString()) && !str2.contains(new ObfuscatedString(new long[]{-5417050227067919045L, -2682462040577133401L, 8759224473819055238L, -8154239907767052579L}).toString()) && !str.split(new ObfuscatedString(new long[]{9160833531503203770L, -6477846273643156814L}).toString())[0].endsWith(new ObfuscatedString(new long[]{1662386575275529144L, 3435772965094479512L}).toString())) {
                Logger.debug(new ObfuscatedString(new long[]{8525692293373119632L, 4630042607884058821L, 8723170242392572006L, 3594225750032964039L}).toString());
                fileExtension = FileExtension.JSON;
                fromZipStream = fromJsonStream(str, inputStream, str3);
            } else {
                Logger.debug(new ObfuscatedString(new long[]{7767038967508029017L, -8690212711328172182L, 4333723791289154276L, 3938756968525494012L}).toString());
                fileExtension = FileExtension.GZIP;
                fromZipStream = fromGzipStream(str, inputStream, str3);
            }
        } else {
            Logger.debug(new ObfuscatedString(new long[]{-2802873791380203443L, 1577387511186065887L, 8701648071835916881L, 5934774089253895470L}).toString());
            FileExtension fileExtension2 = FileExtension.ZIP;
            fromZipStream = fromZipStream(context, str, inputStream, str3);
            fileExtension = fileExtension2;
        }
        if (str3 != null && fromZipStream.getValue() != null && (networkCache = this.networkCache) != null) {
            networkCache.renameTempFile(str, fileExtension);
        }
        return fromZipStream;
    }

    @NonNull
    private LottieResult<LottieComposition> fromJsonStream(@NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) {
        NetworkCache networkCache;
        if (str2 != null && (networkCache = this.networkCache) != null) {
            return LottieCompositionFactory.fromJsonInputStreamSync(new FileInputStream(networkCache.writeTempCacheFile(str, inputStream, FileExtension.JSON).getAbsolutePath()), str);
        }
        return LottieCompositionFactory.fromJsonInputStreamSync(inputStream, null);
    }

    @NonNull
    private LottieResult<LottieComposition> fromZipStream(Context context, @NonNull String str, @NonNull InputStream inputStream, @Nullable String str2) {
        NetworkCache networkCache;
        if (str2 != null && (networkCache = this.networkCache) != null) {
            return LottieCompositionFactory.fromZipStreamSync(context, new ZipInputStream(new FileInputStream(networkCache.writeTempCacheFile(str, inputStream, FileExtension.ZIP))), str);
        }
        return LottieCompositionFactory.fromZipStreamSync(context, new ZipInputStream(inputStream), (String) null);
    }

    @NonNull
    @WorkerThread
    public LottieResult<LottieComposition> fetchSync(Context context, @NonNull String str, @Nullable String str2) {
        LottieComposition fetchFromCache = fetchFromCache(context, str, str2);
        if (fetchFromCache != null) {
            return new LottieResult<>(fetchFromCache);
        }
        Logger.debug(new ObfuscatedString(new long[]{-122577991623997117L, -3409234140546497178L, -1698425653026617052L}).toString() + str + new ObfuscatedString(new long[]{-4607213323842259092L, 5042632552644490382L, -947830082865620334L, 7741601034210303395L, 7264743288948415782L, -8707322573879365506L, -822011385515426072L}).toString());
        return fetchFromNetwork(context, str, str2);
    }
}
