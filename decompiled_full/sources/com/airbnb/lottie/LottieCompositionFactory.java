package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.LottieCompositionFactory;
import com.airbnb.lottie.LottieResult;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.LottieCompositionCache;
import com.airbnb.lottie.network.NetworkCache;
import com.airbnb.lottie.parser.LottieCompositionMoshiParser;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.Utils;
import com.google.common.base.Ascii;
import com.panda912.muddy.ObfuscatedString;
import defpackage.CallableC0480x61c0fd8c;
import defpackage.CallableC0946x19900ce3;
import defpackage.CallableC0947x1b30091d;
import defpackage.CallableC0951x87d6b5e6;
import defpackage.RunnableC0395x2fa10a30;
import defpackage.RunnableC0450xb2a4f6ac;
import defpackage.RunnableC0948x4ebcddac;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.GZIPInputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.BufferedSource;
import okio.Okio;
import okio.Source;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class LottieCompositionFactory {
    private static final Map<String, LottieTask<LottieComposition>> taskCache = new HashMap();
    private static final Set<LottieTaskIdleListener> taskIdleListeners = new HashSet();
    private static final byte[] ZIP_MAGIC = {80, 75, 3, 4};
    private static final byte[] GZIP_MAGIC = {Ascii.US, -117, 8};

    private LottieCompositionFactory() {
    }

    private static LottieTask<LottieComposition> cache(@Nullable final String str, Callable<LottieResult<LottieComposition>> callable, @Nullable Runnable runnable) {
        LottieComposition lottieComposition;
        LottieTask<LottieComposition> lottieTask = null;
        if (str == null) {
            lottieComposition = null;
        } else {
            lottieComposition = LottieCompositionCache.getInstance().get(str);
        }
        if (lottieComposition != null) {
            lottieTask = new LottieTask<>(lottieComposition);
        }
        if (str != null) {
            Map<String, LottieTask<LottieComposition>> map = taskCache;
            if (map.containsKey(str)) {
                lottieTask = map.get(str);
            }
        }
        if (lottieTask != null) {
            if (runnable != null) {
                runnable.run();
            }
            return lottieTask;
        }
        LottieTask<LottieComposition> lottieTask2 = new LottieTask<>(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            final int i = 0;
            lottieTask2.addListener(new LottieListener() { // from class: 딎됐돶듐뎨딃뒼뒈땪뒐땄돨땨두뒛땡땡돷땍땤둠돷뒷듟된듨딝땨딞돸땰딃딜땯돶땹땪뒛돰듼딤땣뒋뒬돝딐뎰딄땯둣딅됨뒷뒛뎨돰딌딀땩땫둬땁둥둬땮땨딞딠듸땜땭뎸땻뒉뒉뒬딎땪땰땮딞돵땡딄뒬됫돠딅땤땭딸됩뒘두둬둠둔뎹땫땡둠땻됴뒐뎻딽땅뎨됨디듌돶땭딤돵땋둔딜듬둣땔됩뒤땃땣딹땨땹뒋땤
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    switch (i) {
                        case 0:
                            LottieCompositionFactory.lambda$cache$18(str, atomicBoolean, (LottieComposition) obj);
                            return;
                        default:
                            LottieCompositionFactory.lambda$cache$19(str, atomicBoolean, (Throwable) obj);
                            return;
                    }
                }
            });
            final int i2 = 1;
            lottieTask2.addFailureListener(new LottieListener() { // from class: 딎됐돶듐뎨딃뒼뒈땪뒐땄돨땨두뒛땡땡돷땍땤둠돷뒷듟된듨딝땨딞돸땰딃딜땯돶땹땪뒛돰듼딤땣뒋뒬돝딐뎰딄땯둣딅됨뒷뒛뎨돰딌딀땩땫둬땁둥둬땮땨딞딠듸땜땭뎸땻뒉뒉뒬딎땪땰땮딞돵땡딄뒬됫돠딅땤땭딸됩뒘두둬둠둔뎹땫땡둠땻됴뒐뎻딽땅뎨됨디듌돶땭딤돵땋둔딜듬둣땔됩뒤땃땣딹땨땹뒋땤
                @Override // com.airbnb.lottie.LottieListener
                public final void onResult(Object obj) {
                    switch (i2) {
                        case 0:
                            LottieCompositionFactory.lambda$cache$18(str, atomicBoolean, (LottieComposition) obj);
                            return;
                        default:
                            LottieCompositionFactory.lambda$cache$19(str, atomicBoolean, (Throwable) obj);
                            return;
                    }
                }
            });
            if (!atomicBoolean.get()) {
                Map<String, LottieTask<LottieComposition>> map2 = taskCache;
                map2.put(str, lottieTask2);
                if (map2.size() == 1) {
                    notifyTaskCacheIdleListeners(false);
                }
            }
        }
        return lottieTask2;
    }

    public static void clearCache(Context context) {
        clearCache(context, true);
    }

    @Nullable
    private static LottieImageAsset findImageAssetForFileName(LottieComposition lottieComposition, String str) {
        for (LottieImageAsset lottieImageAsset : lottieComposition.getImages().values()) {
            if (lottieImageAsset.getFileName().equals(str)) {
                return lottieImageAsset;
            }
        }
        return null;
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, String str) {
        return fromAsset(context, str, new ObfuscatedString(new long[]{-855805171151158490L, 6779710089126758180L}).toString() + str);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromAssetSync(Context context, String str) {
        return fromAssetSync(context, str, new ObfuscatedString(new long[]{1010584579211197628L, -8797033184994377018L}).toString() + str);
    }

    public static LottieTask<LottieComposition> fromInputStream(@Nullable Context context, InputStream inputStream, @Nullable String str) {
        Context applicationContext;
        if (context == null) {
            applicationContext = null;
        } else {
            applicationContext = context.getApplicationContext();
        }
        return cache(str, new CallableC0951x87d6b5e6(0, str, applicationContext, inputStream), null);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromInputStreamSync(@Nullable Context context, InputStream inputStream, @Nullable String str) {
        LottieComposition lottieComposition;
        if (str == null) {
            lottieComposition = null;
        } else {
            lottieComposition = LottieCompositionCache.getInstance().get(str);
        }
        if (lottieComposition != null) {
            return new LottieResult<>(lottieComposition);
        }
        try {
            BufferedSource buffer = Okio.buffer(Okio.source(inputStream));
            if (isZipCompressed(buffer).booleanValue()) {
                return fromZipStreamSync(context, new ZipInputStream(buffer.inputStream()), str);
            }
            if (isGzipCompressed(buffer).booleanValue()) {
                return fromJsonInputStreamSync(new GZIPInputStream(buffer.inputStream()), str);
            }
            return fromJsonReaderSync(JsonReader.of(buffer), str);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    @Deprecated
    public static LottieTask<LottieComposition> fromJson(JSONObject jSONObject, @Nullable String str) {
        return cache(str, new CallableC0480x61c0fd8c(jSONObject, str, 6), null);
    }

    public static LottieTask<LottieComposition> fromJsonInputStream(InputStream inputStream, @Nullable String str) {
        return cache(str, new CallableC0480x61c0fd8c(inputStream, str, 5), new RunnableC0450xb2a4f6ac(inputStream, 24));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonInputStreamSync(InputStream inputStream, @Nullable String str) {
        return fromJsonInputStreamSync(inputStream, str, true);
    }

    public static LottieTask<LottieComposition> fromJsonReader(JsonReader jsonReader, @Nullable String str) {
        return cache(str, new CallableC0480x61c0fd8c(jsonReader, str, 4), new RunnableC0450xb2a4f6ac(jsonReader, 22));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonReaderSync(JsonReader jsonReader, @Nullable String str) {
        return fromJsonReaderSync(jsonReader, str, true);
    }

    private static LottieResult<LottieComposition> fromJsonReaderSyncInternal(JsonReader jsonReader, @Nullable String str, boolean z) {
        LottieComposition lottieComposition;
        try {
            if (str == null) {
                lottieComposition = null;
            } else {
                try {
                    lottieComposition = LottieCompositionCache.getInstance().get(str);
                } catch (Exception e) {
                    LottieResult<LottieComposition> lottieResult = new LottieResult<>(e);
                    if (z) {
                        Utils.closeQuietly(jsonReader);
                    }
                    return lottieResult;
                }
            }
            if (lottieComposition != null) {
                LottieResult<LottieComposition> lottieResult2 = new LottieResult<>(lottieComposition);
                if (z) {
                    Utils.closeQuietly(jsonReader);
                }
                return lottieResult2;
            }
            LottieComposition parse = LottieCompositionMoshiParser.parse(jsonReader);
            if (str != null) {
                LottieCompositionCache.getInstance().put(str, parse);
            }
            LottieResult<LottieComposition> lottieResult3 = new LottieResult<>(parse);
            if (z) {
                Utils.closeQuietly(jsonReader);
            }
            return lottieResult3;
        } catch (Throwable th) {
            if (z) {
                Utils.closeQuietly(jsonReader);
            }
            throw th;
        }
    }

    public static LottieTask<LottieComposition> fromJsonSource(Source source, @Nullable String str) {
        return cache(str, new CallableC0480x61c0fd8c(source, str, 2), new RunnableC0450xb2a4f6ac(source, 23));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonSourceSync(Source source, @Nullable String str) {
        return fromJsonSourceSync(source, str, true);
    }

    public static LottieTask<LottieComposition> fromJsonString(String str, @Nullable String str2) {
        return cache(str2, new CallableC0480x61c0fd8c(str, str2, 3), null);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonStringSync(String str, @Nullable String str2) {
        return fromJsonSourceSync(Okio.source(new ByteArrayInputStream(str.getBytes())), str2);
    }

    @WorkerThread
    @Deprecated
    public static LottieResult<LottieComposition> fromJsonSync(JSONObject jSONObject, @Nullable String str) {
        return fromJsonStringSync(jSONObject.toString(), str);
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, @RawRes int i) {
        return fromRawRes(context, i, rawResCacheKey(context, i));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromRawResSync(Context context, @RawRes int i) {
        return fromRawResSync(context, i, rawResCacheKey(context, i));
    }

    public static LottieTask<LottieComposition> fromUrl(Context context, String str) {
        return fromUrl(context, str, new ObfuscatedString(new long[]{-129740128137326226L, 3479293897701194653L}).toString() + str);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromUrlSync(Context context, String str) {
        return fromUrlSync(context, str, str);
    }

    public static LottieTask<LottieComposition> fromZipStream(ZipInputStream zipInputStream, @Nullable String str) {
        return fromZipStream((Context) null, zipInputStream, str);
    }

    public static LottieResult<LottieComposition> fromZipStreamSync(ZipInputStream zipInputStream, @Nullable String str) {
        return fromZipStreamSync(zipInputStream, str, true);
    }

    /* JADX WARN: Removed duplicated region for block: B:61:0x0229 A[Catch: IOException -> 0x0025, TryCatch #3 {IOException -> 0x0025, blocks: (B:5:0x001f, B:8:0x0028, B:11:0x0031, B:13:0x0049, B:15:0x0280, B:17:0x004d, B:19:0x0065, B:20:0x0069, B:22:0x0081, B:23:0x009c, B:25:0x00b0, B:27:0x00c4, B:29:0x00d8, B:31:0x00f0, B:33:0x0104, B:36:0x0119, B:37:0x011e, B:97:0x014a, B:39:0x0183, B:59:0x021f, B:61:0x0229, B:62:0x025f, B:64:0x01da, B:100:0x0263, B:170:0x0015), top: B:169:0x0015 }] */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static LottieResult<LottieComposition> fromZipStreamSyncInternal(@Nullable Context context, ZipInputStream zipInputStream, @Nullable String str) {
        LottieComposition lottieComposition;
        FileOutputStream fileOutputStream;
        int i = 3;
        int i2 = 7;
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        String str2 = null;
        if (str == null) {
            lottieComposition = null;
        } else {
            try {
                lottieComposition = LottieCompositionCache.getInstance().get(str);
            } catch (IOException e) {
                return new LottieResult<>((Throwable) e);
            }
        }
        if (lottieComposition != null) {
            return new LottieResult<>(lottieComposition);
        }
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        LottieComposition lottieComposition2 = null;
        while (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.contains(new ObfuscatedString(new long[]{8724238030317334165L, 2896130490184188178L}).toString())) {
                zipInputStream.closeEntry();
            } else {
                long[] jArr = new long[i];
                // fill-array-data instruction
                jArr[0] = 8002736380105178126L;
                jArr[1] = 1619771137014595244L;
                jArr[2] = 2907607050083097302L;
                if (nextEntry.getName().equalsIgnoreCase(new ObfuscatedString(jArr).toString())) {
                    zipInputStream.closeEntry();
                } else if (nextEntry.getName().contains(new ObfuscatedString(new long[]{-497774990259495635L, 2766466979347734471L}).toString())) {
                    lottieComposition2 = fromJsonReaderSyncInternal(JsonReader.of(Okio.buffer(Okio.source(zipInputStream))), str2, false).getValue();
                } else {
                    if (!name.contains(new ObfuscatedString(new long[]{5185110120608857557L, 2189072165766226028L}).toString()) && !name.contains(new ObfuscatedString(new long[]{4361521823698257808L, -7298398383315819850L}).toString()) && !name.contains(new ObfuscatedString(new long[]{7799190687037077175L, 3580692642635290223L}).toString()) && !name.contains(new ObfuscatedString(new long[]{-1631001424998476158L, 4269168474981608308L}).toString())) {
                        if (!name.contains(new ObfuscatedString(new long[]{-4542531424394261018L, 7005998367776010551L}).toString()) && !name.contains(new ObfuscatedString(new long[]{3642159480365508009L, 5712258108213284772L}).toString())) {
                            zipInputStream.closeEntry();
                        }
                        String[] split = name.split(new ObfuscatedString(new long[]{8008155479623316423L, 5790420954012348167L}).toString());
                        String str3 = split[split.length - 1];
                        String str4 = str3.split(new ObfuscatedString(new long[]{-5893539405775398743L, 3498832946770075538L}).toString())[0];
                        if (context == null) {
                            StringBuilder sb = new StringBuilder();
                            sb.append(new ObfuscatedString(new long[]{-2190805421777521485L, 1683688099006533192L, -4681769116350982678L, -4744025262654720946L}).toString());
                            sb.append(str4);
                            long[] jArr2 = new long[i2];
                            // fill-array-data instruction
                            jArr2[0] = -6702563746456004100L;
                            jArr2[1] = -2048110696421722998L;
                            jArr2[2] = 5251302235620758624L;
                            jArr2[3] = 7088516014008455622L;
                            jArr2[4] = 288461420150951712L;
                            jArr2[5] = -656044546944248579L;
                            jArr2[6] = 1990118797863214747L;
                            sb.append(new ObfuscatedString(jArr2).toString());
                            return new LottieResult<>((Throwable) new IllegalStateException(sb.toString()));
                        }
                        File file = new File(context.getCacheDir(), str3);
                        try {
                            fileOutputStream = new FileOutputStream(file);
                        } catch (Throwable th) {
                            th = th;
                        }
                        try {
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                            try {
                                byte[] bArr = new byte[4096];
                                while (true) {
                                    try {
                                        int read = zipInputStream.read(bArr);
                                        if (read == -1) {
                                            break;
                                        }
                                        fileOutputStream2.write(bArr, 0, read);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        Throwable th3 = th;
                                        try {
                                            fileOutputStream2.close();
                                        } catch (Throwable th4) {
                                            th3.addSuppressed(th4);
                                        }
                                        throw th3;
                                        break;
                                    }
                                }
                                fileOutputStream2.flush();
                                try {
                                    fileOutputStream2.close();
                                    try {
                                        fileOutputStream.close();
                                    } catch (Throwable th5) {
                                        th = th5;
                                        Logger.warning(new ObfuscatedString(new long[]{4971535488798234210L, -99407999190079744L, 4420092062538411044L, -3285281574034922712L}).toString() + str4 + new ObfuscatedString(new long[]{-6343062438076763900L, -2429392295136127018L, 6878799546739025005L, 8574300791050635847L}).toString() + str3 + new ObfuscatedString(new long[]{-4664317708606487572L, -8137720121523780680L}).toString(), th);
                                        Typeface createFromFile = Typeface.createFromFile(file);
                                        if (!file.delete()) {
                                        }
                                        hashMap2.put(str4, createFromFile);
                                        nextEntry = zipInputStream.getNextEntry();
                                        i = 3;
                                        i2 = 7;
                                        str2 = null;
                                    }
                                    Typeface createFromFile2 = Typeface.createFromFile(file);
                                    if (!file.delete()) {
                                        Logger.warning(new ObfuscatedString(new long[]{5860968620470486946L, 8135517820161665045L, -4851963529937240557L, 4639102569920540420L, 2008040635472056849L}).toString() + file.getAbsolutePath() + new ObfuscatedString(new long[]{2186355834107981111L, -7622549239532779747L}).toString());
                                    }
                                    hashMap2.put(str4, createFromFile2);
                                } catch (Throwable th6) {
                                    th = th6;
                                    Throwable th7 = th;
                                    try {
                                        fileOutputStream.close();
                                    } catch (Throwable th8) {
                                        th7.addSuppressed(th8);
                                    }
                                    throw th7;
                                    break;
                                }
                            } catch (Throwable th9) {
                                th = th9;
                            }
                        } catch (Throwable th10) {
                            th = th10;
                        }
                    } else {
                        String[] split2 = name.split(new ObfuscatedString(new long[]{-4268353635645375058L, 1245271969678273794L}).toString());
                        hashMap.put(split2[split2.length - 1], BitmapFactory.decodeStream(zipInputStream));
                    }
                    nextEntry = zipInputStream.getNextEntry();
                    i = 3;
                    i2 = 7;
                    str2 = null;
                }
            }
            nextEntry = zipInputStream.getNextEntry();
            i = 3;
            i2 = 7;
            str2 = null;
        }
        if (lottieComposition2 == null) {
            return new LottieResult<>((Throwable) new IllegalArgumentException(new ObfuscatedString(new long[]{6097516405840592435L, -8183688202287568014L, 1889512004192221888L, 9025347722739526928L, -4046667716141663399L}).toString()));
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            LottieImageAsset findImageAssetForFileName = findImageAssetForFileName(lottieComposition2, (String) entry.getKey());
            if (findImageAssetForFileName != null) {
                findImageAssetForFileName.setBitmap(Utils.resizeBitmapIfNeeded((Bitmap) entry.getValue(), findImageAssetForFileName.getWidth(), findImageAssetForFileName.getHeight()));
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            boolean z = false;
            for (Font font : lottieComposition2.getFonts().values()) {
                if (font.getFamily().equals(entry2.getKey())) {
                    font.setTypeface((Typeface) entry2.getValue());
                    z = true;
                }
            }
            if (!z) {
                Logger.warning(new ObfuscatedString(new long[]{-2509733307115923632L, -8116069916556894433L, 3518046520967953827L}).toString() + ((String) entry2.getKey()) + new ObfuscatedString(new long[]{1677076034641356132L, -4323841417764559869L, -3398561827090935253L, 760366281957404219L, -631473979784728855L, -1954236212103990919L, -4154473589566142766L}).toString());
            }
        }
        if (hashMap.isEmpty()) {
            Iterator<Map.Entry<String, LottieImageAsset>> it = lottieComposition2.getImages().entrySet().iterator();
            while (it.hasNext()) {
                LottieImageAsset value = it.next().getValue();
                if (value == null) {
                    return null;
                }
                String fileName = value.getFileName();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = 160;
                if (fileName.startsWith(new ObfuscatedString(new long[]{-7589580994015618888L, 824051079715821786L}).toString()) && fileName.indexOf(new ObfuscatedString(new long[]{-3250542997678967641L, 4193465823349004936L}).toString()) > 0) {
                    try {
                        byte[] decode = Base64.decode(fileName.substring(fileName.indexOf(44) + 1), 0);
                        value.setBitmap(Utils.resizeBitmapIfNeeded(BitmapFactory.decodeByteArray(decode, 0, decode.length, options), value.getWidth(), value.getHeight()));
                    } catch (IllegalArgumentException e2) {
                        Logger.warning(new ObfuscatedString(new long[]{1909361586280033400L, 8673519035328621330L, -3557387917943173430L, -3893497993224266406L, -1408516776239275367L, 879022631512225881L, -1927825058107871228L}).toString(), e2);
                        return null;
                    }
                }
            }
        }
        if (str != null) {
            LottieCompositionCache.getInstance().put(str, lottieComposition2);
        }
        return new LottieResult<>(lottieComposition2);
    }

    private static Boolean isGzipCompressed(BufferedSource bufferedSource) {
        return matchesMagicBytes(bufferedSource, GZIP_MAGIC);
    }

    private static boolean isNightMode(Context context) {
        if ((context.getResources().getConfiguration().uiMode & 48) == 32) {
            return true;
        }
        return false;
    }

    private static Boolean isZipCompressed(BufferedSource bufferedSource) {
        return matchesMagicBytes(bufferedSource, ZIP_MAGIC);
    }

    public static /* synthetic */ void lambda$cache$18(String str, AtomicBoolean atomicBoolean, LottieComposition lottieComposition) {
        Map<String, LottieTask<LottieComposition>> map = taskCache;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            notifyTaskCacheIdleListeners(true);
        }
    }

    public static /* synthetic */ void lambda$cache$19(String str, AtomicBoolean atomicBoolean, Throwable th) {
        Map<String, LottieTask<LottieComposition>> map = taskCache;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            notifyTaskCacheIdleListeners(true);
        }
    }

    public static /* synthetic */ void lambda$fromJsonInputStream$7(boolean z, InputStream inputStream) {
        if (z) {
            Utils.closeQuietly(inputStream);
        }
    }

    public static /* synthetic */ LottieResult lambda$fromRawRes$3(WeakReference weakReference, Context context, int i, String str) {
        Context context2 = (Context) weakReference.get();
        if (context2 != null) {
            context = context2;
        }
        return fromRawResSync(context, i, str);
    }

    public static /* synthetic */ LottieResult lambda$fromUrl$0(Context context, String str, String str2) {
        LottieResult<LottieComposition> fetchSync = L.networkFetcher(context).fetchSync(context, str, str2);
        if (str2 != null && fetchSync.getValue() != null) {
            LottieCompositionCache.getInstance().put(str2, fetchSync.getValue());
        }
        return fetchSync;
    }

    private static Boolean matchesMagicBytes(BufferedSource bufferedSource, byte[] bArr) {
        try {
            BufferedSource peek = bufferedSource.peek();
            for (byte b : bArr) {
                if (peek.readByte() != b) {
                    return Boolean.FALSE;
                }
            }
            peek.close();
            return Boolean.TRUE;
        } catch (Exception e) {
            Logger.error(new ObfuscatedString(new long[]{333879830624660649L, 7151691629058910395L, -1246659273519809477L, 1020155078388861254L, -1433938737632003424L}).toString(), e);
            return Boolean.FALSE;
        } catch (NoSuchMethodError unused) {
            return Boolean.FALSE;
        }
    }

    private static void notifyTaskCacheIdleListeners(boolean z) {
        ArrayList arrayList = new ArrayList(taskIdleListeners);
        for (int i = 0; i < arrayList.size(); i++) {
            ((LottieTaskIdleListener) arrayList.get(i)).onIdleChanged(z);
        }
    }

    private static String rawResCacheKey(Context context, @RawRes int i) {
        ObfuscatedString obfuscatedString;
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{7628064490236099348L, -1813838609540718980L}).toString());
        if (isNightMode(context)) {
            obfuscatedString = new ObfuscatedString(new long[]{2811662427193792275L, 5190392325705170208L});
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{2624142871418686497L, -1964142105862674059L});
        }
        sb.append(obfuscatedString.toString());
        sb.append(i);
        return sb.toString();
    }

    public static void registerLottieTaskIdleListener(LottieTaskIdleListener lottieTaskIdleListener) {
        boolean z;
        taskIdleListeners.add(lottieTaskIdleListener);
        if (taskCache.size() == 0) {
            z = true;
        } else {
            z = false;
        }
        lottieTaskIdleListener.onIdleChanged(z);
    }

    public static void setMaxCacheSize(int i) {
        LottieCompositionCache.getInstance().resize(i);
    }

    public static void unregisterLottieTaskIdleListener(LottieTaskIdleListener lottieTaskIdleListener) {
        taskIdleListeners.remove(lottieTaskIdleListener);
    }

    public static void clearCache(Context context, boolean z) {
        NetworkCache networkCache;
        taskCache.clear();
        LottieCompositionCache.getInstance().clear();
        if (!z || (networkCache = L.networkCache(context)) == null) {
            return;
        }
        networkCache.clear();
    }

    public static LottieTask<LottieComposition> fromJsonInputStream(final InputStream inputStream, @Nullable final String str, final boolean z) {
        return cache(str, new Callable() { // from class: 딎땤땀둡땜돤뎬땣땯딎됐됴돠돛됴땟땲돷뒤뎠땣듻땸뎨둠땤땤땵뒘뎽뎻땵돼돨돵땭딄듽딞딄됩땲딌뎹땮뒾뒙땄돨둘딠딨딅땝듐둡뒀땭돨됴돠땧도듐됨뒨땱듸뒼땟딝돶땤돰뒀뎸땁뒷뎹됩땍땋땸땀뎰땟딀돝뒷뒐딸듸땳둥뒹땫땅땠뎡딀듬뒨땃뎰돵땣딤뒻뒐돸듰뒝뒹땱됫두땔뒛돶돷돴땋됴뒀딐둠듟딤땸됐
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult fromJsonInputStreamSync;
                fromJsonInputStreamSync = LottieCompositionFactory.fromJsonInputStreamSync(inputStream, str, z);
                return fromJsonInputStreamSync;
            }
        }, new RunnableC0395x2fa10a30(z, inputStream));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonInputStreamSync(InputStream inputStream, @Nullable String str, boolean z) {
        return fromJsonSourceSync(Okio.source(inputStream), str, z);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonReaderSync(JsonReader jsonReader, @Nullable String str, boolean z) {
        return fromJsonReaderSyncInternal(jsonReader, str, z);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromJsonSourceSync(Source source, @Nullable String str, boolean z) {
        return fromJsonReaderSyncInternal(JsonReader.of(Okio.buffer(source)), str, z);
    }

    public static LottieTask<LottieComposition> fromRawRes(Context context, @RawRes final int i, @Nullable final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return cache(str, new Callable() { // from class: 딎든뎸딠뒉땬돴둡딹됐뒷듻둠뎨딤두땅땔됐돰될땥땍돶드딻뒬땸땃땻듨둑뒷돨든둑돤땅두땠따딝뎸딁딠땨둠딄딐뒋둡둑땬뒉둥득뎹땬딻땸딽뒬땡딻됫듰도돵둑든땔뒨뒀뒝딹돷돼땁두뒉땜듸돼돼뎡땡둘뒬된뎨땝듸뎹뒻땵뒈땐돝뒋딀뒤돤됫뒛땻땵뎰듼뒝땃딝땸딹돰딽땠땹둬땜됨땬딽둬땳뎸둬돨딅땮뒹
            @Override // java.util.concurrent.Callable
            public final Object call() {
                LottieResult lambda$fromRawRes$3;
                lambda$fromRawRes$3 = LottieCompositionFactory.lambda$fromRawRes$3(weakReference, applicationContext, i, str);
                return lambda$fromRawRes$3;
            }
        }, null);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromRawResSync(Context context, @RawRes int i, @Nullable String str) {
        LottieComposition lottieComposition = str == null ? null : LottieCompositionCache.getInstance().get(str);
        if (lottieComposition != null) {
            return new LottieResult<>(lottieComposition);
        }
        try {
            BufferedSource buffer = Okio.buffer(Okio.source(context.getResources().openRawResource(i)));
            if (isZipCompressed(buffer).booleanValue()) {
                return fromZipStreamSync(context, new ZipInputStream(buffer.inputStream()), str);
            }
            if (isGzipCompressed(buffer).booleanValue()) {
                try {
                    return fromJsonInputStreamSync(new GZIPInputStream(buffer.inputStream()), str);
                } catch (IOException e) {
                    return new LottieResult<>((Throwable) e);
                }
            }
            return fromJsonReaderSync(JsonReader.of(buffer), str);
        } catch (Resources.NotFoundException e2) {
            return new LottieResult<>((Throwable) e2);
        }
    }

    public static LottieTask<LottieComposition> fromUrl(Context context, String str, @Nullable String str2) {
        return cache(str2, new CallableC0946x19900ce3(context, 1, str, str2), null);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromUrlSync(Context context, String str, @Nullable String str2) {
        LottieComposition lottieComposition = str2 == null ? null : LottieCompositionCache.getInstance().get(str2);
        if (lottieComposition != null) {
            return new LottieResult<>(lottieComposition);
        }
        LottieResult<LottieComposition> fetchSync = L.networkFetcher(context).fetchSync(context, str, str2);
        if (str2 != null && fetchSync.getValue() != null) {
            LottieCompositionCache.getInstance().put(str2, fetchSync.getValue());
        }
        return fetchSync;
    }

    public static LottieTask<LottieComposition> fromZipStream(ZipInputStream zipInputStream, @Nullable String str, boolean z) {
        return fromZipStream(null, zipInputStream, str, z);
    }

    public static LottieResult<LottieComposition> fromZipStreamSync(ZipInputStream zipInputStream, @Nullable String str, boolean z) {
        return fromZipStreamSync(null, zipInputStream, str, z);
    }

    public static LottieTask<LottieComposition> fromAsset(Context context, String str, @Nullable String str2) {
        return cache(str2, new CallableC0946x19900ce3(context.getApplicationContext(), 0, str, str2), null);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromAssetSync(Context context, String str, @Nullable String str2) {
        LottieComposition lottieComposition = str2 == null ? null : LottieCompositionCache.getInstance().get(str2);
        if (lottieComposition != null) {
            return new LottieResult<>(lottieComposition);
        }
        try {
            return fromInputStreamSync(context, context.getAssets().open(str), str2);
        } catch (IOException e) {
            return new LottieResult<>((Throwable) e);
        }
    }

    public static LottieTask<LottieComposition> fromZipStream(Context context, ZipInputStream zipInputStream, @Nullable String str) {
        return cache(str, new CallableC0947x1b30091d(context, zipInputStream, str, 0), new RunnableC0948x4ebcddac(zipInputStream, 0));
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromZipStreamSync(@Nullable Context context, ZipInputStream zipInputStream, @Nullable String str) {
        return fromZipStreamSync(context, zipInputStream, str, true);
    }

    public static LottieTask<LottieComposition> fromZipStream(Context context, ZipInputStream zipInputStream, @Nullable String str, boolean z) {
        return cache(str, new CallableC0947x1b30091d(context, zipInputStream, str, 1), z ? new RunnableC0948x4ebcddac(zipInputStream, 1) : null);
    }

    @WorkerThread
    public static LottieResult<LottieComposition> fromZipStreamSync(@Nullable Context context, ZipInputStream zipInputStream, @Nullable String str, boolean z) {
        try {
            return fromZipStreamSyncInternal(context, zipInputStream, str);
        } finally {
            if (z) {
                Utils.closeQuietly(zipInputStream);
            }
        }
    }
}
